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
            <assert test="count(realmCode) = 1">(Требование: У1-1) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент realmCode (ClinicalDocument) </assert>
            <assert test="count(typeId) = 1">(Требование: У1-2) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент typeId (ClinicalDocument) </assert>
            <assert test="count(templateId) = 1">(Требование: У1-3) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент templateId (ClinicalDocument) </assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.51']) = 1"
                >(Требование: У1-4) Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument) </assert>
            <assert test="count(code) = 1">(Требование: У1-5) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент code (ClinicalDocument) </assert>
            <assert test="count(title) = 1">(Требование: У1-6) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент title (ClinicalDocument) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У1-7) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент effectiveTime (ClinicalDocument) </assert>
            <assert test="count(confidentialityCode) = 1">(Требование: У1-8) Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент confidentialityCode
                (ClinicalDocument) </assert>
            <assert test="count(languageCode) = 1">(Требование: У1-9) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент languageCode (ClinicalDocument) </assert>
            <assert test="count(setId) = 1">(Требование: У1-10) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент setId (ClinicalDocument) </assert>
            <assert test="count(versionNumber) = 1">(Требование: У1-11) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент versionNumber (ClinicalDocument) </assert>
            <assert test="count(recordTarget) = 1">(Требование: У1-12) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент recordTarget (ClinicalDocument) </assert>
            <assert test="count(author) = 1">(Требование: У1-13) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент author (ClinicalDocument) </assert>
            <assert test="count(custodian) = 1">(Требование: У1-14) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент custodian (ClinicalDocument) </assert>
            <assert
                test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']) = 1"
                >(Требование: У1-15) Элемент ClinicalDocument ОБЯЗАН содержать один [1..1] элемент
                informationRecipient (ClinicalDocument) </assert>
            <assert
                test="count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]) >= 0"
                >(Требование: У1-16) Элемент ClinicalDocument МОЖЕТ содержать произвольное
                количество [0..*] элементов informationRecipient (ClinicalDocument) </assert>
            <assert test="count(legalAuthenticator) = 1">(Требование: У1-17) Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент legalAuthenticator
                (ClinicalDocument) </assert>
            <assert test="count(participant[@typeCode = 'IND']) = [0, 1]">(Требование: У1-18)
                Элемент ClinicalDocument МОЖЕТ содержать не более одного [0..1] элемента participant
                (ClinicalDocument) </assert>
            <assert test="count(documentationOf) = 1">(Требование: У1-19) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент documentationOf (ClinicalDocument) </assert>
            <assert test="count(componentOf) = 1">(Требование: У1-20) Элемент ClinicalDocument
                ОБЯЗАН содержать один [1..1] элемент componentOf (ClinicalDocument) </assert>
            <assert test="count(component) = 1">(Требование: У1-21) Элемент ClinicalDocument ОБЯЗАН
                содержать один [1..1] элемент component (ClinicalDocument) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/realmCode">
            <report test="@nullFlavor">(Требование: У1-1) Элемент ClinicalDocument/realmCode не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RU'">(Требование: У1-1) Элемент realmCode обязан содержать один
                атрибут @code со значением "RU"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/typeId">
            <report test="@nullFlavor">(Требование: У1-2) Элемент ClinicalDocument/typeId не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@root = '2.16.840.1.113883.1.3'">(Требование: У1-2) Элемент typeId обязан
                содержать один атрибут @root со значением "2.16.840.1.113883.1.3"</assert>
            <assert test="@extension = 'POCD_MT000040'">(Требование: У1-2) Элемент typeId обязан
                содержать один атрибут @extension со значением "POCD_MT000040"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <report test="@nullFlavor">(Требование: У1-3) Элемент ClinicalDocument/templateId не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13.13.14.11.9.4'">(Требование: У1-3) Элемент
                templateId обязан содержать один атрибут @root со значением
                "1.2.643.5.1.13.13.14.11.9.4"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/id[substring(@root, string-length(@root) - 2) = '.51']">
            <report test="@nullFlavor">(Требование: У1-4) Элемент
                ClinicalDocument/id[substring(@root, string-length(@root) - 2)='.51'] не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-4) Элемент id обязан содержать один атрибут
                @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">(Требование: У1-4)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">(Требование: У1-4) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/code">
            <report test="@nullFlavor">(Требование: У1-5) Элемент ClinicalDocument/code не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@code = '11'">(Требование: У1-5) Элемент code обязан содержать один
                атрибут @code со значением "11"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']"
                >(Требование: У1-5) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-5) Элемент code обязан содержать
                один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-5) Элемент code обязан содержать один
                атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-5) Элемент code обязан содержать
                один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/title">
            <report test="@nullFlavor">(Требование: У1-6) Элемент ClinicalDocument/title не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-6) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime">
            <report test="@nullFlavor">(Требование: У1-7) Элемент ClinicalDocument/effectiveTime не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-7) Элемент effectiveTime обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/confidentialityCode">
            <report test="@nullFlavor">(Требование: У1-8) Элемент
                ClinicalDocument/confidentialityCode не должен иметь атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9', '1.2.643.5.1.13.13.11.1116']"
                >(Требование: У1-8) Элемент confidentialityCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.285"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-8) Элемент confidentialityCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-8) Элемент confidentialityCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-8) Элемент confidentialityCode
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-8) Элемент confidentialityCode обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/languageCode">
            <report test="@nullFlavor">(Требование: У1-9) Элемент ClinicalDocument/languageCode не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'ru-RU'">(Требование: У1-9) Элемент languageCode обязан содержать
                один атрибут @code со значением "ru-RU"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/setId">
            <report test="@nullFlavor">(Требование: У1-10) Элемент ClinicalDocument/setId не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-10) Элемент setId обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.50$')">(Требование: У1-10)
                Элемент setId обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50</assert>
            <assert test="@extension != ''">(Требование: У1-10) Элемент setId обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/versionNumber">
            <report test="@nullFlavor">(Требование: У1-11) Элемент ClinicalDocument/versionNumber не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-11) Элемент versionNumber обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <report test="@nullFlavor">(Требование: У1-12) Элемент ClinicalDocument/recordTarget не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(patientRole) = 1">(Требование: У1-12.1) Элемент recordTarget ОБЯЗАН
                содержать один [1..1] элемент patientRole (ClinicalDocument/recordTarget) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <report test="@nullFlavor">(Требование: У1-12.1) Элемент
                ClinicalDocument/recordTarget/patientRole не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.10']) = 1"
                >(Требование: У1-12.1.1) Элемент patientRole ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(id[2]) = 1">(Требование: У1-12.1.2) Элемент patientRole ДОЛЖЕН
                содержать один [1..1] элемент id (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(identity:IdentityDoc) = 1">(Требование: У1-12.1.3) Элемент
                patientRole ДОЛЖЕН содержать один [1..1] элемент identity:IdentityDoc
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(identity:InsurancePolicy) = 1">(Требование: У1-12.1.4) Элемент
                patientRole ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicy
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(addr) = [1, 2]">(Требование: У1-12.1.5) Элемент patientRole ДОЛЖЕН
                содержать от одного до двух [1..2] элементов addr
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-12.1.6) Элемент patientRole МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(patient) = 1">(Требование: У1-12.1.7) Элемент patientRole ОБЯЗАН
                содержать один [1..1] элемент patient (ClinicalDocument/recordTarget/patientRole) </assert>
            <assert test="count(providerOrganization) = 1">(Требование: У1-12.1.8) Элемент
                patientRole ОБЯЗАН содержать один [1..1] элемент providerOrganization
                (ClinicalDocument/recordTarget/patientRole) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) - 2) = '.10']">
            <report test="@nullFlavor">(Требование: У1-12.1.1) Элемент
                ClinicalDocument/recordTarget/patientRole/id[substring(@root, string-length(@root) -
                2)='.10'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-12.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.10$')">(Требование: У1-12.1.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10</assert>
            <assert test="@extension != ''">(Требование: У1-12.1.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.100.3'">(Требование: У1-12.1.2) Элемент id должен
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У1-12.1.2) Элемент id должен содержать один
                атрибут @extension с не пустым значением</assert>
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
            <assert test="count(identity:IdentityCardType) = 1">(Требование: У1-12.1.3.1) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IdentityCardType
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:Series) = 1">(Требование: У1-12.1.3.2) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:Series
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:Number) = 1">(Требование: У1-12.1.3.3) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgName) = 1">(Требование: У1-12.1.3.4) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgName
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueOrgCode) = 1">(Требование: У1-12.1.3.5) Элемент
                identity:IdentityDoc ДОЛЖЕН содержать один [1..1] элемент identity:IssueOrgCode
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
            <assert test="count(identity:IssueDate) = 1">(Требование: У1-12.1.3.6) Элемент
                identity:IdentityDoc ОБЯЗАН содержать один [1..1] элемент identity:IssueDate
                (ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType">
            <report test="@nullFlavor">(Требование: У1-12.1.3.1) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011', '1.2.643.5.1.13.2.1.1.736']"
                >(Требование: У1-12.1.3.1) Элемент identity:IdentityCardType обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.48"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.3.1) Элемент identity:IdentityCardType
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.3.1) Элемент
                identity:IdentityCardType обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.3.2) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number">
            <report test="@nullFlavor">(Требование: У1-12.1.3.3) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.3.3) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.3.4) Элемент identity:IssueOrgName должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.3.5) Элемент identity:IssueOrgCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate">
            <report test="@nullFlavor">(Требование: У1-12.1.3.6) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-12.1.3.6) Элемент identity:IssueDate обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy[not(@nullFlavor)]">
            <assert test="count(identity:InsurancePolicyType) = 1">(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент
                identity:InsurancePolicyType
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
            <assert test="count(identity:Series) = [0, 1]">(Требование: У1-12.1.4.2) Элемент
                identity:InsurancePolicy МОЖЕТ содержать не более одного [0..1] элемента
                identity:Series (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
            <assert test="count(identity:Number) = 1">(Требование: У1-12.1.4.3) Элемент
                identity:InsurancePolicy ОБЯЗАН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType">
            <report test="@nullFlavor">(Требование: У1-12.1.4.1) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1035'">(Требование: У1-12.1.4.1)
                Элемент identity:InsurancePolicyType обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1035"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @codeSystemName с не
                пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.4.1) Элемент
                identity:InsurancePolicyType обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.4.2) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number">
            <report test="@nullFlavor">(Требование: У1-12.1.4.3) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.4.3) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-12.1.5) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-12.1.5) Элемент addr должен содержать один атрибут @use с не пустым
                значением</assert>
            <assert test="count(address:Type) = 1">(Требование: У1-12.1.5.1) Элемент addr ОБЯЗАН
                содержать один [1..1] элемент address:Type
                (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-12.1.5.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-12.1.5.3) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-12.1.5.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/recordTarget/patientRole/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-12.1.5.5) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/recordTarget/patientRole/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/address:Type">
            <report test="@nullFlavor">(Требование: У1-12.1.5.1) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:Type не должен иметь атрибут
                @nullFlavor</report>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415', '1.2.643.5.1.13.13.99.2.241']"
                >(Требование: У1-12.1.5.1) Элемент address:Type обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1504"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.5.1) Элемент address:Type
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.5.1) Элемент address:Type обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.5.1) Элемент address:Type
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.5.1) Элемент address:Type обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-12.1.5.2) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.5.2) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-12.1.5.3) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-12.1.5.3) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.5.3) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.5.3) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.5.3) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.5.3) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.5.4) Элемент postalCode должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-12.1.5.5.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-12.1.5.5.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-12.1.5.5.1) Элемент
                ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:AOGUID не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.5.5.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.5.5.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-12.1.6) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-12.1.6) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-12.1.6) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <report test="@nullFlavor">(Требование: У1-12.1.7) Элемент
                ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У1-12.1.7.1) Элемент patient ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(administrativeGenderCode) = 1">(Требование: У1-12.1.7.2) Элемент
                patient ДОЛЖЕН содержать один [1..1] элемент administrativeGenderCode
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
            <assert test="count(birthTime) = 1">(Требование: У1-12.1.7.3) Элемент patient ДОЛЖЕН
                содержать один [1..1] элемент birthTime
                (ClinicalDocument/recordTarget/patientRole/patient) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name">
            <report test="@nullFlavor">(Требование: У1-12.1.7.1) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У1-12.1.7.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
            <assert test="count(given) = 1">(Требование: У1-12.1.7.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У1-12.1.7.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/recordTarget/patientRole/patient/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/family">
            <report test="@nullFlavor">(Требование: У1-12.1.7.1.1) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/family не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.7.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/given">
            <report test="@nullFlavor">(Требование: У1-12.1.7.1.2) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/given не должен иметь атрибут
                @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.7.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.7.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1040', '1.2.643.5.1.13.2.1.1.156']"
                >(Требование: У1-12.1.7.2) Элемент administrativeGenderCode должен содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1040"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.7.2) Элемент administrativeGenderCode
                должен содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @codeSystemVersion с не
                пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.7.2) Элемент
                administrativeGenderCode должен содержать один атрибут @displayName с не пустым
                значением</assert>
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
            <assert test="@value != ''">(Требование: У1-12.1.7.3) Элемент birthTime должен содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <report test="@nullFlavor">(Требование: У1-12.1.8) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь
                атрибут @nullFlavor</report>
            <assert
                test="count(id[not(@nullFlavor)][not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У1-12.1.8.1) Элемент providerOrganization ОБЯЗАН содержать один [1..1]
                элемент id (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(id[@root = '1.2.643.5.1.13.2.1.1.1504.101']) = [0, 1]">(Требование:
                У1-12.1.8.2) Элемент providerOrganization МОЖЕТ содержать не более одного [0..1]
                элемента id (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(identity:Props) = 1">(Требование: У1-12.1.8.3) Элемент
                providerOrganization ДОЛЖЕН содержать один [1..1] элемент identity:Props
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-12.1.8.4) Элемент providerOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-12.1.8.5) Элемент
                providerOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-12.1.8.6) Элемент
                providerOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/recordTarget/patientRole/providerOrganization) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)][not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У1-12.1.8.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-12.1.8.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-12.1.8.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-12.1.8.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@nullFlavor)][@root = '1.2.643.5.1.13.2.1.1.1504.101']">
            <report test="@nullFlavor">(Требование: У1-12.1.8.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root='1.2.643.5.1.13.2.1.1.1504.101']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13.2.1.1.1504.101'">(Требование: У1-12.1.8.2) Элемент
                id обязан содержать один атрибут @root со значением
                "1.2.643.5.1.13.2.1.1.1504.101"</assert>
            <assert test="@extension != ''">(Требование: У1-12.1.8.2) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
            <assert test="@assigningAuthorityName != ''">(Требование: У1-12.1.8.2) Элемент id обязан
                содержать один атрибут @assigningAuthorityName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props[not(@nullFlavor)]">
            <assert test="count(identity:Ogrn) = [0, 1]">(Требование: У1-12.1.8.3.1) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrn
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Ogrnip) = [0, 1]">(Требование: У1-12.1.8.3.2) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Ogrnip
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Okpo) = [0, 1]">(Требование: У1-12.1.8.3.3) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okpo
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props) </assert>
            <assert test="count(identity:Okato) = [0, 1]">(Требование: У1-12.1.8.3.4) Элемент
                identity:Props МОЖЕТ содержать не более одного [0..1] элемента identity:Okato
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.3.1) Элемент identity:Ogrn должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.3.2) Элемент identity:Ogrnip должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.3.3) Элемент identity:Okpo должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.3.4) Элемент identity:Okato должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/name">
            <report test="@nullFlavor">(Требование: У1-12.1.8.4) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/name не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.4) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-12.1.8.5) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-12.1.8.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-12.1.8.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-12.1.8.6) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-12.1.8.6) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-12.1.8.6.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-12.1.8.6.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-12.1.8.6.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-12.1.8.6.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-12.1.8.6.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.6.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-12.1.8.6.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-12.1.8.6.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-12.1.8.6.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-12.1.8.6.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-12.1.8.6.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-12.1.8.6.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.6.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-12.1.8.6.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-12.1.8.6.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-12.1.8.6.4.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.6.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-12.1.8.6.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author">
            <report test="@nullFlavor">(Требование: У1-13) Элемент ClinicalDocument/author не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(time) = 1">(Требование: У1-13.1) Элемент author ДОЛЖЕН содержать
                один [1..1] элемент time (ClinicalDocument/author) </assert>
            <assert test="count(assignedAuthor) = 1">(Требование: У1-13.2) Элемент author ОБЯЗАН
                содержать один [1..1] элемент assignedAuthor (ClinicalDocument/author) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor = 'NI'">(Требование: У1-13.1) Элемент time обязан содержать
                один атрибут @nullFlavor со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <report test="@nullFlavor">(Требование: У1-13.2) Элемент
                ClinicalDocument/author/assignedAuthor не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У1-13.2.1) Элемент assignedAuthor ОБЯЗАН содержать один [1..1] элемент
                id (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование: У1-13.2.2) Элемент
                assignedAuthor ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(code) = 1">(Требование: У1-13.2.3) Элемент assignedAuthor ОБЯЗАН
                содержать один [1..1] элемент code (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-13.2.4) Элемент assignedAuthor МОЖЕТ
                содержать не более одного [0..1] элемента addr
                (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-13.2.5) Элемент assignedAuthor МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У1-13.2.6) Элемент assignedAuthor
                ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/author/assignedAuthor) </assert>
            <assert test="count(representedOrganization) = [0, 1]">(Требование: У1-13.2.7) Элемент
                assignedAuthor МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization (ClinicalDocument/author/assignedAuthor) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У1-13.2.1) Элемент
                ClinicalDocument/author/assignedAuthor/id[substring(@root, string-length(@root) -
                2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-13.2.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование: У1-13.2.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У1-13.2.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У1-13.2.2) Элемент
                ClinicalDocument/author/assignedAuthor/id[@root='1.2.643.100.3'] не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У1-13.2.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У1-13.2.2) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <report test="@nullFlavor">(Требование: У1-13.2.3) Элемент
                ClinicalDocument/author/assignedAuthor/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У1-13.2.3) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-13.2.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-13.2.3) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-13.2.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-13.2.3) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-13.2.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-13.2.4) Элемент addr должен содержать один атрибут @use с не пустым
                значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-13.2.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-13.2.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-13.2.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/author/assignedAuthor/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-13.2.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/author/assignedAuthor/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-13.2.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/addr/streetAddressLine не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-13.2.4.2) Элемент
                ClinicalDocument/author/assignedAuthor/addr/address:stateCode не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-13.2.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-13.2.4.2) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-13.2.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-13.2.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-13.2.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-13.2.4.3) Элемент postalCode должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-13.2.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-13.2.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-13.2.4.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:AOGUID не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.4.4.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-13.2.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-13.2.5) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-13.2.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-13.2.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <report test="@nullFlavor">(Требование: У1-13.2.6) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У1-13.2.6.1) Элемент assignedPerson ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/author/assignedAuthor/assignedPerson) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У1-13.2.6.1) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У1-13.2.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У1-13.2.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У1-13.2.6.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/author/assignedAuthor/assignedPerson/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У1-13.2.6.1.1) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/family не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.6.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У1-13.2.6.1.2) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/given не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-13.2.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization[not(@nullFlavor)]">
            <assert test="@classCode = 'ORG'">(Требование: У1-13.2.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У1-13.2.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-13.2.7.2) Элемент representedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-13.2.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-13.2.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/author/assignedAuthor/representedOrganization) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У1-13.2.7.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-13.2.7.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-13.2.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-13.2.7.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У1-13.2.7.2) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/name не должен иметь
                атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.7.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-13.2.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-13.2.7.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-13.2.7.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-13.2.7.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-13.2.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-13.2.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-13.2.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-13.2.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-13.2.7.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-13.2.7.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-13.2.7.4.2) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-13.2.7.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-13.2.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-13.2.7.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-13.2.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-13.2.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-13.2.7.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-13.2.7.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-13.2.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-13.2.7.4.4.1) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-13.2.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <report test="@nullFlavor">(Требование: У1-14) Элемент ClinicalDocument/custodian не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedCustodian) = 1">(Требование: У1-14.1) Элемент custodian
                ОБЯЗАН содержать один [1..1] элемент assignedCustodian (ClinicalDocument/custodian)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <report test="@nullFlavor">(Требование: У1-14.1) Элемент
                ClinicalDocument/custodian/assignedCustodian не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(representedCustodianOrganization) = 1">(Требование: У1-14.1.1)
                Элемент assignedCustodian ОБЯЗАН содержать один [1..1] элемент
                representedCustodianOrganization (ClinicalDocument/custodian/assignedCustodian)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <report test="@nullFlavor">(Требование: У1-14.1.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">(Требование: У1-14.1.1) Элемент
                representedCustodianOrganization обязан содержать один атрибут @classCode со
                значением "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У1-14.1.1.1) Элемент representedCustodianOrganization ОБЯЗАН содержать
                один [1..1] элемент id
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-14.1.1.2) Элемент
                representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(telecom) = [0, 1]">(Требование: У1-14.1.1.3) Элемент
                representedCustodianOrganization МОЖЕТ содержать не более одного [0..1] элемента
                telecom
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization) </assert>
            <assert test="count(addr) = 1">(Требование: У1-14.1.1.4) Элемент
                representedCustodianOrganization ОБЯЗАН содержать один [1..1] элемент addr
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У1-14.1.1.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-14.1.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-14.1.1.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-14.1.1.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name">
            <report test="@nullFlavor">(Требование: У1-14.1.1.2) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-14.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-14.1.1.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-14.1.1.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-14.1.1.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr">
            <report test="@nullFlavor">(Требование: У1-14.1.1.4) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-14.1.1.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-14.1.1.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-14.1.1.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-14.1.1.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-14.1.1.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-14.1.1.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-14.1.1.4.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-14.1.1.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-14.1.1.4.2) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-14.1.1.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-14.1.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-14.1.1.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-14.1.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-14.1.1.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-14.1.1.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-14.1.1.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-14.1.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-14.1.1.4.4.1) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-14.1.1.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-14.1.1.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']">
            <report test="@nullFlavor">(Требование: У1-15) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(intendedRecipient) = 1">(Требование: У1-15.1) Элемент
                informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient">
            <report test="@nullFlavor">(Требование: У1-15.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(receivedOrganization) = 1">(Требование: У1-15.1.1) Элемент
                intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization">
            <report test="@nullFlavor">(Требование: У1-15.1.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[@root = '1.2.643.5.1.13']) = 1">(Требование: У1-15.1.1.1) Элемент
                receivedOrganization ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-15.1.1.2) Элемент receivedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root = '1.2.643.5.1.13']">
            <report test="@nullFlavor">(Требование: У1-15.1.1.1) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.5.1.13'">(Требование: У1-15.1.1.1) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.5.1.13"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name">
            <report test="@nullFlavor">(Требование: У1-15.1.1.2) Элемент
                ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-15.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]">
            <report test="@nullFlavor">(Требование: У1-16) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(intendedRecipient) = 1">(Требование: У1-16.1) Элемент
                informationRecipient ОБЯЗАН содержать один [1..1] элемент intendedRecipient
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient">
            <report test="@nullFlavor">(Требование: У1-16.1) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(receivedOrganization) = 1">(Требование: У1-16.1.1) Элемент
                intendedRecipient ОБЯЗАН содержать один [1..1] элемент receivedOrganization
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization">
            <report test="@nullFlavor">(Требование: У1-16.1.1) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">(Требование: У1-16.1.1.1) Элемент receivedOrganization
                ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-16.1.1.2) Элемент receivedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">(Требование: У1-16.1.1.1) Элемент id должен содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-16.1.1.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-16.1.1.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
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
            <report test="@nullFlavor">(Требование: У1-16.1.1.2) Элемент
                ClinicalDocument/informationRecipient[not(intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13')]/intendedRecipient/receivedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-16.1.1.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator">
            <report test="@nullFlavor">(Требование: У1-17) Элемент
                ClinicalDocument/legalAuthenticator не должен иметь атрибут @nullFlavor</report>
            <assert test="count(time) = 1">(Требование: У1-17.1) Элемент legalAuthenticator ДОЛЖЕН
                содержать один [1..1] элемент time (ClinicalDocument/legalAuthenticator) </assert>
            <assert test="count(signatureCode) = 1">(Требование: У1-17.2) Элемент legalAuthenticator
                ДОЛЖЕН содержать один [1..1] элемент signatureCode
                (ClinicalDocument/legalAuthenticator) </assert>
            <assert test="count(assignedEntity) = 1">(Требование: У1-17.3) Элемент
                legalAuthenticator ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/legalAuthenticator) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor = 'NI'">(Требование: У1-17.1) Элемент time обязан содержать
                один атрибут @nullFlavor со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor = 'NI'">(Требование: У1-17.2) Элемент signatureCode обязан
                содержать один атрибут @nullFlavor со значением "NI"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <report test="@nullFlavor">(Требование: У1-17.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У1-17.3.1) Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент
                id (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование: У1-17.3.2) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У1-17.3.3) Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-17.3.4) Элемент assignedEntity МОЖЕТ
                содержать не более одного [0..1] элемента addr
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-17.3.5) Элемент assignedEntity МОЖЕТ
                содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У1-17.3.6) Элемент assignedEntity
                ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/legalAuthenticator/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">(Требование: У1-17.3.7) Элемент
                assignedEntity МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization (ClinicalDocument/legalAuthenticator/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У1-17.3.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-17.3.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование: У1-17.3.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У1-17.3.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У1-17.3.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/id[@root='1.2.643.100.3'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У1-17.3.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У1-17.3.2) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У1-17.3.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У1-17.3.3) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-17.3.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-17.3.3) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-17.3.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-17.3.3) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-17.3.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-17.3.4) Элемент addr должен содержать один атрибут @use с не пустым
                значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-17.3.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-17.3.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-17.3.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-17.3.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-17.3.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/streetAddressLine не должен
                иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-17.3.4.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/address:stateCode не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-17.3.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-17.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-17.3.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-17.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-17.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-17.3.4.3) Элемент postalCode должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-17.3.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-17.3.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-17.3.4.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:AOGUID не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.4.4.1) Элемент fias:AOGUID должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-17.3.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-17.3.5) Элемент telecom должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-17.3.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-17.3.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У1-17.3.6) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У1-17.3.6.1) Элемент assignedPerson ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У1-17.3.6.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У1-17.3.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У1-17.3.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У1-17.3.6.1.3) Элемент
                name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У1-17.3.6.1.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/family не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.6.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У1-17.3.6.1.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/given не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-17.3.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У1-17.3.7) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">(Требование: У1-17.3.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У1-17.3.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-17.3.7.2) Элемент representedOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-17.3.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-17.3.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У1-17.3.7.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-17.3.7.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-17.3.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-17.3.7.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У1-17.3.7.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/name не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.7.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-17.3.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-17.3.7.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-17.3.7.3) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-17.3.7.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-17.3.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-17.3.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-17.3.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-17.3.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-17.3.7.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-17.3.7.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-17.3.7.4.2) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-17.3.7.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-17.3.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-17.3.7.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-17.3.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-17.3.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-17.3.7.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-17.3.7.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-17.3.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-17.3.7.4.4.1) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-17.3.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']">
            <report test="@nullFlavor">(Требование: У1-18) Элемент
                ClinicalDocument/participant[@typeCode='IND'] не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@typeCode = 'IND'">(Требование: У1-18) Элемент participant обязан
                содержать один атрибут @typeCode со значением "IND"</assert>
            <assert test="count(associatedEntity) = 1">(Требование: У1-18.1) Элемент participant
                ОБЯЗАН содержать один [1..1] элемент associatedEntity
                (ClinicalDocument/participant[@typeCode='IND']) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity">
            <report test="@nullFlavor">(Требование: У1-18.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@classCode = 'GUAR'">(Требование: У1-18.1) Элемент associatedEntity обязан
                содержать один атрибут @classCode со значением "GUAR"</assert>
            <assert test="count(code) = 1">(Требование: У1-18.1.1) Элемент associatedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
            <assert test="count(identity:DocInfo) = 1">(Требование: У1-18.1.2) Элемент
                associatedEntity ДОЛЖЕН содержать один [1..1] элемент identity:DocInfo
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
            <assert test="count(scopingOrganization) = [0, 1]">(Требование: У1-18.1.3) Элемент
                associatedEntity МОЖЕТ содержать не более одного [0..1] элемента scopingOrganization
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/code">
            <report test="@nullFlavor">(Требование: У1-18.1.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1039'">(Требование: У1-18.1.1) Элемент
                code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1039"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-18.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-18.1.1) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-18.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-18.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo[not(@nullFlavor)]">
            <assert test="count(identity:IdentityDocType) = 1">(Требование: У1-18.1.2.1) Элемент
                identity:DocInfo ОБЯЗАН содержать один [1..1] элемент identity:IdentityDocType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:InsurancePolicyType) = 1">(Требование: У1-18.1.2.2) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:InsurancePolicyType
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:Series) = 1">(Требование: У1-18.1.2.3) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Series
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:Number) = 1">(Требование: У1-18.1.2.4) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:Number
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:INN) = 1">(Требование: У1-18.1.2.5) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:INN
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo) </assert>
            <assert test="count(identity:effectiveTime) = 1">(Требование: У1-18.1.2.6) Элемент
                identity:DocInfo ДОЛЖЕН содержать один [1..1] элемент identity:effectiveTime
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType">
            <report test="@nullFlavor">(Требование: У1-18.1.2.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:IdentityDocType
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.724'">(Требование: У1-18.1.2.1)
                Элемент identity:IdentityDocType обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.724"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-18.1.2.1) Элемент identity:IdentityDocType
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @codeSystemVersion с не
                пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-18.1.2.1) Элемент
                identity:IdentityDocType обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1035'">(Требование: У1-18.1.2.2)
                Элемент identity:InsurancePolicyType должен содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1035"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @codeSystemName с не
                пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @codeSystemVersion с не
                пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-18.1.2.2) Элемент
                identity:InsurancePolicyType должен содержать один атрибут @displayName с не пустым
                значением</assert>
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
            <assert test=". != ''">(Требование: У1-18.1.2.3) Элемент identity:Series должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:Number[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-18.1.2.4) Элемент identity:Number должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:INN[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-18.1.2.5) Элемент identity:INN должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]">
            <assert test="count(identity:low) = 1">(Требование: У1-18.1.2.6.1) Элемент
                identity:effectiveTime ОБЯЗАН содержать один [1..1] элемент identity:low
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime) </assert>
            <assert test="count(identity:high) = 1">(Требование: У1-18.1.2.6.2) Элемент
                identity:effectiveTime ДОЛЖЕН содержать один [1..1] элемент identity:high
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low">
            <report test="@nullFlavor">(Требование: У1-18.1.2.6.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-18.1.2.6.1) Элемент identity:low обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]">
            <assert test="@value != ''">(Требование: У1-18.1.2.6.2) Элемент identity:high должен
                содержать один атрибут @value с не пустым значением</assert>
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
            <report test="@nullFlavor">(Требование: У1-18.1.3) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">(Требование: У1-18.1.3.1) Элемент scopingOrganization
                ДОЛЖЕН содержать один [1..1] элемент id
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-18.1.3.2) Элемент scopingOrganization
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(telecom) >= 1">(Требование: У1-18.1.3.3) Элемент scopingOrganization
                ДОЛЖЕН содержать не менее одного [1..*] элемента telecom
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization) </assert>
            <assert test="count(addr) = 1">(Требование: У1-18.1.3.4) Элемент scopingOrganization
                ДОЛЖЕН содержать один [1..1] элемент addr
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/id[1][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.5.1.13.13.99.2.183'">(Требование: У1-18.1.3.1) Элемент id
                должен содержать один атрибут @root со значением
                "1.2.643.5.1.13.13.99.2.183"</assert>
            <assert test="@extension != ''">(Требование: У1-18.1.3.1) Элемент id должен содержать
                один атрибут @extension с не пустым значением</assert>
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
            <report test="@nullFlavor">(Требование: У1-18.1.3.2) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-18.1.3.2) Элемент name должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-18.1.3.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-18.1.3.3) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-18.1.3.3) Элемент telecom должен содержать
                один атрибут @value с не пустым значением</assert>
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
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-18.1.3.4) Элемент addr должен
                содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-18.1.3.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-18.1.3.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-18.1.3.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-18.1.3.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-18.1.3.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-18.1.3.4.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-18.1.3.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-18.1.3.4.2) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-18.1.3.4.2) Элемент address:stateCode обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-18.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-18.1.3.4.2) Элемент address:stateCode обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-18.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-18.1.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-18.1.3.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-18.1.3.4.4.1) Элемент fias:Address
                ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-18.1.3.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-18.1.3.4.4.1) Элемент
                ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-18.1.3.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/participant[@typeCode = 'IND']/associatedEntity/scopingOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-18.1.3.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf">
            <report test="@nullFlavor">(Требование: У1-19) Элемент ClinicalDocument/documentationOf
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(serviceEvent) = 1">(Требование: У1-19.1) Элемент documentationOf
                ОБЯЗАН содержать один [1..1] элемент serviceEvent (ClinicalDocument/documentationOf)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <report test="@nullFlavor">(Требование: У1-19.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У1-19.1.1) Элемент serviceEvent ОБЯЗАН
                содержать один [1..1] элемент code (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У1-19.1.2) Элемент serviceEvent
                ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceForm) = [0, 1]">(Требование: У1-19.1.3) Элемент
                serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceForm
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceType) = [0, 1]">(Требование: У1-19.1.4) Элемент
                serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceType
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(medService:serviceCond) = [0, 1]">(Требование: У1-19.1.5) Элемент
                serviceEvent МОЖЕТ содержать не более одного [0..1] элемента medService:serviceCond
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
            <assert test="count(performer) >= 1">(Требование: У1-19.1.6) Элемент serviceEvent ОБЯЗАН
                содержать не менее одного [1..*] элемента performer
                (ClinicalDocument/documentationOf/serviceEvent) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <report test="@nullFlavor">(Требование: У1-19.1.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/code не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@code = '7'">(Требование: У1-19.1.1) Элемент code обязан содержать один
                атрибут @code со значением "7"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.726'">(Требование: У1-19.1.1)
                Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.726"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <report test="@nullFlavor">(Требование: У1-19.1.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(low) = 1">(Требование: У1-19.1.2.1) Элемент effectiveTime ОБЯЗАН
                содержать один [1..1] элемент low
                (ClinicalDocument/documentationOf/serviceEvent/effectiveTime) </assert>
            <assert test="count(high) = 1">(Требование: У1-19.1.2.2) Элемент effectiveTime ОБЯЗАН
                содержать один [1..1] элемент high
                (ClinicalDocument/documentationOf/serviceEvent/effectiveTime) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <report test="@nullFlavor">(Требование: У1-19.1.2.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-19.1.2.1) Элемент low обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <report test="@nullFlavor">(Требование: У1-19.1.2.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-19.1.2.2) Элемент high обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568', '1.2.643.5.1.13.13.99.2.377']"
                >(Требование: У1-19.1.3) Элемент medService:serviceForm обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1551"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.3) Элемент
                medService:serviceForm обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.3) Элемент medService:serviceForm обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.3) Элемент
                medService:serviceForm обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.3) Элемент medService:serviceForm
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceType[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1034'">(Требование: У1-19.1.4) Элемент
                medService:serviceType обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1034"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.4) Элемент
                medService:serviceType обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.4) Элемент medService:serviceType обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.4) Элемент
                medService:serviceType обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.4) Элемент medService:serviceType
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond[not(@nullFlavor)]">
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.322', '1.2.643.5.1.13.2.1.1.103']"
                >(Требование: У1-19.1.5) Элемент medService:serviceCond обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.322"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.5) Элемент
                medService:serviceCond обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.5) Элемент medService:serviceCond обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.5) Элемент
                medService:serviceCond обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.5) Элемент medService:serviceCond
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <report test="@nullFlavor">(Требование: У1-19.1.6) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@typeCode != ''">(Требование: У1-19.1.6) Элемент performer обязан
                содержать один атрибут @typeCode с не пустым значением</assert>
            <assert test="count(assignedEntity) = 1">(Требование: У1-19.1.6.1) Элемент performer
                ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/documentationOf/serviceEvent/performer) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity не должен
                иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У1-19.1.6.1.1) Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент id (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование: У1-19.1.6.1.2)
                Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У1-19.1.6.1.3) Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-19.1.6.1.4) Элемент assignedEntity
                МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-19.1.6.1.5) Элемент assignedEntity
                МОЖЕТ содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У1-19.1.6.1.6) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">(Требование: У1-19.1.6.1.7)
                Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-19.1.6.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование:
                У1-19.1.6.1.1) Элемент id обязан содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У1-19.1.6.1.1) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[@root='1.2.643.100.3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У1-19.1.6.1.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У1-19.1.6.1.2) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.3) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code не
                должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У1-19.1.6.1.3) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.6.1.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.6.1.3) Элемент code обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.6.1.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.6.1.3) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-19.1.6.1.4) Элемент addr
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-19.1.6.1.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-19.1.6.1.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-19.1.6.1.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-19.1.6.1.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-19.1.6.1.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.4.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.4.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-19.1.6.1.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.6.1.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-19.1.6.1.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-19.1.6.1.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-19.1.6.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.4.4.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-19.1.6.1.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-19.1.6.1.5) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-19.1.6.1.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-19.1.6.1.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.6) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У1-19.1.6.1.6.1) Элемент assignedPerson
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.6.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У1-19.1.6.1.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У1-19.1.6.1.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У1-19.1.6.1.6.1.3)
                Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.6.1.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.6.1.1) Элемент family должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.6.1.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-19.1.6.1.6.1.3) Элемент identity:Patronymic
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization[not(@nullFlavor)]">
            <assert test="@classCode = 'ORG'">(Требование: У1-19.1.6.1.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У1-19.1.6.1.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У1-19.1.6.1.7.2) Элемент
                representedOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У1-19.1.6.1.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У1-19.1.6.1.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.7.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-19.1.6.1.7.1) Элемент id обязан содержать
                один атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У1-19.1.6.1.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У1-19.1.6.1.7.1) Элемент id должен содержать один атрибут @extension с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.7.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.7.2) Элемент name должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-19.1.6.1.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-19.1.6.1.7.3) Элемент telecom должен содержать один атрибут @use с
                не пустым значением</assert>
            <assert test="@value != ''">(Требование: У1-19.1.6.1.7.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У1-19.1.6.1.7.4) Элемент addr
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У1-19.1.6.1.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У1-19.1.6.1.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У1-19.1.6.1.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У1-19.1.6.1.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У1-19.1.6.1.7.4.4) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.7.4.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.7.4.2) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У1-19.1.6.1.7.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-19.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У1-19.1.6.1.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-19.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-19.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-19.1.6.1.7.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У1-19.1.6.1.7.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У1-19.1.6.1.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У1-19.1.6.1.7.4.4.1) Элемент
                ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-19.1.6.1.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У1-19.1.6.1.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf">
            <report test="@nullFlavor">(Требование: У1-20) Элемент ClinicalDocument/componentOf не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(encompassingEncounter) = 1">(Требование: У1-20.1) Элемент
                componentOf ОБЯЗАН содержать один [1..1] элемент encompassingEncounter
                (ClinicalDocument/componentOf) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <report test="@nullFlavor">(Требование: У1-20.1) Элемент
                ClinicalDocument/componentOf/encompassingEncounter не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.15']) = 1"
                >(Требование: У1-20.1.1) Элемент encompassingEncounter ОБЯЗАН содержать один [1..1]
                элемент id (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert
                test="count(id[substring(@root, string-length(@root) - 2) = ['.16', '.17']]) = 1"
                >(Требование: У1-20.1.2) Элемент encompassingEncounter ОБЯЗАН содержать один [1..1]
                элемент id (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(code) = 1">(Требование: У1-20.1.3) Элемент encompassingEncounter
                ДОЛЖЕН содержать один [1..1] элемент code
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(medService:DocType) = 1">(Требование: У1-20.1.4) Элемент
                encompassingEncounter ДОЛЖЕН содержать один [1..1] элемент medService:DocType
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У1-20.1.5) Элемент
                encompassingEncounter ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/componentOf/encompassingEncounter) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2) = '.15']">
            <report test="@nullFlavor">(Требование: У1-20.1.1) Элемент
                ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root,
                string-length(@root) - 2)='.15'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-20.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.15$')">(Требование: У1-20.1.1)
                Элемент id обязан содержать один атрибут @root с не пустым значением; допустимый
                формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15</assert>
            <assert test="@extension != ''">(Требование: У1-20.1.1) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root, string-length(@root) - 2) = ['.16', '.17']]">
            <report test="@nullFlavor">(Требование: У1-20.1.2) Элемент
                ClinicalDocument/componentOf/encompassingEncounter/id[substring(@root,
                string-length(@root) - 2)=['.16','.17']] не должен иметь атрибут
                @nullFlavor</report>
            <assert test="@root != ''">(Требование: У1-20.1.2) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.(16|17)$')">(Требование:
                У1-20.1.2) Элемент id обязан содержать один атрибут @root с не пустым значением;
                допустимый формат значения: OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17</assert>
            <assert test="@extension != ''">(Требование: У1-20.1.2) Элемент id обязан содержать один
                атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.99.2.723'">(Требование: У1-20.1.3)
                Элемент code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.99.2.723"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-20.1.3) Элемент code должен
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-20.1.3) Элемент code должен содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-20.1.3) Элемент code должен
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У1-20.1.3) Элемент code должен содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/medService:DocType[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']"
                >(Требование: У1-20.1.4) Элемент medService:DocType должен содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystemName != ''">(Требование: У1-20.1.4) Элемент medService:DocType
                должен содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У1-20.1.4) Элемент medService:DocType должен
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У1-20.1.4) Элемент
                medService:DocType должен содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У1-20.1.4) Элемент medService:DocType
                должен содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/componentOf/encompassingEncounter/medService:DocType[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <report test="@nullFlavor">(Требование: У1-20.1.5) Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime не должен иметь
                атрибут @nullFlavor</report>
            <assert test="count(low) = 1">(Требование: У1-20.1.5.1) Элемент effectiveTime ОБЯЗАН
                содержать один [1..1] элемент low
                (ClinicalDocument/componentOf/encompassingEncounter/effectiveTime) </assert>
            <assert test="count(high) = [0, 1]">(Требование: У1-20.1.5.2) Элемент effectiveTime
                МОЖЕТ содержать не более одного [0..1] элемента high
                (ClinicalDocument/componentOf/encompassingEncounter/effectiveTime) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <report test="@nullFlavor">(Требование: У1-20.1.5.1) Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low не должен иметь
                атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-20.1.5.1) Элемент low обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У1-20.1.5.2) Элемент
                ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должен
                иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У1-20.1.5.2) Элемент high обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component">
            <report test="@nullFlavor">(Требование: У1-21) Элемент ClinicalDocument/component не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(structuredBody) = 1">(Требование: У1-21.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент structuredBody (ClinicalDocument/component) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <report test="@nullFlavor">(Требование: У1-21.1) Элемент
                ClinicalDocument/component/structuredBody не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(component[section/code/@code = 'TRANSFUSINFO']) = 1">(Требование:
                У2-1) Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'SCORES']) = [0, 1]">(Требование:
                У2-2) Элемент structuredBody МОЖЕТ содержать не более одного [0..1] элемента
                component (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'DONORINFO']) = 1">(Требование: У2-3)
                Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'RESLAB']) = 1">(Требование: У2-4)
                Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'TRANSFUSANAMN']) = 1">(Требование:
                У2-5) Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'OBSTETRICANAMN']) = [0, 1]"
                >(Требование: У2-6) Элемент structuredBody МОЖЕТ содержать не более одного [0..1]
                элемента component (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'TRANSFUSRSRCH']) = [0, 1]"
                >(Требование: У2-7) Элемент structuredBody МОЖЕТ содержать не более одного [0..1]
                элемента component (ClinicalDocument/component/structuredBody) </assert>
            <assert test="count(component[section/code/@code = 'VITALPARAM']) = 1">(Требование:
                У2-8) Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']">
            <report test="@nullFlavor">(Требование: У2-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-1.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section">
            <report test="@nullFlavor">(Требование: У2-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-1.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-1.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-1.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert test="count(entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]) >= 1">(Требование: У3-1) Элемент section ОБЯЗАН содержать не
                менее одного [1..*] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']) >= 0"
                >(Требование: У3-2) Элемент section МОЖЕТ содержать произвольное количество [0..*]
                элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1010']) = [0, 1]">(Требование: У3-3)
                Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1468']) = [0, 1]"
                >(Требование: У3-4) Элемент section МОЖЕТ содержать не более одного [0..1] элемента
                entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/code">
            <report test="@nullFlavor">(Требование: У2-1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'TRANSFUSINFO'">(Требование: У2-1.1.1) Элемент code обязан
                содержать один атрибут @code со значением "TRANSFUSINFO"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-1.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-1.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/title">
            <report test="@nullFlavor">(Требование: У2-1.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-1.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/text">
            <report test="@nullFlavor">(Требование: У2-1.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-1.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]">
            <report test="@nullFlavor">(Требование: У3-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-1.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]/observation">
            <report test="@nullFlavor">(Требование: У3-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-1.1.1) Элемент observation ДОЛЖЕН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry/observation) </assert>
            <assert test="count(text) = [0, 1]">(Требование: У3-1.1.2) Элемент observation МОЖЕТ
                содержать не более одного [0..1] элемента text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]/observation/code[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1388'">(Требование: У3-1.1.1) Элемент
                code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1388"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-1.1.1) Элемент code должен
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-1.1.1) Элемент code должен содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-1.1.1) Элемент code должен
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-1.1.1) Элемент code должен содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]/observation/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
            <assert test="@nullFlavor='OTH'">(Требование: У3-1.1.1) Если отсутствует возможность кодирования выявленной патологии при помощи справочника "Показания к гемотрансфузии", то атрибут value/@nullFlavor должен быть представлен со значением "OTH"</assert>
            <assert test="../text[not(@nullFlavor)]">(Требование: У3-1.1.2) Элемент observation МОЖЕТ
                содержать не более одного [0..1] элемента text. Если отсутствует возможность кодирования выявленной патологии при помощи справочника "Показания к гемотрансфузии", то элемент обязан быть представлен
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/not(@codeSystem = ['1.2.643.5.1.13.13.99.2.255','1.2.643.5.1.13.13.11.1468','1.2.643.5.1.13.13.99.2.166'])]/observation/text[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-1.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry/observation/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-1.1.2) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']">
            <report test="@nullFlavor">(Требование: У3-2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-2.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/observation">
            <report test="@nullFlavor">(Требование: У3-2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-2.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/observation/code">
            <report test="@nullFlavor">(Требование: У3-2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.255', '1.2.643.5.1.13.13.11.1387']"
                >(Требование: У3-2.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.255"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-2.1.1) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-2.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@code = '1010']">
            <report test="@nullFlavor">(Требование: У3-3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-3.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@code = '1010']/observation">
            <report test="@nullFlavor">(Требование: У3-3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-3.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@code = '1010']/observation/code">
            <report test="@nullFlavor">(Требование: У3-3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1010'">(Требование: У3-3.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1010"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-3.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-3.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@code = '1010']/observation/value">
            <report test="@nullFlavor">(Требование: У3-3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@code='1010']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-3.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-3.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1468']">
            <report test="@nullFlavor">(Требование: У3-4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1468']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-4.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1468'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1468']/observation">
            <report test="@nullFlavor">(Требование: У3-4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1468']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-4.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1468']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSINFO']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1468']/observation/code">
            <report test="@nullFlavor">(Требование: У3-4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSINFO']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1468']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1468'">(Требование: У3-4.1.1) Элемент
                code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1468"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-4.1.1) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-4.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']">
            <report test="@nullFlavor">(Требование: У2-2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-2.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section">
            <report test="@nullFlavor">(Требование: У2-2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-2.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-2.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-2.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section) </assert>
            <assert
                test="count(entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']) = 1"
                >(Требование: У3-5) Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/code">
            <report test="@nullFlavor">(Требование: У2-2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'SCORES'">(Требование: У2-2.1.1) Элемент code обязан содержать
                один атрибут @code со значением "SCORES"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-2.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-2.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/title">
            <report test="@nullFlavor">(Требование: У2-2.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-2.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/text">
            <report test="@nullFlavor">(Требование: У2-2.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-2.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']">
            <report test="@nullFlavor">(Требование: У3-5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-5.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation">
            <report test="@nullFlavor">(Требование: У3-5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-5.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-5.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-5.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(effectiveTime) = [0, 1]">(Требование: У3-5.1.2) Элемент observation
                МОЖЕТ содержать не более одного [0..1] элемента effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-5.1.3) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(performer) = [0, 1]">(Требование: У3-5.1.4) Элемент observation
                МОЖЕТ содержать не более одного [0..1] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '8019']) = 1"
                >(Требование: У3-5.1.5) Элемент observation ОБЯЗАН содержать один [1..1] элемент
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/code">
            <report test="@nullFlavor">(Требование: У3-5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '85'">(Требование: У3-5.1.1) Элемент code обязан содержать один
                атрибут @code со значением "85"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1514'">(Требование: У3-5.1.1) Элемент
                code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1514"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">(Требование: У3-5.1.2) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/value">
            <report test="@nullFlavor">(Требование: У3-5.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-5.1.3) Элемент value обязан содержать
                один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-5.1.3) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-5.1.3) Элемент value обязан содержать один
                атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-5.1.3.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-5.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-5.1.3.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.3.1) Элемент translation обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-5.1.3.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.3.1) Элемент translation обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-5.1.3.1) Элемент translation обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.3.1) Элемент translation
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer">
            <report test="@nullFlavor">(Требование: У3-5.1.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(modeCode) = 1">(Требование: У3-5.1.4.1) Элемент performer ОБЯЗАН
                содержать один [1..1] элемент modeCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer) </assert>
            <assert test="count(assignedEntity) = 1">(Требование: У3-5.1.4.2) Элемент performer
                ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/modeCode">
            <report test="@nullFlavor">(Требование: У3-5.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/modeCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'AUTHOR'">(Требование: У3-5.1.4.1) Элемент modeCode обязан
                содержать один атрибут @code со значением "AUTHOR"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.368', '1.2.643.5.1.13.2.1.1.734']"
                >(Требование: У3-5.1.4.1) Элемент modeCode обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.368"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.4.1) Элемент modeCode обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.4.1) Элемент modeCode обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.4.1) Элемент modeCode обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[1]) = 1">(Требование: У3-5.1.4.2.1) Элемент assignedEntity ДОЛЖЕН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(id[2]) = 1">(Требование: У3-5.1.4.2.2) Элемент assignedEntity ДОЛЖЕН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У3-5.1.4.2.3) Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У3-5.1.4.2.4) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">(Требование: У3-5.1.4.2.5)
                Элемент assignedEntity МОЖЕТ содержать не более одного [0..1] элемента
                representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="@root != ''">(Требование: У3-5.1.4.2.1) Элемент id должен содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование:
                У3-5.1.4.2.1) Элемент id должен содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У3-5.1.4.2.1) Элемент id должен содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[1][@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[2][not(@nullFlavor)]">
            <assert test="@root = '1.2.643.100.3'">(Требование: У3-5.1.4.2.2) Элемент id должен
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У3-5.1.4.2.2) Элемент id должен содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/id[2][@nullFlavor]">
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У3-5.1.4.2.3) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.4.2.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-5.1.4.2.3) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.4.2.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.4.2.3) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У3-5.1.4.2.4.1) Элемент assignedPerson
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У3-5.1.4.2.4.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У3-5.1.4.2.4.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У3-5.1.4.2.4.1.3)
                Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.4.1.1) Элемент family должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.4.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.4.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.4.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">(Требование: У3-5.1.4.2.5) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У3-5.1.4.2.5.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У3-5.1.4.2.5.2) Элемент
                representedOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-5.1.4.2.5.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-5.1.4.2.5.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-5.1.4.2.5.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-5.1.4.2.5.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-5.1.4.2.5.1) Элемент id должен содержать один атрибут @extension с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.5.2) Элемент name должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-5.1.4.2.5.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-5.1.4.2.5.3) Элемент telecom должен содержать один атрибут @use с
                не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-5.1.4.2.5.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-5.1.4.2.5.4) Элемент addr
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-5.1.4.2.5.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-5.1.4.2.5.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-5.1.4.2.5.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-5.1.4.2.5.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-5.1.4.2.5.4.4) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.5.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-5.1.4.2.5.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.4.2.5.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-5.1.4.2.5.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.4.2.5.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.4.2.5.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-5.1.4.2.5.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-5.1.4.2.5.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-5.1.4.2.5.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-5.1.4.2.5.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-5.1.4.2.5.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-5.1.4.2.5.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']">
            <report test="@nullFlavor">(Требование: У3-5.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">(Требование: У3-5.1.5) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">(Требование: У3-5.1.5.1) Элемент entryRelationship
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation">
            <report test="@nullFlavor">(Требование: У3-5.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-5.1.5.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-5.1.5.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-5.1.5.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-5.1.5.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation/code">
            <report test="@nullFlavor">(Требование: У3-5.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8019'">(Требование: У3-5.1.5.1.1) Элемент code обязан содержать
                один атрибут @code со значением "8019"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-5.1.5.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.5.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'SCORES']/section/entry[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code = '8019']/observation/value">
            <report test="@nullFlavor">(Требование: У3-5.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='SCORES']/section/entry[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1514']/observation/entryRelationship[observation/code/@code='8019']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">(Требование: У3-5.1.5.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "CD"</assert>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1516'">(Требование: У3-5.1.5.1.2)
                Элемент value обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1516"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-5.1.5.1.2) Элемент value обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-5.1.5.1.2) Элемент value обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-5.1.5.1.2) Элемент value обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-5.1.5.1.2) Элемент value обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']">
            <report test="@nullFlavor">(Требование: У2-3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-3.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section">
            <report test="@nullFlavor">(Требование: У2-3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-3.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-3.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-3.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section) </assert>
            <assert
                test="count(entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']) = 1"
                >(Требование: У3-6) Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/code">
            <report test="@nullFlavor">(Требование: У2-3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'DONORINFO'">(Требование: У2-3.1.1) Элемент code обязан содержать
                один атрибут @code со значением "DONORINFO"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-3.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-3.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/title">
            <report test="@nullFlavor">(Требование: У2-3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-3.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/text">
            <report test="@nullFlavor">(Требование: У2-3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-3.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']">
            <report test="@nullFlavor">(Требование: У3-6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(substanceAdministration) = 1">(Требование: У3-6.1) Элемент entry
                ОБЯЗАН содержать один [1..1] элемент substanceAdministration
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration">
            <report test="@nullFlavor">(Требование: У3-6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'SBADM'">(Требование: У3-6.1) Элемент substanceAdministration
                обязан содержать один атрибут @classCode со значением "SBADM"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-6.1) Элемент substanceAdministration
                обязан содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-6.1.1) Элемент
                substanceAdministration ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration) </assert>
            <assert test="count(doseQuantity) = 1">(Требование: У3-6.1.2) Элемент
                substanceAdministration ОБЯЗАН содержать один [1..1] элемент doseQuantity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration) </assert>
            <assert test="count(consumable) = 1">(Требование: У3-6.1.3) Элемент
                substanceAdministration ОБЯЗАН содержать один [1..1] элемент consumable
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration) </assert>
            <assert test="count(participant[@typeCode = 'ORG']) = [0, 1]">(Требование: У3-6.1.4)
                Элемент substanceAdministration МОЖЕТ содержать не более одного [0..1] элемента
                participant
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration) </assert>
            <assert test="count(entryRelationship[organizer]) = 1">(Требование: У3-6.1.5) Элемент
                substanceAdministration ОБЯЗАН содержать один [1..1] элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '1003']) = 1"
                >(Требование: У3-6.1.6) Элемент substanceAdministration ОБЯЗАН содержать один [1..1]
                элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-6.1.1) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/doseQuantity">
            <report test="@nullFlavor">(Требование: У3-6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/doseQuantity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-6.1.2) Элемент doseQuantity обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-6.1.2) Элемент doseQuantity обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-6.1.2.1) Элемент doseQuantity
                ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/doseQuantity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/doseQuantity/translation">
            <report test="@nullFlavor">(Требование: У3-6.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/doseQuantity/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-6.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.2.1) Элемент translation обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-6.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.2.1) Элемент translation обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.2.1) Элемент translation обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable">
            <report test="@nullFlavor">(Требование: У3-6.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(manufacturedProduct) = 1">(Требование: У3-6.1.3.1) Элемент
                consumable ОБЯЗАН содержать один [1..1] элемент manufacturedProduct
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'MANU'">(Требование: У3-6.1.3.1) Элемент manufacturedProduct
                обязан содержать один атрибут @classCode со значением "MANU"</assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.93']) = 1"
                >(Требование: У3-6.1.3.1.1) Элемент manufacturedProduct ОБЯЗАН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct) </assert>
            <assert test="count(manufacturedMaterial) = 1">(Требование: У3-6.1.3.1.2) Элемент
                manufacturedProduct ОБЯЗАН содержать один [1..1] элемент manufacturedMaterial
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct) </assert>
            <assert test="count(manufacturerOrganization) = 1">(Требование: У3-6.1.3.1.3) Элемент
                manufacturedProduct ОБЯЗАН содержать один [1..1] элемент manufacturerOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/id[substring(@root, string-length(@root) - 2) = '.93']">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/id[substring(@root,
                string-length(@root) - 2)='.93'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-6.1.3.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.93</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.93$')">(Требование:
                У3-6.1.3.1.1) Элемент id обязан содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.93</assert>
            <assert test="@extension != ''">(Требование: У3-6.1.3.1.1) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'MMAT'">(Требование: У3-6.1.3.1.2) Элемент
                manufacturedMaterial обязан содержать один атрибут @classCode со значением
                "MMAT"</assert>
            <assert test="count(code) = 1">(Требование: У3-6.1.3.1.2.1) Элемент manufacturedMaterial
                ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1386'">(Требование: У3-6.1.3.1.2.1)
                Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1386"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.3.1.2.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.3.1.2.1) Элемент code обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.3.1.2.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.3.1.2.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У3-6.1.3.1.3.1) Элемент manufacturerOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У3-6.1.3.1.3.2) Элемент
                manufacturerOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-6.1.3.1.3.3) Элемент
                manufacturerOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-6.1.3.1.3.4) Элемент
                manufacturerOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-6.1.3.1.3.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-6.1.3.1.3.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-6.1.3.1.3.1) Элемент id должен содержать один атрибут @extension с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/name">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-6.1.3.1.3.2) Элемент name должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/telecom[not(@nullFlavor)]">
            <assert test="@value != ''">(Требование: У3-6.1.3.1.3.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-6.1.3.1.3.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-6.1.3.1.3.3) Элемент telecom должен содержать один атрибут @use с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine) = 1">(Требование: У3-6.1.3.1.3.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-6.1.3.1.3.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-6.1.3.1.3.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-6.1.3.1.3.4.4) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-6.1.3.1.3.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-6.1.3.1.3.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.3.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.3.1.3.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.3.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.3.1.3.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-6.1.3.1.3.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-6.1.3.1.3.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-6.1.3.1.3.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-6.1.3.1.3.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-6.1.3.1.3.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/consumable/manufacturedProduct/manufacturerOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-6.1.3.1.3.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']">
            <report test="@nullFlavor">(Требование: У3-6.1.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'ORG'">(Требование: У3-6.1.4) Элемент participant обязан
                содержать один атрибут @typeCode со значением "ORG"</assert>
            <assert test="count(participantRole) = 1">(Требование: У3-6.1.4.1) Элемент participant
                ОБЯЗАН содержать один [1..1] элемент participantRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']/participantRole">
            <report test="@nullFlavor">(Требование: У3-6.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id) = 1">(Требование: У3-6.1.4.1.1) Элемент participantRole ДОЛЖЕН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole) </assert>
            <assert test="count(playingEntity) = 1">(Требование: У3-6.1.4.1.2) Элемент
                participantRole ОБЯЗАН содержать один [1..1] элемент playingEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']/participantRole/id[not(@nullFlavor)]">
            <assert test="@root != ''">(Требование: У3-6.1.4.1.1) Элемент id должен содержать один
                атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-6.1.4.1.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-6.1.4.1.1) Элемент id должен содержать один атрибут @extension с не
                пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']/participantRole/id[@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']/participantRole/playingEntity">
            <report test="@nullFlavor">(Требование: У3-6.1.4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole/playingEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У3-6.1.4.1.2.1) Элемент playingEntity ОБЯЗАН
                содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole/playingEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode = 'ORG']/participantRole/playingEntity/name">
            <report test="@nullFlavor">(Требование: У3-6.1.4.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/participant[@typeCode='ORG']/participantRole/playingEntity/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-6.1.4.1.2.1) Элемент name должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[organizer]">
            <report test="@nullFlavor">(Требование: У3-6.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">(Требование: У3-6.1.5) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "REFR"</assert>
            <assert test="count(organizer) = 1">(Требование: У3-6.1.5.1) Элемент entryRelationship
                ОБЯЗАН содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'CLUSTER'">(Требование: У3-6.1.5.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "CLUSTER"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-6.1.5.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(statusCode) = 1">(Требование: У3-6.1.5.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer) </assert>
            <assert test="count(component) = 1">(Требование: У3-6.1.5.1.2) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-6.1.5.1.1) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer) = 1">(Требование: У3-6.1.5.1.2.1) Элемент component
                ОБЯЗАН содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'BATTERY'">(Требование: У3-6.1.5.1.2.1) Элемент organizer
                обязан содержать один атрибут @classCode со значением "BATTERY"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-6.1.5.1.2.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-6.1.5.1.2.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer) </assert>
            <assert test="count(statusCode) = 1">(Требование: У3-6.1.5.1.2.1.2) Элемент organizer
                ОБЯЗАН содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer) </assert>
            <assert
                test="count(component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']) >= 3"
                >(Требование: У3-6.1.5.1.2.1.3) Элемент organizer ОБЯЗАН содержать не менее трёх
                [3..*] элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/code">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(originalText) = 1">(Требование: У3-6.1.5.1.2.1.1.1) Элемент code
                ОБЯЗАН содержать один [1..1] элемент originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/code/originalText">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-6.1.5.1.2.1.1.1) Элемент originalText должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-6.1.5.1.2.1.2) Элемент statusCode
                обязан содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-6.1.5.1.2.1.3.1) Элемент component
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-6.1.5.1.2.1.3.1) Элемент observation
                обязан содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-6.1.5.1.2.1.3.1) Элемент observation
                обязан содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-6.1.5.1.2.1.3.1.2) Элемент
                observation ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(interpretationCode) = 1">(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент
                observation ДОЛЖЕН содержать один [1..1] элемент interpretationCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(specimen) = 1">(Требование: У3-6.1.5.1.2.1.3.1.5) Элемент
                observation ОБЯЗАН содержать один [1..1] элемент specimen
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/code">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1080'">(Требование:
                У3-6.1.5.1.2.1.3.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1080"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент code
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.5.1.2.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-6.1.5.1.2.1.3.1.2) Элемент effectiveTime
                обязан содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/value">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value обязан
                содержать один атрибут @xsi:type со значением "CD"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1061', '1.2.643.5.1.13.2.1.1.719', '1.2.643.5.1.13.2.1.1.703']"
                >(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1061"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.5.1.2.1.3.1.3) Элемент value
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/interpretationCode[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.257', '1.2.643.5.1.13.2.1.1.1504.204', '1.2.643.5.1.13.13.11.1381']"
                >(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент interpretationCode должен содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.257"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент interpretationCode
                должен содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.5.1.2.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/interpretationCode[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(specimenRole) = 1">(Требование: У3-6.1.5.1.2.1.3.1.5.1) Элемент
                specimen ОБЯЗАН содержать один [1..1] элемент specimenRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.66']) = 1"
                >(Требование: У3-6.1.5.1.2.1.3.1.5.1.1) Элемент specimenRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole) </assert>
            <assert test="count(specimenPlayingEntity) = 1">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2)
                Элемент specimenRole ОБЯЗАН содержать один [1..1] элемент specimenPlayingEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root, string-length(@root) - 2) = '.66']">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root,
                string-length(@root) - 2)='.66'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.66$')">(Требование:
                У3-6.1.5.1.2.1.3.1.5.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="@extension != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ENT'">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2) Элемент
                specimenPlayingEntity обязан содержать один атрибут @classCode со значением
                "ENT"</assert>
            <assert test="@determinerCode = 'INSTANCE'">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2)
                Элемент specimenPlayingEntity обязан содержать один атрибут @determinerCode со
                значением "INSTANCE"</assert>
            <assert test="count(code) = 1">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент
                specimenPlayingEntity ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code">
            <report test="@nullFlavor">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1081'">(Требование:
                У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.11.1081"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент
                code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент
                code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.5.1.2.1.3.1.5.1.2.1) Элемент code
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']">
            <report test="@nullFlavor">(Требование: У3-6.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">(Требование: У3-6.1.6) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "REFR"</assert>
            <assert test="count(observation) = 1">(Требование: У3-6.1.6.1) Элемент entryRelationship
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']/observation">
            <report test="@nullFlavor">(Требование: У3-6.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-6.1.6.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-6.1.6.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-6.1.6.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-6.1.6.1.2) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']/observation/code">
            <report test="@nullFlavor">(Требование: У3-6.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1003'">(Требование: У3-6.1.6.1.1) Элемент code обязан содержать
                один атрибут @code со значением "1003"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-6.1.6.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-6.1.6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-6.1.6.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-6.1.6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']/observation/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-6.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(low) = 1">(Требование: У3-6.1.6.1.2.1) Элемент effectiveTime ОБЯЗАН
                содержать один [1..1] элемент low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/effectiveTime) </assert>
            <assert test="count(high) = 1">(Требование: У3-6.1.6.1.2.2) Элемент effectiveTime ОБЯЗАН
                содержать один [1..1] элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']/observation/effectiveTime/low">
            <report test="@nullFlavor">(Требование: У3-6.1.6.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/effectiveTime/low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-6.1.6.1.2.1) Элемент low обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem = '1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code = '1003']/observation/effectiveTime/high">
            <report test="@nullFlavor">(Требование: У3-6.1.6.1.2.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DONORINFO']/section/entry[substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code/@codeSystem='1.2.643.5.1.13.13.11.1386']/substanceAdministration/entryRelationship[observation/code/@code='1003']/observation/effectiveTime/high
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-6.1.6.1.2.2) Элемент high обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']">
            <report test="@nullFlavor">(Требование: У2-4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-4.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section">
            <report test="@nullFlavor">(Требование: У2-4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-4.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-4.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-4.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section) </assert>
            <assert test="count(entry) = 1">(Требование: У3-7) Элемент section ОБЯЗАН содержать один
                [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/code">
            <report test="@nullFlavor">(Требование: У2-4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'RESLAB'">(Требование: У2-4.1.1) Элемент code обязан содержать
                один атрибут @code со значением "RESLAB"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-4.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-4.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/title">
            <report test="@nullFlavor">(Требование: У2-4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-4.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/text">
            <report test="@nullFlavor">(Требование: У2-4.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-4.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry">
            <report test="@nullFlavor">(Требование: У3-7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer) = 1">(Требование: У3-7.1) Элемент entry ОБЯЗАН содержать
                один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer">
            <report test="@nullFlavor">(Требование: У3-7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'CLUSTER'">(Требование: У3-7.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "CLUSTER"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-7.1) Элемент organizer обязан содержать
                один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(statusCode) = 1">(Требование: У3-7.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer) </assert>
            <assert test="count(reference) = [0, 1]">(Требование: У3-7.1.2) Элемент organizer МОЖЕТ
                содержать не более одного [0..1] элемента reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer) </assert>
            <assert test="count(component) = 1">(Требование: У3-7.1.3) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-7.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-7.1.1) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/reference[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-7.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">(Требование: У3-7.1.2) Элемент reference обязан
                содержать один атрибут @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">(Требование: У3-7.1.2.1) Элемент reference
                ОБЯЗАН содержать один [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/reference/externalDocument">
            <report test="@nullFlavor">(Требование: У3-7.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.51']) = 1"
                >(Требование: У3-7.1.2.1.1) Элемент externalDocument ОБЯЗАН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/reference/externalDocument/id[substring(@root, string-length(@root) - 2) = '.51']">
            <report test="@nullFlavor">(Требование: У3-7.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/reference/externalDocument/id[substring(@root,
                string-length(@root) - 2)='.51'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-7.1.2.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">(Требование:
                У3-7.1.2.1.1) Элемент id обязан содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">(Требование: У3-7.1.2.1.1) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component">
            <report test="@nullFlavor">(Требование: У3-7.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer) = 1">(Требование: У3-7.1.3.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'BATTERY'">(Требование: У3-7.1.3.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "BATTERY"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-7.1.3.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-7.1.3.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer) </assert>
            <assert test="count(statusCode) = 1">(Требование: У3-7.1.3.1.2) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer) </assert>
            <assert
                test="count(component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']) >= 3"
                >(Требование: У3-7.1.3.1.3) Элемент organizer ОБЯЗАН содержать не менее трёх [3..*]
                элементов component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/code">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(originalText) = 1">(Требование: У3-7.1.3.1.1.1) Элемент code ОБЯЗАН
                содержать один [1..1] элемент originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/code/originalText">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.1.1) Элемент originalText должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-7.1.3.1.2) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-7.1.3.1.3.1) Элемент component
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-7.1.3.1.3.1) Элемент observation
                обязан содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-7.1.3.1.3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-7.1.3.1.3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-7.1.3.1.3.1.2) Элемент
                observation ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-7.1.3.1.3.1.3) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(interpretationCode) = 1">(Требование: У3-7.1.3.1.3.1.4) Элемент
                observation ДОЛЖЕН содержать один [1..1] элемент interpretationCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(specimen) = 1">(Требование: У3-7.1.3.1.3.1.5) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент specimen
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(performer) >= 1">(Требование: У3-7.1.3.1.3.1.6) Элемент observation
                ОБЯЗАН содержать не менее одного [1..*] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(participant[@typeCode = 'DEV']) >= 1">(Требование: У3-7.1.3.1.3.1.7)
                Элемент observation ОБЯЗАН содержать не менее одного [1..*] элемента participant
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(referenceRange) = [0, 1]">(Требование: У3-7.1.3.1.3.1.8) Элемент
                observation МОЖЕТ содержать не более одного [0..1] элемента referenceRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/code">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1080'">(Требование: У3-7.1.3.1.3.1.1)
                Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1080"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.1) Элемент code обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.1) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.2) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/value">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'CD'">(Требование: У3-7.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @xsi:type со значением "CD"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.11.1061', '1.2.643.5.1.13.2.1.1.719', '1.2.643.5.1.13.2.1.1.703']"
                >(Требование: У3-7.1.3.1.3.1.3) Элемент value обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1061"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.3) Элемент value обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.3) Элемент value
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/interpretationCode[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.257', '1.2.643.5.1.13.2.1.1.1504.204', '1.2.643.5.1.13.13.11.1381']"
                >(Требование: У3-7.1.3.1.3.1.4) Элемент interpretationCode должен содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.257"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.4) Элемент interpretationCode
                должен содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.4) Элемент
                interpretationCode должен содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/interpretationCode[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(specimenRole) = 1">(Требование: У3-7.1.3.1.3.1.5.1) Элемент specimen
                ОБЯЗАН содержать один [1..1] элемент specimenRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.66']) = 1"
                >(Требование: У3-7.1.3.1.3.1.5.1.1) Элемент specimenRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole) </assert>
            <assert test="count(specimenPlayingEntity) = 1">(Требование: У3-7.1.3.1.3.1.5.1.2)
                Элемент specimenRole ОБЯЗАН содержать один [1..1] элемент specimenPlayingEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root, string-length(@root) - 2) = '.66']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root,
                string-length(@root) - 2)='.66'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-7.1.3.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.66$')">(Требование:
                У3-7.1.3.1.3.1.5.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="@extension != ''">(Требование: У3-7.1.3.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ENT'">(Требование: У3-7.1.3.1.3.1.5.1.2) Элемент
                specimenPlayingEntity обязан содержать один атрибут @classCode со значением
                "ENT"</assert>
            <assert test="@determinerCode = 'INSTANCE'">(Требование: У3-7.1.3.1.3.1.5.1.2) Элемент
                specimenPlayingEntity обязан содержать один атрибут @determinerCode со значением
                "INSTANCE"</assert>
            <assert test="count(code) = 1">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент
                specimenPlayingEntity ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1081'">(Требование:
                У3-7.1.3.1.3.1.5.1.2.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1081"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент code
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент
                code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.5.1.2.1) Элемент code
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">(Требование: У3-7.1.3.1.3.1.6.1) Элемент
                performer ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У3-7.1.3.1.3.1.6.1.1) Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование: У3-7.1.3.1.3.1.6.1.2)
                Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент assignedEntity
                ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.4) Элемент
                assignedEntity МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-7.1.3.1.3.1.6.1.5) Элемент
                assignedEntity МОЖЕТ содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У3-7.1.3.1.3.1.6.1.6) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = [0, 1]">(Требование:
                У3-7.1.3.1.3.1.6.1.7) Элемент assignedEntity МОЖЕТ содержать не более одного [0..1]
                элемента representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-7.1.3.1.3.1.6.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование:
                У3-7.1.3.1.3.1.6.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У3-7.1.3.1.3.1.6.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[@root='1.2.643.100.3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У3-7.1.3.1.3.1.6.1.2) Элемент id
                обязан содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У3-7.1.3.1.3.1.6.1.2) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент code обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент code
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.6.1.3) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.4) Элемент
                addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-7.1.3.1.3.1.6.1.4) Элемент addr должен содержать один атрибут @use
                с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.1) Элемент
                addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                addr ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.3) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.4) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.1) Элемент streetAddressLine
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент address:stateCode обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-7.1.3.1.3.1.6.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.4.4.2) Элемент fias:HOUSEGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.5) Элемент
                telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-7.1.3.1.3.1.6.1.5) Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.6.1.5) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У3-7.1.3.1.3.1.6.1.6.1) Элемент
                assignedPerson ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У3-7.1.3.1.3.1.6.1.6.1.1) Элемент name
                ОБЯЗАН содержать один [1..1] элемент family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У3-7.1.3.1.3.1.6.1.6.1.2) Элемент name
                ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование:
                У3-7.1.3.1.3.1.6.1.6.1.3) Элемент name МОЖЕТ содержать не более одного [0..1]
                элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.6.1.1) Элемент family должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.6.1.2) Элемент given должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">(Требование: У3-7.1.3.1.3.1.6.1.6.1.3) Элемент
                identity:Patronymic обязан содержать один атрибут @xsi:type со значением
                "ST"</assert>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.6.1.3) Элемент
                identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization[not(@nullFlavor)]">
            <assert test="@classCode = 'ORG'">(Требование: У3-7.1.3.1.3.1.6.1.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У3-7.1.3.1.3.1.6.1.7.1) Элемент representedOrganization ОБЯЗАН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.2) Элемент
                representedOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-7.1.3.1.3.1.6.1.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.7.1)
                Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-7.1.3.1.3.1.6.1.7.1) Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.7.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.2) Элемент name должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.7.3) Элемент
                telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-7.1.3.1.3.1.6.1.7.3) Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-7.1.3.1.3.1.6.1.7.4) Элемент
                addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-7.1.3.1.3.1.6.1.7.4) Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.1)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.3) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4) Элемент
                addr ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.7.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.1) Элемент streetAddressLine
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент address:stateCode обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4.2)
                Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4.1) Элемент fias:AOGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.6.1.7.4.4.2) Элемент fias:HOUSEGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'DEV'">(Требование: У3-7.1.3.1.3.1.7) Элемент participant
                обязан содержать один атрибут @typeCode со значением "DEV"</assert>
            <assert test="count(participantRole) = 1">(Требование: У3-7.1.3.1.3.1.7.1) Элемент
                participant ОБЯЗАН содержать один [1..1] элемент participantRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ROL'">(Требование: У3-7.1.3.1.3.1.7.1) Элемент
                participantRole обязан содержать один атрибут @classCode со значением "ROL"</assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.67']) = 1"
                >(Требование: У3-7.1.3.1.3.1.7.1.1) Элемент participantRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole) </assert>
            <assert test="count(playingDevice) = 1">(Требование: У3-7.1.3.1.3.1.7.1.2) Элемент
                participantRole ОБЯЗАН содержать один [1..1] элемент playingDevice
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/id[substring(@root, string-length(@root) - 2) = '.67']">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.7.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/id[substring(@root,
                string-length(@root) - 2)='.67'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-7.1.3.1.3.1.7.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.67$')">(Требование:
                У3-7.1.3.1.3.1.7.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="@extension != ''">(Требование: У3-7.1.3.1.3.1.7.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.7.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(manufacturerModelName) = 1">(Требование: У3-7.1.3.1.3.1.7.1.2.1)
                Элемент playingDevice ОБЯЗАН содержать один [1..1] элемент manufacturerModelName
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice/manufacturerModelName">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.7.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice/manufacturerModelName
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.7.1.2.1) Элемент
                manufacturerModelName должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observationRange) = 1">(Требование: У3-7.1.3.1.3.1.8.1) Элемент
                referenceRange ОБЯЗАН содержать один [1..1] элемент observationRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(text) = 1">(Требование: У3-7.1.3.1.3.1.8.1.1) Элемент
                observationRange ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange) </assert>
            <assert test="count(value) = 1">(Требование: У3-7.1.3.1.3.1.8.1.2) Элемент
                observationRange ОБЯЗАН содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange) </assert>
            <assert test="count(interpretationCode) = 1">(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент
                observationRange ДОЛЖЕН содержать один [1..1] элемент interpretationCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/text">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-7.1.3.1.3.1.8.1.1) Элемент text должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'IVL_PQ'">(Требование: У3-7.1.3.1.3.1.8.1.2) Элемент value
                обязан содержать один атрибут @xsi:type со значением "IVL_PQ"</assert>
            <assert test="count(low) = 1">(Требование: У3-7.1.3.1.3.1.8.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value) </assert>
            <assert test="count(high) = 1">(Требование: У3-7.1.3.1.3.1.8.1.2.2) Элемент value ОБЯЗАН
                содержать один [1..1] элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1) Элемент low обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1) Элемент low обязан
                содержать один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент low
                ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low/translation">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент translation обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент
                translation обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент translation
                обязан содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент translation
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.1.1) Элемент
                translation обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.2.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2) Элемент high обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2) Элемент high обязан
                содержать один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент
                high ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high/translation">
            <report test="@nullFlavor">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент translation обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@value != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент translation
                обязан содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент translation
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.8.1.2.2.1) Элемент
                translation обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/interpretationCode[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.257', '1.2.643.5.1.13.2.1.1.1504.204', '1.2.643.5.1.13.13.11.1381']"
                >(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент interpretationCode должен содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.257"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент
                interpretationCode должен содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент interpretationCode
                должен содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент
                interpretationCode должен содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-7.1.3.1.3.1.8.1.3) Элемент
                interpretationCode должен содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'RESLAB']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/interpretationCode[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']">
            <report test="@nullFlavor">(Требование: У2-5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-5.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section">
            <report test="@nullFlavor">(Требование: У2-5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-5.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-5.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-5.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1004']) = 1">(Требование: У3-8)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section) </assert>
            <assert
                test="count(entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']) >= 0"
                >(Требование: У3-9) Элемент section МОЖЕТ содержать произвольное количество [0..*]
                элементов entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1011']) = [0, 1]">(Требование:
                У3-10) Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/code">
            <report test="@nullFlavor">(Требование: У2-5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'TRANSFUSANAMN'">(Требование: У2-5.1.1) Элемент code обязан
                содержать один атрибут @code со значением "TRANSFUSANAMN"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-5.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-5.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/title">
            <report test="@nullFlavor">(Требование: У2-5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-5.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/text">
            <report test="@nullFlavor">(Требование: У2-5.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-5.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1004']">
            <report test="@nullFlavor">(Требование: У3-8) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-8.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1004']/observation">
            <report test="@nullFlavor">(Требование: У3-8.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-8.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-8.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-8.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-8.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1004']/observation/code">
            <report test="@nullFlavor">(Требование: У3-8.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1004'">(Требование: У3-8.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1004"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-8.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-8.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1004']/observation/value">
            <report test="@nullFlavor">(Требование: У3-8.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1004']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-8.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-8.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[not(observation)]">
            <report test="@nullFlavor">(Требование: У3-9) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(substanceAdministration) = 1">(Требование: У3-9.1) Элемент entry
                ОБЯЗАН содержать один [1..1] элемент substanceAdministration
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry/substanceAdministration">
            <report test="@nullFlavor">(Требование: У3-9.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'SBADM'">(Требование: У3-9.1) Элемент substanceAdministration
                обязан содержать один атрибут @classCode со значением "SBADM"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-9.1) Элемент substanceAdministration
                обязан содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-9.1.1) Элемент
                substanceAdministration ДОЛЖЕН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration) </assert>
            <assert test="count(consumable) = 1">(Требование: У3-9.1.2) Элемент
                substanceAdministration ОБЯЗАН содержать один [1..1] элемент consumable
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration) </assert>
            <assert
                test="count(entryRelationship[observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']) = 1"
                >(Требование: У3-9.1.3) Элемент substanceAdministration ОБЯЗАН содержать один [1..1]
                элемент entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">(Требование: У3-9.1.1) Элемент effectiveTime должен
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable">
            <report test="@nullFlavor">(Требование: У3-9.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(manufacturedProduct) = 1">(Требование: У3-9.1.2.1) Элемент
                consumable ОБЯЗАН содержать один [1..1] элемент manufacturedProduct
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct">
            <report test="@nullFlavor">(Требование: У3-9.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'MANU'">(Требование: У3-9.1.2.1) Элемент manufacturedProduct
                обязан содержать один атрибут @classCode со значением "MANU"</assert>
            <assert test="count(manufacturedMaterial) = 1">(Требование: У3-9.1.2.1.1) Элемент
                manufacturedProduct ОБЯЗАН содержать один [1..1] элемент manufacturedMaterial
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial">
            <report test="@nullFlavor">(Требование: У3-9.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'MMAT'">(Требование: У3-9.1.2.1.1) Элемент
                manufacturedMaterial обязан содержать один атрибут @classCode со значением
                "MMAT"</assert>
            <assert test="count(code) = 1">(Требование: У3-9.1.2.1.1.1) Элемент manufacturedMaterial
                ДОЛЖЕН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[not(@nullFlavor)]">
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1386'">(Требование: У3-9.1.2.1.1.1)
                Элемент code должен содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1386"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-9.1.2.1.1.1) Элемент code должен
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-9.1.2.1.1.1) Элемент code должен содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-9.1.2.1.1.1) Элемент code должен
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-9.1.2.1.1.1) Элемент code должен
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem = '1.2.643.5.1.13.13.99.2.255']/substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial/code[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry/substanceAdministration/entryRelationship">
            <report test="@nullFlavor">(Требование: У3-9.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/entryRelationship[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'RSON'">(Требование: У3-9.1.3) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "RSON"</assert>
            <assert test="@inversionInd = 'true'">(Требование: У3-9.1.3) Элемент entryRelationship
                обязан содержать один атрибут @inversionInd со значением "true"</assert>
            <assert test="count(observation) = 1">(Требование: У3-9.1.3.1) Элемент entryRelationship
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/entryRelationship[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry/substanceAdministration/entryRelationship/observation">
            <report test="@nullFlavor">(Требование: У3-9.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/entryRelationship[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-9.1.3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-9.1.3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-9.1.3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/entryRelationship[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry/substanceAdministration/entryRelationship/observation/code">
            <report test="@nullFlavor">(Требование: У3-9.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[substanceAdministration/entryRelationship/observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/substanceAdministration/entryRelationship[observation/code/@codeSystem='1.2.643.5.1.13.13.99.2.255']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.255', '1.2.643.5.1.13.13.11.1387']"
                >(Требование: У3-9.1.3.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.255"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-9.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-9.1.3.1.1) Элемент code обязан содержать один
                атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-9.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-9.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1011']">
            <report test="@nullFlavor">(Требование: У3-10) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-10.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1011']/observation">
            <report test="@nullFlavor">(Требование: У3-10.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-10.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-10.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-10.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-10.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1011']/observation/code">
            <report test="@nullFlavor">(Требование: У3-10.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1011'">(Требование: У3-10.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1011"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-10.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-10.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-10.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-10.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSANAMN']/section/entry[observation/code/@code = '1011']/observation/value">
            <report test="@nullFlavor">(Требование: У3-10.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSANAMN']/section/entry[observation/code/@code='1011']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-10.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-10.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']">
            <report test="@nullFlavor">(Требование: У2-6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-6.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section">
            <report test="@nullFlavor">(Требование: У2-6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-6.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-6.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-6.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1005']) = 1">(Требование: У3-11)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1006']) = 1">(Требование: У3-12)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section) </assert>
            <assert test="count(entry[observation/code/@code = '1007']) = 1">(Требование: У3-13)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/code">
            <report test="@nullFlavor">(Требование: У2-6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'OBSTETRICANAMN'">(Требование: У2-6.1.1) Элемент code обязан
                содержать один атрибут @code со значением "OBSTETRICANAMN"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-6.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-6.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/title">
            <report test="@nullFlavor">(Требование: У2-6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-6.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/text">
            <report test="@nullFlavor">(Требование: У2-6.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-6.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1005']">
            <report test="@nullFlavor">(Требование: У3-11) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-11.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1005']/observation">
            <report test="@nullFlavor">(Требование: У3-11.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-11.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-11.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-11.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-11.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1005']/observation/code">
            <report test="@nullFlavor">(Требование: У3-11.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1005'">(Требование: У3-11.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1005"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-11.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-11.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-11.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-11.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1005']/observation/value">
            <report test="@nullFlavor">(Требование: У3-11.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1005']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'INT'">(Требование: У3-11.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "INT"</assert>
            <assert test="@value != ''">(Требование: У3-11.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1006']">
            <report test="@nullFlavor">(Требование: У3-12) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-12.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1006']/observation">
            <report test="@nullFlavor">(Требование: У3-12.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-12.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-12.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-12.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-12.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1006']/observation/code">
            <report test="@nullFlavor">(Требование: У3-12.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1006'">(Требование: У3-12.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1006"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-12.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-12.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-12.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-12.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1006']/observation/value">
            <report test="@nullFlavor">(Требование: У3-12.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1006']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'INT'">(Требование: У3-12.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "INT"</assert>
            <assert test="@value != ''">(Требование: У3-12.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1007']">
            <report test="@nullFlavor">(Требование: У3-13) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-13.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1007']/observation">
            <report test="@nullFlavor">(Требование: У3-13.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-13.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-13.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-13.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-13.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1007']/observation/code">
            <report test="@nullFlavor">(Требование: У3-13.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1007'">(Требование: У3-13.1.1) Элемент code обязан содержать один
                атрибут @code со значением "1007"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-13.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-13.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-13.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-13.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'OBSTETRICANAMN']/section/entry[observation/code/@code = '1007']/observation/value">
            <report test="@nullFlavor">(Требование: У3-13.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='OBSTETRICANAMN']/section/entry[observation/code/@code='1007']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">(Требование: У3-13.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
            <assert test=". != ''">(Требование: У3-13.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']">
            <report test="@nullFlavor">(Требование: У2-7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-7.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section">
            <report test="@nullFlavor">(Требование: У2-7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-7.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-7.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-7.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section) </assert>
            <assert test="count(entry[organizer]) = [0, 1]">(Требование: У3-14) Элемент section МОЖЕТ содержать
                не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section) </assert>
            <assert test="count(entry[observation/code/@code = '837']) = [0, 1]">(Требование: У3-15)
                Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8022']) = [0, 1]">(Требование:
                У3-16) Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/code">
            <report test="@nullFlavor">(Требование: У2-7.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'TRANSFUSRSRCH'">(Требование: У2-7.1.1) Элемент code обязан
                содержать один атрибут @code со значением "TRANSFUSRSRCH"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-7.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-7.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-7.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-7.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/title">
            <report test="@nullFlavor">(Требование: У2-7.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-7.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/text">
            <report test="@nullFlavor">(Требование: У2-7.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-7.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[organizer]">
            <report test="@nullFlavor">(Требование: У3-14) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer) = 1">(Требование: У3-14.1) Элемент entry ОБЯЗАН содержать
                один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer">
            <report test="@nullFlavor">(Требование: У3-14.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'CLUSTER'">(Требование: У3-14.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "CLUSTER"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-14.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(statusCode) = 1">(Требование: У3-14.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer) </assert>
            <assert test="count(reference) = 1">(Требование: У3-14.1.2) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент reference
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer) </assert>
            <assert test="count(component) = 1">(Требование: У3-14.1.3) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-14.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-14.1.1) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/reference">
            <report test="@nullFlavor">(Требование: У3-14.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/reference
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'REFR'">(Требование: У3-14.1.2) Элемент reference обязан
                содержать один атрибут @typeCode со значением "REFR"</assert>
            <assert test="count(externalDocument) = 1">(Требование: У3-14.1.2.1) Элемент reference
                ОБЯЗАН содержать один [1..1] элемент externalDocument
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/reference)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/reference/externalDocument">
            <report test="@nullFlavor">(Требование: У3-14.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/reference/externalDocument
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id) = 1">(Требование: У3-14.1.2.1.1) Элемент externalDocument ДОЛЖЕН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/reference/externalDocument)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/reference/externalDocument/id[not(@nullFlavor)]">
            <assert test="@root != ''">(Требование: У3-14.1.2.1.1) Элемент id должен содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.51$')">(Требование:
                У3-14.1.2.1.1) Элемент id должен содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51</assert>
            <assert test="@extension != ''">(Требование: У3-14.1.2.1.1) Элемент id должен содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/reference/externalDocument/id[@nullFlavor]">
            <report test="@root">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @root</report>
            <report test="@extension">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @extension</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component">
            <report test="@nullFlavor">(Требование: У3-14.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer) = 1">(Требование: У3-14.1.3.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'BATTERY'">(Требование: У3-14.1.3.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "BATTERY"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-14.1.3.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-14.1.3.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer) </assert>
            <assert test="count(statusCode) = 1">(Требование: У3-14.1.3.1.2) Элемент organizer
                ОБЯЗАН содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer) </assert>
            <assert
                test="count(component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']) >= 1"
                >(Требование: У3-14.1.3.1.3) Элемент organizer ОБЯЗАН содержать не менее одного
                [1..*] элемента component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/code">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(originalText) = 1">(Требование: У3-14.1.3.1.1.1) Элемент code ОБЯЗАН
                содержать один [1..1] элемент originalText
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/code)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/code/originalText">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/code/originalText
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.1.1) Элемент originalText должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/statusCode">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-14.1.3.1.2) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-14.1.3.1.3.1) Элемент component
                ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-14.1.3.1.3.1) Элемент observation
                обязан содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-14.1.3.1.3.1) Элемент observation
                обязан содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-14.1.3.1.3.1.1) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-14.1.3.1.3.1.2) Элемент
                observation ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-14.1.3.1.3.1.3) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(specimen) = 1">(Требование: У3-14.1.3.1.3.1.4) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент specimen
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(performer) >= 1">(Требование: У3-14.1.3.1.3.1.5) Элемент observation
                ОБЯЗАН содержать не менее одного [1..*] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(participant[@typeCode = 'DEV']) >= 1">(Требование:
                У3-14.1.3.1.3.1.6) Элемент observation ОБЯЗАН содержать не менее одного [1..*]
                элемента participant
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation) </assert>
            <assert test="count(referenceRange) = [0, 1]">(Требование: У3-14.1.3.1.3.1.7) Элемент
                observation МОЖЕТ содержать не более одного [0..1] элемента referenceRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/code">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1080'">(Требование: У3-14.1.3.1.3.1.1)
                Элемент code обязан содержать один атрибут @codeSystem со значением
                "1.2.643.5.1.13.13.11.1080"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.1) Элемент code обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.1) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.2) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/value">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-14.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-14.1.3.1.3.1.3) Элемент value обязан
                содержать один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-14.1.3.1.3.1.3.1) Элемент value
                ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-14.1.3.1.3.1.3.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.3.1) Элемент
                translation обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.3.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.3.1) Элемент translation обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.3.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.3.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(specimenRole) = 1">(Требование: У3-14.1.3.1.3.1.4.1) Элемент
                specimen ОБЯЗАН содержать один [1..1] элемент specimenRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.66']) = 1"
                >(Требование: У3-14.1.3.1.3.1.4.1.1) Элемент specimenRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole) </assert>
            <assert test="count(specimenPlayingEntity) = 1">(Требование: У3-14.1.3.1.3.1.4.1.2)
                Элемент specimenRole ОБЯЗАН содержать один [1..1] элемент specimenPlayingEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root, string-length(@root) - 2) = '.66']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/id[substring(@root,
                string-length(@root) - 2)='.66'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-14.1.3.1.3.1.4.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.66$')">(Требование:
                У3-14.1.3.1.3.1.4.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.66</assert>
            <assert test="@extension != ''">(Требование: У3-14.1.3.1.3.1.4.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ENT'">(Требование: У3-14.1.3.1.3.1.4.1.2) Элемент
                specimenPlayingEntity обязан содержать один атрибут @classCode со значением
                "ENT"</assert>
            <assert test="@determinerCode = 'INSTANCE'">(Требование: У3-14.1.3.1.3.1.4.1.2) Элемент
                specimenPlayingEntity обязан содержать один атрибут @determinerCode со значением
                "INSTANCE"</assert>
            <assert test="count(code) = 1">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент
                specimenPlayingEntity ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/specimen/specimenRole/specimenPlayingEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = '1.2.643.5.1.13.13.11.1081'">(Требование:
                У3-14.1.3.1.3.1.4.1.2.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.11.1081"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент code
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент
                code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.4.1.2.1) Элемент code
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">(Требование: У3-14.1.3.1.3.1.5.1) Элемент
                performer ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У3-14.1.3.1.3.1.5.1.1) Элемент assignedEntity ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование:
                У3-14.1.3.1.3.1.5.1.2) Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент
                id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.4) Элемент
                assignedEntity МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-14.1.3.1.3.1.5.1.5) Элемент
                assignedEntity МОЖЕТ содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У3-14.1.3.1.3.1.5.1.6) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7)
                Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-14.1.3.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование:
                У3-14.1.3.1.3.1.5.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У3-14.1.3.1.3.1.5.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/id[@root='1.2.643.100.3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У3-14.1.3.1.3.1.5.1.2) Элемент id
                обязан содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У3-14.1.3.1.3.1.5.1.2) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент code обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент code
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент code обязан
                содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.5.1.3) Элемент code
                обязан содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.4) Элемент
                addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-14.1.3.1.3.1.5.1.4) Элемент addr должен содержать один атрибут @use
                с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.1)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.2)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.3) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.4) Элемент
                addr ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.1) Элемент streetAddressLine
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент address:stateCode обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-14.1.3.1.3.1.5.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.4.1) Элемент fias:AOGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.4.4.2) Элемент fias:HOUSEGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.5) Элемент
                telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-14.1.3.1.3.1.5.1.5) Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.5.1.5) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У3-14.1.3.1.3.1.5.1.6.1) Элемент
                assignedPerson ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У3-14.1.3.1.3.1.5.1.6.1.1) Элемент name
                ОБЯЗАН содержать один [1..1] элемент family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У3-14.1.3.1.3.1.5.1.6.1.2) Элемент name
                ОБЯЗАН содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование:
                У3-14.1.3.1.3.1.5.1.6.1.3) Элемент name МОЖЕТ содержать не более одного [0..1]
                элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.6.1.1) Элемент family должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.6.1.2) Элемент given должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.6.1.3) Элемент
                identity:Patronymic должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization">
            <assert test="@classCode = 'ORG'">(Требование: У3-14.1.3.1.3.1.5.1.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У3-14.1.3.1.3.1.5.1.7.1) Элемент representedOrganization ОБЯЗАН
                содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.2) Элемент
                representedOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-14.1.3.1.3.1.5.1.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4) Элемент
                representedOrganization ДОЛЖЕН содержать один [1..1] элемент addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.7.1)
                Элемент id должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-14.1.3.1.3.1.5.1.7.1) Элемент id должен содержать один атрибут
                @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.7.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.2) Элемент name должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.7.3) Элемент
                telecom должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-14.1.3.1.3.1.5.1.7.3) Элемент telecom должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-14.1.3.1.3.1.5.1.7.4) Элемент
                addr должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-14.1.3.1.3.1.5.1.7.4) Элемент addr должен содержать один атрибут
                @use с не пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.1)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2)
                Элемент addr ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.3) Элемент
                addr ДОЛЖЕН содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4) Элемент
                addr ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.7.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.1) Элемент streetAddressLine
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент address:stateCode обязан содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4.2)
                Элемент fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4.1) Элемент fias:AOGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.5.1.7.4.4.2) Элемент fias:HOUSEGUID
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'DEV'">(Требование: У3-14.1.3.1.3.1.6) Элемент participant
                обязан содержать один атрибут @typeCode со значением "DEV"</assert>
            <assert test="count(participantRole) = 1">(Требование: У3-14.1.3.1.3.1.6.1) Элемент
                participant ОБЯЗАН содержать один [1..1] элемент participantRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ROL'">(Требование: У3-14.1.3.1.3.1.6.1) Элемент
                participantRole обязан содержать один атрибут @classCode со значением "ROL"</assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.67']) = 1"
                >(Требование: У3-14.1.3.1.3.1.6.1.1) Элемент participantRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole) </assert>
            <assert test="count(playingDevice) = 1">(Требование: У3-14.1.3.1.3.1.6.1.2) Элемент
                participantRole ОБЯЗАН содержать один [1..1] элемент playingDevice
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/id[substring(@root, string-length(@root) - 2) = '.67']">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/id[substring(@root,
                string-length(@root) - 2)='.67'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-14.1.3.1.3.1.6.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.67$')">(Требование:
                У3-14.1.3.1.3.1.6.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="@extension != ''">(Требование: У3-14.1.3.1.3.1.6.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(manufacturerModelName) = 1">(Требование: У3-14.1.3.1.3.1.6.1.2.1)
                Элемент playingDevice ОБЯЗАН содержать один [1..1] элемент manufacturerModelName
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice/manufacturerModelName">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.6.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/participant[@typeCode='DEV']/participantRole/playingDevice/manufacturerModelName
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.6.1.2.1) Элемент
                manufacturerModelName должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observationRange) = 1">(Требование: У3-14.1.3.1.3.1.7.1) Элемент
                referenceRange ОБЯЗАН содержать один [1..1] элемент observationRange
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(text) = 1">(Требование: У3-14.1.3.1.3.1.7.1.1) Элемент
                observationRange ОБЯЗАН содержать один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange) </assert>
            <assert test="count(value) = 1">(Требование: У3-14.1.3.1.3.1.7.1.2) Элемент
                observationRange ОБЯЗАН содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange) </assert>
            <assert test="count(interpretationCode) = 1">(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент
                observationRange ДОЛЖЕН содержать один [1..1] элемент interpretationCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/text">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-14.1.3.1.3.1.7.1.1) Элемент text должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'IVL_PQ'">(Требование: У3-14.1.3.1.3.1.7.1.2) Элемент value
                обязан содержать один атрибут @xsi:type со значением "IVL_PQ"</assert>
            <assert test="count(low) = 1">(Требование: У3-14.1.3.1.3.1.7.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value) </assert>
            <assert test="count(high) = 1">(Требование: У3-14.1.3.1.3.1.7.1.2.2) Элемент value
                ОБЯЗАН содержать один [1..1] элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1) Элемент low обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1) Элемент low обязан
                содержать один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент
                low ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low/translation">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/low/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент translation обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент
                translation обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент translation
                обязан содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент translation
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.1.1) Элемент
                translation обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.2.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2) Элемент high обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2) Элемент high обязан
                содержать один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент
                high ОБЯЗАН содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high/translation">
            <report test="@nullFlavor">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem='1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/value/high/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент translation обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@value != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент translation
                обязан содержать один атрибут @value с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент translation
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.7.1.2.2.1) Элемент
                translation обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/interpretationCode[not(@nullFlavor)]">
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.257', '1.2.643.5.1.13.2.1.1.1504.204', '1.2.643.5.1.13.13.11.1381']"
                >(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент interpretationCode должен содержать
                один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.257"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент
                interpretationCode должен содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент
                interpretationCode должен содержать один атрибут @code с не пустым
                значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент
                interpretationCode должен содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-14.1.3.1.3.1.7.1.3) Элемент
                interpretationCode должен содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry/organizer/component/organizer/component[observation/code/@codeSystem = '1.2.643.5.1.13.13.11.1080']/observation/referenceRange/observationRange/interpretationCode[@nullFlavor]">
            <report test="@code">Атрибут nullFlavor не должен быть представлен совместно с атрибутом
                @code</report>
            <report test="@displayName">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @displayName</report>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']">
            <report test="@nullFlavor">(Требование: У3-15) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-15.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation">
            <report test="@nullFlavor">(Требование: У3-15.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-15.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-15.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-15.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-15.1.2) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-15.1.3) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation) </assert>
            <assert test="count(performer) >= 1">(Требование: У3-15.1.4) Элемент observation ОБЯЗАН
                содержать не менее одного [1..*] элемента performer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/code">
            <report test="@nullFlavor">(Требование: У3-15.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '837'">(Требование: У3-15.1.1) Элемент code обязан содержать один
                атрибут @code со значением "837"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-15.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-15.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-15.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-15.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-15.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-15.1.2) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/value">
            <report test="@nullFlavor">(Требование: У3-15.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-15.1.3) Элемент value обязан содержать
                один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-15.1.3) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer">
            <report test="@nullFlavor">(Требование: У3-15.1.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(assignedEntity) = 1">(Требование: У3-15.1.4.1) Элемент performer
                ОБЯЗАН содержать один [1..1] элемент assignedEntity
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.70']) = 1"
                >(Требование: У3-15.1.4.1.1) Элемент assignedEntity ОБЯЗАН содержать один [1..1]
                элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(id[@root = '1.2.643.100.3']) = 1">(Требование: У3-15.1.4.1.2)
                Элемент assignedEntity ОБЯЗАН содержать один [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(code) = 1">(Требование: У3-15.1.4.1.3) Элемент assignedEntity ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-15.1.4.1.4) Элемент assignedEntity
                МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-15.1.4.1.5) Элемент assignedEntity
                МОЖЕТ содержать произвольное количество [0..*] элементов telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(assignedPerson) = 1">(Требование: У3-15.1.4.1.6) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент assignedPerson
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity) </assert>
            <assert test="count(representedOrganization) = 1">(Требование: У3-15.1.4.1.7) Элемент
                assignedEntity ОБЯЗАН содержать один [1..1] элемент representedOrganization
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/id[substring(@root, string-length(@root) - 2) = '.70']">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/id[substring(@root,
                string-length(@root) - 2)='.70'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-15.1.4.1.1) Элемент id обязан содержать один
                атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.70$')">(Требование:
                У3-15.1.4.1.1) Элемент id обязан содержать один атрибут @root с не пустым значением;
                допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70</assert>
            <assert test="@extension != ''">(Требование: У3-15.1.4.1.1) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/id[@root = '1.2.643.100.3']">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/id[@root='1.2.643.100.3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root = '1.2.643.100.3'">(Требование: У3-15.1.4.1.2) Элемент id обязан
                содержать один атрибут @root со значением "1.2.643.100.3"</assert>
            <assert test="@extension != ''">(Требование: У3-15.1.4.1.2) Элемент id обязан содержать
                один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/code">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1002', '1.2.643.5.1.13.2.1.1.733']"
                >(Требование: У3-15.1.4.1.3) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.11.1002"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-15.1.4.1.3) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@code != ''">(Требование: У3-15.1.4.1.3) Элемент code обязан содержать
                один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-15.1.4.1.3) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-15.1.4.1.3) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-15.1.4.1.4) Элемент addr
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-15.1.4.1.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-15.1.4.1.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-15.1.4.1.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-15.1.4.1.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-15.1.4.1.4.4) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-15.1.4.1.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-15.1.4.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-15.1.4.1.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-15.1.4.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-15.1.4.1.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-15.1.4.1.4.3) Элемент postalCode должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-15.1.4.1.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-15.1.4.1.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-15.1.4.1.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-15.1.4.1.5) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-15.1.4.1.5) Элемент telecom должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-15.1.4.1.5) Элемент telecom обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/assignedPerson">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(name) = 1">(Требование: У3-15.1.4.1.6.1) Элемент assignedPerson
                ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/assignedPerson/name">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(family) = 1">(Требование: У3-15.1.4.1.6.1.1) Элемент name ОБЯЗАН
                содержать один [1..1] элемент family
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(given) = 1">(Требование: У3-15.1.4.1.6.1.2) Элемент name ОБЯЗАН
                содержать один [1..1] элемент given
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name) </assert>
            <assert test="count(identity:Patronymic) = [0, 1]">(Требование: У3-15.1.4.1.6.1.3)
                Элемент name МОЖЕТ содержать не более одного [0..1] элемента identity:Patronymic
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/assignedPerson/name/family">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name/family
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.6.1.1) Элемент family должен содержать
                не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/assignedPerson/name/given">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name/given
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.6.1.2) Элемент given должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic[not(@nullFlavor)]">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.6.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.6.1.3) Элемент identity:Patronymic
                должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ORG'">(Требование: У3-15.1.4.1.7) Элемент
                representedOrganization обязан содержать один атрибут @classCode со значением
                "ORG"</assert>
            <assert
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
                >(Требование: У3-15.1.4.1.7.1) Элемент representedOrganization ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(name) = 1">(Требование: У3-15.1.4.1.7.2) Элемент
                representedOrganization ОБЯЗАН содержать один [1..1] элемент name
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(telecom) >= 0">(Требование: У3-15.1.4.1.7.3) Элемент
                representedOrganization МОЖЕТ содержать произвольное количество [0..*] элементов
                telecom
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization) </assert>
            <assert test="count(addr) = [0, 1]">(Требование: У3-15.1.4.1.7.4) Элемент
                representedOrganization МОЖЕТ содержать не более одного [0..1] элемента addr
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/id[not(@root='1.2.643.100.3')][not(@root='1.2.643.5.1.13.2.1.1.1504.101')][not(@root='1.2.643.5.1.13.13.17.1.1')]
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-15.1.4.1.7.1) Элемент id обязан содержать
                один атрибут @root с не пустым значением</assert>
            <assert test="count(@extension != '') = [0, 1]">(Требование: У3-15.1.4.1.7.1) Элемент id
                должен содержать один атрибут @extension с не пустым значением</assert>
            <assert
                test="
                    if (@extension) then
                        @extension != ''
                    else
                        (not(@extension))"
                >(Требование: У3-15.1.4.1.7.1) Элемент id должен содержать один атрибут @extension с
                не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/name">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/name
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.7.2) Элемент name должен содержать не
                пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/telecom[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-15.1.4.1.7.3) Элемент telecom
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-15.1.4.1.7.3) Элемент telecom должен содержать один атрибут @use с
                не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-15.1.4.1.7.3) Элемент telecom обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr[not(@nullFlavor)]">
            <assert test="count(@use != '') = [0, 1]">(Требование: У3-15.1.4.1.7.4) Элемент addr
                должен содержать один атрибут @use с не пустым значением</assert>
            <assert
                test="
                    if (@use) then
                        @use != ''
                    else
                        (not(@use))"
                >(Требование: У3-15.1.4.1.7.4) Элемент addr должен содержать один атрибут @use с не
                пустым значением</assert>
            <assert test="count(streetAddressLine) = 1">(Требование: У3-15.1.4.1.7.4.1) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент streetAddressLine
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(address:stateCode) = 1">(Требование: У3-15.1.4.1.7.4.2) Элемент addr
                ОБЯЗАН содержать один [1..1] элемент address:stateCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(postalCode) = 1">(Требование: У3-15.1.4.1.7.4.3) Элемент addr ДОЛЖЕН
                содержать один [1..1] элемент postalCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr) </assert>
            <assert test="count(fias:Address) = 1">(Требование: У3-15.1.4.1.7.4.4) Элемент addr
                ДОЛЖЕН содержать один [1..1] элемент fias:Address
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr/streetAddressLine
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.7.4.1) Элемент streetAddressLine должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7.4.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr/address:stateCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.206', '1.2.643.5.1.13.13.11.1093']"
                >(Требование: У3-15.1.4.1.7.4.2) Элемент address:stateCode обязан содержать один
                атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.206"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-15.1.4.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemName с не пустым
                значением</assert>
            <assert test="@code != ''">(Требование: У3-15.1.4.1.7.4.2) Элемент address:stateCode
                обязан содержать один атрибут @code с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-15.1.4.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
            <assert test="@displayName != ''">(Требование: У3-15.1.4.1.7.4.2) Элемент
                address:stateCode обязан содержать один атрибут @displayName с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/postalCode[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-15.1.4.1.7.4.3) Элемент postalCode должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address[not(@nullFlavor)]">
            <assert test="count(fias:AOGUID) = 1">(Требование: У3-15.1.4.1.7.4.4.1) Элемент
                fias:Address ОБЯЗАН содержать один [1..1] элемент fias:AOGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address) </assert>
            <assert test="count(fias:HOUSEGUID) = 1">(Требование: У3-15.1.4.1.7.4.4.2) Элемент
                fias:Address ДОЛЖЕН содержать один [1..1] элемент fias:HOUSEGUID
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID">
            <report test="@nullFlavor">(Требование: У3-15.1.4.1.7.4.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:AOGUID
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-15.1.4.1.7.4.4.1) Элемент fias:AOGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '837']/observation/performer/assignedEntity/representedOrganization/addr/fias:Address/fias:HOUSEGUID[not(@nullFlavor)]">
            <assert test=". != ''">(Требование: У3-15.1.4.1.7.4.4.2) Элемент fias:HOUSEGUID должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']">
            <report test="@nullFlavor">(Требование: У3-16) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-16.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation">
            <report test="@nullFlavor">(Требование: У3-16.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-16.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-16.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-16.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '1008']) = 1"
                >(Требование: У3-16.1.2) Элемент observation ОБЯЗАН содержать один [1..1] элемент
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '1009']) = 1"
                >(Требование: У3-16.1.3) Элемент observation ОБЯЗАН содержать один [1..1] элемент
                entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/code">
            <report test="@nullFlavor">(Требование: У3-16.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8022'">(Требование: У3-16.1.1) Элемент code обязан содержать один
                атрибут @code со значением "8022"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-16.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-16.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-16.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-16.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']">
            <report test="@nullFlavor">(Требование: У3-16.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">(Требование: У3-16.1.2) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">(Требование: У3-16.1.2.1) Элемент
                entryRelationship ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-16.1.2.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-16.1.2.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-16.1.2.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-16.1.2.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation) </assert>
            <assert test="count(entryRelationship[observation/code/@code = '12155']) >= 1"
                >(Требование: У3-16.1.2.1.3) Элемент observation ОБЯЗАН содержать не менее одного
                [1..*] элемента entryRelationship
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/code">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1008'">(Требование: У3-16.1.2.1.1) Элемент code обязан содержать
                один атрибут @code со значением "1008"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-16.1.2.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-16.1.2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-16.1.2.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-16.1.2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/value">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-16.1.2.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-16.1.2.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">(Требование: У3-16.1.2.1.3) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">(Требование: У3-16.1.2.1.3.1) Элемент
                entryRelationship ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-16.1.2.1.3.1) Элемент observation
                обязан содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-16.1.2.1.3.1) Элемент observation
                обязан содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-16.1.2.1.3.1.1) Элемент observation
                ОБЯЗАН содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-16.1.2.1.3.1.2) Элемент
                observation ДОЛЖЕН содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation) </assert>
            <assert test="count(participant[@typeCode = 'DEV']) = 1">(Требование: У3-16.1.2.1.3.1.3)
                Элемент observation ОБЯЗАН содержать один [1..1] элемент participant
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/code">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '12155'">(Требование: У3-16.1.2.1.3.1.1) Элемент code обязан
                содержать один атрибут @code со значением "12155"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-16.1.2.1.3.1.1) Элемент code обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-16.1.2.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-16.1.2.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-16.1.2.1.3.1.1) Элемент code
                обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/effectiveTime[not(@nullFlavor)]">
            <assert test="count(low) = 1">(Требование: У3-16.1.2.1.3.1.2.1) Элемент effectiveTime
                ОБЯЗАН содержать один [1..1] элемент low
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/effectiveTime) </assert>
            <assert test="count(high) = 1">(Требование: У3-16.1.2.1.3.1.2.2) Элемент effectiveTime
                ОБЯЗАН содержать один [1..1] элемент high
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/effectiveTime)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/effectiveTime/low">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/effectiveTime/low
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-16.1.2.1.3.1.2.1) Элемент low обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/effectiveTime/high">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.2.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/effectiveTime/high
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-16.1.2.1.3.1.2.2) Элемент high обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/participant[@typeCode = 'DEV']">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'DEV'">(Требование: У3-16.1.2.1.3.1.3) Элемент participant
                обязан содержать один атрибут @typeCode со значением "DEV"</assert>
            <assert test="count(participantRole) = 1">(Требование: У3-16.1.2.1.3.1.3.1) Элемент
                participant ОБЯЗАН содержать один [1..1] элемент participantRole
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/participant[@typeCode = 'DEV']/participantRole">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'ROL'">(Требование: У3-16.1.2.1.3.1.3.1) Элемент
                participantRole обязан содержать один атрибут @classCode со значением "ROL"</assert>
            <assert test="count(id[substring(@root, string-length(@root) - 2) = '.67']) = 1"
                >(Требование: У3-16.1.2.1.3.1.3.1.1) Элемент participantRole ОБЯЗАН содержать один
                [1..1] элемент id
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole) </assert>
            <assert test="count(playingDevice) = 1">(Требование: У3-16.1.2.1.3.1.3.1.2) Элемент
                participantRole ОБЯЗАН содержать один [1..1] элемент playingDevice
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/participant[@typeCode = 'DEV']/participantRole/id[substring(@root, string-length(@root) - 2) = '.67']">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole/id[substring(@root,
                string-length(@root) - 2)='.67'] не должен иметь атрибут @nullFlavor</report>
            <assert test="@root != ''">(Требование: У3-16.1.2.1.3.1.3.1.1) Элемент id обязан
                содержать один атрибут @root с не пустым значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="matches(@root, '^[0-2](\.([1-9][0-9]*|0))+\.67$')">(Требование:
                У3-16.1.2.1.3.1.3.1.1) Элемент id обязан содержать один атрибут @root с не пустым
                значением; допустимый формат значения:
                OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.67</assert>
            <assert test="@extension != ''">(Требование: У3-16.1.2.1.3.1.3.1.1) Элемент id обязан
                содержать один атрибут @extension с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole/playingDevice
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(manufacturerModelName) = 1">(Требование: У3-16.1.2.1.3.1.3.1.2.1)
                Элемент playingDevice ОБЯЗАН содержать один [1..1] элемент manufacturerModelName
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole/playingDevice)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1008']/observation/entryRelationship[observation/code/@code = '12155']/observation/participant[@typeCode = 'DEV']/participantRole/playingDevice/manufacturerModelName">
            <report test="@nullFlavor">(Требование: У3-16.1.2.1.3.1.3.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1008']/observation/entryRelationship[observation/code/@code='12155']/observation/participant[@typeCode='DEV']/participantRole/playingDevice/manufacturerModelName
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У3-16.1.2.1.3.1.3.1.2.1) Элемент
                manufacturerModelName должен содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1009']">
            <report test="@nullFlavor">(Требование: У3-16.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@typeCode = 'COMP'">(Требование: У3-16.1.3) Элемент entryRelationship
                обязан содержать один атрибут @typeCode со значением "COMP"</assert>
            <assert test="count(observation) = 1">(Требование: У3-16.1.3.1) Элемент
                entryRelationship ОБЯЗАН содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1009']/observation">
            <report test="@nullFlavor">(Требование: У3-16.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-16.1.3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-16.1.3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-16.1.3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-16.1.3.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1009']/observation/code">
            <report test="@nullFlavor">(Требование: У3-16.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1009'">(Требование: У3-16.1.3.1.1) Элемент code обязан содержать
                один атрибут @code со значением "1009"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-16.1.3.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-16.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-16.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-16.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'TRANSFUSRSRCH']/section/entry[observation/code/@code = '8022']/observation/entryRelationship[observation/code/@code = '1009']/observation/value">
            <report test="@nullFlavor">(Требование: У3-16.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='TRANSFUSRSRCH']/section/entry[observation/code/@code='8022']/observation/entryRelationship[observation/code/@code='1009']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'BL'">(Требование: У3-16.1.3.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "BL"</assert>
            <assert test="@value != ''">(Требование: У3-16.1.3.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']">
            <report test="@nullFlavor">(Требование: У2-8) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-8.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section">
            <report test="@nullFlavor">(Требование: У2-8.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-8.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-8.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert test="count(text) = 1">(Требование: У2-8.1.3) Элемент section ОБЯЗАН содержать
                один [1..1] элемент text
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section) </assert>
            <assert test="count(entry[organizer/component/observation/code/@code = '3']) = 3"
                >(Требование: У3-17) Элемент section ОБЯЗАН содержать три [3..3] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/code">
            <report test="@nullFlavor">(Требование: У2-8.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'VITALPARAM'">(Требование: У2-8.1.1) Элемент code обязан содержать
                один атрибут @code со значением "VITALPARAM"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23', '1.2.643.5.1.13.13.11.1379']"
                >(Требование: У2-8.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.197"</assert>
            <assert test="@codeSystemName != ''">(Требование: У2-8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У2-8.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У2-8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/title">
            <report test="@nullFlavor">(Требование: У2-8.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-8.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/text">
            <report test="@nullFlavor">(Требование: У2-8.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/text
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-8.1.3) Элемент text должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']">
            <report test="@nullFlavor">(Требование: У3-17) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(organizer[component/observation/code/@code = '3']) = 1">(Требование:
                У3-17.1) Элемент entry ОБЯЗАН содержать один [1..1] элемент organizer
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']">
            <report test="@nullFlavor">(Требование: У3-17.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'CLUSTER'">(Требование: У3-17.1) Элемент organizer обязан
                содержать один атрибут @classCode со значением "CLUSTER"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1) Элемент organizer обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(statusCode) = 1">(Требование: У3-17.1.1) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент statusCode
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(effectiveTime) = 1">(Требование: У3-17.1.2) Элемент organizer ОБЯЗАН
                содержать один [1..1] элемент effectiveTime
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '3']) = 1">(Требование:
                У3-17.1.3) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '2']) = 1">(Требование:
                У3-17.1.4) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '4']) = 1">(Требование:
                У3-17.1.5) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '1']) = 1">(Требование:
                У3-17.1.6) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '8']) = 1">(Требование:
                У3-17.1.7) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']) </assert>
            <assert test="count(component[observation/code/@code = '9']) = 1">(Требование:
                У3-17.1.8) Элемент organizer ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/statusCode">
            <report test="@nullFlavor">(Требование: У3-17.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/statusCode
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'completed'">(Требование: У3-17.1.1) Элемент statusCode обязан
                содержать один атрибут @code со значением "completed"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/effectiveTime">
            <report test="@nullFlavor">(Требование: У3-17.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/effectiveTime
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@value != ''">(Требование: У3-17.1.2) Элемент effectiveTime обязан
                содержать один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '3']">
            <report test="@nullFlavor">(Требование: У3-17.1.3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.3.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '3']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.3.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '3']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '3'">(Требование: У3-17.1.3.1.1) Элемент code обязан содержать
                один атрибут @code со значением "3"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.3.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.3.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.3.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '3']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-17.1.3.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-17.1.3.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-17.1.3.1.2) Элемент value обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-17.1.3.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '3']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-17.1.3.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='3']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '50'">(Требование: У3-17.1.3.1.2.1) Элемент translation обязан
                содержать один атрибут @code со значением "50"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-17.1.3.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.3.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.3.1.2.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-17.1.3.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.3.1.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '2']">
            <report test="@nullFlavor">(Требование: У3-17.1.4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.4.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '2']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.4.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.4.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.4.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.4.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '2']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '2'">(Требование: У3-17.1.4.1.1) Элемент code обязан содержать
                один атрибут @code со значением "2"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.4.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.4.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '2']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-17.1.4.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-17.1.4.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-17.1.4.1.2) Элемент value обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-17.1.4.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '2']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-17.1.4.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='2']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@displayName != ''">(Требование: У3-17.1.4.1.2.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@code = '50'">(Требование: У3-17.1.4.1.2.1) Элемент translation обязан
                содержать один атрибут @code со значением "50"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-17.1.4.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.4.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-17.1.4.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.4.1.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '4']">
            <report test="@nullFlavor">(Требование: У3-17.1.5) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.5.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '4']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.5.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.5.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.5.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.5.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.5.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '4']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.5.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '4'">(Требование: У3-17.1.5.1.1) Элемент code обязан содержать
                один атрибут @code со значением "4"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.5.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.5.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.5.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '4']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.5.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-17.1.5.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-17.1.5.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-17.1.5.1.2) Элемент value обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-17.1.5.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '4']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-17.1.5.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='4']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '337'">(Требование: У3-17.1.5.1.2.1) Элемент translation обязан
                содержать один атрибут @code со значением "337"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-17.1.5.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.5.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.5.1.2.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-17.1.5.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.5.1.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '1']">
            <report test="@nullFlavor">(Требование: У3-17.1.6) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.6.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '1']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.6.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.6.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.6.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.6.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.6.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '1']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.6.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '1'">(Требование: У3-17.1.6.1.1) Элемент code обязан содержать
                один атрибут @code со значением "1"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.6.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.6.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.6.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '1']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.6.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-17.1.6.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-17.1.6.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-17.1.6.1.2) Элемент value обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-17.1.6.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '1']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-17.1.6.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='1']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '515'">(Требование: У3-17.1.6.1.2.1) Элемент translation обязан
                содержать один атрибут @code со значением "515"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-17.1.6.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.6.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.6.1.2.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-17.1.6.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.6.1.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '8']">
            <report test="@nullFlavor">(Требование: У3-17.1.7) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.7.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '8']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.7.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.7.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.7.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.7.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.7.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '8']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.7.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8'">(Требование: У3-17.1.7.1.1) Элемент code обязан содержать
                один атрибут @code со значением "8"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.7.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.7.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.7.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.7.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '8']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.7.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'PQ'">(Требование: У3-17.1.7.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "PQ"</assert>
            <assert test="@value != ''">(Требование: У3-17.1.7.1.2) Элемент value обязан содержать
                один атрибут @value с не пустым значением</assert>
            <assert test="@unit != ''">(Требование: У3-17.1.7.1.2) Элемент value обязан содержать
                один атрибут @unit с не пустым значением</assert>
            <assert test="count(translation) = 1">(Требование: У3-17.1.7.1.2.1) Элемент value ОБЯЗАН
                содержать один [1..1] элемент translation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation/value)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '8']/observation/value/translation">
            <report test="@nullFlavor">(Требование: У3-17.1.7.1.2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='8']/observation/value/translation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '16'">(Требование: У3-17.1.7.1.2.1) Элемент translation обязан
                содержать один атрибут @code со значением "16"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.11.1358', '1.2.643.5.1.13.13.11.1031']"
                >(Требование: У3-17.1.7.1.2.1) Элемент translation обязан содержать один атрибут
                @codeSystem со значением "1.2.643.5.1.13.13.11.1358"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.7.1.2.1) Элемент translation
                обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.7.1.2.1) Элемент translation
                обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@value != ''">(Требование: У3-17.1.7.1.2.1) Элемент translation обязан
                содержать один атрибут @value с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.7.1.2.1) Элемент
                translation обязан содержать один атрибут @codeSystemVersion с не пустым
                значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '9']">
            <report test="@nullFlavor">(Требование: У3-17.1.8) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-17.1.8.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '9']/observation">
            <report test="@nullFlavor">(Требование: У3-17.1.8.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-17.1.8.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-17.1.8.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-17.1.8.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-17.1.8.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '9']/observation/code">
            <report test="@nullFlavor">(Требование: У3-17.1.8.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '9'">(Требование: У3-17.1.8.1.1) Элемент code обязан содержать
                один атрибут @code со значением "9"</assert>
            <assert test="@codeSystem = ['1.2.643.5.1.13.13.99.2.262', '1.2.643.5.1.13.13.11.1010']"
                >(Требование: У3-17.1.8.1.1) Элемент code обязан содержать один атрибут @codeSystem
                со значением "1.2.643.5.1.13.13.99.2.262"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-17.1.8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-17.1.8.1.1) Элемент code обязан
                содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-17.1.8.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'VITALPARAM']/section/entry[organizer/component/observation/code/@code = '3']/organizer[component/observation/code/@code = '3']/component[observation/code/@code = '9']/observation/value">
            <report test="@nullFlavor">(Требование: У3-17.1.8.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='VITALPARAM']/section/entry[organizer/component/observation/code/@code='3']/organizer[component/observation/code/@code='3']/component[observation/code/@code='9']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">(Требование: У3-17.1.8.1.2) Элемент value обязан
                содержать один атрибут @xsi:type со значением "ST"</assert>
            <assert test=". != ''">(Требование: У3-17.1.8.1.2) Элемент value должен содержать не
                пустое текстовое наполнение</assert>
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

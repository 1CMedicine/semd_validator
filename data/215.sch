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
                ДОЛЖЕН содержать один [1..1] элемент effectiveTime (ClinicalDocument) </assert>
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
                test="count(informationRecipient[not(intendedRecipient/receivedOrganization/id/@root = '1.2.643.5.1.13')]) >= 1"
                >(Требование: У1-16) Элемент ClinicalDocument ОБЯЗАН содержать не менее одного
                [1..*] элемента informationRecipient (ClinicalDocument) </assert>
            <assert test="count(legalAuthenticator) = 1">(Требование: У1-17) Элемент
                ClinicalDocument ОБЯЗАН содержать один [1..1] элемент legalAuthenticator
                (ClinicalDocument) </assert>
            <assert test="count(participant[@typeCode = 'IND']) = [0, 1]">(Требование: У1-18)
                Элемент ClinicalDocument МОЖЕТ содержать не более одного [0..1] элемента participant
                (ClinicalDocument) </assert>
            <assert test="count(component) = 1">(Требование: У1-19) Элемент ClinicalDocument ОБЯЗАН
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
            <assert test="@root = '1.2.643.5.1.13.13.15.49.2'">(Требование: У1-3) Элемент templateId
                обязан содержать один атрибут @root со значением
                "1.2.643.5.1.13.13.15.49.2"</assert>
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
            <report test="@nullFlavor">У1-5: Элемент ClinicalDocument/code не должен иметь атрибут @nullFlavor</report>
            <assert test="@code=['215','66']">У1-5: Элемент code обязан содержать один атрибут @code со значением "215" или "66"</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41','1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']">У1-5: Элемент code обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.11.1520" или "1.2.643.5.1.13.13.11.1522"</assert>
            <assert test="@codeSystemName!=''">У1-5: Элемент code обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName!=''">У1-5: Элемент code обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion!=''">У1-5: Элемент code обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
            <assert test="count(translation)=1">У1-5.1: Элемент code ОБЯЗАН содержать один [1..1] элемент translation</assert>
        </rule>
    </pattern>
    <!-- Альтернатива У1-5 -->
    <pattern>
        <rule context="ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1520','1.2.643.5.1.13.13.99.2.41']]">
            <assert test="@code='215'">У1-5: Элемент code обязан содержать атрибут @code со значением "215"</assert>
        </rule>
    </pattern>
    <!-- Альтернатива У1-5 -->
    <pattern>
        <rule context="ClinicalDocument/code[@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115', '1.2.643.5.1.13.13.99.2.195']]">
            <assert test="@code='66'">У1-5: Элемент code обязан содержать атрибут @code со значением "66"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/code/translation">
            <report test="@nullFlavor">У1-5.1: Элемент ClinicalDocument/code/translation не должен иметь атрибут @nullFlavor</report>
            <assert test="@code='49'">У1-5.1: Элемент translation обязан содержать один атрибут @code со значением "49"</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.1079'">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystem со значением "1.2.643.5.1.13.13.99.2.1079"</assert>
            <assert test="@codeSystemName!=''">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName!=''">У1-5.1: Элемент translation обязан содержать один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion!=''">У1-5.1: Элемент translation обязан содержать один атрибут @codeSystemVersion с не пустым значением</assert>
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
        <rule context="ClinicalDocument/effectiveTime[not(@nullFlavor)]">
            <assert test="@value != ''">(Требование: У1-7) Элемент effectiveTime должен содержать
                один атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[@nullFlavor]">
            <report test="@value">Атрибут nullFlavor не должен быть представлен совместно с
                атрибутом @value</report>
            <report test="@nullFlavor != 'NA'">Атрибут nullFlavor должен быть представлен со значением 'NA'</report>
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
            context="ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series">
            <report test="@nullFlavor">(Требование: У1-12.1.4.2) Элемент
                ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series
                не должен иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/telecom">
            <report test="@nullFlavor">(Требование: У1-12.1.6) Элемент
                ClinicalDocument/recordTarget/patientRole/telecom не должен иметь атрибут
                @nullFlavor</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic">
            <report test="@nullFlavor">(Требование: У1-12.1.7.1.3) Элемент
                ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic не должен
                иметь атрибут @nullFlavor</report>
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
                test="count(id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]) = 1"
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
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[not(@root = '1.2.643.100.3')][not(@root = '1.2.643.5.1.13.2.1.1.1504.101')][not(@root = '1.2.643.5.1.13.13.17.1.1')]">
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
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[@root = '1.2.643.5.1.13.2.1.1.1504.101']">
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
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn">
            <report test="@nullFlavor">(Требование: У1-12.1.8.3.1) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.3.1) Элемент identity:Ogrn должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip">
            <report test="@nullFlavor">(Требование: У1-12.1.8.3.2) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.3.2) Элемент identity:Ogrnip должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo">
            <report test="@nullFlavor">(Требование: У1-12.1.8.3.3) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-12.1.8.3.3) Элемент identity:Okpo должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato">
            <report test="@nullFlavor">(Требование: У1-12.1.8.3.4) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato
                не должен иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom">
            <report test="@nullFlavor">(Требование: У1-12.1.8.5) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/telecom не должен
                иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <report test="@nullFlavor">(Требование: У1-12.1.8.6) Элемент
                ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь
                атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/author/assignedAuthor/addr">
            <report test="@nullFlavor">(Требование: У1-13.2.4) Элемент
                ClinicalDocument/author/assignedAuthor/addr не должен иметь атрибут
                @nullFlavor</report>
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
        <rule context="ClinicalDocument/author/assignedAuthor/telecom">
            <report test="@nullFlavor">(Требование: У1-13.2.5) Элемент
                ClinicalDocument/author/assignedAuthor/telecom не должен иметь атрибут
                @nullFlavor</report>
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
            context="ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">(Требование: У1-13.2.6.1.3) Элемент
                ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic не
                должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-13.2.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <report test="@nullFlavor">(Требование: У1-13.2.7) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization не должен иметь
                атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/telecom">
            <report test="@nullFlavor">(Требование: У1-13.2.7.3) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/telecom не должен
                иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr">
            <report test="@nullFlavor">(Требование: У1-13.2.7.4) Элемент
                ClinicalDocument/author/assignedAuthor/representedOrganization/addr не должен иметь
                атрибут @nullFlavor</report>
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
            context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom">
            <report test="@nullFlavor">(Требование: У1-14.1.1.3) Элемент
                ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/addr">
            <report test="@nullFlavor">(Требование: У1-17.3.4) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/addr не должен иметь атрибут
                @nullFlavor</report>
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
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/telecom">
            <report test="@nullFlavor">(Требование: У1-17.3.5) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/telecom не должен иметь атрибут
                @nullFlavor</report>
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
            context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic">
            <report test="@nullFlavor">(Требование: У1-17.3.6.1.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У1-17.3.6.1.3) Элемент identity:Patronymic должен
                содержать не пустое текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
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
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom">
            <report test="@nullFlavor">(Требование: У1-17.3.7.3) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/telecom
                не должен иметь атрибут @nullFlavor</report>
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
            context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr">
            <report test="@nullFlavor">(Требование: У1-17.3.7.4) Элемент
                ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/addr не
                должен иметь атрибут @nullFlavor</report>
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
        <rule context="ClinicalDocument/component">
            <report test="@nullFlavor">(Требование: У1-19) Элемент ClinicalDocument/component не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(structuredBody) = 1">(Требование: У1-19.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент structuredBody (ClinicalDocument/component) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <report test="@nullFlavor">(Требование: У1-19.1) Элемент
                ClinicalDocument/component/structuredBody не должен иметь атрибут
                @nullFlavor</report>
            <assert test="count(component[section/code/@code = 'DOCINFO']) = 1">(Требование: У2-1)
                Элемент structuredBody ОБЯЗАН содержать один [1..1] элемент component
                (ClinicalDocument/component/structuredBody) </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']">
            <report test="@nullFlavor">(Требование: У2-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'] не
                должен иметь атрибут @nullFlavor</report>
            <assert test="count(section) = 1">(Требование: У2-1.1) Элемент component ОБЯЗАН
                содержать один [1..1] элемент section
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section">
            <report test="@nullFlavor">(Требование: У2-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(code) = 1">(Требование: У2-1.1.1) Элемент section ОБЯЗАН содержать
                один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(title) = 1">(Требование: У2-1.1.2) Элемент section ОБЯЗАН содержать
                один [1..1] элемент title
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '7000']) = 1">(Требование: У3-1)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '11000']) = 1">(Требование: У3-2)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '8003']) = 1">(Требование: У3-3)
                Элемент section ОБЯЗАН содержать один [1..1] элемент entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section) </assert>
            <assert test="count(entry[observation/code/@code = '10000']) = [0, 1]">(Требование:
                У3-4) Элемент section МОЖЕТ содержать не более одного [0..1] элемента entry
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/code">
            <report test="@nullFlavor">(Требование: У2-1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = 'DOCINFO'">(Требование: У2-1.1.1) Элемент code обязан содержать
                один атрибут @code со значением "DOCINFO"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/title">
            <report test="@nullFlavor">(Требование: У2-1.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/title
                не должен иметь атрибут @nullFlavor</report>
            <assert test=". != ''">(Требование: У2-1.1.2) Элемент title должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']">
            <report test="@nullFlavor">(Требование: У3-1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-1.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation">
            <report test="@nullFlavor">(Требование: У3-1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-1.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-1.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-1.1.2) Элемент observation ДОЛЖЕН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/code">
            <report test="@nullFlavor">(Требование: У3-1.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='7000']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '7000'">(Требование: У3-1.1.1) Элемент code обязан содержать один
                атрибут @code со значением "7000"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-1.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-1.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-1.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">(Требование: У3-1.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
            <assert test=". != ''">(Требование: У3-1.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '7000']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'ST'">(Требование: У3-1.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']">
            <report test="@nullFlavor">(Требование: У3-2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-2.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation">
            <report test="@nullFlavor">(Требование: У3-2.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-2.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-2.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-2.1.2) Элемент observation ДОЛЖЕН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/code">
            <report test="@nullFlavor">(Требование: У3-2.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='11000']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '11000'">(Требование: У3-2.1.1) Элемент code обязан содержать один
                атрибут @code со значением "11000"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-2.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-2.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-2.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[not(@nullFlavor)]">
            <assert test="@xsi:type = 'ST'">(Требование: У3-2.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
            <assert test=". != ''">(Требование: У3-2.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '11000']/observation/value[@nullFlavor]">
            <assert test="@xsi:type = 'ST'">(Требование: У3-2.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']">
            <report test="@nullFlavor">(Требование: У3-3) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-3.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation">
            <report test="@nullFlavor">(Требование: У3-3.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-3.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-3.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-3.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/code">
            <report test="@nullFlavor">(Требование: У3-3.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '8003'">(Требование: У3-3.1.1) Элемент code обязан содержать один
                атрибут @code со значением "8003"</assert>
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
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '8003']/observation/value">
            <report test="@nullFlavor">(Требование: У3-3.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='8003']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'TS'">(Требование: У3-3.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "TS"</assert>
            <assert test="@value != ''">(Требование: У3-3.1.2) Элемент value обязан содержать один
                атрибут @value с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']">
            <report test="@nullFlavor">(Требование: У3-4) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']
                не должен иметь атрибут @nullFlavor</report>
            <assert test="count(observation) = 1">(Требование: У3-4.1) Элемент entry ОБЯЗАН
                содержать один [1..1] элемент observation
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000'])
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation">
            <report test="@nullFlavor">(Требование: У3-4.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@classCode = 'OBS'">(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @classCode со значением "OBS"</assert>
            <assert test="@moodCode = 'EVN'">(Требование: У3-4.1) Элемент observation обязан
                содержать один атрибут @moodCode со значением "EVN"</assert>
            <assert test="count(code) = 1">(Требование: У3-4.1.1) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент code
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation) </assert>
            <assert test="count(value) = 1">(Требование: У3-4.1.2) Элемент observation ОБЯЗАН
                содержать один [1..1] элемент value
                (ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation)
            </assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/code">
            <report test="@nullFlavor">(Требование: У3-4.1.1) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/code
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@code = '10000'">(Требование: У3-4.1.1) Элемент code обязан содержать один
                атрибут @code со значением "10000"</assert>
            <assert
                test="@codeSystem = ['1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41', '1.2.643.5.1.13.13.11.1380']"
                >(Требование: У3-4.1.1) Элемент code обязан содержать один атрибут @codeSystem со
                значением "1.2.643.5.1.13.13.99.2.166"</assert>
            <assert test="@codeSystemName != ''">(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemName с не пустым значением</assert>
            <assert test="@displayName != ''">(Требование: У3-4.1.1) Элемент code обязан содержать
                один атрибут @displayName с не пустым значением</assert>
            <assert test="@codeSystemVersion != ''">(Требование: У3-4.1.1) Элемент code обязан
                содержать один атрибут @codeSystemVersion с не пустым значением</assert>
        </rule>
    </pattern>
    <pattern>
        <rule
            context="ClinicalDocument/component/structuredBody/component[section/code/@code = 'DOCINFO']/section/entry[observation/code/@code = '10000']/observation/value">
            <report test="@nullFlavor">(Требование: У3-4.1.2) Элемент
                ClinicalDocument/component/structuredBody/component[section/code/@code='DOCINFO']/section/entry[observation/code/@code='10000']/observation/value
                не должен иметь атрибут @nullFlavor</report>
            <assert test="@xsi:type = 'ST'">(Требование: У3-4.1.2) Элемент value обязан содержать
                один атрибут @xsi:type со значением "ST"</assert>
            <assert test=". != ''">(Требование: У3-4.1.2) Элемент value должен содержать не пустое
                текстовое наполнение</assert>
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

<!-- Схематрон для СЭМД "Осмотр лечащим врачом, врачом-специалистом, заведующим отделением, лечащим врачом совместно с врачом-специалистом, лечащим врачом совместно с заведующим отделением (CDA) Редакция 1" -->
<!-- Разработано в соотвествии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/____ -->

<!-- Список изменений -->
<!-- 20.03.2023 - v.1.0.0: Схематрон разработан -->
<!-- 28.03.2023 - v.1.0.1: Обновлен модуль Core02, исправления в правилах У1-19 и У3-14 -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="medService" uri="urn:hl7-ru:medService"/>
    <ns prefix="PII" uri="urn:hl7-ru:PII"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>



    <!-- Core02 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/addr[not(@nullFlavor)]">
            <assert test="count(address:Type)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент address:Type.</assert>
            <assert test="count(address:residentCode)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь 1 элемент address:residentCode.</assert>
        </rule>
    </pattern>
    <!-- Core06 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn|identity:Props/identity:Ogrnip)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props должен иметь не более 1 элемента identity:Ogrn или 1 элемента identity:Ogrnip.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Ogrn]">
            <report test="identity:Props/identity:Ogrn/@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrn не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization[identity:Props/identity:Ogrnip]">
            <report test="identity:Props/identity:Ogrnip/@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/identity:Props/identity:Ogrnip не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь 1 элемент identity:Ogrn.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь 1 элемент identity:Ogrnip.</assert>
            <assert test="identity:Props/identity:Ogrn/@nullFlavor or identity:Props/identity:Ogrnip/@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь у элемента identity:Ogrn или у элемента identity:Ogrnip атрибут @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props/identity:Ogrn[not(@nullFlavor)]]">
            <assert test="identity:Props/identity:Ogrn!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props/identity:Ogrnip[not(@nullFlavor)]]">
            <assert test="identity:Props/identity:Ogrnip!=''">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <!-- Main02 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props]">
            <report test="identity:Props/@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(addr)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <!-- Main08 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент documentationOf.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@code='64'">У1-19. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @code равное '64'.</assert>
        </rule>
    </pattern>
    <!-- Main09 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)=1">У1-20. Элемент ClinicalDocument должен иметь 1 элемент componentOf.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[code/@code='3']">
            <assert test="count(medService:DocType)=1">У1-20. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент medService:DocType.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[code/@code!='3']">
            <assert test="count(medService:DocType)=0">У1-20. Элемент ClinicalDocument/componentOf/encompassingEncounter не должен иметь элемент medService:DocType.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">У1-20. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
        </rule>
    </pattern>



    <!-- У1-3 -->
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.341.9.1'">У1-3. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.341.9.1'.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="ClinicalDocument/code">
            <assert test="@code='341'">У1-5. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '341'.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='PATINFO'])&lt;=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='PATINFO'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(text)=1">У2-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='COMPLNTS'])&lt;=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='COMPLNTS'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='COMPLNTS']">
            <assert test="count(text)=1">У2-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='COMPLNTS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='ANAM'])&lt;=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='ANAM'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='ANAM']">
            <assert test="count(text)=1">У2-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='ANAM'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='LANAM'])&lt;=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='LANAM'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LANAM']">
            <assert test="count(text)=1">У2-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LANAM'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='EXAMINFO'])=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component[section/code/@code='EXAMINFO'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']">
            <assert test="count(component[section/code/@code='PSYCH'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='PSYCH'].</assert>
            <assert test="count(component[section/code/@code='NERVOUS'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='NERVOUS'].</assert>
            <assert test="count(component[section/code/@code='SKIN'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='SKIN'].</assert>
            <assert test="count(component[section/code/@code='MUSCULOSKELETAL'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='MUSCULOSKELETAL'].</assert>
            <assert test="count(component[section/code/@code='RESPIRATORY'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='RESPIRATORY'].</assert>
            <assert test="count(component[section/code/@code='CARDIOVASCULAR'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='CARDIOVASCULAR'].</assert>
            <assert test="count(component[section/code/@code='DIGESTION'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='DIGESTION'].</assert>
            <assert test="count(component[section/code/@code='UROGENITAL'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='UROGENITAL'].</assert>
            <assert test="count(component[section/code/@code='LOCALIS'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь не более 1 элемента component[section/code/@code='LOCALIS'].</assert>
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='PSYCH']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='PSYCH'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='NERVOUS']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='NERVOUS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='SKIN']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='SKIN'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='MUSCULOSKELETAL']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='MUSCULOSKELETAL'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='RESPIRATORY']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='RESPIRATORY'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='CARDIOVASCULAR']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='CARDIOVASCULAR'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='DIGESTION']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='DIGESTION'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='UROGENITAL']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='UROGENITAL'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='LOCALIS']">
            <assert test="count(text)=1">У2-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/component/section[code/@code='LOCALIS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='VITALPARAM'])&lt;=1">У2-6. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='VITALPARAM'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(text)=1">У2-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='SCORES'])&lt;=1">У2-7. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='SCORES'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="count(text)=1">У2-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='DGN'])=1">У2-8. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component[section/code/@code='DGN'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(text)=1">У2-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='PRESCRIBE'])&lt;=1">У2-9. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='PRESCRIBE'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']">
            <assert test="count(component[section/code/@code='DRUG'])&lt;=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE'] должен иметь не более 1 элемента component[section/code/@code='DRUG'].</assert>
            <assert test="count(component[section/code/@code='NONDRUG'])&lt;=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE'] должен иметь не более 1 элемента component[section/code/@code='NONDRUG'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']">
            <assert test="count(text)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='NONDRUG']">
            <assert test="count(text)=1">У2-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='NONDRUG'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='MEDINTERVENTIONS'])&lt;=1">У2-10. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='MEDINTERVENTIONS'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MEDINTERVENTIONS']">
            <assert test="count(text)=1">У2-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MEDINTERVENTIONS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='PLANACTIVE'])&lt;=1">У2-11. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='PLANACTIVE'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE']">
            <assert test="count(component[section/code/@code='TRTMPLAN'])&lt;=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE'] должен иметь не более 1 элемента component[section/code/@code='TRTMPLAN'].</assert>
            <assert test="count(component[section/code/@code='OBSPLAN'])&lt;=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE'] должен иметь не более 1 элемента component[section/code/@code='OBSPLAN'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE']/component/section[code/@code='TRTMPLAN']">
            <assert test="count(text)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE']/component/section[code/@code='TRTMPLAN'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE']/component/section[code/@code='OBSPLAN']">
            <assert test="count(text)=1">У2-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PLANACTIVE']/component/section[code/@code='OBSPLAN'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='STAGEEPICRISIS'])&lt;=1">У2-12. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='STAGEEPICRISIS'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']">
            <assert test="count(text)=1">У2-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У2-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='SERVICES'])&lt;=1">У2-13. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='SERVICES'].</assert>
        </rule>
    </pattern>
    <!-- У2-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='LINKDOCS'])&lt;=1">У2-14. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='LINKDOCS'].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(text)=1">У2-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='8048']])&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='8048']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']]">
            <assert test="count(text)&lt;=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']] должен иметь не более 1 элемента text.</assert>
            <assert test="count(value)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']][value[@code='5']]">
            <assert test="count(text)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']] должен иметь 1 элемент text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='8048']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='8048'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8048']]/value">
            <assert test="@xsi:type='CD'">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.1057']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.1057'.</assert>
            <report test="@nullFlavor">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='12158']])&lt;=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12158']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]">
            <assert test="count(value)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12158']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12158'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]/value">
            <assert test="@xsi:type='CD'">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.315' или '1.2.643.5.1.13.2.1.1.218'.</assert>
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='11034']])&lt;=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='11034']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='11034']]">
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='11034']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='11034']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='11034'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='11034']]/value">
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1498']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1498'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='12524']])&lt;=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12524']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12524']]">
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12524']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12524']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12524'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12524']]/value">
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1038']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1038'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='4080']])&lt;=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='4080']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='4080']]">
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='4080']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='4080']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='4080'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='4080']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='8047']])&lt;=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='8047']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8047']]">
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8047']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='8047']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='8047'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='8047']]/value">
            <assert test="@xsi:type='BL'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='12523']])&lt;=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12523']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12523']]">
            <assert test="count(value)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12523']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12523']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12523'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12523']]/value">
            <assert test="@xsi:type='CD'">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1053','1.2.643.5.1.13.2.1.1.702']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1053', '1.2.643.5.1.13.2.1.1.702'.</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']">
            <assert test="count(entry[observation/code[@code='804']])=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь 1 элемент entry[observation/code[@code='804']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='804']]">
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='804']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='804']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='804'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='804']]/value">
            <assert test="@xsi:type='CD'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1006','1.2.643.5.1.13.2.1.1.111']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1006', '1.2.643.5.1.13.2.1.1.111'.</assert>
            <report test="@nullFlavor">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']">
            <assert test="count(entry[observation/code[@code='12193']])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь 1 элемент entry[observation/code[@code='12193']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='12193']]">
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='12193']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='12193']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='12193'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='12193']]/value">
            <assert test="@xsi:type='ST'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']">
            <assert test="count(entry[observation/code[@code='808']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO'] должен иметь 1 элемент entry[observation/code[@code='808']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]">
            <assert test="count(value)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='808']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/code[@code='808'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]/value[not(@nullFlavor)]">
            <assert test="count(originalText)&lt;=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]/value должен иметь не более 1 элемента originalText.</assert>
            <assert test="@xsi:type='CD'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1473']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1473'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]/value[@nullFlavor]">
            <assert test="count(originalText)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]/value должен иметь 1 элемент originalText.</assert>
            <assert test="@nullFlavor='OTH'">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation[code[@code='808']]/value/originalText">
            <assert test=".!=''">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value/originalText должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EXAMINFO']/entry/observation/value/originalText не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']">
            <assert test="count(entry[organizer])>=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM'] должен иметь не менее 1 элемента entry[organizer].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer">
            <assert test="count(statusCode)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент statusCode.</assert>
            <assert test="count(effectiveTime)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(precondition)&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь не более 1 элемента precondition.</assert>
            <assert test="count(component[observation])=[1,2]">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer должен иметь 1 или 2 элемента component[observation].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime">
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation">
            <assert test="count(id)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент id.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[observation[code/@code='6034']])=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь 1 элемент entryRelationship[observation[code/@code='6034']].</assert>
            <assert test="count(entryRelationship[observation[code/@code='8034']])&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь не более 1 элемента entryRelationship[observation[code/@code='8034']].</assert>
            <assert test="count(referenceRange)&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation должен иметь не более 1 элемента referenceRange.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.52$')">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов внутренних ссылок документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52".</assert>
            <assert test="@extension!=''">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.262','1.2.643.5.1.13.13.11.1010']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.262' или '1.2.643.5.1.13.13.11.1010'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value">
            <assert test="@xsi:type=['ST','BL','PQ','CD']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь значение атрибута @xsi:type равное 'ST', 'BL', 'PQ' или 'CD'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value[@xsi:type='PQ']">
            <assert test="count(translation)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/value должен иметь 1 элемент translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='6034']">
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='6034'] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation/code[@code='6034']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation/code[@code='6034'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='6034']/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='6034']/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.778']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='6034']/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.778'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='8034']">
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='8034'] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation/code[@code='8034']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation/code[@code='8034'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='8034']/value">
            <assert test="@xsi:type='INT'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='8034']/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/entryRelationship/observation[code/@code='8034']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/referenceRange/observationRange/value">
            <assert test="count(low)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/referenceRange/observationRange/value должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='VITALPARAM']/entry/organizer/component/observation/referenceRange/observationRange/value должен иметь 1 элемент high.</assert>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']">
            <assert test="count(entry[observation])>=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES'] должен иметь не менее 1 элемента entry[observation].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation">
            <assert test="count(effectiveTime)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(value)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь не более 1 элемента value.</assert>
            <assert test="count(performer)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь не более 1 элемента performer.</assert>
            <assert test="count(entryRelationship[observation[code/@code='8019']])&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation должен иметь не более 1 элемента entryRelationship[observation[code/@code='8019']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1514']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1514'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/effectiveTime">
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value">
            <assert test="@xsi:type='PQ'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'PQ'.</assert>
            <assert test="count(translation)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value должен иметь 1 элемент translation.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer">
            <assert test="count(assignedEntity)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer должен иметь 1 элемент assignedEntity.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation//performer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity">
            <assert test="count(id)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity должен иметь 1 элемент id.</assert>
            <assert test="count(code)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(telecom)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(assignedPerson)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation//performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson/name">
            <assert test="count(family)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]">
            <assert test="count(id)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']] должен иметь не более 1 элемента id.</assert>
            <assert test="count(effectiveTime)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.52$')">У3-12. Элемент ClinicalDocument/entryRelationship/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов внутренних ссылок документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.52".</assert>
            <assert test="@extension!=''">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation/code[@code='8020']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation/code[@code='8020'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/value">
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8020']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']]">
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']] должен иметь 1 элемент value.</assert>
            <assert test="count(text)&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']] должен иметь не более 1 элемента text.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation/code[@code='8019']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation/code[@code='8019'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']]/value">
            <assert test="@xsi:type='CD'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SCORES']/entry/observation/entryRelationship/observation[code[@code='8019']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation])>=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь не менее 1 элемента entry[observation].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation">
            <assert test="count(text)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[observation/code[@code='7026']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='7026']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='12014']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='12014']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='823']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='823']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='824']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='824']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='12120']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='12120']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='8045']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='8045']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='4072']])=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation должен иметь не более 1 элемента entryRelationship[observation/code[@code='4072']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1077','1.2.643.5.1.13.2.1.1.1504.4']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1077' или '1.2.643.5.1.13.2.1.1.1504.4'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/effectiveTime">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='7026']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='7026'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.795','1.2.643.5.1.13.13.11.1076']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.795' или '1.2.643.5.1.13.13.11.1076'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='7026']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12014']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12014']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='12014']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='12014'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12014']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12014']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1049','1.2.643.5.1.13.2.1.1.586']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12014']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1049' или '1.2.643.5.1.13.2.1.1.586'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='823']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='823'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='823']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='824']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='824'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1036','1.2.643.5.1.13.2.1.1.105']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1036' или '1.2.643.5.1.13.2.1.1.105'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='824']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]">
            <assert test="count(effectiveTime)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']] должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']] должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12393']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='12393']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='12120']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='12120'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/effectiveTime">
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.770']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.770'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation[code[@code='12393']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation[code[@code='12393']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation/code[@code='12393']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation/code[@code='12393'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation[code[@code='12393']]/value">
            <assert test="@xsi:type='INT'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation[code[@code='12393']]/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='12120']]/entryRelationship/observation[code[@code='12393']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]">
            <assert test="count(value)&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']] должен иметь не более 1 элемента value.</assert>
            <assert test="count(entryRelationship[observation/code[@code='6047']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='6047']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='6048']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='6048']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='6049']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='6049']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='6050']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='6050']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='8045']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='8045'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/value">
            <assert test="@xsi:type='ST'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6047']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6047'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.547']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.547'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6047']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6048']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6048'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.547']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.547'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6048']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6049']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6049'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.547']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.547'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6049']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6050']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation/code[@code='6050'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.546']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.546'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='8045']]/entryRelationship/observation[code[@code='6050']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='4072']]">
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='4072']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='4072']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation/code[@code='4072'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='4072']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='ST'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/entryRelationship/observation[code[@code='4072']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act">
            <assert test="count(effectiveTime)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[substanceAdministration[not(routeCode)]])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act должен иметь 1 элемент entryRelationship[substanceAdministration[not(routeCode)]].</assert>
            <assert test="count(entryRelationship[substanceAdministration/routeCode])>=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act должен иметь не менее 1 элемента entryRelationship[substanceAdministration/routeCode].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/code">
            <assert test="@nullFlavor='NI'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/code должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime">
            <assert test="count(low)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime должен иметь 1 элемент high.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime/low">
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime/high">
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship[substanceAdministration[not(routeCode)]]">
            <assert test="count(substanceAdministration)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship[substanceAdministration[not(routeCode)]] должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]">
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@determinerCode='KIND'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @determinerCode равное 'KIND'.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.611']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.611'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial/code[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[not(routeCode)]/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship[substanceAdministration[routeCode]]">
            <assert test="count(substanceAdministration)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship[substanceAdministration[routeCode]] должен иметь 1 элемент substanceAdministration.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]">
            <assert test="@moodCode='EVN'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode] должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(effectiveTime)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(routeCode)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode] должен иметь 1 элемент routeCode.</assert>
            <assert test="count(doseQuantity)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode] должен иметь 1 элемент doseQuantity.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime[not(@nullFlavor)]">
            <assert test="@xsi:type='PIVL_TS'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime должен иметь значение атрибута @xsi:type равное 'PIVL_TS'.</assert>
            <assert test="@institutionSpecified=['true','false']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime должен иметь значение атрибута @institutionSpecified равное 'true' или 'false'.</assert>
            <assert test="count(period)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime должен иметь 1 элемент period.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime/period">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime/period должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime/period должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime/period должен иметь 1 элемент translation.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/effectiveTime/period не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1468']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1468'.</assert>
            <assert test="@code!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration/routeCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/doseQuantity[not(@nullFlavor)]">
            <assert test="@value!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/doseQuantity должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/doseQuantity должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/doseQuantity должен иметь 1 элемент translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/consumable/manufacturedProduct/manufacturedMaterial">
            <assert test="@nullFlavor='NA'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PRESCRIBE']/component/section[code/@code='DRUG']/entry/act/entryRelationship/substanceAdministration[routeCode]/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']">
            <assert test="count(entry[observation/code[@code='8042']])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS'] должен иметь 1 элемент entry[observation/code[@code='8042']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation[code[@code='8042']]">
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation[code[@code='8042']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation/code[@code='8042']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation/code[@code='8042'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation[code[@code='8042']]/value">
            <assert test="@xsi:type='ST'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']">
            <assert test="count(entry[act])&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS'] должен иметь не более 1 элемента entry[act].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act">
            <assert test="count(text)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(reference)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act должен иметь 1 элемент reference.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/effectiveTime">
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference">
            <assert test="@typeCode='REFR'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act должен иметь 1 элемент externalDocument.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=2">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument должен иметь 2 элемента id.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.13.17.1.1'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.17.1.1'.</assert>
            <assert test="matches(@extension,'(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)')">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='STAGEEPICRISIS']/entry/act/reference/externalDocument/id[2] должен иметь синтаксически корректное значение атрибута @extension, соответствующее формату "^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$" или "^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$".</assert>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']">
            <assert test="count(entry[observation/code[@code='6035']])=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES'] должен иметь 1 элемент entry[observation/code[@code='6035']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]">
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']] должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[act])>=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']] должен иметь не менее 1 элемента entryRelationship[act].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation/code[@code='6035']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation/code[@code='6035'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/value">
            <assert test="@xsi:type='INT'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation/value должен иметь значение атрибута @xsi:type равное 'INT'.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act">
            <assert test="count(text)&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1070','1.2.643.5.1.13.2.1.1.473']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1070' или '1.2.643.5.1.13.2.1.1.473'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act/effectiveTime">
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='SERVICES']/entry/observation[code[@code='6035']]/entryRelationship/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(entry[act])>=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry[act].</assert>
        </rule>
    </pattern>



<!-- [Core01_2]Модуль проверки имен и наименований (//name) -->

<!-- Альтернативный вариант: допускается отсутствие атрибута @xsi:type -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 13.09.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Core01-1 -->
    <pattern>	
        <rule context="//name[family|given|identity:Patronymic][not(@nullFlavor)]">
			<assert test="count(family)=1">Core01-1. Элемент //name должен иметь 1 элемент family.</assert>
			<assert test="count(given)=1">Core01-1. Элемент //name должен иметь 1 элемент given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">Core01-1. Элемент //name должен иметь не более 1 элемента identity:Patronymic.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//name/family">
            <assert test=".!=''">Core01-1. Элемент //name/family должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core01-1. Элемент //name/family не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//name/given">
            <assert test=".!=''">Core01-1. Элемент //name/given должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core01-1. Элемент //name/given не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Core01-2 -->
    <pattern>
        <rule context="//name[identity:Patronymic]">
            <assert test="identity:Patronymic!=''">Core01-1. Элемент //name/identity:Patronymic должен иметь не пустое значение.</assert>
            <report test="identity:Patronymic/@nullFlavor">Core01-1. Элемент //name/identity:Patronymic не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//name[not(family|given|identity:Patronymic)]">
            <assert test=".!=''">Core01-2. Элемент //name должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core01-2. Элемент //name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core02_2]Модуль проверки адресов (//addr) -->

<!-- Альтернативный вариант: в address:residentCode допускается @nullFlavor -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 16.01.2022 - v.1.0.0: Модуль разработан -->

    <!-- Core02-1 -->
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">Core02-1. Элемент //addr должен иметь 1 элемент streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">Core02-1. Элемент //addr должен иметь 1 элемент address:stateCode.</assert>
            <assert test="count(postalCode)=1">Core02-1. Элемент //addr должен иметь 1 элемент postalCode.</assert>
            <assert test="count(fias:Address)=1">Core02-1. Элемент //addr должен иметь 1 элемент fias:Address.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr/streetAddressLine">
            <assert test=".!=''">Core02-1. Элемент //addr/streetAddressLine должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core02-1. Элемент //addr/streetAddressLine не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[not(address:country) or address:country/@code='185'][address:stateCode]">
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">Core02-1. Элемент //addr/address:stateCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.206' или '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@code!=''">Core02-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">Core02-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">Core02-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">Core02-1. Элемент //addr/address:stateCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:stateCode/@nullFlavor">Core02-1. Элемент //addr/address:stateCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[address:Type]">
            <assert test="address:Type/@codeSystem=['1.2.643.5.1.13.13.11.1504','1.2.643.5.1.13.13.11.1415','1.2.643.5.1.13.13.99.2.241']">Core02-1. Элемент //addr/address:Type должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1504', '1.2.643.5.1.13.13.11.1415' или '1.2.643.5.1.13.13.99.2.241'.</assert>
            <assert test="address:Type/@codeSystemName!=''">Core02-1. Элемент //addr/address:Type должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:Type/@code!=''">Core02-1. Элемент //addr/address:Type должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:Type/@codeSystemVersion!=''">Core02-1. Элемент //addr/address:Type должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:Type/@displayName!=''">Core02-1. Элемент //addr/address:Type должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:Type/@nullFlavor">Core02-1. Элемент //addr/address:Type не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[address:country]">
            <assert test="address:country/@codeSystem=['1.2.643.5.1.13.13.99.2.545']">Core02-1. Элемент //addr/address:country должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.545'.</assert>
            <assert test="address:country/@codeSystemName!=''">Core02-1. Элемент //addr/address:country должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:country/@code!=''">Core02-1. Элемент //addr/address:country должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:country/@codeSystemVersion!=''">Core02-1. Элемент //addr/address:country должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:country/@displayName!=''">Core02-1. Элемент //addr/address:country должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="address:country/@nullFlavor">Core02-1. Элемент //addr/address:country не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[address:residentCode[not(@nullFlavor)]]">
            <assert test="address:residentCode/@codeSystem=['1.2.643.5.1.13.13.11.1042','1.2.643.5.1.13.2.1.1.573']">Core02-1. Элемент //addr/address:residentCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1042' или '1.2.643.5.1.13.2.1.1.573'.</assert>
            <assert test="address:residentCode/@code!=''">Core02-1. Элемент //addr/address:residentCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="address:residentCode/@codeSystemName!=''">Core02-1. Элемент //addr/address:residentCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="address:residentCode/@codeSystemVersion!=''">Core02-1. Элемент //addr/address:residentCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="address:residentCode/@displayName!=''">Core02-1. Элемент //addr/address:residentCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr/postalCode[not(@nullFlavor)]">
            <assert test=".!=''">Core02-1. Элемент //addr/postalCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address[not(@nullFlavor)]]">
            <assert test="count(fias:Address/fias:AOGUID)=1">Core02-1. Элемент //addr/fias:Address должен иметь 1 элемент fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">Core02-1. Элемент //addr/fias:Address должен иметь 1 элемент fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:AOGUID]">
            <assert test="fias:Address/fias:AOGUID!=''">Core02-1. Элемент //addr/fias:Address/fias:AOGUID должен иметь не пустое значение.</assert>
            <report test="fias:Address/fias:AOGUID/@nullFlavor">Core02-1. Элемент //addr/fias:Address/fias:AOGUID не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//addr[fias:Address/fias:HOUSEGUID[not(@nullFlavor)]]">
            <assert test="fias:Address/fias:HOUSEGUID!=''">Core02-1. Элемент //addr/fias:Address/fias:HOUSEGUID должен иметь не пустое значение.</assert>
        </rule>
    </pattern>



<!-- [Core03_3]Модуль проверки даты/времени (//effectiveTime, //birthTime, //PII:birthTime, //time, //effectiveTime/low, //identity:low, //effectiveTime/high, //identity:high, //identity:IssueDate, //value[@xsi:type='TS']) -->

<!-- Альтернативный вариант: для //effectiveTime[not(@xsi:type=['IVL_TS','PIVL_TS'])] -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 06.10.2022 - v.1.0.0: Модуль разработан -->
<!-- 07.11.2022 - v.1.1.0: Добавление проверки элемента value[xsi:type='TS'] -->
<!-- 29.11.2022 - v.1.2.0: Добавление проверки элемента identity:AuthorityDoc/identity:IssueDate -->
<!-- 19.01.2023 - v.1.2.1: Восстановлена проверка элемента value[@xsi:type='TS'] -->

    <!-- Core03-1 -->
    <pattern>
        <rule context="//effectiveTime[not(low|high)][not(@nullFlavor)][not(@xsi:type=['IVL_TS','PIVL_TS'])]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//birthTime[not(@nullFlavor)]|//time[not(@nullFlavor)]|//effectiveTime/low[not(@nullFlavor)]|//effectiveTime/high[not(@nullFlavor)]|//value[@xsi:type='TS'][not(@nullFlavor)]">
            <assert test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(@value,'^[1-2]{1}[0-9]{3}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[PII:birthTime[not(@nullFlavor)]]">
            <assert test="matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}$') or matches(PII:birthTime/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:DocInfo/identity:effectiveTime/identity:low[not(@nullFlavor)]]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:low/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:DocInfo/identity:effectiveTime/identity:high[not(@nullFlavor)]]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:DocInfo/identity:effectiveTime/identity:high/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня, можно указывать с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IssueDate[not(@nullFlavor)]]">
            <assert test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:IdentityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:AuthorityDoc/identity:IssueDate[not(@nullFlavor)]]">
            <assert test="matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата должна соответствовать формату "YYYYMMDDHHmmSS+|ZZZZ", где "YYYY" – год, "ММ" – месяц, "HH" - часы, "mm" - минуты, "SS" - секунды, "+|ZZZZ" - указатель временной зоны.</assert>
            <report test="matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$') or matches(identity:AuthorityDoc/identity:IssueDate/@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">Core03-1. Дата в элементе должна быть указана с точностью до дня.</report>
        </rule>
    </pattern>



<!-- [Core04_1]Модуль проверки уникальных идентификаторов (//id) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.07.2022 - v.1.0.0: Модуль разработан -->

    <!-- Core04-1 -->
    <pattern>
        <rule context="//id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">Core04-1. Элемент //id должен иметь синтаксически корректное значение атрибута @root, соответствующее регулярному выражению '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>



<!-- [Core05_2]Модуль проверки информации о ДУЛ (//identity:IdentityDoc) -->

<!-- Альтернативный вариант: допускается отсутствие атрибута @xsi:type -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 13.09.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Core05-1 -->
    <pattern>
        <rule context="//*[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:IssueOrgCode.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">Core05-1. Элемент //identity:IdentityDoc должен иметь 1 элемент identity:IssueDate.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IdentityCardType]">
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' или '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:IdentityDoc/identity:IdentityCardType/@nullFlavor">Core05-1. Элемент //identity:IdentityDoc/identity:IdentityCardType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:Series!=''">Core05-1. Элемент //identity:IdentityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:Number]">
            <assert test="identity:IdentityDoc/identity:Number!=''">Core05-1. Элемент //identity:IdentityDoc/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:IdentityDoc/identity:Number/@nullFlavor">Core05-1. Элемент //identity:IdentityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgName!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IssueOrgCode[not(@nullFlavor)]]">
            <assert test="identity:IdentityDoc/identity:IssueOrgCode!=''">Core05-1. Элемент //identity:IdentityDoc/identity:IssueOrgCode должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:IdentityDoc/identity:IssueDate]">
            <assert test="identity:IdentityDoc/identity:IssueDate/@value">Core05-1. Элемент //identity:IdentityDoc/identity:IssueDate должен иметь атрибут @value.</assert>
            <report test="identity:IdentityDoc/identity:IssueDate/@nullFlavor">Core05-1. Элемент //identity:IdentityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core06_3]Модуль проверки реквизитов организации (//identity:Props) -->

<!-- Альтернативный вариант: в identity:Ogrn и identity:Ogrnip допускается @nullFlavor, identity:Props может иметь произвольное количество identity:Ogrn и identity:Ogrnip -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 09.01.2023 - v.1.0.0: Модуль разработан -->

    <!-- Core06-1 -->
    <pattern>
        <rule context="//*[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">Core06-1. Элемент //identity:Props должен иметь не более 1 элемента identity:Okpo.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">Core06-1. Элемент //identity:Props должен иметь не более 1 элемента identity:Okato.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:Props/identity:Ogrn][identity:Props/identity:Ogrnip]">
            <assert test="identity:Props/identity:Ogrn!='' or identity:Props/identity:Ogrnip!=''">Core06-1. Элемент //identity:Props/identity:Ogrn или //identity:Props/identity:Ogrnip должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:Props/identity:Okpo]">
            <assert test="identity:Props/identity:Okpo!=''">Core06-1. Элемент //identity:Props/identity:Okpo должен иметь не пустое значение.</assert>
            <report test="identity:Props/identity:Okpo/@nullFlavor">Core06-1. Элемент //identity:Props/identity:Okpo не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:Props/identity:Okato]">
            <assert test="identity:Props/identity:Okato!=''">Core06-1. Элемент //identity:Props/identity:Okato должен иметь не пустое значение.</assert>
            <report test="identity:Props/identity:Okato/@nullFlavor">Core06-1. Элемент //identity:Props/identity:Okato не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core07_14]Модуль проверки элементов code (//code) -->

<!-- Альтернативный вариант: допускается @nullFlavor для code в блоке componentOf и секций 'PRESCRIBE', 'SERVICES' -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 27.01.2023 - v.1.0.0: Модуль разработан -->

    <!-- Core07-1 -->
    <pattern>
        <rule context="//code[not(parent::criterion)][not(ancestor::componentOf)][not(ancestor::section[code/@code=['PRESCRIBE','SERVICES']])]">
            <assert test="@codeSystem!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemName!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Core07-1. //code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">Core07-1. Элемент //code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//code[parent::criterion]">
            <assert test="@code='ASSERTION'">Core07-1. Элемент //code должен иметь значение атрибута @code равное 'ASSERTION'.</assert>
            <assert test="@codeSystem='2.16.840.1.113883.5.4'">Core07-1. Элемент //code должен иметь значение атрибута @codeSystem равное '2.16.840.1.113883.5.4'.</assert>
            <report test="@nullFlavor">Core07-1. Элемент //code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//code[(ancestor::componentOf)|(ancestor::section[code/@code=['PRESCRIBE','SERVICES']])][not(parent::criterion)][not(@nullFlavor)]">
            <assert test="@codeSystem!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemName!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Core07-1. //code должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Core07-1. Элемент //code должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>



<!-- [Core08_11]Модуль проверки информации о сотруднике МО или о передвижном подразделении (//assignedEntity) -->

<!-- Альтернативный вариант: не проверять для documentationOf, секций 'SCORES' и 'SUR' -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.01.2023 - v.1.0.0: Модуль разработан -->

    <!-- Core08-1 -->
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]">
            <assert test="count(id)=2">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])]/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">Core08-1. Элемент //assignedEntity/id[1][not(@nullFlavor)] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">Core08-1. Элемент //assignedEntity/id[1][not(@nullFlavor)] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/id[2]">
            <assert test="@root='1.2.643.100.3'">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/addr">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/assignedPerson">
            <assert test="count(name)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/assignedPerson/name">
            <assert test="count(family)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/representedOrganization">
            <assert test="@classCode='ORG'">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/representedOrganization/id">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][not(id[1]/@nullFlavor)]/representedOrganization/addr">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Core08-2 -->
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][id[1]/@nullFlavor='NI']">
            <assert test="count(id)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент id.</assert>
            <assert test="count(representedOrganization)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент representedOrganization.</assert>
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][id[1]/@nullFlavor='NI']/representedOrganization">
            <assert test="@classCode='ORG'">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][id[1]/@nullFlavor='NI']/representedOrganization/id">
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(ancestor::documentationOf)][not(ancestor::section[code/@code=['SCORES','SUR']])][id[1]/@nullFlavor='NI']/representedOrganization/addr">
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core09_2]Модуль проверки структуры секции (ClinicalDocument/component/structuredBody/component/section) -->

<!-- Альтернативный вариант: //component/section может иметь не более 1 text -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 01.12.2022 - v.1.0.0: Модуль разработан -->

    <!-- Core09-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component">
            <assert test="count(section)=1">Core09-1. Элемент ClinicalDocument/component/structuredBody/component должен иметь 1 элемент section.</assert>
            <report test="@nullFlavor">Core09-1. Элемент ClinicalDocument/component/structuredBody/component не должен атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section/component">
            <assert test="count(section)=1">Core09-1. Элемент ClinicalDocument/component/structuredBody/component/section/component должен иметь 1 элемент section.</assert>
            <report test="@nullFlavor">Core09-1. Элемент ClinicalDocument/component/structuredBody/component/section/component не должен атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//component/section">
            <assert test="count(code)=1">Core09-1. Элемент //component/section должен иметь 1 элемент code.</assert>
            <assert test="count(title)=1">Core09-1. Элемент //component/section должен иметь 1 элемент title.</assert>
            <assert test="count(text)&lt;=1">Core09-1. Элемент //component/section должен иметь не более 1 элемента text.</assert>
            <report test="@nullFlavor">Core09-1. Элемент //component/section не должен атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//component/section/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23','1.2.643.5.1.13.13.11.1379']">Core09-1. Элемент //component/section/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.197', '1.2.643.5.1.13.2.1.1.1504.23' или '1.2.643.5.1.13.13.11.1379'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//component/section/title">
            <assert test=".!=''">Core09-1. Элемент //component/section/title должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core09-1. Элемент //component/section/title не должен атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core10_1]Модуль проверки структуры секции (//entry[observation|act|procedure|organizer|encounter], //observation, //encounter, //entryRelationship, //act, //organizer) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 03.08.2022 - v.1.0.0: Модуль разработан -->
<!-- 12.09.2022 - v.1.0.1: referenceRange/observationRange должен иметь 1 элемент value, referenceRange/observationRange/value должен иметь не более 1 элемента low -->
<!-- 27.09.2022 - v.1.1.0: Добавлена проверка элементов //entry[procedure] -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->
<!-- 07.11.2022 - v.2.1.0: Добавлена проверка элементов //entry[organizer|encounter], //organizer, //encounter -->

    <!-- Core10-1 -->
    <pattern>
        <rule context="//entry">
            <report test="@nullFlavor">Core10-1. Элемент //entry не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entry[observation]">
            <assert test="count(observation)=1">Core10-1. Элемент //entry[observation] должен иметь 1 элемент observation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entry[act]">
            <assert test="count(act)=1">Core10-1. Элемент //entry[act] должен иметь 1 элемент act.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entry[procedure]">
            <assert test="count(procedure)=1">Core10-1. Элемент //entry[procedure] должен иметь 1 элемент procedure.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entry[organizer]">
            <assert test="count(organizer)=1">Core10-1. Элемент //entry[organizer] должен иметь 1 элемент organizer.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entry[encounter]">
            <assert test="count(encounter)=1">Core10-1. Элемент //entry[organizer] должен иметь 1 элемент encounter.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation">
            <assert test="@classCode='OBS'">Core10-1. Элемент //observation должен иметь значение атрибута @classCode равное 'OBS'.</assert>
            <assert test="@moodCode='EVN'">Core10-1. Элемент //observation должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">Core10-1. Элемент //observation должен иметь 1 элемент code.</assert>
            <report test="@nullFlavor">Core10-1. Элемент //observation не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entryRelationship">
            <assert test="@typeCode='COMP'">Core10-1. Элемент //entryRelationship должен иметь значение атрибута @typeCode равное 'COMP'.</assert>
            <report test="@nullFlavor">Core10-1. Элемент //entryRelationship не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entryRelationship[observation]">
            <assert test="count(observation)=1">Core10-1. Элемент //entryRelationship[observation] должен иметь 1 элемент observation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//entryRelationship[act]">
            <assert test="count(act)=1">Core10-1. Элемент //entryRelationship[act] должен иметь 1 элемент act.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//act">
            <assert test="@classCode='ACT'">Core10-1. Элемент //act должен иметь значение атрибута @classCode равное 'ACT'.</assert>
            <assert test="@moodCode='EVN'">Core10-1. Элемент //act должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">Core10-1. Элемент //act должен иметь 1 элемент code.</assert>
            <report test="@nullFlavor">Core10-1. Элемент //act не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//organizer">
            <assert test="@classCode='CLUSTER'">Core10-1. Элемент //organizer должен иметь значение атрибута @classCode равное 'CLUSTER'.</assert>
            <assert test="@moodCode='EVN'">Core10-1. Элемент //organizer должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">Core10-1. Элемент //organizer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//encounter">
            <assert test="@classCode='ENC'">Core10-1. Элемент //encounter должен иметь значение атрибута @classCode равное 'ENC'.</assert>
            <assert test="@moodCode='EVN'">Core10-1. Элемент //encounter должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <report test="@nullFlavor">Core10-1. Элемент //encounter не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



    <!--<pattern>
        <rule context="//subject">
            <assert test="count(relatedSubject)=1">Core10-1. Элемент //subject должен иметь 1 элемент relatedSubject.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//subject/relatedSubject">
            <assert test="count(addr)=1">Core10-1. Элемент //subject/relatedSubject должен иметь 1 элемент addr.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//subject/relatedSubject/addr">
            <report test="@nullFlavor">Core10-1. Элемент //subject/relatedSubject/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//qualifier">
            <assert test="count(value)=1">Core10-1. Элемент //qualifier должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//qualifier/value">
            <assert test="@codeSystem!=''">Core10-1. Элемент //qualifier/value должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemName!=''">Core10-1. Элемент //qualifier/value должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Core10-1. Элемент //qualifier/value должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Core10-1. Элемент //qualifier/value должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Core10-1. Элемент //qualifier/value должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//procedure">
            <assert test="@classCode='PROC'">Core10-1. Элемент //procedure должен иметь значение атрибута @classCode равное 'PROC'.</assert>
            <assert test="@moodCode='EVN'">Core10-1. Элемент //procedure должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(code)=1">Core10-1. Элемент //procedure должен иметь 1 элемент code.</assert>
            <assert test="count(text)=1">Core10-1. Элемент //procedure должен иметь 1 элемент text.</assert>
            <assert test="count(effectiveTime)=1">Core10-1. Элемент //procedure должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//procedure/effectiveTime">
            <assert test="count(low)=1">Core10-1. Элемент //procedure/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)=1">Core10-1. Элемент //procedure/effectiveTime должен иметь 1 элемент high.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//procedure/effectiveTime/low">
            <report test="@nullFlavor">Core10-1. Элемент //procedure/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//procedure/effectiveTime/high">
            <report test="@nullFlavor">Core10-1. Элемент //procedure/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>-->



<!-- [Core11_5]Модуль проверки наполнения секции (//observation/value[@xsi:type=['CD','ST','BL','PQ','TS','INT']], //translation, //text, //substanceAdministration, //precondition, //interpretationCode, //statusCode, //referenceRange, //modeCode) -->

<!-- Альтернативный вариант: value[@xsi:type=['CD','ST','BL','PQ','TS','INT']] может иметь @nullFlavor, в substanceAdministration не проверяется @moodCode, manufacturedProduct в секции SUR должен иметь 1 manufacturedLabeledDrug -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 29.11.2022 - v.1.0.0: Модуль разработан -->

    <!-- Core11-1 -->
    <pattern>
        <rule context="//observation/value[@xsi:type='CD'][not(@nullFlavor)]">
            <assert test="@codeSystem!=''">Core11-1. Элемент //observation/value[@xsi:type='CD'] должен иметь не пустое значение атрибута @codeSystem.</assert>
            <assert test="@codeSystemName!=''">Core11-1. Элемент //observation/value[@xsi:type='CD'] должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Core11-1. Элемент //observation/value[@xsi:type='CD'] должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Core11-1. Элемент //observation/value[@xsi:type='CD'] должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Core11-1. Элемент //observation/value[@xsi:type='CD'] должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation/value[@xsi:type='ST'][not(@nullFlavor)]">
            <assert test=".!=''">Core11-1. Элемент //observation/value[@xsi:type='ST'] должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation/value[@xsi:type='BL'][not(@nullFlavor)]">
            <assert test="@value=['true','false']">Core11-1. Элемент //observation/value[@xsi:type='BL'] должен иметь значение атрибута @value равное 'true' или 'false'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation/value[@xsi:type='PQ'][not(@nullFlavor)]">
            <assert test="@value!=''">Core11-1. Элемент //observation/value[@xsi:type='PQ'] должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">Core11-1. Элемент //observation/value[@xsi:type='PQ'] должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)&lt;=1">Core11-1. Элемент //observation/value[@xsi:type='PQ'] должен иметь не более 1 элемента translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation/value[@xsi:type='TS'][not(@nullFlavor)]">
            <assert test="@value!=''">Core11-1. Элемент //observation/value[@xsi:type='TS'] должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//observation/value[@xsi:type='INT'][not(@nullFlavor)]">
            <assert test="@value!=''">Core11-1. Элемент //observation/value[@xsi:type='INT'] должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//translation">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1358','1.2.643.5.1.13.13.11.1031']">Core11-1. Элемент //translation должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1358' или '1.2.643.5.1.13.13.11.1031'.</assert>
            <assert test="@code!=''">Core11-1. Элемент //translation должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">Core11-1. Элемент //translation должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">Core11-1. Элемент //translation должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@value!=''">Core11-1. Элемент //translation должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@codeSystemVersion!=''">Core11-1. Элемент //translation должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //translation не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//text">
            <assert test=".!=''">Core11-1. Элемент //text должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration">
            <assert test="@classCode='SBADM'">Core11-1. Элемент //substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="count(consumable)=1">Core11-1. Элемент //substanceAdministration должен иметь 1 элемент consumable.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //substanceAdministration не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration/consumable">
            <assert test="@typeCode='CSM'">Core11-1. Элемент //substanceAdministration/consumable должен иметь значение атрибута @typeCode равное 'CSM'.</assert>
            <assert test="count(manufacturedProduct)=1">Core11-1. Элемент //substanceAdministration/consumable должен иметь 1 элемент manufacturedProduct.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //substanceAdministration/consumable не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration/consumable/manufacturedProduct">
            <assert test="@classCode='MANU'">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct должен иметь значение атрибута @classCode равное 'MANU'.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration/consumable/manufacturedProduct[not(ancestor::component[section/code/@code='SUR'])]">
            <assert test="count(manufacturedMaterial)=1">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial[not(@nullFlavor)]">
            <assert test="@classCode='MMAT'">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь значение атрибута @classCode равное 'MMAT'.</assert>
            <assert test="count(code)=1">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct/manufacturedMaterial должен иметь 1 элемент code.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//precondition">
            <assert test="@typeCode='PRCN'">Core11-1. Элемент //precondition должен иметь значение атрибута @typeCode равное 'PRCN'.</assert>
            <assert test="count(criterion)=1">Core11-1. Элемент //precondition должен иметь 1 элемент criterion.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //precondition не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//precondition/criterion">
            <assert test="count(code)=1">Core11-1. Элемент //precondition/criterion должен иметь 1 элемент code.</assert>
            <assert test="count(value)=1">Core11-1. Элемент //precondition/criterion должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //precondition/criterion не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//precondition/criterion/value">
            <assert test="@xsi:type='ST'">Core11-1. Элемент //precondition/criterion/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <assert test=".!=''">Core11-1. Элемент //precondition/criterion/value должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //precondition/criterion/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//interpretationCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.257','1.2.643.5.1.13.2.1.1.1504.204','1.2.643.5.1.13.13.11.1381']">Core11-1. Элемент //interpretationCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.257', '1.2.643.5.1.13.2.1.1.1504.204' или '1.2.643.5.1.13.13.11.1381'.</assert>
            <assert test="@code!=''">Core11-1. Элемент //interpretationCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">Core11-1. Элемент //interpretationCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">Core11-1. Элемент //interpretationCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">Core11-1. Элемент //interpretationCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//statusCode">
            <assert test="@code='completed'">Core11-1. Элемент //statusCode должен иметь значение атрибута @code равное 'completed'.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //statusCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//referenceRange">
            <assert test="count(observationRange)=1">Core11-1. Элемент //referenceRange должен иметь 1 элемент observationRange.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //referenceRange не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//referenceRange/observationRange">
            <assert test="count(text)=1">Core11-1. Элемент //referenceRange/observationRange должен иметь 1 элемент text.</assert>
            <assert test="count(value)=1">Core11-1. Элемент //referenceRange/observationRange должен иметь 1 элемент value.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //referenceRange/observationRange не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//referenceRange/observationRange/value">
            <assert test="@xsi:type='IVL_PQ'">Core11-1. Элемент //referenceRange/observationRange/value должен иметь значение атрибута @xsi:type равное 'IVL_PQ'.</assert>
            <assert test="count(low)&lt;=1">Core11-1. Элемент //referenceRange/observationRange/value должен иметь не более 1 элемента low.</assert>
            <assert test="count(high)&lt;=1">Core11-1. Элемент //referenceRange/observationRange/value должен иметь не более 1 элемента high.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //referenceRange/observationRange/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//referenceRange/observationRange/value/low[not(@nullFlavor)]">
            <assert test="@value!=''">Core11-1. Элемент //referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">Core11-1. Элемент //referenceRange/observationRange/value/low должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">Core11-1. Элемент //referenceRange/observationRange/value/low должен иметь 1 элемент translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//referenceRange/observationRange/value/high[not(@nullFlavor)]">
            <assert test="@value!=''">Core11-1. Элемент //referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @value.</assert>
            <assert test="@unit!=''">Core11-1. Элемент //referenceRange/observationRange/value/high должен иметь не пустое значение атрибута @unit.</assert>
            <assert test="count(translation)=1">Core11-1. Элемент //referenceRange/observationRange/value/high должен иметь 1 элемент translation.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//modeCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.368','1.2.643.5.1.13.2.1.1.734']">Core11-1. Элемент //modeCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.368' или '1.2.643.5.1.13.2.1.1.734'.</assert>
            <assert test="@code!=''">Core11-1. Элемент //modeCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemName!=''">Core11-1. Элемент //modeCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@displayName!=''">Core11-1. Элемент //modeCode должен иметь не пустое значение атрибута @displayName.</assert>
            <assert test="@codeSystemVersion!=''">Core11-1. Элемент //modeCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
        </rule>
    </pattern>



<!-- [Core12_1]Модуль проверки контактов (//telecom) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 13.10.2022 - v.1.0.0: Модуль разработан -->
<!-- 08.11.2022 - v.1.0.1: Уточнение оси - замена ancestor на parent -->

    <!-- Core12-1 -->
    <pattern>
        <rule context="//telecom[not(parent::scopingOrganization)]">
            <assert test="@value!=''">Core12-1. Элемент //telecom должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">Core12-1. Элемент //telecom не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//telecom[parent::scopingOrganization][not(@nullFlavor)]">
            <assert test="@value!=''">Core12-1. Элемент //telecom должен иметь не пустое значение атрибута @value.</assert>
        </rule>
    </pattern>



<!-- [Main01_1]Модуль проверки общих сведений о СЭМД (ClinicalDocument/realmCode, ClinicalDocument/typeId, ClinicalDocument/templateId, ClinicalDocument/id, ClinicalDocument/code, ClinicalDocument/title, ClinicalDocument/effectiveTime, ClinicalDocument/confidentialityCode, ClinicalDocument/languageCode, ClinicalDocument/setId, ClinicalDocument/versionNumber, ClinicalDocument/component/structuredBody) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 26.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 13.09.2022 - v.1.0.1:
1) Main01-5: Элемент code не должен иметь @nullFlavor
-->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Main01-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">Main01-1. Элемент ClinicalDocument должен иметь 1 элемент realmCode.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">Main01-1. Элемент ClinicalDocument/realmCode должен иметь значение атрибута @code равное 'RU'.</assert>
            <report test="@nullFlavor">Main01-1. Элемент ClinicalDocument/realmCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-2 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">Main01-2. Элемент ClinicalDocument должен иметь 1 элемент typeId.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/typeId">
            <assert test="@root='2.16.840.1.113883.1.3'">Main01-2. Элемент ClinicalDocument/typeId должен иметь значение атрибута @root равное '2.16.840.1.113883.1.3'.</assert>
            <assert test="@extension='POCD_MT000040'">Main01-2. Элемент ClinicalDocument/typeId должен иметь значение атрибута @extension равное 'POCD_MT000040'.</assert>
            <report test="@nullFlavor">Main01-2. Элемент ClinicalDocument/typeId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-3 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">Main01-3. Элемент ClinicalDocument должен иметь 1 элемент templateId.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <report test="@nullFlavor">Main01-3. Элемент ClinicalDocument/templateId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-4 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">Main01-4. Элемент ClinicalDocument должен иметь 1 элемент id.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">Main01-4. Элемент ClinicalDocument/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">Main01-4. Элемент ClinicalDocument/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main01-4. Элемент ClinicalDocument/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-5 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">Main01-5. Элемент ClinicalDocument должен иметь 1 элемент code.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">Main01-5. Элемент ClinicalDocument/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
        </rule>
    </pattern>
    <!-- Main01-6 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">Main01-6. Элемент ClinicalDocument должен иметь 1 элемент title.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">Main01-6. Элемент ClinicalDocument/title должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Main01-6. Элемент ClinicalDocument/title не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-7 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">Main01-7. Элемент ClinicalDocument должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[not(@nullFlavor)]">
            <assert test="@value">Main01-7. Элемент ClinicalDocument/effectiveTime должен иметь атрибут @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor='NA'">Main01-7. Элемент ClinicalDocument/effectiveTime должен иметь значение атрибут @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <!-- Main01-8 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">Main01-8. Элемент ClinicalDocument должен иметь 1 элемент confidentialityCode.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">Main01-8. Элемент ClinicalDocument/confidentialityCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' или '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@codeSystemName!=''">Main01-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Main01-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Main01-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Main01-8. Элемент ClinicalDocument/confidentialityCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">Main01-8. Элемент ClinicalDocument/confidentialityCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">Main01-9. Элемент ClinicalDocument должен иметь 1 элемент languageCode.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">Main01-9. Элемент ClinicalDocument/languageCode должен иметь значение атрибута @code равное 'ru-RU'.</assert>
            <report test="@nullFlavor">Main01-9. Элемент ClinicalDocument/languageCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(setId)=1">Main01-10. Элемент ClinicalDocument должен иметь 1 элемент setId.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">Main01-10. Элемент ClinicalDocument/setId должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов наборов версий документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.50".</assert>
            <assert test="@extension!=''">Main01-10. Элемент ClinicalDocument/setId должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main01-10. Элемент ClinicalDocument/setId не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[id/@root][setId/@root]">
            <report test="matches(id/@root,setId/@root)">Main01-10. Значения атрибута @root элементов ClinicalDocument/id и ClinicalDocument/setId должны различаться.</report>
        </rule>
    </pattern>
    <!-- Main01-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(versionNumber)=1">Main01-11. Элемент ClinicalDocument должен иметь 1 элемент versionNumber.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">Main01-11. Элемент ClinicalDocument/versionNumber должен иметь не пустое значение атрибута @value.</assert>
            <report test="@nullFlavor">Main01-11. Элемент ClinicalDocument/versionNumber не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main01-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(component)=1">Main01-12. Элемент ClinicalDocument должен иметь 1 элемент component.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">Main01-12. Элемент ClinicalDocument/component должен иметь 1 элемент structuredBody.</assert>
            <report test="@nullFlavor">Main01-12. Элемент ClinicalDocument/component не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <report test="@nullFlavor">Main01-12. Элемент ClinicalDocument/component/structuredBody не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main02_2]Модуль проверки информации о пациенте (ClinicalDocument/recordTarget) -->

<!-- Альтернативный вариант: в patientRole/id[2], patientRole/identity:IdentityDoc, patientRole/patient/administrativeGenderCode, patientRole/patient/birthTime допускается @nullFlavor -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 18.10.2022 - v.1.0.0: Модуль разработан -->
<!-- 29.11.2022 - v.1.0.1: Элемент patientRole/patient/guardian должен иметь не более 1 (guardianPerson|guardianOrganization) -->

    <!-- Main02-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">Main02-1. Элемент ClinicalDocument должен иметь 1 элемент recordTarget.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">Main02-1. Элемент ClinicalDocument/recordTarget должен иметь 1 элемент patientRole.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 2 элемента id.</assert>
            <assert test="count(identity:IdentityDoc)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:IdentityDoc.</assert>
            <assert test="count(identity:InsurancePolicy)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент identity:InsurancePolicy.</assert>
            <assert test="count(addr)=[1,2]">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 или 2 элемента addr.</assert>
            <assert test="count(patient)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент patient.</assert>
            <assert test="count(providerOrganization)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole должен иметь 1 элемент providerOrganization.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов пациентов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.10".</assert>
            <assert test="@extension!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.100.3'">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy[not(@nullFlavor)]]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:IdentityCardType/identity:InsurancePolicyType.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь не более 1 элемента identity:IdentityCardType/identity:Series.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy должен иметь 1 элемент identity:IdentityCardType/identity:Number.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy/identity:InsurancePolicyType]">
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem=['1.2.643.5.1.13.13.11.1035']">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:InsurancePolicy/identity:InsurancePolicyType/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy/identity:Series]">
            <assert test="identity:InsurancePolicy/identity:Series!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series должен иметь не пустое значение.</assert>
            <report test="identity:InsurancePolicy/identity:Series/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy/identity:Number]">
            <assert test="identity:InsurancePolicy/identity:Number!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:InsurancePolicy/identity:Number/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент name.</assert>
            <assert test="count(administrativeGenderCode)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь 1 элемент birthTime.</assert>
            <assert test="count(guardian)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient должен иметь не более 1 элемента guardian.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name">
            <assert test="count(family)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1040' или '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@codeSystemName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian">
            <assert test="@classCode='GUARD'">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь значение атрибута @classCode равное 'GUARD'.</assert>
            <assert test="count(id)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента id.</assert>
            <assert test="count(PII:birthTime)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента PII:birthTime.</assert>
            <assert test="count(identity:IdentityDoc)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:IdentityDoc.</assert>
            <assert test="count(identity:AuthorityDoc)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента identity:AuthorityDoc.</assert>
            <assert test="count(code)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента code.</assert>
            <assert test="count(addr)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента addr.</assert>
            <assert test="count(guardianPerson|guardianOrganization)&lt;=1 ">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian должен иметь не более 1 элемента guardianPerson или 1 элемента guardianOrganization.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/id">
            <assert test="@root='1.2.643.100.3'">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/id должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/id должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[PII:birthTime]">
            <report test="PII:birthTime/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/PII:birthTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:IdentityDoc]">
            <report test="identity:IdentityDoc/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:IdentityDoc не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc]">
            <assert test="count(identity:AuthorityDoc/identity:IdentityCardType)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IdentityCardType.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Series)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:AuthorityDoc/identity:Number)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueOrgName)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueOrgName.</assert>
            <assert test="count(identity:AuthorityDoc/identity:IssueDate)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc должен иметь 1 элемент identity:IssueDate.</assert>
            <report test="identity:AuthorityDoc/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IdentityCardType]">
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.313']">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.313'.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@code!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@codeSystemVersion!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:AuthorityDoc/identity:IdentityCardType/@displayName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:AuthorityDoc/identity:IdentityCardType/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IdentityCardType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:Series[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:Series!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:Number]">
            <assert test="identity:AuthorityDoc/identity:Number!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:AuthorityDoc/identity:Number/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IssueOrgName[not(@nullFlavor)]]">
            <assert test="identity:AuthorityDoc/identity:IssueOrgName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueOrgName должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian[identity:AuthorityDoc/identity:IssueDate]">
            <assert test="identity:AuthorityDoc/identity:IssueDate/@value">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate должен иметь атрибут @value.</assert>
            <report test="identity:AuthorityDoc/identity:IssueDate/@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/identity:AuthorityDoc/identity:IssueDate не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.14','1.2.643.5.1.13.2.1.1.1504.40']">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.14' или '1.2.643.5.1.13.2.1.1.1504.40'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/addr">
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson">
            <assert test="count(name)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name">
            <assert test="count(family)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization">
            <assert test="count(id)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь не более 1 элемента id.</assert>
            <assert test="count(identity:Props)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id">
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr">
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/patient/guardian/guardianOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 или 2 элемента id.</assert>
            <assert test="count(identity:Props)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент identity:Props.</assert>
            <assert test="count(name)=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id">
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
            <assert test="@assigningAuthorityName!=''">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id должен иметь не пустое значение атрибута @assigningAuthorityName.</assert>
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/addr">
            <report test="@nullFlavor">Main02-1. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main03_1]Модуль проверки информации об авторе (ClinicalDocument/author) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 21.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 13.09.2022 - v.1.0.1:
1) Main03-1: Элемент code не должен иметь @nullFlavor
-->
<!-- 03.10.2022 - v.1.0.2:
1) Main03-1: Элемент assignedAuthor должен иметь не более 1 элемента representedOrganization
-->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Main03-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">Main03-1. Элемент ClinicalDocument должен иметь 1 элемент author.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">Main03-1. Элемент ClinicalDocument/author должен иметь 1 элемент time.</assert>
            <assert test="count(assignedAuthor)=1">Main03-1. Элемент ClinicalDocument/author должен иметь 1 элемент assignedAuthor.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/time">
            <assert test="@nullFlavor='NI'">Main03-1. Элемент ClinicalDocument/author/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">Main03-1. Элемент ClinicalDocument/author/assignedAuthor должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов автора, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/addr">
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name">
            <assert test="count(family)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="@classCode='ORG'">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/addr">
            <report test="@nullFlavor">Main03-1. Элемент ClinicalDocument/author/assignedAuthor/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main04_1]Модуль проверки информации о владельце документа (ClinicalDocument/custodian) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Main04-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">Main04-1. Элемент ClinicalDocument должен иметь 1 элемент custodian.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">Main04-1. Элемент ClinicalDocument/custodian должен иметь 1 элемент assignedCustodian.</assert>
            <report test="@nullFlavor">Main04-1. Элемент ClinicalDocument/custodian не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian должен иметь 1 элемент representedCustodianOrganization.</assert>
            <report test="@nullFlavor">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="@classCode='ORG'">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)&lt;=1">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(addr)=1">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <report test="@nullFlavor">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr">
            <report test="@nullFlavor">Main04-1. Элемент ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main05_1]Модуль проверки информации об организации-получателе документа (ClinicalDocument/informationRecipient) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Main05-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])=1">Main05-1. Элемент ClinicalDocument должен иметь 1 элемент informationRecipient.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient">
            <assert test="count(intendedRecipient)=1">Main05-1. Элемент ClinicalDocument/informationRecipient должен иметь 1 элемент intendedRecipient.</assert>
            <report test="@nullFlavor">Main05-1. Элемент ClinicalDocument/informationRecipient не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient">
            <assert test="count(receivedOrganization)=1">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient должен иметь 1 элемент receivedOrganization.</assert>
            <report test="@nullFlavor">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization">
            <assert test="count(id)=1">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13']">
            <report test="@nullFlavor">Main05-1. Элемент ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization/id[@root='1.2.643.5.1.13'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main06_1]Модуль проверки информации о лице, придавшем юридическую силу (ClinicalDocument/legalAuthenticator) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 21.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

    <!-- Main06-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">Main06-1. Элемент ClinicalDocument должен иметь 1 элемент legalAuthenticator.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">Main06-1. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент time.</assert>
            <assert test="count(signatureCode)=1">Main06-1. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент signatureCode.</assert>
            <assert test="count(assignedEntity[not(id/@nullFlavor)])=1">Main06-1. Элемент ClinicalDocument/legalAuthenticator должен иметь 1 элемент assignedEntity.</assert>
            <report test="@nullFlavor">Main06-1. Элемент ClinicalDocument/legalAuthenticator не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@nullFlavor='NI'">Main06-1. Элемент ClinicalDocument/legalAuthenticator/time должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@nullFlavor='NI'">Main06-1. Элемент ClinicalDocument/legalAuthenticator/signatureCode должен иметь значение атрибута @nullFlavor равное 'NI'.</assert>
        </rule>
    </pattern>



<!-- [Main07_5]Модуль проверки сведений об источнике оплаты (ClinicalDocument/participant[@typeCode='IND']) -->

<!-- Альтернативный вариант: допускается отсутствие атрибута @xsi:type, элемента associatedEntity/scopingOrganization -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 09.01.2023 - v.1.0.0: Модуль разработан -->
<!-- 23.03.2023 - v.1.0.1: Исправление опечатки (identity:DocType => identity:IdentityDocType) -->

    <!-- Main07-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant[@typeCode='IND'])&lt;=1">Main07-1. Элемент ClinicalDocument должен иметь не более 1 элемента participant.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']">
            <assert test="count(associatedEntity)=1">Main07-1. Элемент ClinicalDocument/participant должен иметь 1 элемент associatedEntity.</assert>
            <report test="@nullFlavor">Main07-1. Элемент ClinicalDocument/participant не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity">
            <assert test="@classCode='GUAR'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity должен иметь значение атрибута @classCode равное 'GUAR'.</assert>
            <assert test="count(code)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(identity:DocInfo)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity должен иметь 1 элемент identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity должен иметь не более 1 элемента scopingOrganization.</assert>
            <report test="@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1039']">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1039'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo][code/@code=['8','9','10','11','12']]">
            <assert test="identity:DocInfo/@nullFlavor=['NA','NAV']">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь значение атрибута @nullFlavor равное 'NA' или 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:InsurancePolicyType.</assert>
            <assert test="count(identity:DocInfo/identity:Series)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Series.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:Number.</assert>
            <assert test="count(identity:DocInfo/identity:INN)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:INN.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo должен иметь 1 элемент identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystem=['1.2.643.5.1.13.13.99.2.724']">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.724'.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystemName!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@code!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@codeSystemVersion!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:IdentityDocType/@displayName!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="identity:DocInfo/identity:IdentityDocType/@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '1'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '2'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:IdentityDocType][code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType должен иметь значение атрибута @code равное '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem=['1.2.643.5.1.13.13.11.1035']">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemName!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь не пустое значение атрибута @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor][identity:DocInfo/identity:IdentityDocType/@code='1']">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:InsurancePolicyType][identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code='1']">
            <assert test="identity:DocInfo/identity:Series!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
            <report test="identity:DocInfo/identity:Series/@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Series][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Series[not(@nullFlavor)]][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:Number][identity:DocInfo/identity:InsurancePolicyType[not(@nullFlavor='NAV')]]">
            <assert test="identity:DocInfo/identity:Number!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number должен иметь не пустое значение.</assert>
            <report test="identity:DocInfo/identity:Number/@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:INN[not(@nullFlavor)]]">
            <assert test="identity:DocInfo/identity:INN!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:effectiveTime][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor=['NAV','NASK']">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь значение атрибута @nullFlavor равное 'NAV' или 'NASK'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:effectiveTime[not(@nullFlavor)]]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:low.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime должен иметь 1 элемент identity:high.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:low]">
            <report test="identity:DocInfo/identity:effectiveTime/identity:low/@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity[identity:DocInfo/identity:effectiveTime/identity:high][identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high должен иметь значение атрибута @nullFlavor равное 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization">
            <assert test="count(id)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(telecom)>=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь не менее 1 элемента telecom.</assert>
            <assert test="count(addr)=1">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.13.99.2.183'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.99.2.183'.</assert>
            <assert test="@extension!=''">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IND']/associatedEntity/scopingOrganization/id[@nullFlavor]">
            <assert test="@nullFlavor='NA'">Main07-1. Элемент ClinicalDocument/participant/associatedEntity/scopingOrganization/id должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
        </rule>
    </pattern>



<!-- [Main08_7]Модуль проверки информации о пациенте (ClinicalDocument/documentationOf) -->

<!-- Альтернативный вариант: performer имеет специальный для ЭМД 189 assignedEntity -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.01.2023 - v.1.0.0: Модуль разработан -->

    <!-- Main08-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)&lt;=1">Main08-1. Элемент ClinicalDocument должен иметь не более 1 элемента documentationOf.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf">
            <assert test="count(serviceEvent)=1">Main08-1. Элемент ClinicalDocument/documentationOf должен иметь 1 элемент serviceEvent.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent">
            <assert test="count(code)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент code.</assert>
            <assert test="count(effectiveTime)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(medService:serviceForm)&lt;=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceForm.</assert>
            <assert test="count(medService:serviceType)&lt;=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceType.</assert>
            <assert test="count(medService:serviceCond)&lt;=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не более 1 элемента medService:serviceCond.</assert>
            <assert test="count(performer)>=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent должен иметь не менее 1 элемента performer.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.726']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.726'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime">
            <assert test="count(low)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь 1 элемент low.</assert>
            <assert test="count(high)&lt;=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime должен иметь не более 1 элемента high.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low">
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high">
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceForm]">
            <assert test="medService:serviceForm/@codeSystem=['1.2.643.5.1.13.13.11.1551','1.2.643.5.1.13.2.1.1.568','1.2.643.5.1.13.13.99.2.377']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1551', '1.2.643.5.1.13.2.1.1.568' или '1.2.643.5.1.13.13.99.2.377'.</assert>
            <assert test="medService:serviceForm/@codeSystemName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceForm/@code!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceForm/@codeSystemVersion!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceForm/@displayName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="medService:serviceForm/@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceForm не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceType]">
            <assert test="medService:serviceType/@codeSystem=['1.2.643.5.1.13.13.11.1034']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1034'.</assert>
            <assert test="medService:serviceType/@codeSystemName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceType/@code!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceType/@codeSystemVersion!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceType/@displayName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="medService:serviceType/@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent[medService:serviceCond]">
            <assert test="medService:serviceCond/@codeSystem=['1.2.643.5.1.13.13.99.2.322','1.2.643.5.1.13.2.1.1.103']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.322' или '1.2.643.5.1.13.2.1.1.103'.</assert>
            <assert test="medService:serviceCond/@codeSystemName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:serviceCond/@code!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:serviceCond/@codeSystemVersion!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:serviceCond/@displayName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="medService:serviceCond/@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/medService:serviceCond не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer">
            <assert test="@typeCode=['PPRF','SPRF']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь значение атрибута @typeCode равное 'PPRF' или 'SPRF'.</assert>
            <assert test="count(assignedEntity)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/functionCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.368','1.2.643.5.1.13.2.1.1.734']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.368' или '1.2.643.5.1.13.2.1.1.734'.</assert>
            <assert test="@codeSystemName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="@code!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @code.</assert>
            <assert test="@codeSystemVersion!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="@displayName!=''">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/functionCode  не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity">
            <assert test="count(id)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент id.</assert>
            <assert test="count(code)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент code.</assert>
            <assert test="count(telecom)&lt;=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь не более 1 элемента telecom.</assert>
            <assert test="count(assignedPerson)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity должен иметь 1 элемент assignedPerson.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson">
            <assert test="count(name)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name">
            <assert test="count(family)=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Main09_7]Модуль проверки информации о случае оказания медицинской помощи (ClinicalDocument/componentOf) -->

<!-- Альтернативный вариант: encompassingEncounter может иметь не более 1 effectiveTime и не более 1 medService:DocType, id[2] и code (Core07!) могут иметь @nullFlavor -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 26.01.2023 - v.1.0.0: Модуль разработан -->

    <!-- Main09-1 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)&lt;=1">Main09-1. Элемент ClinicalDocument должен иметь не более 1 элемента componentOf.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">Main09-1. Элемент ClinicalDocument/componentOf должен иметь 1 элемент encompassingEncounter.</assert>
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=2">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь 1 элемент code.</assert>
            <assert test="count(medService:DocType)&lt;=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента medService:DocType.</assert>
            <assert test="count(effectiveTime)&lt;=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента effectiveTime.</assert>
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.15$')">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.15".</assert>
            <assert test="@extension!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[1] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.(16|17)$')">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания медицинской помощи в стационаре или идентификаторов амбулаторных случаев оказания медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16" или "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17" соответственно.</assert>
            <assert test="@extension!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code[not(@nullFlavor)]">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.723']">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.723'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[medService:DocType]">
            <assert test="medService:DocType/@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="medService:DocType/@codeSystemName!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemName.</assert>
            <assert test="medService:DocType/@code!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @code.</assert>
            <assert test="medService:DocType/@codeSystemVersion!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @codeSystemVersion.</assert>
            <assert test="medService:DocType/@displayName!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType должен иметь не пустое значение атрибута @displayName.</assert>
            <report test="medService:DocType/@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/medService:DocType не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)&lt;=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь не более 1 элемента low.</assert>
            <assert test="count(high)&lt;=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь не более 1 элемента high.</assert>
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low">
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high">
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    


<!-- [Main12_1]Модуль проверки связанных документов (ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 11.10.2022 - v.1.0.0: Модуль разработан -->
<!-- 10.01.2023 - v.1.1.0: Дублирование в модуле запрета на @nullFlavor в value (независимость от модуля Core11) -->
<!-- 16.01.2023 - v.1.1.1: Допустимость указания идентификатора документа в новом формате -->
<!-- 14.02.2023 - v.1.1.2: Корректировка нового формата идентификатора документа -->

    <!-- Main12-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="count(text)&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code/@code='11002'])&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code/@code='11003'])&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code/@code='6058'])&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(reference)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент reference.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.11.1380']">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime">
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11002']">
            <assert test="count(value)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11002'] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11002']/value">
            <assert test="@xsi:type='ST'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11002']/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11002']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11003']">
            <assert test="count(value)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11003'] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11003']/value">
            <assert test="@xsi:type='ST'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11003']/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='11003']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058']">
            <assert test="count(value)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058'] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='6058']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='6058'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058']/value">
            <assert test="@xsi:type='CD'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058']/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.1008']">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058']/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.1008'.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code/@code='6058']/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference">
            <assert test="@typeCode='REFR'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference должен иметь значение атрибута @typeCode равное 'REFR'.</assert>
            <assert test="count(externalDocument)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент externalDocument.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @classCode равное 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь значение атрибута @moodCode равное 'EVN'.</assert>
            <assert test="count(id)=2">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь 2 элемента id.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[2][not(@nullFlavor)]">
            <assert test="@root='1.2.643.5.1.13.13.17.1.1'">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[2] должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.17.1.1'.</assert>
            <assert test="matches(@extension,'(^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$|^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$)')">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[2] должен иметь синтаксически корректное значение атрибута @extension, соответствующее формату "^[0-9]{2}[.][0-9]{2}[.][0-9]{3,4}[.][0-9]{9}$" или "^[0-9]{1,3}[.][0-9]{2}[.][0-9]{2}[.][0-9]{2}[.][0-9]{9}$".</assert>
        </rule>
    </pattern>



<!-- [Extra01]Модуль проверки структуры СНИЛС (//id[@root='1.2.643.100.3']) -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 26.07.2022 - v.1.0.0: Модуль разработан -->

    <!-- Extra01-1 -->
    <pattern>
        <rule context="//id[@root='1.2.643.100.3']">
            <assert test="matches(@extension,'^([0-9]{3}[-\s]{0,1}){3}[0-9]{2}$')">Extra01-1. Элемент //id[@root='1.2.643.100.3'] должен иметь синтаксически корректное значение атрибута @extension, соответствующее СНИЛС: должно состоять из 11 цифр, цифры могут группироваться по 3+3+3+2, между группами может ставиться пробел или тире.</assert>
        </rule>
    </pattern>



<!-- [Extra02]Модуль проверки структуры почтового индекса (//postalCode) -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 12.09.2022 - v.1.0.0: Модуль разработан -->

    <!-- Extra02-1 -->
    <pattern>
        <rule context="//postalCode[not(@nullFlavor)]">
            <assert test="matches(.,'^[0-9]{6}$')">Extra02-1. Элемент //postalCode должен иметь синтаксически корректное значение, соответствующее почтовому индексу: должно состоять из 6 цифр без разделителей.</assert>
        </rule>
    </pattern>
</schema>
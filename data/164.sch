<!-- Схематрон для СЭМД "Экстренное извещение об инфекционном заболевании, пищевом, остром профессиональном отравлении, необычной реакции на прививку (CDA) Редакция 2" -->
<!-- Разработано в соотвествии с Руководством по реализации: https://portal.egisz.rosminzdrav.ru/materials/____ -->

<!-- Список изменений -->
<!-- 25.04.2023 - v.1.0.0: Схематрон разработан -->
<!-- 11.07.2023 - v.1.0.1: Исправления в правилах У3-2, У3-4, У3-16, У3-17, У3-18 -->

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
            <assert test="count(address:residentCode)&lt;=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/addr должен иметь не более 1 элемента address:residentCode.</assert>
        </rule>
    </pattern>
    <!-- Core06 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props]">
            <assert test="count(identity:Props/identity:Okpo)=1">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props должен иметь 1 элемент identity:Okpo.</assert>
        </rule>
    </pattern>
    <!-- Main01 -->
    <pattern>
        <rule context="ClinicalDocument/effectiveTime">
            <report test="@nullFlavor">У1-12. Элемент ClinicalDocument/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main02 -->
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <report test="@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <report test="@nullFlavor">У1-12. Элемент ClinicalDocument/recordTarget/patientRole/patient/birthTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Main08 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(documentationOf)=1">У1-19. Элемент ClinicalDocument должен иметь 1 элемент documentationOf.</assert>
        </rule>
    </pattern>



    <!-- У1-3 -->
    <pattern>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root='1.2.643.5.1.13.13.14.59.9.2'">У1-3. Элемент ClinicalDocument/templateId должен иметь значение атрибута @root равное '1.2.643.5.1.13.13.14.59.9.2'.</assert>
        </rule>
    </pattern>
    <!-- У1-5 -->
    <pattern>
        <rule context="ClinicalDocument/code">
            <assert test="@code='59'">У1-5. Элемент ClinicalDocument/code должен иметь значение атрибута @code равное '59'.</assert>
        </rule>
    </pattern>
    <!-- У2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='DOCINFO'])=1">У2-1. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component[section/code/@code='DOCINFO'].</assert>
        </rule>
    </pattern>
    <!-- У2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='PATINFO'])=1">У2-2. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component[section/code/@code='PATINFO'].</assert>
        </rule>
    </pattern>
    <!-- У2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='DGN'])=1">У2-3. Элемент ClinicalDocument/component/structuredBody должен иметь 1 элемент component[section/code/@code='DGN'].</assert>
        </rule>
    </pattern>
    <!-- У2-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='EPIDEM'])&lt;=1">У2-4. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='EPIDEM'].</assert>
        </rule>
    </pattern>
    <!-- У2-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component[section/code/@code='LINKDOCS'])&lt;=1">У2-5. Элемент ClinicalDocument/component/structuredBody должен иметь не более 1 элемента component[section/code/@code='LINKDOCS'].</assert>
        </rule>
    </pattern>
    <!-- У3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12144']])=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12144']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12144']]">
            <assert test="count(effectiveTime)=1">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12144']] должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12144']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12144'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <!-- У3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12145']])=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12145']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12145']]">
            <assert test="count(effectiveTime)=1">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12145']] должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12145']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12145'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12145']]/effectiveTime">
            <report test="@nullFlavor">У3-2. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12145']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12146']])=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12146']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']]">
            <assert test="count(value)=1">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12146']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12146'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']]/value">
            <assert test="@xsi:type='CD'">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1007','1.2.643.5.1.13.2.1.1.109']">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1007' или '1.2.643.5.1.13.2.1.1.109'.</assert>
            <report test="@nullFlavor">У3-3. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12146']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12147']])&lt;=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12147']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']]">
            <assert test="count(value)=1">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12147']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12147'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']]/value">
            <assert test="@xsi:type='CD'">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1008']">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1008'.</assert>
            <report test="@nullFlavor">У3-4. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12147']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12148']])=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12148']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12148']]">
            <assert test="count(value)=1">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12148']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12148']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12148'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12148']]/value">
            <assert test="@xsi:type='ST'">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12148']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-5. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12148']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12149']])=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12149']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12149']]">
            <assert test="count(value)=1">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12149']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12149']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12149'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12149']]/value">
            <assert test="@xsi:type='TS'">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12149']]/value должен иметь значение атрибута @xsi:type равное 'TS'.</assert>
            <report test="matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">У3-6. Дата в элементе должна быть указана с точностью до минут или до секунд. Если указано хотя бы с точностью до минут, то должна быть указана временная зона.</report>
            <report test="@nullFlavor">У3-6. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12149']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12150']])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь 1 элемент entry[observation/code[@code='12150']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12150']]">
            <assert test="count(performer)=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12150']] должен иметь 1 элемент performer.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12150']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12150'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12150']]/performer">
            <assert test="count(assignedEntity[not(id[1]/@nullFlavor)])=1">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12150']]/performer должен иметь 1 элемент assignedEntity[not(id[1]/@nullFlavor)].</assert>
            <report test="@nullFlavor">У3-7. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12150']]/performer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12151']])&lt;=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12151']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']]">
            <assert test="count(text)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']] должен иметь 1 элемент text.</assert>
            <assert test="count(effectiveTime)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12151']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12151'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-8. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12151']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
        </rule>
    </pattern>
    <!-- У3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12152']])&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12152']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]">
            <assert test="count(effectiveTime)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']] должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12153']])=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']] должен иметь 1 элемент entryRelationship[observation/code[@code='12153']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='12154']])&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='12154']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='12155']])&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='12155']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12152']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12152'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/effectiveTime">
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/value">
            <assert test="@xsi:type='CD'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']]">
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12153']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12153'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']]/value">
            <assert test="@xsi:type='CD'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1078']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1078'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12153']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12154']]">
            <assert test="count(value)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12154']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12154']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12154'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12154']]/value">
            <assert test="@xsi:type='ST'">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12154']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12154']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]">
            <assert test="count(effectiveTime)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']] должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12155']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation/code[@code='12155'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime">
            <assert test="count(low)&lt;=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime должен иметь не более 1 элемента low.</assert>
            <assert test="count(high)=1">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime должен иметь 1 элемент high.</assert>
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime/low">
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime/high">
            <report test="@nullFlavor">У3-9. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12152']]/entryRelationship/observation[code[@code='12155']]/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12156']])&lt;=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12156']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]">
            <assert test="count(effectiveTime)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='12016']])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']] должен иметь 1 элемент entryRelationship[observation/code[@code='12016']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12156']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12156'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/effectiveTime">
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation[code[@code='12016']]">
            <assert test="count(performer)=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation[code[@code='12016']] должен иметь 1 элемент performer.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation/code[@code='12016']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation/code[@code='12016'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation[code[@code='12016']]/performer">
            <assert test="count(assignedEntity[id[1]/@nullFlavor='NI'])=1">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation[code[@code='12016']]/performer должен иметь 1 элемент assignedEntity[id[1]/@nullFlavor='NI'].</assert>
            <report test="@nullFlavor">У3-10. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12156']]/entryRelationship/observation[code[@code='12016']]/performer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12157']])&lt;=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12157']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]">
            <assert test="count(effectiveTime)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12157']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12157'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/effectiveTime[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/effectiveTime должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/value">
            <assert test="@xsi:type='CD'">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1491','1.2.643.5.1.13.2.1.1.122']">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1491' или '1.2.643.5.1.13.2.1.1.122'.</assert>
            <report test="@nullFlavor">У3-11. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12157']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-12 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='10000']])&lt;=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] должен иметь не более 1 элемента entry[observation/code[@code='10000']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]">
            <assert test="count(value)=1">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value">
            <assert test="@xsi:type='ST'">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value должен иметь значение атрибута @xsi:type равное 'ST'.</assert>
            <report test="@nullFlavor">У3-12. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-13 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']">
            <assert test="count(entry[observation/code[@code='12158']])&lt;=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO'] должен иметь не более 1 элемента entry[observation/code[@code='12158']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]">
            <assert test="count(effectiveTime)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12158']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12158'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]/value">
            <assert test="@xsi:type='CD'">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.315','1.2.643.5.1.13.2.1.1.218']">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.315' или '1.2.643.5.1.13.2.1.1.218'.</assert>
            <report test="@nullFlavor">У3-13. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12158']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-14 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]">
            <assert test="count(effectiveTime)&lt;=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']] должен иметь не более 1 элемента effectiveTime.</assert>
            <assert test="count(performer)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']] должен иметь 1 элемент performer.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12159']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation/code[@code='12159'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/effectiveTime">
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer">
            <assert test="count(assignedEntity[id[1]/@nullFlavor='NI'])=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer должен иметь 1 элемент assignedEntity[id[1]/@nullFlavor='NI'].</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']">
            <assert test="count(id)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент id.</assert>
            <assert test="count(representedOrganization)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент representedOrganization.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization">
            <assert test="@classCode='ORG'">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(name)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)=1">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент addr.</assert>
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/addr">
            <report test="@nullFlavor">У3-14. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='PATINFO']/entry/observation[code[@code='12159']]/performer/assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-15 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation/code[@code='838']])>=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] должен иметь не менее 1 элемента entry[observation/code[@code='838']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]">
            <assert test="count(text)&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']] должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']] должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']] должен иметь 1 элемент value.</assert>
            <assert test="count(entryRelationship[observation/code[@code='7026']])&lt;=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']] должен иметь не более 1 элемента entryRelationship[observation/code[@code='7026']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='12160']])=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']] должен иметь 1 элемент entryRelationship[observation/code[@code='12160']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='838']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='838'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/text">
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' или '1.2.643.5.1.13.2.1.1.718'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']]">
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation/code[@code='7026']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation/code[@code='7026'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']]/value">
            <assert test="@xsi:type='CD'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.795','1.2.643.5.1.13.13.11.1076']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.795' или '1.2.643.5.1.13.13.11.1076'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='7026']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='12160']]">
            <assert test="count(value)=1">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='12160']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation/code[@code='12160']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation/code[@code='12160'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='12160']]/value">
            <assert test="@xsi:type='BL'">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='12160']]/value должен иметь значение атрибута @xsi:type равное 'BL'.</assert>
            <report test="@nullFlavor">У3-15. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/entryRelationship/observation[code[@code='12160']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-16 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]">
            <assert test="count(value)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12161']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12161'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.836']">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.836'.</assert>
            <assert test="count(originalText)&lt;=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value должен иметь не более 1 элемента originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
            <assert test="count(originalText)=1">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value должен иметь 1 элемент originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value/originalText">
            <assert test=".!=''">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value/originalText должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-16. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12161']]/value/originalText не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-17 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]">
            <assert test="count(value)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12162']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12162'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.859']">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.859'.</assert>
            <assert test="count(originalText)&lt;=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value должен иметь не более 1 элемента originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
            <assert test="count(originalText)=1">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value должен иметь 1 элемент originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value/originalText">
            <assert test=".!=''">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value/originalText должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-17. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12162']]/value/originalText не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-18 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']">
            <assert test="count(entry[observation/code[@code='12164']])&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM'] должен иметь не более 1 элемента entry[observation/code[@code='12164']].</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]">
            <assert test="count(value)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']] должен иметь 1 элемент value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12164']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12164'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value[not(@nullFlavor)]">
            <assert test="@xsi:type='CD'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.858']">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.858'.</assert>
            <assert test="count(originalText)&lt;=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value должен иметь не более 1 элемента originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value[@nullFlavor]">
            <assert test="@nullFlavor='OTH'">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value должен иметь значение атрибута @nullFlavor равное 'OTH'.</assert>
            <assert test="count(originalText)=1">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value должен иметь 1 элемент originalText.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value/originalText">
            <assert test=".!=''">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value/originalText должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">У3-18. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12164']]/value/originalText не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-19 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]">
            <assert test="count(value)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']] должен иметь 1 элемент value.</assert>
            <assert test="count(effectiveTime)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']] должен иметь 1 элемент effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12165']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation/code[@code='12165'] должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' или '1.2.643.5.1.13.13.11.1380'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime">
            <assert test="count(low)&lt;=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime должен иметь не более 1 элемента low.</assert>
            <assert test="count(high)=1">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime должен иметь 1 элемент high.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime/low">
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime/low не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime/high">
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/effectiveTime/high не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/value">
            <assert test="@xsi:type='CD'">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/value должен иметь значение атрибута @xsi:type равное 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.545']">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/value должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.99.2.545'.</assert>
            <report test="@nullFlavor">У3-19. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='EPIDEM']/entry/observation[code[@code='12165']]/value не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- У3-20 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(entry[act])>=1">У3-20. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] должен иметь не менее 1 элемента entry[act].</assert>
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



<!-- [Core06_4]Модуль проверки реквизитов организации (//identity:Props) -->

<!-- Альтернативный вариант: в identity:Okpo допускается @nullFlavor -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 20.04.2023 - v.1.0.0: Модуль разработан -->

    <!-- Core06-1 -->
    <pattern>
        <rule context="//*[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;=1">Core06-1. Элемент //identity:Props должен иметь не более 1 элемента identity:Ogrn.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">Core06-1. Элемент //identity:Props должен иметь не более 1 элемента identity:Ogrnip.</assert>
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
        <rule context="//*[identity:Props/identity:Okpo[not(@nullFlavor)]]">
            <assert test="identity:Props/identity:Okpo!=''">Core06-1. Элемент //identity:Props/identity:Okpo должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//*[identity:Props/identity:Okato]">
            <assert test="identity:Props/identity:Okato!=''">Core06-1. Элемент //identity:Props/identity:Okato должен иметь не пустое значение.</assert>
            <report test="identity:Props/identity:Okato/@nullFlavor">Core06-1. Элемент //identity:Props/identity:Okato не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core07_1]Модуль проверки элементов code (//code) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 28.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->
<!-- 28.10.2022 - v.2.0.1: Исправление опечатки в описаниях ошибок по @nullFlavor -->
<!-- 08.11.2022 - v.2.0.2: Уточнение оси - замена ancestor на parent -->

    <!-- Core07-1 -->
    <pattern>
        <rule context="//code[not(parent::criterion)]">
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



<!-- [Core08_20]Модуль проверки информации о сотруднике МО или о передвижном подразделении (//assignedEntity) -->

<!-- Альтернативный вариант: assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization может иметь не более 1 addr, assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/id может иметь @nullFlavor, не проверять assignedEntity[id[1]/@nullFlavor='NI'] для секции 'PATINFO' -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 25.04.2023 - v.1.0.0: Модуль разработан -->

    <!-- Core08-1 -->
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]">
            <assert test="count(id)=2">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 2 элемента id.</assert>
            <assert test="count(code)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 1 элемент code.</assert>
            <assert test="count(addr)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь не более 1 элемента addr.</assert>
            <assert test="count(assignedPerson)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь 1 элемент assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] должен иметь не более 1 элемента representedOrganization.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">Core08-1. Элемент //assignedEntity/id[1][not(@nullFlavor)] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов персонала, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.70".</assert>
            <assert test="@extension!=''">Core08-1. Элемент //assignedEntity/id[1][not(@nullFlavor)] должен иметь не пустое значение атрибута @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/id[2]">
            <assert test="@root='1.2.643.100.3'">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] должен иметь значение атрибута @root равное '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/code должен иметь значение атрибута @codeSystem равное '1.2.643.5.1.13.13.11.1002' или '1.2.643.5.1.13.2.1.1.733'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/addr">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson">
            <assert test="count(name)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson должен иметь 1 элемент name.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson/name">
            <assert test="count(family)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson/name должен иметь 1 элемент family.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/assignedPerson/name не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization">
            <assert test="@classCode='ORG'">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/id">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/id не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/addr">
            <report test="@nullFlavor">Core08-1. Элемент //assignedEntity[not(id[1]/@nullFlavor)]/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <!-- Core08-2 -->
    <pattern>
        <rule context="//assignedEntity[id[1]/@nullFlavor='NI'][not(ancestor::section[code/@code='PATINFO'])]">
            <assert test="count(id)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент id.</assert>
            <assert test="count(representedOrganization)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] должен иметь 1 элемент representedOrganization.</assert>
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI'] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[id[1]/@nullFlavor='NI'][not(ancestor::section[code/@code='PATINFO'])]/representedOrganization">
            <assert test="@classCode='ORG'">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь значение атрибута @classCode равное 'ORG'.</assert>
            <assert test="count(id)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент id.</assert>
            <assert test="count(name)=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь 1 элемент name.</assert>
            <assert test="count(addr)&lt;=1">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization должен иметь не более 1 элемента addr.</assert>
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//assignedEntity[id[1]/@nullFlavor='NI'][not(ancestor::section[code/@code='PATINFO'])]/representedOrganization/addr">
            <report test="@nullFlavor">Core08-2. Элемент //assignedEntity[id[1]/@nullFlavor='NI']/representedOrganization/addr не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>



<!-- [Core09_1]Модуль проверки структуры секции (ClinicalDocument/component/structuredBody/component/section) -->

<!-- Вариант по умолчанию -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 26.07.2022 - v.1.0.0: Модуль разработан -->
<!-- 13.09.2022 - v.1.0.1:
1) Core09-1: Элемент code не должен иметь @nullFlavor
-->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->

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
            <assert test="count(text)=1">Core09-1. Элемент //component/section должен иметь 1 элемент text.</assert>
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
            <assert test="count(encounter)=1">Core10-1. Элемент //entry[encounter] должен иметь 1 элемент encounter.</assert>
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



<!-- [Core11_3]Модуль проверки наполнения секции (//observation/value[@xsi:type=['CD','ST','BL','PQ','TS','INT']], //translation, //text, //substanceAdministration, //precondition, //interpretationCode, //statusCode, //referenceRange, //modeCode) -->

<!-- Альтернативный вариант: value[@xsi:type=['CD','ST','BL','PQ','TS','INT']], text[ancestor::observation] может иметь @nullFlavor -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 24.10.2022 - v.1.0.0: Модуль разработан -->
<!-- 07.11.2022 - v.1.1.0: Добавлены проверки структуры //value[@xsi:type=['TS','INT']], //interpretationCode, //statusCode, //referenceRange, //modeCode -->

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
        <rule context="//text[not(ancestor::observation)]">
            <assert test=".!=''">Core11-1. Элемент //text должен иметь не пустое значение.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //text не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="//text[ancestor::observation][not(@nullFlavor)]">
            <assert test=".!=''">Core11-1. Элемент //text должен иметь не пустое значение.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="//substanceAdministration">
            <assert test="@classCode='SBADM'">Core11-1. Элемент //substanceAdministration должен иметь значение атрибута @classCode равное 'SBADM'.</assert>
            <assert test="@moodCode='RQO'">Core11-1. Элемент //substanceAdministration должен иметь значение атрибута @moodCode равное 'RQO'.</assert>
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
            <assert test="count(manufacturedMaterial)=1">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct должен иметь 1 элемент manufacturedMaterial.</assert>
            <report test="@nullFlavor">Core11-1. Элемент //substanceAdministration/consumable/manufacturedProduct не должен иметь атрибут @nullFlavor.</report>
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
<!-- 13.09.2022 - v.1.0.1: Элемент code не должен иметь @nullFlavor -->
<!-- 11.10.2022 - v.2.0.0: Изменение принципа построения модуля - запрет @nullFlavor в элементах [0..1] и R[1..1] -->
<!-- 25.04.2023 - v.2.1.0: Добавлена проверка наличия корневого элемента (ClinicalDocument) -->

    <!-- Main01-1 -->
    <pattern>
        <rule context="/">
            <assert test="count(ClinicalDocument)=1">Main01-1. Документ должен иметь 1 корневой элемент ClinicalDocument.</assert>
        </rule>
    </pattern>
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
            <assert test="@nullFlavor='NA'">Main01-7. Элемент ClinicalDocument/effectiveTime должен иметь значение атрибута @nullFlavor равное 'NA'.</assert>
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



<!-- [Main08_4]Модуль проверки информации о пациенте (ClinicalDocument/documentationOf) -->

<!-- Альтернативный вариант: в serviceEvent нет performer -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 07.11.2022 - v.1.0.0: Модуль разработан -->

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
            <assert test="count(assignedEntity[not(id/@nullFlavor='NA')])=1">Main08-1. Элемент ClinicalDocument/documentationOf/serviceEvent/performer должен иметь 1 элемент assignedEntity.</assert>
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



<!-- [Main09_4]Модуль проверки информации о случае оказания медицинской помощи (ClinicalDocument/componentOf) -->

<!-- Альтернативный вариант: encompassingEncounter может иметь не более 1 code, не более 1 medService:DocType, не более 1 effectiveTime -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 14.11.2022 - v.1.0.0: Модуль разработан -->

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
            <assert test="count(code)&lt;=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter должен иметь не более 1 элемента code.</assert>
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
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.(16|17)$')">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов случаев оказания медицинской помощи в стационаре или идентификаторов амбулаторных случаев оказания медицинской помощи, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.16" или "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.17" соответственно.</assert>
            <assert test="@extension!=''">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] должен иметь не пустое значение атрибута @extension.</assert>
            <report test="@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code">
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
            <report test="medService:DocType/@nullFlavor">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/id[2] не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/effectiveTime">
            <assert test="count(low)=1">Main09-1. Элемент ClinicalDocument/componentOf/encompassingEncounter/effectiveTime должен иметь 1 элемент low.</assert>
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



<!-- [Main12_2]Модуль проверки связанных документов (ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act) -->

<!-- Альтернативный вариант: старый формат -->

<!-- Поддерживается следующими видами СЭМД: -->
<!-- 
-->

<!-- Список изменений -->
<!-- 15.11.2022 - v.1.0.0: Модуль разработан -->
<!-- 10.01.2023 - v.1.1.0: Дублирование в модуле запрета на @nullFlavor в value (независимость от модуля Core11) -->

    <!-- Main12-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="count(text)&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента text.</assert>
            <assert test="count(effectiveTime)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь 1 элемент effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code/@code='11002'])&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
            <assert test="count(entryRelationship[observation/code/@code='11003'])&lt;=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act должен иметь не более 1 элемента entryRelationship.</assert>
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
            <assert test="count(id)=1">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument должен иметь 1 элемент id.</assert>
            <report test="@nullFlavor">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument не должен иметь атрибут @nullFlavor.</report>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1][not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1] должен иметь синтаксически корректное значение атрибута @root, сформированное по правилу формирования идентификаторов документов, т.е. "OID_медицинской_организации.100.НомерМИС.НомерЭкзМИС.51".</assert>
            <assert test="@extension!=''">Main12-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id[1] должен иметь не пустое значение атрибута @extension.</assert>
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
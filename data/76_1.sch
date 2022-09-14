<!-- [М01]Модуль проверки сведений о матери для оказания услуги рождения на ЕПГУ -->

<!-- Для оказания государственной услуги рождения на ЕПГУ должны выполняться следующие условия: -->
<!-- 1) Получателем документа должна являться мать (ClinicalDocument/participant/associatedEntity, ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject), в иных случаях должен оформляться СЭМД 118 - Документ, содержащий сведения медицинского свидетельства о рождении в бумажной форме (CDA) Редакция 4 -->
<!-- 2) Для матери требуется указывать в виде ДУЛ исключительно паспорт гражданина РФ (.../f103:IdentityDoc/f103:IdentityCardTypeId) -->
<!-- 3) У матери должен присутствовать СНИЛС (.../f103:id) -->

<!-- Применяется к следующим видам СЭМД: -->
<!-- 
76 - Медицинское свидетельство о рождении (CDA) Редакция 4
-->

<!-- Список изменений -->
<!-- 29.06.2022 - v.1.2.1: -->
<!--
1) В правилах М01-1 и М01-2 исправлена опечатка в тексте правила - добавлено слово "иметь" - "...должен иметь корректное значение серии/номера..." 
-->
<!-- Список изменений -->
<!-- 28.06.2022 - v.1.2: -->
<!--
1) Название изменено с "Модуль проверки достаточности сведений о матери для оказания услуги рождения на ЕПГУ" на "Модуль проверки сведений о матери для оказания услуги рождения на ЕПГУ"
2) Правила перегруппированы, в правиле М01-1 теперь проверяются сведения о матери, в правиле М01-2 - сведения о получателе, а в правиле М01-3 - соответствие этих наборов сведений
-->
<!-- 27.06.2022 - v.1.1: -->
<!--
1) Название изменено с "Модуль проверки вида ДУЛ получателя" на "Модуль проверки достаточности сведений о матери для оказания услуги рождения на ЕПГУ"
2) Исправлено правило М01-1 - проверка вида документа ведется для матери, а не для получателя
3) Добавлено правило М01-2 - требование наличия СНИЛС у матери
-->
<!-- 21.06.2022 - v.1.0: Модуль разработан -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
<ns prefix="f103" uri="urn:f103"/>
<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
<ns prefix="fias" uri="urn:fias"/>
<ns prefix="address" uri="urn:hl7-ru:address"/>
    <!-- М01-1 -->
    <pattern> 
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]">
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@code='1'">М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @code равное '1': для оказания государственной услуги рождения на ЕПГУ для матери требуется указывать тип ДУЛ – паспорт гражданина РФ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]">
            <assert test="matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$')">М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Series должен иметь корректное значение серии ДУЛ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Number]">
            <assert test="matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$')">М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number должен иметь корректное значение номера ДУЛ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id]">
            <report test="f103:id/@nullFlavor">М01-1. Элемент ClinicalDocument/component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id не должен иметь атрибут @nullFlavor: для оказания государственной услуги рождения на ЕПГУ требуется указывать СНИЛС матери.</report>
        </rule>
    </pattern>
    <!-- М01-2 -->
    <pattern> 
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]">
            <assert test="f103:IdentityDoc/f103:IdentityCardTypeId/@code='1'">М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId должен иметь значение атрибута @code равное '1': для оказания государственной услуги рождения на ЕПГУ для получателя требуется указывать тип ДУЛ – паспорт гражданина РФ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code=['1']]/f103:Series]">
            <assert test="matches(f103:IdentityDoc/f103:Series,'^[0-9]{4}$')">М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Series должен иметь корректное значение серии ДУЛ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc[f103:IdentityCardTypeId/@code='1']/f103:Number]">
            <assert test="matches(f103:IdentityDoc/f103:Number,'^[0-9]{6}$')">М01-2. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number должен иметь корректное значение номера ДУЛ.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id">
            <report test="@nullFlavor">М01-1. Элемент ClinicalDocument/participant[@typeCode='IRCP']/associatedEntity/id не должен иметь атрибут @nullFlavor: для оказания государственной услуги рождения на ЕПГУ требуется указывать СНИЛС получателя.</report>
        </rule>
    </pattern>
    <!-- М01-3 -->
    <pattern>
        <rule context="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:IdentityCardTypeId]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:IdentityCardTypeId]]">
            <assert test="matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:IdentityCardTypeId/@code, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:IdentityCardTypeId/@code)">М01-3. Для оказания государственной услуги рождения на ЕПГУ виды ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Series]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Series]]">
            <assert test="matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Series, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Series)">М01-3. Для оказания государственной услуги рождения на ЕПГУ серии ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:IdentityDoc/f103:Number]][participant[@typeCode='IRCP']/associatedEntity[f103:IdentityDoc/f103:Number]]">
            <assert test="matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:IdentityDoc/f103:Number, participant[@typeCode='IRCP']/associatedEntity/f103:IdentityDoc/f103:Number)">М01-3. Для оказания государственной услуги рождения на ЕПГУ номера ДУЛ матери и получателя должны совпадать (получателем должна являться мать).</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument[component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject[f103:id/@extension]][participant[@typeCode='IRCP']/associatedEntity/id/@extension]">
            <assert test="matches(component/structuredBody/component/section[code/@code='MOTHINFO']/subject/relatedSubject/f103:id/@extension, participant[@typeCode='IRCP']/associatedEntity/id/@extension)">М01-3. Для оказания государственной услуги рождения на ЕПГУ СНИЛС матери и получателя должны совпадать (получателем должна являться мать).</assert>
        </rule>
    </pattern>
</schema>
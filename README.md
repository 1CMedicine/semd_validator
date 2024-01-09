# SEMD validator - сервис проверки СЭМД для 1С:Медицина

Проверяется структурированный электронный медицинский документ (СЭМД) на соответствие xsd схеме, схематрону и справочников ФНСИ. xsd схему и схематрон публикуются на портале ЕГИСЗ Минздрава РФ. В проекте публикуются схемы и схематроны для СЭМД, которые поддерживаются в 1С:Медицина.
Сервис реализован как сервлет для веб сервера Jetty версии 9.4+. 

## Описание веб-ссылок

### /send_sch.html - загрузка zip-архива со схемой и схематроном, загрузка списка OID справочников ФНСИ, с командами проверки
Структура zip описана на html-странице. На сервер выполняется трансформация схематрона в xsl. xsl для валидации сохраняется в папке schematrons. Сообщается о результате трансформации. Для доступа к ссылкам требуются права администратора.

Список OID справочников ФНСИ, с командами проверки, передается в сервис текстовым ASCII файлов. OID записыватся построчно, через символ "-" записывается команда проверки. Допустимые команды:
- SKIP - справочник исключается из провеки. Команду можно примеменять к очень большим справочникам, а также справочники, для которых displayName не может быть проверен по доступным алгоритмам. 
- json с объектом из 1 до 3-х атрибутов:
-- PRIMARY - задает название поля справочника, являющегося кодом элемента справочника. Если не указано, то используется тот, что указан в паспорте.
-- VALUE - задает название поля справочника, являющегося наименованием  элемента справочника.  Если не указано, то используется тот, что указан в паспорте.
-- LEVEL - уровень критичности сообщения при наличии проблемы INVALID_ELEMENT_VALUE_NAME в справочнике (несоответствие displayName значению поля VALUE справочника). Допустимые значения - ERROR, WARNING, SKIP. Значение по умолчанию - ERROR. При значении SKIP проверка справочника на ошибку INVALID_ELEMENT_VALUE_NAME не выполняется.
Примеры записей файла.
```
1.2.643.5.1.13.13.11.1039 - SKIP
1.2.643.5.1.13.13.99.2.197 - {"PRIMARY":"CODE", "VALUE":"NAME"}
1.2.643.5.1.13.13.11.1358 - {"PRIMARY":"ID", "VALUE":"SHORTNAME", "LEVEL":"WARNING"}
1.2.643.5.1.13.13.11.1038 - {"LEVEL":"SKIP"}
```

### /get_sch_list.html - просмотр загруженных схем и схематронов, а также списка OID справочников ФНСИ, с командами проверки
Для доступа к ссылкам требуются права администратора. В случае установки ограничений на список проверяемых типов РЭМД в параметре LIST_TYPES_FOR_VARIFICATION проверяемые типы в списке будет выделяться оформлением.

### /send_semd.html - форма отправки СЭМД для выполнения валидации
Схема и схематрон должны быть предварительно загружены на сервер.

### /verify - валидация СЭМД
 В случае проверки только на xsd-схемы и\или на соответствие справочникам ФНСИ при успешной проверке будет возвращено значение "valid". Иначе будет возращен текст сообщения об ошибке. Проверка на соответсветсвие ФНСИ выполняется для всех элементов code, за исключением тех, которые перечислены в загруженном файле с командой SKIP.
- Значение атрибута code сопоставляется со значение поля, указанного как PRIMARY в массиве keys в паспорте справочника.
- Значение атрибута displayName сопоставляется со значение поля, указанного как VALUE в массиве keys в паспорте справочника.
- Значение атрибута codeSystemName сопоставляется со значение поля fullName в паспорте справочника.

Загрузка справочников с сайта ФНСИ производится в процессе проверки. Загруженный справочник и его паспорт сохраняются в папке DATA_PATH/fnsi. При последующем обращении к справочнику он будет загружаться из этой папки. 

Типы проверок:
- 0 - проверка только на xsd.
- 1 - проверка только на sch.
- 2 - проверка на xsd и sch.
- 3 - проверка на xsd, sch и ФНСИ. Точный порядок проверок - xsd, ФНСИ, sch.
  
После выполнения проверки схематроном возвращается результат проверки. Результат записывается в элементе /result/sch. В атрибуте @file элемента sch записывается имя xsl преобразования, по которому выполнялась проверка.
Пример успешной проверки:
```
<result>
<sch file="118.xsl">
<svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                        xmlns:xs="http://www.w3.org/2001/XMLSchema"
                        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                        xmlns:saxon="http://saxon.sf.net/"
                        xmlns:schold="http://www.ascc.net/xml/schematron"
                        xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                        xmlns:xhtml="http://www.w3.org/1999/xhtml"
                        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                        xmlns:identity="urn:hl7-ru:identity"
                        xmlns:address="urn:hl7-ru:address"
                        xmlns:medService="urn:hl7-ru:medService"
                        xmlns:fias="urn:hl7-ru:fias"
                        title=""
                        schemaVersion=""><!--   
		   
		   
		 -->
   <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <svrl:ns-prefix-in-attribute-values uri="urn:hl7-ru:identity" prefix="identity"/>
   <svrl:ns-prefix-in-attribute-values uri="urn:hl7-ru:address" prefix="address"/>
   <svrl:ns-prefix-in-attribute-values uri="urn:hl7-ru:medService" prefix="medService"/>
   <svrl:ns-prefix-in-attribute-values uri="urn:hl7-ru:fias" prefix="fias"/>
</svrl:schematron-output>
</sch>
</result>
```

Примеры неуспешных проверок:
```
:ERROR: Line: 292 Column: 186 Message: cvc-elt.4.3: Type 'CD' is not validly derived from the type definition, '#AnonType_IdentityDocTypePOCD_MT000040.DocInfo', of element 'identity:IdentityDocType'.
:ERROR: Line: 294 Column: 242 Message: cvc-elt.4.3: Type 'CD' is not validly derived from the type definition, '#AnonType_InsurancePolicyTypePOCD_MT000040.DocInfo', of element 'identity:InsurancePolicyType'.
:ERROR: INVALID_ELEMENT_VALUE_NAME Справочник OID [1.2.643.5.1.13.13.99.2.166], версия [2.7]. Наименование элемента [Наименование рекомендованного протеза, протезно-ортопедического изделия] не соответствует наименованию элемента в НСИ [Сведения о протезе, протезно-ортопедическом изделии]
```


```
<result>
<sch file="118.xsl">
<svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                        xmlns:xs="http://www.w3.org/2001/XMLSchema"
                        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                        xmlns:saxon="http://saxon.sf.net/"
                        xmlns:schold="http://www.ascc.net/xml/schematron"
                        xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                        xmlns:xhtml="http://www.w3.org/1999/xhtml"
                        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                        title=""
                        schemaVersion="iso">
   <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   <svrl:failed-assert test="count(realmCode)=1">
      <svrl:text>У1-8. Элемент ClinicalDocument должен иметь один элемент realmCode.</svrl:text>
   </svrl:failed-assert>
</svrl:schematron-output>
</sch>
</result>
```

### /login.html - форма авторизации

## Папка src/main
Содержит исходный код. Для сборки проекта необходимо выполнить команду 
 ```
mvn package
 ```
в папке, где расположен файл pom.xml. Подробнее о Maven можно найти на странице https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html.

## Папка data 
xsd схемы и схематроны для СЭМД, поддерживаемых 1С:Медицина. Содержимое папки можно использовать для наполнения папки, указанной в параметре сервлета DATA_PATH.

Репозитарий с xsd схемами и схематронами для СЭМД, поддерживаемых 1С:Медицина, доступен по адресу http://infomed.med.1c.ru/git_repo/semd_validator.git/. Репозитарий с открытым доступом на чтение.

Для предоставления прав записи в эту папку в некоторых дистрибутивах необходимо в настройка sandbox сервиса Jetty дать права записи. Например, в Ubuntu 20.04 необходимо в файле /etc/systemd/system/multi-user.target.wants/jetty9.service добавить строку (новую):
 ```
 ReadWritePaths=/var/www/upload/tron2/
 ```
Для применения настроек надо выполнить:
 ```
systemctl daemon-reload
service jetty9 restart
 ```

В папке data должна быть создана папка fnsi с такими же правами доступа как к папке data. В папке хранится кеш справочников ФНСИ - скачанные с ФНСИ файлы. См. настройку ACTUAL_FNSI_CACHE_DAYS.

## Параметры сервлета
В файле semd.war:\WEB-INF\web.xml задаются следующие параметры:
- DATA_PATH - полный путь к папке, где будут хранится загруженный файлы (xsd, sch и сгенерированные xsl файлы). Значение по умолчанию - /var/www/upload/tron2.
- ADMIN_NAME - имя пользователя, являющего администратором. Значение по умолчанию - admin.
- ADMIN_PASS - пароль пользователя, являющего администратором. Значение по умолчанию - pass.
- LIST_TYPES_FOR_VARIFICATION - список типов РЭМД (OID), по которым выполняется проверка. Типы РЭМД указывают через запятую, без пробелов. Если список пустой, то ограничений нет и проверка выполняется по всем типам, по которым загружены xsd и sch.
- LIST_TAGS_FOR_VARIFICATION - список тегов СЭМД, для которых выполняется проверка по ФНСИ. Теги указываются через запятую, без пробелов. Если есть namespace, то тег указывается с namespace.
- FNSI_USERKEY - ключ доступа у сайту ФНСИ (http://nsi.rosminzdrav.ru). 
- ACTUAL_FNSI_CACHE_DAYS - количество дней хранения справочников ФНСИ без их использования. По умолчанию - 30 дней, если за это время не было ни одного чтения при проверке СЭМД, то файл будет удален. Удаление производится по событию destroy сервлета.

## Установка
Для работы сервлета semd.war нужен Jetty версии 9.4 или выше. Необходимо опубликовать сервлет semd.war в Jetty 9. Необходимо руководствоваться инструкций по публикации Jetty. 

Для Jetty9 из состава Ubuntu 20.04 файл semd.war необходимо поместить в папку /var/lib/jetty9/webapps. Отвечать сервлет будет по адресу "http:/localhost:9000/semd/login.html".
  

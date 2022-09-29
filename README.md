# SEMD validator - сервис проверки СЭМД для 1С:Медицина

Проверяется структурированный электронный медицинский документ (СЭМД) на соответствие xsd схеме и схематрону. xsd схему и схематрон необходим загрузить с сайтов Минздрава РФ. 
Сервис реализован как сервет для веб сервера Jetty версии 9.4+. 

## Описание веб-ссылок

### /send_sch.html - загрузка zip-архива со схемой и схематроном
Структура zip описана на html-странице. На сервер выполняется трансформация схематрона в xsl. xsl для валидации сохраняется в папке schematrons. Сообщается о результате трансформации. Для доступа к ссылкам требуются права администратора.

### /get_sch_list.html - просмотр загруженных схем и схематронов
Для доступа к ссылкам требуются права администратора.

### /send_semd.html - форма отправки СЭМД для выполнения валидации
Схема и схематрон должны быть предварительно загружены на сервер c помощью скрипта upload_sch.py. Проверка СЭМД выполняется скриптом semdverify.py.

### /verify - валидация СЭМД
 В случае проверки только на xsd-схемы при успешной проверке будет возвращено значение "valid". Иначе будет возращен текст сообщения об ошибке.
 В случае выполнения полной проверки проверка на схематрон выполняется только после успешной проверки схемой.
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

Пример неуспешной проверки:
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
                        schemaVersion="iso"><!--   
                   
                   
                 -->
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
xsd схемы и схематронов для СЭМД, поддерживаемых 1С:Медицина. Содержимое папки можно использовать для наполнения папки, указанной в параметре сервлета DATA_PATH.

Для предоставления прав записи в эту папку в некоторых дистрибутивах необходимо в настройка sandbox сервиса jetty дать права записи. Например, в Ubuntu 20.04 необходимо в файле /etc/systemd/system/multi-user.target.wants/jetty9.service добавить строку (новую):
 ```
 ReadWritePaths=/var/www/upload/tron2/
 ```
Для применения настроек надо выполнить:
 ```
systemctl daemon-reload
service jetty9 restart
 ```

## Параметры сервлета
В файле semd.war:\WEB-INF\web.xml задаются следующие параметры:
- DATA_PATH - полный путь к папке, где будут хранится загруженный файлы (xsd, sch и сгенерированный xsl файлы). Значение по умолчанию - /var/www/upload/tron2.
- ADMIN_NAME - имя пользователя, являющего администратором. Значение по умолчанию - admin.
- ADMIN_PASS - пароль пользователя, являющего администратором. Значение по умолчанию - pass.


### Папка data 
Пример загруженных xsd схем и схематронов. Содержимое папки можно использовать для наполнения папки, указанной в параметре сервлета DATA_PATH.

## Установка
Для работы сервлета semd.war нужен Jetty версии 9.4 или выше. Необходимо опубликовать сервлет semd.war в jetty 9. Необходимо руководствоваться инструкций по публикации Jetty.
  

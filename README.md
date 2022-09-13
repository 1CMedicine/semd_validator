# semd_validator - сервис проверки СЭМД для 1С:Медицина

Проверяется структурированный электронный медицинский документ (СЭМД) на соответствие xsd схеме и схематрону. xsd схему и схематрон необходим загрузить с сайтов Минздрава РФ. 
Сервис реализован как сервет для веб сервера Jetty версии 9.4+. 

## Описание веб-ссылок

### /semd/send_sch.html и /semd/upload - загрузка zip-архива со схемой и схематроном
Структура zip описана на html-странице. На сервер выполняется трансформация схематрона в xsl. xsl для валидации сохраняется в папке schematrons. Сообщается о результате трансформации. Для доступа к ссылкам требуются права администратора.

### /semd/get_sch_list.html - просмотр загруженных схем и схематронов
Для доступа к ссылкам требуются права администратора.

### /semd/send_semd.html - форма отправки СЭМД для выполнения валидации
Схема и схематрон должны быть предварительно загружены на сервер c помощью скрипта upload_sch.py. Проверка СЭМД выполняется скриптом semdverify.py.

### /semd/verify - валидация СЭМД
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

### /login - форма авторизации

## Параметры сервлета
В файле semd.war:\WEB-INF\web.xml задаются следующие параметры:
- DATA_PATH - полный путь к папке, где будут хранится загруженный файлы (xsd, sch и сгенерированный xsl файлы).
- ADMIN_NAME - имя пользователя, являющего администратором.
- ADMIN_PASS - пароль пользователя, являющего администратором.


### Папка data 
Пример загруженных xsd схем и схематронов. Содержимое папки можно использовать для наполнения папки, указанной в параметре сервлета DATA_PATH.

## Установка
Для работы сервлета semd.war нужен jetty версии 9.4 или выше. Необходимо опубликовать сервлет semd.war в jetty 9. Необходимо руководствоваться инструкций по публикации jetty.
  

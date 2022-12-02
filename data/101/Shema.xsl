<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="urn:hl7-org:v3" xmlns:n2="urn:hl7-org:v3/meta/voc" xmlns:voc="urn:hl7-org:v3/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:identity="urn:hl7-ru:identity" xmlns:address="urn:hl7-ru:address">
	<xsl:output method="html" indent="yes" version="4.01" encoding="utf-8" doctype-public="-//W3C//DTD HTML 4.01//EN"/>
	<!-- CDA document -->
	<xsl:variable name="tableWidth">50%</xsl:variable>
	<xsl:variable name="title">
		<xsl:choose>
			<xsl:when test="/n1:ClinicalDocument/n1:title">
				<xsl:value-of select="/n1:ClinicalDocument/n1:title"/>
				<xsl:text> от </xsl:text>
				<xsl:call-template name="formatDate">
					<xsl:with-param name="date" select="/n1:ClinicalDocument/n1:effectiveTime/@value"/>
					<xsl:with-param name="presicion" select="8"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>Clinical Document</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:template match="/">
		<xsl:apply-templates select="n1:ClinicalDocument"/>
	</xsl:template>
	<xsl:template match="n1:ClinicalDocument">
		<html>
			<head>
				<title>
					<xsl:value-of select="$title"/>
				</title>
				<style type="text/css" media="screen">
        
			table.outer
            {
            width:100%;
            cellspacing:0;
            cellpadding:0;
            border: solid 2px #999999;
            border-collapse: collapse;  
            } 
            
            td.outer , th.outer 
            {
			font: 14px Arial, Helvetica, sans-serif;
            color: #003366;
            border: solid 2px #999999;
            }   
            
            th.outer
            {
            background: #EEEEEE;
			}
			
            td.outter
            {           
            background: #fff;
            }	
        
			table.Sections
            {
            border: none;
            border-collapse: collapse;  
            width: 100% ;
            margins: 0,0,0,0;
            padding: 0,0,0,0;
            cellspacing:0;
            }
            
            h2
            {
            font: bold 24px Arial, Helvetica, sans-serif;
            color: #333333;
            text-align: left; 
            }
            
            td.SectionTitle
            {
            border-top: solid 4px #999999;
            font-style: italic; 
            font-size: 12px;
            background: #EEEEEE;
            text-align:left;
            }
            
            td.SubSectionTitle
            {
            border:none;
            width: 6% ;
            font: bold 12px Arial, Helvetica, sans-serif;
            text-align: right;
            vertical-align : top ;
            padding-right: 5px;
            padding-top: 4px;
            }
            
            td.Rest
            {
			border-top: none;
			border-right: none;
			border-bottom: 1px solid #CCCCCC;
			border-left: none;
			font: 14px Arial, Helvetica, sans-serif;
			color: #003366;
			text-align: bottom; 
            }
            
			tr
			{
			vertical-align:top;
			}
            
            table.inner
            {
            cellspacing:1;
            cellpadding:5;
            border-collapse: collapse;  
            } 
            
            table.inner th, table.inner td, table.inner tr
            {
			font: 14px Arial, Helvetica, sans-serif;
            color: #003366;
            padding: 2px 5px; 
            }   
            
            th.inner
            {
            background: #EEEEEE;
			}
			
            td.inner
            {    
            background: #fff;
            }
					
        </style>
			</head>
			<body>
				<table class="outer" width="100%">
						<col width="40%"/>
						<col width="60%"/>
						<tr class="outer">
							<th class="outer" width="20%">
								Медицинская организация
							</th>
							<td class="outer">
								<strong>Название медицинской организации: </strong>
								<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:name"/>
								<xsl:choose>
									<xsl:when test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:addr[@nullFlavor])">
										<br/>
										<strong>Адрес:</strong>
										<xsl:apply-templates select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:addr"/>
									</xsl:when>
								</xsl:choose>
								<br/>
								<xsl:call-template name="getLO">
									<xsl:with-param name="Id" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:id[2]"/>
								</xsl:call-template>
								<xsl:choose>
									<xsl:when test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:telecom[@nullFlavor])">
										<br/>
										<strong>Контакты:</strong>
										<br/>
										<xsl:apply-templates select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:providerOrganization/n1:telecom"/>
									</xsl:when>
								</xsl:choose>
								<br/>
							</td>
						</tr>
				</table>
				<h2>
					<xsl:value-of select="$title"/>
				</h2>	
				<table class="outer" width="100%">
					<col width="40%"/>
					<col width="60%"/>
					<tr class="outer">
						<th class="outer" width="20%">
							<xsl:text>Пациент</xsl:text>
						</th>
						<td class="outer">
							<strong>ФИО: </strong>
							<xsl:call-template name="getName">
								<xsl:with-param name="name" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name"/>
							</xsl:call-template>
							<br/>
							<strong>Пол: </strong>
							<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@displayName"/>
							<br/>
							<strong>Дата рождения (возраст): </strong>
							<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime/@value,7,2)"/>
							<xsl:text>.</xsl:text>
							<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime/@value,5,2)"/>
							<xsl:text>.</xsl:text>
							<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime/@value,1,4)"/>
							<xsl:text> (</xsl:text>
							<xsl:value-of select="substring(/n1:ClinicalDocument/n1:effectiveTime/@value,1,4) - substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime/@value,1,4)"/>
							<xsl:text> лет)</xsl:text>
						</td>
					</tr>
					<tr class="outer">
						<th class="outer" width="20%">
							<xsl:text>Идентификаторы пациента</xsl:text>
						</th>
						<td class="outer">
							<xsl:call-template name="getId">
								<xsl:with-param name="Id" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:id[2]"/>
							</xsl:call-template>
							<xsl:choose>
							<xsl:when test="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:IdentityDocType/@code = '1'">
								<strong>Полис ОМС: </strong>
								<xsl:if test=" not(/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:Series[@nullFlavor])">
									<br/>
									<strong>(Серия) </strong>
									<xsl:value-of select="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:Series"/>
									<xsl:text> </xsl:text>
									<strong>(Номер) </strong>
								</xsl:if>
								<xsl:value-of select="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:Number"/>
								<xsl:if test="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/n1:scopingOrganization">
									<xsl:text> (</xsl:text>
									<xsl:value-of select="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/n1:scopingOrganization/n1:name"/>
									<xsl:text>)</xsl:text>
								</xsl:if>
							</xsl:when>
							<xsl:when test="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:IdentityDocType/@code = '2'">
								<strong>Полис ДМС: </strong>
								<xsl:if test="not(/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:Series[@nullFlavor])">
									<br/>
									<strong>(Серия) </strong>
									<xsl:value-of select="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/identity:Series"/>
									<xsl:text> </xsl:text>
									<strong>(Номер) </strong>
								</xsl:if>
								<xsl:value-of select="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:Number"/>
								<xsl:if test="/n1:ClinicalDocument/n1:participant[@typeCode = 'IND']/n1:associatedEntity/identity:DocInfo/n1:scopingOrganization">
									<xsl:text> (</xsl:text>
									<xsl:value-of select="/n1:ClinicalDocument/participant[@typeCode = 'IND']/n1:associatedEntity/n1:scopingOrganization/n1:name"/>
									<xsl:text>)</xsl:text>
								</xsl:if>
							</xsl:when>
							<xsl:otherwise>
									<xsl:if test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:InsurancePolicy[@nullFlavor])">
										<strong>Полис ОМС: </strong>
										<xsl:if test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:InsurancePolicy/identity:Series[@nullFlavor])">
											<br/>
											<strong>(Серия) </strong>
											<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:InsurancePolicy/identity:Series"/>
											<xsl:text> </xsl:text>
											<strong>(Номер) </strong>
										</xsl:if>
										<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:InsurancePolicy/identity:Number"/>
									</xsl:if>
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<xsl:if test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc[@nullFlavor])">
						<tr class="outer">
							<th class="outer" width="20%">
								<xsl:text>Документ, удостоверяющий личность</xsl:text>
							</th>
							<td class="outer">
								<strong>Документ: </strong>
								<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IdentityCardType/@displayName"/>
								<br/>
								<xsl:if test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:Series[@nullFlavor])">
									<strong>Серия: </strong>
									<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:Series"/>
									<br/>
								</xsl:if>
								<strong>Номер: </strong>
								<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:Number"/>
								<br/>
								<xsl:if test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:Series[@nullFlavor])">
									<strong>Кем выдан: </strong>
									<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IssueOrgName"/>
									<xsl:text>, код подразделения </xsl:text>
									<xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IssueOrgCode"/>
									<br/>
								</xsl:if>
								<strong>Дата выдачи документа: </strong>
								<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IssueDate/@value,7,2)"/>
								<xsl:text>.</xsl:text>
								<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IssueDate/@value,5,2)"/>
								<xsl:text>.</xsl:text>
								<xsl:value-of select="substring(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/identity:IdentityDoc/identity:IssueDate/@value,1,4)"/>
								<br/>
							</td>
						</tr>
					</xsl:if>
					<tr class="outer">
						<th class="outer" width="20%">
							<xsl:text>Контактная информация</xsl:text>
						</th>
						<td class="outer">
							<xsl:for-each select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:addr">
							<xsl:choose>
								<xsl:when test="@nullFlavor">
									<strong>Адрес: </strong>
									<br/>
									<xsl:text>Не указан</xsl:text>
									<br/>
								</xsl:when>
								<xsl:when test="address:Type[@code='1']">
									<strong>Адрес постоянной регистрации: </strong>
									<br/>
									<xsl:apply-templates select="."/>
									<!-- 
									<strong> Код субъекта РФ: </strong>
									<xsl:value-of select="./address:stateCode/@code"/>
									<text> (</text>
									<xsl:value-of select="./address:stateCode/@displayName"/>
									<text>)</text> -->
									<br/>
								</xsl:when>
<!-- 								<xsl:when test="address:Type[@code='2']">
									<strong>Адрес временной регистрации: </strong>
									<br/>
									<xsl:apply-templates select="."/>
									<strong> Код субъекта РФ: </strong>
									<xsl:value-of select="./address:stateCode/@code"/>
									<text> (</text>
									<xsl:value-of select="./address:stateCode/@displayName"/>
									<text>)</text>
									<br/>
								</xsl:when> -->
								<xsl:when test="address:Type[@code='3']">
									<strong>Адрес фактического проживания: </strong>
									<br/>
									<xsl:apply-templates select="."/>
									<!-- <strong> Код субъекта РФ: </strong>
									<xsl:value-of select="./address:stateCode/@code"/>
									<text> (</text>
									<xsl:value-of select="./address:stateCode/@displayName"/>
									<text>)</text> -->
									<br/>
								</xsl:when>
							</xsl:choose>
							</xsl:for-each>
							<strong>Контакты:</strong>
							<br/>
							<xsl:choose>
								<xsl:when test="not(/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:telecom[@nullFlavor])">
									<xsl:apply-templates select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:telecom"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>Отсутствуют</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
							<br/>
						</td>
					</tr>

					<xsl:if test="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='priveleges']">
						<tr class="outer">
							<th class="outer" width="20%">
								<xsl:value-of select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='priveleges']/n1:caption"/><xsl:text></xsl:text>
							</th>
							<td class="outer">
								<xsl:for-each select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='priveleges']/n1:item">
									<xsl:copy-of select="."/>
									<br/>
								</xsl:for-each>
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='invalid']">
						<tr class="outer">
							<th class="outer" width="20%">
								<xsl:value-of select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='invalid']/n1:caption"/><xsl:text></xsl:text>
							</th>
							<td class="outer">
								<xsl:for-each select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:text/n1:list[@ID='invalid']/n1:item">
									<xsl:copy-of select="."/>
									<br/>
								</xsl:for-each>
							</td>
						</tr>
					</xsl:if>
				</table>
				<br/>
				<xsl:apply-templates select="n1:component/n1:structuredBody|n1:component/n1:nonXMLBody"/>
				<br/>
				<hr/>
				<table class="outer" width="100%">
					<col width="40%"/>
					<col width="60%"/>
					<xsl:if test="/n1:ClinicalDocument/n1:author/n1:assignedAuthor">
						<tr class="outer">
							<th class="outer" width="20%">
								<xsl:text>Документ составил</xsl:text>
							</th>
							<td class="outer">
								<strong>Должность, ФИО: </strong>
								<br/>
								<xsl:call-template name="translateCode">
									<xsl:with-param name="code" select="/n1:ClinicalDocument/n1:author/n1:assignedAuthor/n1:code"/>
								</xsl:call-template>
								<xsl:text>, </xsl:text>
								<xsl:call-template name="getName">
									<xsl:with-param name="name" select="/n1:ClinicalDocument/n1:author/n1:assignedAuthor/n1:assignedPerson/n1:name"/>
								</xsl:call-template>
								<br/>
								<strong>Контакты: </strong>
								<br/>
								<xsl:choose>
									<xsl:when test="/n1:ClinicalDocument/n1:author/n1:assignedAuthor/n1:telecom">
										<xsl:apply-templates select="/n1:ClinicalDocument/n1:author/n1:assignedAuthor/n1:telecom"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>Отсутствуют</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						<tr class="outer">
							<th class="outer" width="20%">
								<xsl:text>Документ заверил</xsl:text>
							</th>
							<td class="outer">
								<strong>Должность, ФИО: </strong> 
								<br/>
								<xsl:call-template name="translateCode">
									<xsl:with-param name="code" select="/n1:ClinicalDocument/n1:legalAuthenticator/n1:assignedEntity/n1:code"/>
								</xsl:call-template>
								<xsl:text>, </xsl:text>
								<xsl:call-template name="getName">
									<xsl:with-param name="name" select="/n1:ClinicalDocument/n1:legalAuthenticator/n1:assignedEntity/n1:assignedPerson/n1:name"/>
								</xsl:call-template>
								<br/>
								<strong>Контакты: </strong>
								<br/>
								<xsl:choose>
									<xsl:when test="/n1:ClinicalDocument/n1:legalAuthenticator/n1:assignedEntity/n1:telecom">
										<xsl:apply-templates select="/n1:ClinicalDocument/n1:legalAuthenticator/n1:assignedEntity/n1:telecom"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>Отсутствуют</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:if>
				</table>
			</body>
		</html>
	</xsl:template>
	<!-- Get a Name  -->
	<xsl:template name="getName">
		<xsl:param name="name"/>
		<xsl:choose>
			<xsl:when test="$name/n1:family">
				<xsl:if test="$name/n1:prefix">
					<xsl:value-of select="$name/n1:prefix"/>
					<xsl:text> </xsl:text>
				</xsl:if>
				<xsl:value-of select="$name/n1:family"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$name/n1:given[1]"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$name/identity:Patronymic"/>
				<xsl:text> </xsl:text>
				<xsl:if test="$name/n1:suffix">
					<xsl:value-of select="$name/n1:suffix"/>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$name"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- Get a Job  -->
	<xsl:template name="getJob">
		<xsl:param name="assignedEntity"/>
		<xsl:choose>
			<xsl:when test="$assignedEntity/n1:code">
				<xsl:value-of select="$assignedEntity/n1:code/@displayName"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$assignedEntity/n1:code/@code"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--  Format Date 
    outputs a date in Day Month Year MM:SS form
    -->
	<xsl:template name="formatDate">
		<xsl:param name="date"/>
		<xsl:param name="presicion"/>
		<xsl:variable name="dateLength" select="string-length(substring($date,1,$presicion))"/>
		<xsl:if test="$dateLength>=8">
			<xsl:choose>
				<xsl:when test="substring ($date, 7, 1)='0'">
					<xsl:value-of select="substring ($date, 8, 1)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="substring ($date, 7, 2)"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:text> </xsl:text>
		</xsl:if>
		<xsl:if test="$dateLength>=6">
			<xsl:variable name="month" select="substring ($date, 5, 2)"/>
			<xsl:choose>
				<xsl:when test="$month='01'">
					<xsl:text>Января </xsl:text>
				</xsl:when>
				<xsl:when test="$month='02'">
					<xsl:text>Февраля </xsl:text>
				</xsl:when>
				<xsl:when test="$month='03'">
					<xsl:text>Марта</xsl:text>
				</xsl:when>
				<xsl:when test="$month='04'">
					<xsl:text>Апреля </xsl:text>
				</xsl:when>
				<xsl:when test="$month='05'">
					<xsl:text>Мая</xsl:text>
				</xsl:when>
				<xsl:when test="$month='06'">
					<xsl:text>Июня</xsl:text>
				</xsl:when>
				<xsl:when test="$month='07'">
					<xsl:text>Июля </xsl:text>
				</xsl:when>
				<xsl:when test="$month='08'">
					<xsl:text>Августа </xsl:text>
				</xsl:when>
				<xsl:when test="$month='09'">
					<xsl:text>Сентября </xsl:text>
				</xsl:when>
				<xsl:when test="$month='10'">
					<xsl:text>Октября </xsl:text>
				</xsl:when>
				<xsl:when test="$month='11'">
					<xsl:text>Ноября </xsl:text>
				</xsl:when>
				<xsl:when test="$month='12'">
					<xsl:text>Декабря </xsl:text>
				</xsl:when>
			</xsl:choose>
			<xsl:text> </xsl:text>
		</xsl:if>
		<xsl:value-of select="substring ($date, 1, 4)"/>
		<xsl:if test="$dateLength>=12">
			<xsl:text> </xsl:text>
			<xsl:choose>
				<xsl:when test="substring ($date, 9, 1)='0'">
					<xsl:value-of select="substring ($date, 10, 1)"/>
					<xsl:text>:</xsl:text>
					<xsl:value-of select="substring ($date, 11, 2)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="substring ($date, 9, 2)"/>
					<xsl:text>:</xsl:text>
					<xsl:value-of select="substring ($date, 11, 2)"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:text> </xsl:text>
			<xsl:value-of select="substring ($date, 13, 5)"/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="n1:component/n1:nonXMLBody">
		<xsl:choose>
			<!-- if there is a reference, use that in an IFRAME -->
			<xsl:when test="n1:text/n1:reference">
				<IFRAME name="nonXMLBody" id="nonXMLBody" WIDTH="100%" HEIGHT="66%" src="{n1:text/n1:reference/@value}"/>
			</xsl:when>
			<xsl:when test="n1:text/@mediaType='text/plain'">
				<pre>
					<xsl:value-of select="n1:text/text()"/>
				</pre>
			</xsl:when>
			<xsl:otherwise>
				<CENTER>Cannot display the text</CENTER>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- StructuredBody-->
	<xsl:template match="n1:component/n1:structuredBody">
		<table class="Sections">
			<tbody>
				<xsl:for-each select="n1:component/n1:section">
					<tr>
						<td colspan="2">
							<br/>
						</td>
					</tr>
					<tr>
						<td class="SectionTitle" colspan="2">
							<xsl:apply-templates select="n1:title">
								<xsl:with-param name="code" select="n1:code/@code"/>
							</xsl:apply-templates>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<br/>
						</td>
					</tr>
					<tr>
						<td class="SubSectionTitle">
						
						</td>
						<td class="Rest">
							<xsl:apply-templates select="n1:text"/>
						</td>
					</tr>
				    <xsl:for-each select="n1:component/n1:section">
						<tr><td><br/></td></tr>
						<tr>
							<td class="SubSectionTitle">
								<xsl:apply-templates select="n1:title">
									<xsl:with-param name="code" select="n1:code/@code"/>
								</xsl:apply-templates>
							</td>
							<td class="Rest">
								<xsl:apply-templates select="n1:text"/>
							    <xsl:for-each select="n1:component/n1:section">
								<tr>
									<td class="SubSectionTitle">
										<xsl:apply-templates select="n1:title">
											<xsl:with-param name="code" select="n1:code/@code"/>
										</xsl:apply-templates>
									</td>
									<td class="Rest">
										<xsl:apply-templates select="n1:text"/>
										<xsl:for-each select="n1:component/n1:section">
											<xsl:variable name="code" select="n1:code/@code='8716-3'"/>
											<br/>
											<xsl:choose>
												<xsl:when test="$code='8716-3'">
													<br/>
													<xsl:apply-templates select="n1:title">
														<xsl:with-param name="code" select="n1:code/@code"/>
													</xsl:apply-templates>
													<xsl:text> </xsl:text>
													<xsl:apply-templates select="n1:text"/>
													<xsl:text> </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<br/>
													<xsl:apply-templates select="n1:title">
														<xsl:with-param name="code" select="n1:code/@code"/>
													</xsl:apply-templates>
													<br/>
													<xsl:text> </xsl:text>
													<xsl:apply-templates select="n1:text"/>
													<xsl:for-each select="n1:component/n1:section">
														<xsl:apply-templates select="n1:title">
															<xsl:with-param name="code" select="n1:code/@code"/>
														</xsl:apply-templates>
														<br/>
														<xsl:text> </xsl:text>
														<xsl:apply-templates select="n1:text"/>
														<xsl:text> </xsl:text>
														<br/>
													</xsl:for-each>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</td>
								</tr>
								</xsl:for-each>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<br/>
							</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
	<!--   Title  -->
	<xsl:template match="n1:title">
		<xsl:param name="code" select="''"/>
		<span style="font-weight:bold;" title="{$code}">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--   Text   -->
	<xsl:template match="n1:text">
		<xsl:apply-templates/>
	</xsl:template>
	<!--   paragraph  -->
	<xsl:template match="n1:paragraph">
		<xsl:apply-templates/>
		<p/>
	</xsl:template>
	<!-- caption -->
	<xsl:template match="n1:caption">
			<span style="font-weight:bold;">
				<xsl:value-of select="."/>
				<xsl:text>: </xsl:text>
			</span>
		<br/>
	</xsl:template>
	<!--   line break  -->
	<xsl:template match="n1:br">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	<!--     Content w/ deleted text is hidden -->
	<xsl:template match="n1:content[@revised='delete']"/>
	<!--   content  -->
	<xsl:template match="n1:content">
		<xsl:apply-templates/>
	</xsl:template>
	<!--   list  -->
	<xsl:template match="n1:list">
		<xsl:choose>
			<xsl:when test="(@ID='invalid')or(@ID='priveleges')">
			</xsl:when>
			<xsl:otherwise>
				<!-- caption -->
				<xsl:if test="n1:caption">
					<span style="font-weight:bold; ">
						<xsl:apply-templates select="n1:caption"/>
					</span>
				</xsl:if>
				<!-- item -->
				<xsl:choose>
					<xsl:when test="@listType='ordered'">
						<ol>
							<xsl:for-each select="n1:item">
								<li>
									<!-- list element-->
									<xsl:apply-templates/>
								</li>
							</xsl:for-each>
						</ol>
					</xsl:when>
					<xsl:otherwise>
						<!-- list is unordered -->
						<ul>
							<xsl:for-each select="n1:item">
								<li>
									<!-- list element-->
									<xsl:apply-templates/>
								</li>
							</xsl:for-each>
						</ul>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>	
	</xsl:template>
	<!-- tables -->
	<xsl:template match="n1:table/@*|n1:thead/@*|n1:tfoot/@*|n1:tbody/@*|n1:colgroup/@*|n1:col/@*|n1:tr/@*|n1:th/@*|n1:td/@*">
		<xsl:copy>
			<xsl:apply-templates select="."/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="n1:table">		
		<xsl:element name="table">
			<xsl:attribute name="class">inner</xsl:attribute>		
			<xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute>				
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="n1:thead">
		<thead>
			<xsl:apply-templates/>
		</thead>
	</xsl:template>
	<xsl:template match="n1:tfoot">
		<tfoot>
			<xsl:apply-templates/>
		</tfoot>
	</xsl:template>
	<xsl:template match="n1:tbody">
		<tbody>
			<xsl:apply-templates/>
		</tbody>
	</xsl:template>
	<xsl:template match="n1:colgroup">
		<colgroup>
			<xsl:apply-templates/>
		</colgroup>
	</xsl:template>
	<xsl:template match="n1:col">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="n1:tr">
		<tr>
			<xsl:apply-templates/>
		</tr>
	</xsl:template>
	<xsl:template match="n1:th">
		<th class="inner">
			<xsl:apply-templates/>
		</th>
	</xsl:template>
	<xsl:template match="n1:td">
		<xsl:element name="td">
			<xsl:attribute name="class">inner</xsl:attribute>
			<xsl:attribute name="colspan"><xsl:value-of select="@colspan"/></xsl:attribute>	
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="n1:table/n1:caption">
		<span style="font-weight:bold; ">
			<xsl:apply-templates/>
		</span>
	</xsl:template>
	<!--   RenderMultiMedia 
    
    this currently only handles GIF's and JPEG's.  It could, however,
    be extended by including other image MIME types in the predicate
    and/or by generating <object> or <applet> tag with the correct
    params depending on the media type  @ID  =$imageRef  referencedObject
    -->
	<xsl:template match="n1:renderMultiMedia">
		<xsl:variable name="imageRef" select="@referencedObject"/>
		<xsl:choose>
			<xsl:when test="//n1:regionOfInterest[@ID=$imageRef]">
				<!-- Here is where the Region of Interest image referencing goes -->
				<xsl:if test="//n1:regionOfInterest[@ID=$imageRef]//n1:observationMedia/n1:value[@mediaType='image/gif'           or
          @mediaType='image/jpeg']">
					<br clear="all"/>
					<xsl:element name="img">
						<xsl:attribute name="src"><xsl:value-of select="//n1:regionOfInterest[@ID=$imageRef]//n1:observationMedia/n1:value/n1:reference/@value"/></xsl:attribute>
					</xsl:element>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<!-- Here is where the direct MultiMedia image referencing goes -->
				<xsl:if test="//n1:observationMedia[@ID=$imageRef]/n1:value[@mediaType='image/gif' or           @mediaType='image/jpeg']">
					<br clear="all"/>
					<xsl:element name="img">
						<xsl:attribute name="src"><xsl:value-of select="//n1:observationMedia[@ID=$imageRef]/n1:value/n1:reference/@value"/></xsl:attribute>
					</xsl:element>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--    Stylecode processing   
    Supports Bold, Underline and Italics display
    -->
	<xsl:template match="//n1:*[@styleCode]">
		<xsl:if test="@styleCode='Bold'">
			<xsl:element name="b">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:if>
		<xsl:if test="@styleCode='Italics'">
			<xsl:element name="i">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:if>
		<xsl:if test="@styleCode='Underline'">
			<xsl:element name="u">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:if>
		<xsl:if test="contains(@styleCode,'Bold') and contains(@styleCode,'Italics') and not (contains(@styleCode, 'Underline'))">
			<xsl:element name="b">
				<xsl:element name="i">
					<xsl:apply-templates/>
				</xsl:element>
			</xsl:element>
		</xsl:if>
		<xsl:if test="contains(@styleCode,'Bold') and contains(@styleCode,'Underline') and not (contains(@styleCode, 'Italics'))">
			<xsl:element name="b">
				<xsl:element name="u">
					<xsl:apply-templates/>
				</xsl:element>
			</xsl:element>
		</xsl:if>
		<xsl:if test="contains(@styleCode,'Italics') and contains(@styleCode,'Underline') and not (contains(@styleCode, 'Bold'))">
			<xsl:element name="i">
				<xsl:element name="u">
					<xsl:apply-templates/>
				</xsl:element>
			</xsl:element>
		</xsl:if>
		<xsl:if test="contains(@styleCode,'Italics') and contains(@styleCode,'Underline') and contains(@styleCode, 'Bold')">
			<xsl:element name="b">
				<xsl:element name="i">
					<xsl:element name="u">
						<xsl:apply-templates/>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:if>
		<xsl:if test="not (contains(@styleCode,'Italics') or contains(@styleCode,'Underline') or contains(@styleCode, 'Bold'))">
			<xsl:apply-templates/>
		</xsl:if>
	</xsl:template>
	<!--    Superscript or Subscript   -->
	<xsl:template match="n1:sup">
		<xsl:element name="sup">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="n1:sub">
		<xsl:element name="sub">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!-- 
    Contact Information
  -->
	<xsl:template name="getContactInfo">
		<xsl:param name="contact"/>
		<xsl:apply-templates select="$contact/n1:addr"/>
		<xsl:text>, </xsl:text>
		<xsl:apply-templates select="$contact/n1:telecom[1]"/>
		<xsl:apply-templates select="$contact/n1:telecom"/>
	</xsl:template>
	<xsl:template match="n1:addr">
		<xsl:choose>
			<xsl:when test="count(./*)>0">
				<xsl:text> </xsl:text>
				<xsl:value-of select="n1:postalCode"/>
				<xsl:text>,</xsl:text>
				<xsl:for-each select="n1:streetAddressLine">
					<xsl:text> </xsl:text>
					<xsl:value-of select="."/>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="n1:telecom[1]">
		<xsl:variable name="type" select="substring-before(@value, ':')"/>
		<xsl:variable name="value" select="substring-after(@value, ':')"/>
		<xsl:choose>
			<xsl:when test="$type='tel'">
				<xsl:text> Телефон</xsl:text>
			</xsl:when>
			<xsl:when test="$type='fax'">
				<xsl:text> Факс</xsl:text>
			</xsl:when>
			<xsl:when test="$type='mailto'">
				<xsl:text> Электронная почта</xsl:text>
			</xsl:when>
			<xsl:when test="$type='http'">
				<xsl:text> Сайт</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$type"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="@use">
			<xsl:choose>
				<xsl:when test="@use='HP'">
					<xsl:text>(дом.)</xsl:text>
				</xsl:when>
				<xsl:when test="@use='WP'">
					<xsl:text>(раб.)</xsl:text>
				</xsl:when>
				<xsl:when test="@use='MC'">
					<xsl:text>(моб.)</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>(</xsl:text>
					<xsl:value-of select="@use"/>
					<xsl:text>)</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="$value"/>
	</xsl:template>
	<xsl:template match="n1:telecom">
		<xsl:variable name="type" select="substring-before(@value, ':')"/>
		<xsl:variable name="value" select="substring-after(@value, ':')"/>
		<br/>
		<xsl:choose>
			<xsl:when test="$type='tel'">
				<xsl:text> Телефон</xsl:text>
			</xsl:when>
			<xsl:when test="$type='fax'">
				<xsl:text> Факс</xsl:text>
			</xsl:when>
			<xsl:when test="$type='mailto'">
				<xsl:text> Электронная почта</xsl:text>
			</xsl:when>
			<xsl:when test="$type='http'">
				<xsl:text> Сайт</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$type"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="@use">
			<xsl:choose>
				<xsl:when test="@use='HP'">
					<xsl:text>(дом.)</xsl:text>
				</xsl:when>
				<xsl:when test="@use='WP'">
					<xsl:text>(раб.)</xsl:text>
				</xsl:when>
				<xsl:when test="@use='MC'">
					<xsl:text>(моб.)</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>(</xsl:text>
					<xsl:value-of select="@use"/>
					<xsl:text>)</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="$value"/>
	</xsl:template>
	<!-- 
  -->
	<xsl:template name="payer">
		<xsl:for-each select="/n1:ClinicalDocument/n1:participant[@typeCode='HLD']">

            Полис:<xsl:value-of select="n1:associatedEntity/n1:id/@extension"/>
			<br/>
			Страховая компания: 
				<xsl:call-template name="getName">
				<xsl:with-param name="name" select="n1:associatedEntity/n1:scopingOrganization/n1:name"/>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	<!-- 
  -->
	<xsl:template name="support">
		<table width="100%">
			<col width="60%"/>
			<col width="40%"/>
			<xsl:for-each select="/n1:ClinicalDocument/n1:participant[@typeCode='IND']">
				<tr>
					<td>
						<xsl:call-template name="getName">
							<xsl:with-param name="name" select="n1:associatedEntity/n1:associatedPerson/n1:name"/>
						</xsl:call-template>
					</td>
					<td>
						<xsl:call-template name="getContactInfo">
							<xsl:with-param name="contact" select="n1:associatedEntity"/>
						</xsl:call-template>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- 
  -->
	<xsl:template name="performer">
		<table width="100%">
			<col width="60%"/>
			<col width="40%"/>
			<xsl:for-each select="//n1:serviceEvent/n1:performer">
				<tr>
					<td>
						<xsl:call-template name="getName">
							<xsl:with-param name="name" select="n1:assignedEntity/n1:assignedPerson/n1:name"/>
						</xsl:call-template>
					</td>
					<td>
						<xsl:call-template name="getContactInfo">
							<xsl:with-param name="contact" select="n1:assignedEntity"/>
						</xsl:call-template>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- 
  -->
	<!--  Bottomline  -->
	<xsl:template name="bottomline">
		<table class="outer" width="100%">
			<xsl:for-each select="/n1:ClinicalDocument/n1:informant">
				<tr class="outer">
					<td class="outer" width="20%">
						<b>
							<xsl:text>Информант:</xsl:text>
						</b>
					</td>
					<td class="outer">
						<table>
							<col width="60%"/>
							<col width="40%"/>
							<tr>
								<td>
									<xsl:if test="n1:assignedEntity/n1:assignedPerson|n1:relatedEntity/n1:relatedPerson">
										<xsl:call-template name="getName">
											<xsl:with-param name="name" select="n1:assignedEntity/n1:assignedPerson/n1:name|n1:relatedEntity/n1:relatedPerson/n1:name"/>
										</xsl:call-template>
										<xsl:if test="n1:relatedEntity/n1:code">
											<xsl:text> (</xsl:text>
											<xsl:call-template name="translateCode">
												<xsl:with-param name="code" select="n1:relatedEntity/n1:code/@code"/>
											</xsl:call-template>
											<xsl:text>)</xsl:text>
										</xsl:if>
									</xsl:if>
								</td>
								<td>
									<xsl:call-template name="getContactInfo">
										<xsl:with-param name="contact" select="n1:assignedEntity|n1:relatedEntity"/>
									</xsl:call-template>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	<!-- 
  -->
	<xsl:template name='translateCode'>
		<xsl:param name='code'/>
		<xsl:choose>
			<xsl:when test="$code/@displayName">
				<xsl:value-of select="$code/@displayName"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$code/@code"/>
				<xsl:text> (</xsl:text>
				<xsl:value-of select="$code/@codeSystem"/>
				<xsl:text>)</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name='getId'>
		<xsl:param name='Id'/>
		<xsl:choose>
			<xsl:when test="$Id/@root='1.2.643.100.3'">
				<strong>СНИЛС: </strong>
				<xsl:value-of select="$Id/@extension"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$Id/@extension"/>
				<xsl:text> (</xsl:text>
				<xsl:value-of select="$Id/@root"/>
				<xsl:text>)</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<br/>
	</xsl:template>
	<xsl:template name='getLO'>
		<xsl:param name='Id'/>
		<xsl:choose>
			<xsl:when test="$Id/@root='1.2.643.5.1.13.2.1.1.1504.101'">
				<strong>Лицензия: </strong>
				<xsl:value-of select="$Id/@extension"/>
				<xsl:text>, </xsl:text>
				<xsl:value-of select="$Id/@assigningAuthorityName"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

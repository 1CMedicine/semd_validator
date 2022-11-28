<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="identity" uri="urn:hl7-ru:identity"/>
    <ns prefix="address" uri="urn:hl7-ru:address"/>
    <ns prefix="medService" uri="urn:hl7-ru:medService"/>
    <ns prefix="fias" uri="urn:hl7-ru:fias"/>  
    <!-- �1-1 -->
<!-- ����� ������� ��������� ��� ������� ����� �� ���������� � ��������� name, ���������� ���  -->
<!--
    <pattern>
        <rule context="//name[not(@nullFlavor)]">
            <assert test="count(family)=1">�1-1. ������� name ������ ����� 1 ������� family.</assert>
            <assert test="count(given)=1">�1-1. ������� name ������ ����� 1 ������� given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">�1-1. ������� name ������ ����� �� ����� 1 �������� identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">�1-1. ������� name/identity:Patronymic ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
    </pattern>
-->
    <!-- �1-2 -->
    <!-- �1-3 -->
<!-- ����� ������� ��������� ��� ������� ����� �� ���������� � ��������� addr, ����������� � ��������������� -->
<!--
    <pattern>
        <rule context="//addr[not(@nullFlavor)]">
            <assert test="count(streetAddressLine)=1">�1-3. ������� addr ������ ����� 1 ������� streetAddressLine.</assert>
            <assert test="count(address:stateCode)=1">�1-3. ������� addr ������ ����� 1 ������� address:stateCode.</assert>
            <assert test="address:stateCode/@xsi:type='CD'">�1-3. ������� addr/address:stateCode ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="address:stateCode/@codeSystem=['1.2.643.5.1.13.13.99.2.206','1.2.643.5.1.13.13.11.1093']">�1-3. ������� addr/address:stateCode ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.206' ��� '1.2.643.5.1.13.13.11.1093'.</assert>
            <assert test="address:stateCode/@codeSystemName!=''">�1-3. ������� addr/address:stateCode ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="address:stateCode/@codeSystemVersion!=''">�1-3. ������� addr/address:stateCode ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="address:stateCode/@displayName!=''">�1-3. ������� addr/address:stateCode ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="count(fias:Address)=1">�1-3. ������� addr ������ ����� 1 ������� fias:Address.</assert>
            <assert test="count(fias:Address/fias:AOGUID)=1">�1-3. ������� addr/fias:Address ������ ����� 1 ������� fias:AOGUID.</assert>
            <assert test="count(fias:Address/fias:HOUSEGUID)=1">�1-3. ������� addr/fias:Address ������ ����� 1 ������� fias:HOUSEGUID.</assert>
        </rule>
    </pattern>
-->
    <!-- �1-4 -->
    <pattern>
        <rule context="//telecom[not(@nullFlavor)]">
<!--
            <assert test="matches(@value, '^tel:\+?[-0-9().]+$|^([^t].+|t[^e].*|te[^l].*)$')">�1-4. ��� �������� //telecom �� ������ "tel:" ������ ��������������� ���������� ����������� ���������: tel:\+?[-0-9().]+ ��� ������� ���� ����� ������ �������� � ������ �������� ����� �������� ���� ������������.</assert>
-->
        </rule>
    </pattern>
    <!-- �1-5 -->
    <!-- �1-6 -->
    <!-- �1-7 -->
    <!-- �1-8 -->
    <pattern>
        <rule context="//id[not(@nullFlavor)]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">�1-8. ������� id ������ ����� ������������� ���������� �������� �������� @root, ��������������� ����������� ��������� '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- �1-9 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(realmCode)=1">�1-9. ������� ClinicalDocument ������ ����� 1 ������� realmCode.</assert>
        </rule>
        <rule context="ClinicalDocument/realmCode">
            <assert test="@code='RU'">�1-9. ������� ClinicalDocument/realmCode ������ ����� �������� �������� @code ������ 'RU'.</assert>
        </rule>
    </pattern>
    <!-- �1-10 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(typeId)=1">�1-10. ������� ClinicalDocument ������ ����� 1 ������� typeId.</assert>
        </rule>
        <rule context="ClinicalDocument/typeId">
            <assert test="@root='2.16.840.1.113883.1.3'">�1-10. ������� ClinicalDocument/typeId ������ ����� �������� �������� @root ������ '2.16.840.1.113883.1.3'.</assert>
            <assert test="@extension='POCD_MT000040'">�1-10. ������� ClinicalDocument/typeId ������ ����� �������� �������� @extension ������ 'POCD_MT000040'.</assert>
        </rule>
    </pattern>
    <!-- �1-11 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(templateId)=1">�1-11. ������� ClinicalDocument ������ ����� 1 ������� templateId.</assert>
        </rule>
        <rule context="ClinicalDocument/templateId">
            <assert test="@root=['1.2.643.5.1.13.13.14.88.9.2','1.2.643.5.1.13.13.14.122.9.2']">�1-11. ������� ClinicalDocument/templateId ������ ����� �������� �������� @root ������ '1.2.643.5.1.13.13.14.88.9.2' ��� '1.2.643.5.1.13.13.14.122.9.2'.</assert>
        </rule>
    </pattern>
    <!-- �1-12 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(id)=1">�1-12. ������� ClinicalDocument ������ ����� 1 ������� id.</assert>
        </rule>
        <rule context="ClinicalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">�1-12. ������� ClinicalDocument/id ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ����������, �.�. "OID_�����������_�����������.100.��������.�����������.51".</assert>
            <assert test="@extension!=''">�1-12. ������� ClinicalDocument/id ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
    </pattern>
    <!-- �1-13 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(code)=1">�1-13. ������� ClinicalDocument ������ ����� 1 ������� code.</assert>
        </rule>
        <rule context="ClinicalDocument/code">
            <assert test="@code=['88','122']">�1-13. ������� ClinicalDocument/code ������ ����� �������� �������� @code ������ '88' ��� '122'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">�1-13. ������� ClinicalDocument/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' ��� '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@codeSystemVersion!=''">�1-13. ������� ClinicalDocument/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@displayName!=''">�1-13. ������� ClinicalDocument/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �1-14 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(title)=1">�1-14. ������� ClinicalDocument ������ ����� 1 ������� title.</assert>
        </rule>
        <rule context="ClinicalDocument/title">
            <assert test=".!=''">�1-14. ������� ClinicalDocument/title ������ ����� �� ������ ��������.</assert>
        </rule>
    </pattern>
    <!-- �1-15 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(effectiveTime)=1">�1-15. ������� ClinicalDocument ������ ����� 1 ������� effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/effectiveTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$') or matches(@value,'^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}\+[0-2]{1}[0-9]{1}[0-5]{1}[0]{1}$')">�1-15. ���� � �������� ������ ���� ������� � ��������� �� ���, ����� ��������� � ��������� �� �����. ���� ������� � ��������� �� �����, �� ������ ���� ������� ��������� ����.</assert>
        </rule>
    </pattern>
    <!-- �1-16 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(confidentialityCode)=1">�1-16. ������� ClinicalDocument ������ ����� 1 ������� confidentialityCode.</assert>
        </rule>
        <rule context="ClinicalDocument/confidentialityCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.285','1.2.643.5.1.13.2.1.1.1504.9','2.16.840.1.113883.2.35.10.9','1.2.643.5.1.13.13.11.1116']">�1-16. ������� ClinicalDocument/confidentialityCode ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.285', '1.2.643.5.1.13.2.1.1.1504.9', '2.16.840.1.113883.2.35.10.9' ��� '1.2.643.5.1.13.13.11.1116'.</assert>
            <assert test="@code!=''">�1-16. ������� ClinicalDocument/confidentialityCode ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�1-16. ������� ClinicalDocument/confidentialityCode ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@displayName!=''">�1-16. ������� ClinicalDocument/confidentialityCode ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �1-17 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(languageCode)=1">�1-17. ������� ClinicalDocument ������ ����� 1 ������� languageCode.</assert>
        </rule>
        <rule context="ClinicalDocument/languageCode">
            <assert test="@code='ru-RU'">�1-17. ������� ClinicalDocument/languageCode ������ ����� �������� �������� @code ������ 'ru-RU'.</assert>
        </rule>
    </pattern>
    <!-- �1-18 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(setId)=1">�1-18. ������� ClinicalDocument ������ ����� 1 ������� setId.</assert>
        </rule>
        <rule context="ClinicalDocument/setId">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.50$')">�1-18. ������� ClinicalDocument/setId ������ ����� ������������� ���������� �������� �������� @root, �.�. "OID_�����������_�����������.100.��������.�����������.50".</assert>
            <assert test="@extension!=''">�1-18. ������� ClinicalDocument/setId ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
    </pattern>
    <!-- �1-19 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(versionNumber)=1">�1-19. ������� ClinicalDocument ������ ����� 1 ������� setId.</assert>
        </rule>
        <rule context="ClinicalDocument/versionNumber">
            <assert test="@value!=''">�1-19. ������� ClinicalDocument/versionNumber ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
    </pattern>
    <!-- �1-20 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(recordTarget)=1">�1-20. ������� ClinicalDocument ������ ����� 1 ������� recordTarget.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget">
            <assert test="count(patientRole)=1">�1-20. ������� ClinicalDocument/recordTarget ������ ����� 1 ������� patientRole.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole">
            <assert test="count(id)=2">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 2 �������� id.</assert>
            <assert test="count(identity:IdentityDoc)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 1 ������� identity:IdentityDoc.</assert>
            <assert test="count(identity:InsurancePolicy)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 1 ������� identity:InsurancePolicy.</assert>
            <assert test="count(addr)=[1,2]">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 1 ��� 2 �������� addr.</assert>
            <assert test="count(patient)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 1 ������� patient.</assert>
            <assert test="count(providerOrganization)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole ������ ����� 1 ������� providerOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.10$')">�1-20. ������� ClinicalDocument/recordTarget/patientRole/id[1] ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ���������, �.�. "OID_�����������_�����������.100.��������.�����������.10".</assert>
            <assert test="@extension!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/id[1] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/id[2]">
            <assert test="@root='1.2.643.100.3'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/id[2] ������ ����� �������� �������� @root ������ '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/id[2] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:IdentityDoc[not(@nullFlavor)]]">
            <assert test="count(identity:IdentityDoc/identity:IdentityCardType)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:IdentityCardType.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@xsi:type='CD'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystem=['1.2.643.5.1.13.13.99.2.48','1.2.643.5.1.13.13.11.1011','1.2.643.5.1.13.2.1.1.736']">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.48', '1.2.643.5.1.13.13.11.1011' ��� '1.2.643.5.1.13.2.1.1.736'.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@code!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemName!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@displayName!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="identity:IdentityDoc/identity:IdentityCardType/@codeSystemVersion!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IdentityCardType ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="count(identity:IdentityDoc/identity:Series)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:Series.</assert>
            <assert test="identity:IdentityDoc/identity:Series/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Series ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:Number)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:Number.</assert>
            <assert test="identity:IdentityDoc/identity:Number/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:Number ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgName)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:IssueOrgName.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgName/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgName ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueOrgCode)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:IssueOrgCode.</assert>
            <assert test="identity:IdentityDoc/identity:IssueOrgCode/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueOrgCode ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:IdentityDoc/identity:IssueDate)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc ������ ����� 1 ������� identity:IssueDate.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@xsi:type='TS'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate ������ ����� �������� �������� @xsi:type ������ 'TS'.</assert>
            <assert test="identity:IdentityDoc/identity:IssueDate/@value!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:IdentityDoc/identity:IssueDate ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy]">
            <assert test="count(identity:InsurancePolicy/identity:InsurancePolicyType)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy ������ ����� 1 ������� identity:InsuracePolicyType.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@xsi:type='CD'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicyType/identity:InsuracePolicyType ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@code!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@displayName!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="identity:InsurancePolicy/identity:InsurancePolicyType/@codeSystemVersion!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Series)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy ������ ����� �� ����� 1 �������� identity:Series.</assert>
            <assert test="count(identity:InsurancePolicy/identity:Number)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy ������ ����� 1 ������� identity:Number.</assert>
            <assert test="identity:InsurancePolicy/identity:Number/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Number ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole[identity:InsurancePolicy/identity:Series]">
            <assert test="identity:InsurancePolicy/identity:Series/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/identity:InsurancePolicy/identity:Series ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient">
            <assert test="count(name)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient ������ ����� 1 ������� name.</assert>
            <assert test="count(administrativeGenderCode)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient ������ ����� 1 ������� administrativeGenderCode.</assert>
            <assert test="count(birthTime)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient ������ ����� 1 ������� birthTime.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/name[not(@nullFlavor)]">
            <assert test="count(family)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/name ������ ����� 1 ������� family.</assert>
            <assert test="count(given)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/name ������ ����� 1 ������� given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/name ������ ����� �� ����� 1 �������� identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/name/identity:Patronymic ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/birthTime">
            <assert test="matches(@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">�1-20. ���� � �������� ������ ���� ������� � ��������� �� ���.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1040','1.2.643.5.1.13.2.1.1.156']">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1040' ��� '1.2.643.5.1.13.2.1.1.156'.</assert>
            <assert test="@code!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@displayName!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="@codeSystemVersion!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization">
            <assert test="count(id)=[1,2]">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization ������ ����� 1 ��� 2 �������� id.</assert>
            <assert test="count(identity:Props)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization ������ ����� 1 ������� identity:Props.</assert>
            <assert test="count(name)=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(addr)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization ������ ����� �� ����� 1 �������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/id[1] ������ ����� ������������� ���������� �������� �������� @root, ��������������� ����������� ��������� '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2]">
            <assert test="@root='1.2.643.5.1.13.2.1.1.1504.101'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] ������ ����� �������� �������� @root ������ '1.2.643.5.1.13.2.1.1.1504.101'.</assert>
            <assert test="@extension!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] ������ ����� �� ������ �������� �������� @extension.</assert>
            <assert test="@assigningAuthorityName!=''">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/id[2] ������ ����� �� ������ �������� �������� @assigningAuthorityName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/recordTarget/patientRole/providerOrganization[identity:Props[not(@nullFlavor)]]">
            <assert test="count(identity:Props/identity:Ogrn)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props ������ ����� �� ����� 1 �������� identity:Ogrn.</assert>
            <assert test="not(identity:Props/identity:Ogrn) or identity:Props/identity:Ogrn/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrn ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:Props/identity:Ogrnip)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props ������ ����� �� ����� 1 �������� identity:Ogrnip.</assert>
            <assert test="not(identity:Props/identity:Ogrnip) or identity:Props/identity:Ogrnip/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Ogrnip ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <report test="identity:Props/identity:Ogrnip and identity:Props/identity:Ogrn">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props �� ������ ������������ ����� ������� identity:Ogrnip � ������� identity:Ogrn.</report>
            <assert test="count(identity:Props/identity:Okpo)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props ������ ����� �� ����� 1 �������� identity:Okpo.</assert>
            <assert test="not(identity:Props/identity:Okpo) or identity:Props/identity:Okpo/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okpo ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:Props/identity:Okato)&lt;=1">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props ������ ����� �� ����� 1 �������� identity:Okato.</assert>
            <assert test="not(identity:Props/identity:Okato) or identity:Props/identity:Okato/@xsi:type='ST'">�1-20. ������� ClinicalDocument/recordTarget/patientRole/providerOrganization/identity:Props/identity:Okato ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
    </pattern>
    <!-- �1-21 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(author)=1">�1-21. ������� ClinicalDocument ������ ����� 1 ������� author.</assert>
        </rule>
        <rule context="ClinicalDocument/author">
            <assert test="count(time)=1">�1-21. ������� ClinicalDocument/author ������ ����� 1 ������� time.</assert>
            <assert test="count(assignedAuthor)=1">�1-21. ������� ClinicalDocument/author ������ ����� 1 ������� assignedAuthor .</assert>
        </rule>
        <rule context="ClinicalDocument/author/time">
            <assert test="@value!=''">�1-21. ������� ClinicalDocument/author/time ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor">
            <assert test="count(id)=2">�1-21. ������� ClinicalDocument/author/assignedAuthor author ����� 2 �������� id.</assert>
            <assert test="count(code)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor ������ ����� 1 ������� code.</assert>
            <assert test="count(addr)&lt;=1">�1-21. ������� ClinicalDocument/author/assignedAuthor ������ ����� �� ����� 1 �������� addr.</assert>
            <assert test="count(assignedPerson)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor ������ ����� 1 ������� assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">�1-21. ������� ClinicalDocument/author/assignedAuthor ������ ����� �� ����� 1 �������� representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">�1-21. ������� ClinicalDocument/author/assignedAuthor/id[1] ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ���������, �.�. "OID_�����������_�����������.100.��������.�����������.70".</assert>
            <assert test="@extension!=''">�1-21. ������� ClinicalDocument/author/assignedAuthor/id[1] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/id[2]">
            <assert test="@root='1.2.643.100.3'">�1-21. ������� ClinicalDocument/author/assignedAuthor/id[2] ������ ����� �������� �������� @root ������ '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">�1-21. ������� ClinicalDocument/author/assignedAuthor/id[2] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">�1-21. ������� ClinicalDocument/author/assignedAuthor/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1002' ��� '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">�1-21. ������� ClinicalDocument/author/assignedAuthor/code ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@displayName!=''">�1-21. ������� ClinicalDocument/author/assignedAuthor/code ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="@codeSystemVersion!=''">�1-21. ������� ClinicalDocument/author/assignedAuthor/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson">
            <assert test="count(name)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/assignedPerson ������ ����� 1 ������� name.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/assignedPerson/name ������ ����� 1 ������� family.</assert>
            <assert test="count(given)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/assignedPerson/name ������ ����� 1 ������� given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/assignedPerson/name ������ ����� �� ����� 1 �������� identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">�1-21. ������� ClinicalDocument/author/assignedAuthor/assignedPerson/name/identity:Patronymic ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization">
            <assert test="@classCode='ORG'">�1-21. ������� ClinicalDocument/author/assignedAuthor/representedOrganization ������ ����� �������� �������� @classCode ������ 'ORG'.</assert>
            <assert test="count(id)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/representedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/representedOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(addr)&lt;=1">�1-21. ������� ClinicalDocument/author/assignedAuthor/representedOrganization ������ ����� 1 ������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/author/assignedAuthor/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">�1-21. ������� ClinicalDocument/author/assignedAuthor/representedOrganization/id ������ ����� ������������� ���������� �������� �������� @root, ��������������� ����������� ��������� '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- �1-22 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(custodian)=1">�1-22. ������� ClinicalDocument ������ ����� 1 ������� custodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian">
            <assert test="count(assignedCustodian)=1">�1-22. ������� ClinicalDocument/custodian ������ ����� 1 ������� assignedCustodian.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian">
            <assert test="count(representedCustodianOrganization)=1">�1-22. ������� ClinicalDocument/custodian/assignedCustodian ������ ����� 1 ������� representedCustodianOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization">
            <assert test="count(id)=1">�1-22. ������� ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-22. ������� ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(addr)=1">�1-22. ������� ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization ������ ����� 1 ������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">�1-22. ������� ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id ������ ����� ������������� ���������� �������� �������� @root, ��������������� ����������� ��������� '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- �1-23 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13'])=1">�1-23. ������� ClinicalDocument ������ ����� 1 ������� informationRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient[intendedRecipient/receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(intendedRecipient)=1">�1-23. ������� ClinicalDocument/informationRecipient ������ ����� 1 ������� intendedRecipient.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient[receivedOrganization/id/@root='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">�1-23. ������� ClinicalDocument/informationRecipient/intendedRecipient ������ ����� 1 ������� receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization[id/@root='1.2.643.5.1.13']">
            <assert test="count(id)=1">�1-23. ������� ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-23. ������� ClinicalDocument/informationRecipient/intendedRecipient/receivedOrganization ������ ����� 1 ������� name.</assert>
        </rule>
    </pattern>
    <!-- �1-24 -->
    <pattern>
        <rule context="ClinicalDocument/informationRecipient[receivedOrganization/id/@root!='1.2.643.5.1.13']">
            <assert test="count(receivedOrganization)=1">�1-24. ������� ClinicalDocument/informationRecipient/intendedRecipient ������ ����� 1 ������� receivedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">�1-24. ������� ClinicalDocument/informationRecipient/receivedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-24. ������� ClinicalDocument/informationRecipient/receivedOrganization ������ ����� 1 ������� name.</assert>
        </rule>
        <rule context="ClinicalDocument/informationRecipient/receivedOrganization[id/@root!='1.2.643.5.1.13']">
            <assert test="count(id)=1">�1-24. ������� ClinicalDocument/informationRecipient/receivedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-24. ������� ClinicalDocument/informationRecipient/receivedOrganization ������ ����� 1 ������� name.</assert>
        </rule>
    </pattern>
    <!-- �1-25 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(legalAuthenticator)=1">�1-25. ������� ClinicalDocument ������ ����� 1 ������� legalAuthenticator.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator">
            <assert test="count(time)=1">�1-25. ������� ClinicalDocument/legalAuthenticator ������ ����� 1 ������� time.</assert>
            <assert test="count(signatureCode)=1">�1-25. ������� ClinicalDocument/legalAuthenticator ������ ����� 1 ������� signatureCode.</assert>
            <assert test="count(assignedEntity)=1">�1-25. ������� ClinicalDocument/legalAuthenticator ������ ����� 1 ������� assignedEntity .</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/time">
            <assert test="@value!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/time ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/signatureCode">
            <assert test="@code='S'">�1-25. ������� ClinicalDocument/legalAuthenticator/signatureCode ������ ����� �������� �������� @code ������ 'S'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity">
            <assert test="count(id)=2">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity author ����� 2 �������� id.</assert>
            <assert test="count(code)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity ������ ����� 1 ������� code.</assert>
            <assert test="count(addr)&lt;=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity ������ ����� �� ����� 1 �������� addr.</assert>
            <assert test="count(assignedPerson)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity ������ ����� 1 ������� assignedPerson.</assert>
            <assert test="count(representedOrganization)&lt;=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity ������ ����� �� ����� 1 �������� representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.70$')">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/id[1] ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ���������, �.�. "OID_�����������_�����������.100.��������.�����������.70".</assert>
            <assert test="@extension!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/id[1] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/id[2]">
            <assert test="@root='1.2.643.100.3'">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/id[2] ������ ����� �������� �������� @root ������ '1.2.643.100.3'.</assert>
            <assert test="@extension!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/id[2] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1002','1.2.643.5.1.13.2.1.1.733']">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1002' ��� '1.2.643.5.1.13.2.1.1.733'.</assert>
            <assert test="@code!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/code ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemName!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/code ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="@codeSystemVersion!=''">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson">
            <assert test="count(name)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson ������ ����� 1 ������� name.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name[not(@nullFlavor)]">
            <assert test="count(family)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name ������ ����� 1 ������� family.</assert>
            <assert test="count(given)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name ������ ����� 1 ������� given.</assert>
            <assert test="count(identity:Patronymic)&lt;=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name ������ ����� �� ����� 1 �������� identity:Patronymic.</assert>
            <assert test="not(identity:Patronymic) or identity:Patronymic/@nullFlavor or identity:Patronymic/@xsi:type='ST'">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/assignedPerson/name/identity:Patronymic ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ������ ����� �������� �������� @classCode ������ 'ORG'.</assert>
            <assert test="count(id)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(addr)&lt;=1">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization ������ ����� 1 ������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+$')">�1-25. ������� ClinicalDocument/legalAuthenticator/assignedEntity/representedOrganization/id ������ ����� ������������� ���������� �������� �������� @root, ��������������� ����������� ��������� '([0-2])([.]([1-9][0-9]*|0))+'.</assert>
        </rule>
    </pattern>
    <!-- �1-26 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(participant)=1">�1-26. ������� ClinicalDocument ������ ����� 1 ������� participant.</assert>
        </rule>
        <rule context="ClinicalDocument/participant">
            <assert test="@typeCode='IND'">�1-26. ������� ClinicalDocument/participant ������ ����� �������� �������� @typeCode ������ 'IND'.</assert>
            <assert test="count(associatedEntity)=1">�1-26. ������� ClinicalDocument/participant ������ ����� 1 ������� associatedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="@classCode='GUAR'">�1-26. ������� ClinicalDocument/participant/associatedEntity ������ ����� �������� �������� @classCode ������ 'GUAR'.</assert>
            <assert test="count(code)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity ������ ����� 1 ������� code.</assert>
            <assert test="count(identity:DocInfo)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity ������ ����� 1 ������� identity:DocInfo.</assert>
            <assert test="count(scopingOrganization)&lt;=1">�1-26. ������� ClinicalDocument/participant/associatedEntity ������ ����� �� ����� 1 �������� scopingOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity/code">
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1039'">�1-26. ������� ClinicalDocument/participant/associatedEntity/code ������ ����� �������� �������� @classCode ������ '1.2.643.5.1.13.13.11.1039'.</assert>
            <assert test="@code!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/code ������ ����� �� ������ �������� �������� @classCode.</assert>
            <assert test="@codeSystemName!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@displayName!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['8','9','10','11']]">
            <assert test="identity:DocInfo/@nullFlavor=['INV','NAV']">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� �������� �������� @nullFlavor ������ 'INV' ��� 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity">
            <assert test="count(identity:DocInfo/identity:IdentityDocType)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:IdentityDocType.</assert>
            <assert test="count(identity:DocInfo/identity:InsurancePolicyType)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:InsurancePolicyType.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@xsi:type='CD'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystem='1.2.643.5.1.13.13.11.1035'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1035'.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@code!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemVersion!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@codeSystemName!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@displayName!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �� ������ �������� �������� @displayName.</assert>
            <assert test="count(identity:DocInfo/identity:Series)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:Series.</assert>
            <assert test="identity:DocInfo/identity:Series/@xsi:type='ST'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:Number)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:Number.</assert>
            <assert test="identity:DocInfo/identity:Number/@xsi:type='ST'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test="count(identity:DocInfo/identity:INN)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:INN.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo ������ ����� 1 ������� identity:effectiveTime.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[@classCode='GUAR'][identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN/@xsi:type='ST'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='1']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='1'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType ������ ����� �������� �������� @code ������ '1'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code='3']">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='2'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType ������ ����� �������� �������� @code ������ '2'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['4','5','6']]">
            <assert test="identity:DocInfo/identity:IdentityDocType/@code='3'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:IdentityDocType ������ ����� �������� �������� @code ������ '3'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='1'][identity:DocInfo/identity:InsurancePolicyType/@nullFlavor]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �������� �������� @nullFlavor ������ 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code=['2','3']]">
            <assert test="identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:InsurancePolicyType ������ ����� �������� �������� @nullFlavor ������ 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='1']">
            <assert test="identity:DocInfo/identity:Series!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �� ������ ��������.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code=['2','3','4']]">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NA'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �������� �������� @nullFlavor ������ 'NA'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Series/@nullFlavor='NAV'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �������� �������� @nullFlavor ������ 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NA']">
            <assert test="identity:DocInfo/identity:Series!='' or identity:DocInfo/identity:Series/@nullFlavor!=''">�1-27. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �� ������ �������� ��� ����� �� ������ �������� �������� @nullFlavor.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:Number/@nullFlavor='NAV'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Number ������ ����� �������� �������� @nullFlavor ������ 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="identity:DocInfo/identity:Number!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:Series ������ ����� �� ������ ��������.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:IdentityDocType/@code='3']">
            <assert test="identity:DocInfo/identity:INN!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:INN ������ ����� �� ������ ��������.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV']">
            <assert test="identity:DocInfo/identity:effectiveTime/@nullFlavor='NAV'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime ������ ����� �������� �������� @nullFlavor ������ 'NAV'.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@nullFlavor='NAV')]">
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:low)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime ������ ����� 1 ������� identity:low.</assert>
<!-- �1-26-1-�-VI-i ����������� � �� -->
<!--
            <assert test="identity:DocInfo/identity:effectiveTime/identity:low/@xsi:type='TS'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:low ������ ����� �������� �������� @xsi:type ������ 'TS'.</assert>
-->
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:low/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">�1-26. ���� � �������� ������ ���� ������� � ��������� �� ���.</assert>
            <assert test="count(identity:DocInfo/identity:effectiveTime/identity:high)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime ������ ����� 1 ������� identity:high.</assert>
<!-- �1-26-1-�-VI-ii ����������� � �� -->
<!--
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@xsi:type='TS'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high ������ ����� �������� �������� @xsi:type ������ 'TS'.</assert>
-->
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[identity:DocInfo/identity:InsurancePolicyType/@code='2']">
            <assert test="identity:DocInfo/identity:effectiveTime/identity:high/@nullFlavor='NAV'">�1-26. ������� ClinicalDocument/participant/associatedEntity/identity:DocInfo/identity:effectiveTime/identity:high ������ ����� �������� �������� @nullFlavor ������ 'NAV'.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[not(identity:DocInfo/identity:InsurancePolicyType/@code='2')]">
            <assert test="matches(identity:DocInfo/identity:effectiveTime/identity:high/@value, '^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$')">�1-26. ���� � �������� ������ ���� ������� � ��������� �� ���.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization">
            <assert test="count(id)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(telecom)>=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization ������ ����� �� ����� 1 �������� telecom.</assert>
            <assert test="count(addr)=1">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization ������ ����� 1 ������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[not(@nullFlavor)]">
            <assert test="@root=['1.2.643.5.1.13.13.99.2.183','1.2.643.5.1.13.2.1.1.635']">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization/id ������ ����� �������� �������� @root ������ '1.2.643.5.1.13.13.99.2.183' ��� '1.2.643.5.1.13.2.1.1.635'.</assert>
            <assert test="@extension!=''">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization/id ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/participant/associatedEntity[code/@code=['1','3','6']]/scopingOrganization/id[nullFlavor]">
            <assert test="@nullFlavor='NA'">�1-26. ������� ClinicalDocument/participant/associatedEntity/scopingOrganization/id ������ ����� �������� �������� @nullFlavor ������ 'NA'.</assert>
        </rule>
    </pattern>
    <!-- �1-27 -->
    <pattern>
        <rule context="ClinicalDocument">
            <assert test="count(componentOf)&lt;=1">�1-27. ������� ClinicalDocument ������ ����� �� ����� 1 �������� componentOf.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf">
            <assert test="count(encompassingEncounter)=1">�1-27. ������� ClinicalDocument/componentOf ������ ����� 1 ������� encompassingEncounter.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter">
            <assert test="count(id)=2">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter ������ ����� 2 �������� id.</assert>
            <assert test="count(code)=1">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter ������ ����� 1 ������� code.</assert>
            <assert test="count(medService:DocType)=1">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter ������ ����� 1 ������� medService:DocType.</assert>
            <assert test="count(effectiveTime)=1">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter ������ ����� 1 ������� effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[1]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.15$')">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/id[1] ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ������� �������� ����������� ������, �.�. "OID_�����������_�����������.100.��������.�����������.15".</assert>
            <assert test="@extension!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/id[1] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/id[2]">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.16$') or matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.17$')">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/id[2] ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ������� �������� ����������� ������ � ����������, �.�. "OID_�����������_�����������.100.��������.�����������.16, ��� �� ������� ������������ ��������������� ������� �������� ����������� ������������ ������, �.�. "OID_�����������_�����������.100.��������.�����������.17".</assert>
            <assert test="@extension!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/id[2] ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter/code[not(@nullFlavor)]">
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.723'">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/code ������ ����� �������� �������� @classCode ������ '1.2.643.5.1.13.13.99.2.723'.</assert>
            <assert test="@code!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/code ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemName!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@codeSystemVersion!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@displayName!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <pattern>
        <rule context="ClinicalDocument/componentOf/encompassingEncounter[medService:DocType[not(@nullFlavor)]]">
            <assert test="medService:DocType/@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/medService:DocType ������ ����� �������� �������� @classCode ������ '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' ��� '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="medService:DocType/@code!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/medService:DocType ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="medService:DocType/@codeSystemName!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/medService:DocType ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="medService:DocType/@codeSystemVersion!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/medService:DocType ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="medService:DocType/@displayName!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/medService:DocType ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/associatedEntity/effectiveTime">
            <assert test="count(low)=1">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/effectiveTime ������ ����� 1 ������� low.</assert>
            <assert test="count(high)&lt;=1">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/effectiveTime ������ ����� �� ����� 1 �������� high.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/associatedEntity/effectiveTime/low">
            <assert test="@value!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/low ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
        <rule context="ClinicalDocument/componentOf/associatedEntity/effectiveTime/high">
            <assert test="@value!=''">�1-27. ������� ClinicalDocument/componentOf/encompassingEncounter/effectiveTime/high ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
    </pattern>
    <!-- �1-28 -->
    <pattern>
        <rule context="ClinicalDocument/component">
            <assert test="count(structuredBody)=1">�1-28. ������� ClinicalDocument/component ������ ����� 1 ������� structuredBody.</assert>
        </rule>
    </pattern>
    <!-- �2-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DOCINFO'])=1">�2-1. ������� ClinicalDocument/component/structuredBody ������ ����� 1 ������� component �� ��������� �������� section/code/@code ������ 'DOCINFO'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(code)=1">�2-1. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� code.</assert>
            <assert test="count(title)=1">�2-1. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� title.</assert>
            <assert test="count(text)=1">�2-1. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DOCINFO']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">�2-1. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' ��� '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">�2-1. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�2-1. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�2-1. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �2-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='DGN'])&lt;=1">�2-2. ������� ClinicalDocument/component/structuredBody ������ ����� �� ����� 1 �������� component �� ��������� �������� section/code/@code ������ 'DGN'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(code)=1">�2-2. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� code.</assert>
            <assert test="count(title)=1">�2-2. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� title.</assert>
            <assert test="count(text)=1">�2-2. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='DGN']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">�2-2. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' ��� '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">�2-2. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�2-2. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�2-2. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �2-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody">
            <assert test="count(component/section/code[@code='LINKDOCS'])&lt;=1">�2-3. ������� ClinicalDocument/component/structuredBody ������ ����� �� ����� 1 �������� component �� ��������� �������� section/code/@code ������ 'LINKDOCS'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
            <assert test="count(code)=1">�2-3. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� code.</assert>
            <assert test="count(title)=1">�2-3. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� title.</assert>
            <assert test="count(text)=1">�2-3. ������� ClinicalDocument/component/structuredBody/component/section ������ ����� 1 ������� text.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section/code[@code='LINKDOCS']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1379','1.2.643.5.1.13.13.99.2.197','1.2.643.5.1.13.2.1.1.1504.23']">�2-3. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1379', '1.2.643.5.1.13.13.99.2.197' ��� '1.2.643.5.1.13.2.1.1.1504.23'.</assert>
            <assert test="@codeSystemVersion!=''">�2-3. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�2-3. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�2-3. ������� ClinicalDocument/component/structuredBody/component/section/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-1 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='7000']])&lt;=1">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='7000']]">
            <assert test="count(observation)=1">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='7000']]">
            <assert test="@classCode='OBS'">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='7000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='7000']]/value">
            <assert test="@xsi:type='ST'">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test=".!=''">�3-1. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ ��������.</assert>
        </rule>
    </pattern>
    <!-- �3-2 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12005']])&lt;=1">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12005']]">
            <assert test="count(observation)=1">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12005']]">
            <assert test="@classCode='OBS'">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12005']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12005']]/value">
            <assert test="@xsi:type='CD'">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.11.1038'">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1038'.</assert>
            <assert test="@code!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-2. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-3 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='8002']])&lt;=1">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='8002']]">
            <assert test="count(observation)=1">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='8002']]">
            <assert test="@classCode='OBS'">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='8002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='8002']]/value">
            <assert test="@xsi:type='CD'">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.764'">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.764'.</assert>
            <assert test="@code!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-3. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-4 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12006']])&lt;=1">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12006']]">
            <assert test="count(observation)=1">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12006']]">
            <assert test="@classCode='OBS'">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12006']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12006']]/value">
            <assert test="@xsi:type='CD'">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1044','1.2.643.5.1.13.2.1.1.121']">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1044' ��� '1.2.643.5.1.13.2.1.1.121'.</assert>
            <assert test="@code!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-4. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-5 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='837']])=1">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='837']]">
            <assert test="count(observation)=1">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]">
            <assert test="@classCode='OBS'">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='837']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='837']]/value">
            <assert test="@xsi:type='CD'">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="@codeSystem='1.2.643.5.1.13.13.99.2.725'">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.725'.</assert>
            <assert test="@code=['8','26']">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @code ������ '8' ��� '26'.</assert>
            <assert test="@codeSystemVersion!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-5. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-6 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='4073']])&lt;=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='4073']]">
            <assert test="count(observation)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]">
            <assert test="@classCode='OBS'">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(performer)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='4073']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]/performer">
            <assert test="count(assignedEntity)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer ������ ����� 1 ������� assignedEntity.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]/performer/assignedEntity">
            <assert test="count(id)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity ������ ����� 1 ������� id.</assert>
            <assert test="count(representedOrganization)&lt;=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity ������ ����� �� ����� 1 �������� representedOrganization.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]/performer/assignedEntity/id">
            <assert test="@nullFlavor='NI'">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/id ������ ����� �������� �������� @nullFlavor ������ 'NI'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]/performer/assignedEntity/representedOrganization">
            <assert test="@classCode='ORG'">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/representedOrganization ������ ����� �������� �������� @classCode ������ 'ORG'.</assert>
            <assert test="count(id)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/representedOrganization ������ ����� 1 ������� id.</assert>
            <assert test="count(name)=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/representedOrganization ������ ����� 1 ������� name.</assert>
            <assert test="count(addr)&lt;=1">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/representedOrganization ������ ����� �� ����� 1 �������� addr.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='4073']]/performer/assignedEntity/representedOrganization/name">
            <assert test=".!=''">�3-6. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/performer/assignedEntity/representedOrganization/name ������ ����� �� ������ ��������.</assert>
        </rule>
    </pattern>
    <!-- �3-7 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='12007']])&lt;=1">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� 1 �� ����� �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='12007']]">
            <assert test="count(observation)=1">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]">
            <assert test="@classCode='OBS'">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(text)=1">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� text.</assert>
            <assert test="count(value)=1">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='12007']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/text[@nullFlavor]">
            <assert test="@nullFlavor=['NI','UNK','ASKU']">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime ������ ����� �������� �������� @nullFlavor ������ 'NI', 'UNK' ��� 'ASKU'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='12007']]/value">
            <assert test="@xsi:type='BL'">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'BL'.</assert>
            <assert test="@value=['true','false']">�3-7. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @value ������ 'true' ��� 'false'.</assert>
        </rule>
    </pattern>
    <!-- �3-8 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='10000']])&lt;=1">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10000']]">
            <assert test="count(observation)=1">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]">
            <assert test="@classCode='OBS'">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10000']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10000']]/value">
            <assert test="@xsi:type='ST'">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
            <assert test=".!=''">�3-8. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/value ������ ����� �� ������ ��������.</assert>
        </rule>    
    </pattern>
    <!-- �3-9 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']">
            <assert test="count(entry[observation/code[@code='10001']])&lt;=2">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO'] ������ ����� �� ����� 2 ��������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry[observation/code[@code='10001']]">
            <assert test="count(observation)=1">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10001']]">
            <assert test="@classCode='OBS'">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(effectiveTime)=1">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation ������ ����� 1 ������� effectiveTime.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code[@code='10001']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10001']]/effectiveTime">
            <assert test="count(low)=1">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime ������ ����� 1 ������� low.</assert>
            <assert test="count(high)=1">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime ������ ����� 1 ������� high.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10001']]/effectiveTime/low">
            <assert test="@value!=''">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime/low ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation[code[@code='10001']]/effectiveTime/high">
            <assert test="@value!=''">�3-9. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DOCINFO']/entry/observation/effectiveTime/high ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
    </pattern>
    <!-- �3-10 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']">
            <assert test="count(entry[observation/code[@code='838']])&lt;=1">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN'] ������ ����� �� ����� 1 �������� entry.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry[observation/code[@code='838']]">
            <assert test="count(observation)=1">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]">
            <assert test="@classCode='OBS'">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code[@code='838']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation[code[@code='838']]/value">
            <assert test="@xsi:type='CD'">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �������� �������� @xsi:type ������ 'CD'.</assert>
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1005','1.2.643.5.1.13.2.1.1.641','1.2.643.5.1.13.2.1.1.718']">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1005', '1.2.643.5.1.13.2.1.1.641' ��� '1.2.643.5.1.13.2.1.1.718'.</assert>
            <assert test="@code!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-10. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='DGN']/entry/observation/value ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
    </pattern>
    <!-- �3-11 -->
    <pattern>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']">
<!-- � �� "������� �� ���������� ���������" - ��������� entry � 1 act -->
<!--
            <assert test="count(entry)&lt;=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS'] ������ ����� �� ����� 1 �������� entry.</assert>
-->
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry">
            <assert test="count(act)>=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry ������ ����� �� ����� 1 �������� act.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act">
            <assert test="@classCode='ACT'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� �������� �������� @classCode ������ 'ACT'.</assert>
            <assert test="@moodCode='EVN'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� 1 ������� code.</assert>
            <assert test="count(text)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� 1 ������� text.</assert>
            <assert test="count(effectiveTime)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� 1 ������� effectiveTime.</assert>
            <assert test="count(entryRelationship[observation/code[@code='11002']])&lt;=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� �� ����� 1 �������� entryRelationship[observation/code[@code='11002']].</assert>
            <assert test="count(entryRelationship[observation/code[@code='11003']])&lt;=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� �� ����� 1 �������� entryRelationship[observation/code[@code='11003']].</assert>
            <assert test="count(reference)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act ������ ����� 1 ������� reference.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.11.1522','1.2.643.5.1.13.2.1.1.646','1.2.643.5.1.13.13.11.1115','1.2.643.5.1.13.13.99.2.195']">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.11.1522', '1.2.643.5.1.13.2.1.1.646', '1.2.643.5.1.13.13.11.1115' ��� '1.2.643.5.1.13.13.99.2.195'.</assert>
            <assert test="@code!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code ������ ����� �� ������ �������� �������� @code.</assert>
            <assert test="@codeSystemVersion!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/code ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime">
            <assert test="@value!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/effectiveTime ������ ����� �� ������ �������� �������� @value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']]">
            <assert test="@typeCode='COMP'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']] ������ ����� �������� �������� @typeCode ������ 'COMP'.</assert>
            <assert test="count(observation)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11002']] ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]">
            <assert test="@classCode='OBS'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']] ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']] ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']] ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']] ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002'] ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002'] ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002'] ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11002'] ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value">
            <assert test="@xsi:type='ST'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11002']]/value ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']]">
            <assert test="@typeCode='COMP'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']] ������ ����� �������� �������� @typeCode ������ 'COMP'.</assert>
            <assert test="count(observation)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship[observation/code[@code='11003']] ������ ����� 1 ������� observation.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]">
            <assert test="@classCode='OBS'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']] ������ ����� �������� �������� @classCode ������ 'OBS'.</assert>
            <assert test="@moodCode='EVN'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']] ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(code)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']] ������ ����� 1 ������� code.</assert>
            <assert test="count(value)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']] ������ ����� 1 ������� value.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003']">
            <assert test="@codeSystem=['1.2.643.5.1.13.13.99.2.166','1.2.643.5.1.13.2.1.1.1504.41','1.2.643.5.1.13.13.11.1380']">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003'] ������ ����� �������� �������� @codeSystem ������ '1.2.643.5.1.13.13.99.2.166', '1.2.643.5.1.13.2.1.1.1504.41' ��� '1.2.643.5.1.13.13.11.1380'.</assert>
            <assert test="@codeSystemVersion!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003'] ������ ����� �� ������ �������� �������� @codeSystemVersion.</assert>
            <assert test="@codeSystemName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003'] ������ ����� �� ������ �������� �������� @codeSystemName.</assert>
            <assert test="@displayName!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation/code[@code='11003'] ������ ����� �� ������ �������� �������� @displayName.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value">
            <assert test="@xsi:type='ST'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/entryRelationship/observation[code[@code='11003']]/value ������ ����� �������� �������� @xsi:type ������ 'ST'.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference">
            <assert test="@typeCode='REFR'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference ������ ����� �������� �������� @typeCode ������ 'REFR'.</assert>
            <assert test="count(externalDocument)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference ������ ����� 1 ������� externalDocument.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument">
            <assert test="@classCode='DOCCLIN'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument ������ ����� �������� �������� @classCode ������ 'DOCCLIN'.</assert>
            <assert test="@moodCode='EVN'">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument ������ ����� �������� �������� @moodCode ������ 'EVN'.</assert>
            <assert test="count(id)=1">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument ������ ����� 1 ������� id.</assert>
        </rule>
        <rule context="ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id">
            <assert test="matches(@root,'^[0-2](\.([1-9][0-9]*|0))+\.100([.]([1-9][0-9]*|0))+\.51$')">�3-11. ������� ClinicalDocument/id ������ ����� ������������� ���������� �������� �������� @root, �������������� �� ������� ������������ ��������������� ����������, �.�. "OID_�����������_�����������.100.��������.�����������.51".</assert>
            <assert test="@extension!=''">�3-11. ������� ClinicalDocument/component/structuredBody/component/section[code/@code='LINKDOCS']/entry/act/reference/externalDocument/id ������ ����� �� ������ �������� �������� @extension.</assert>
        </rule>
    </pattern>
</schema>
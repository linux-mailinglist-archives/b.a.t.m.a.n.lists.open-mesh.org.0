Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3536A40B578
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Sep 2021 18:57:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E8A2E80FB1;
	Tue, 14 Sep 2021 18:57:45 +0200 (CEST)
Received: from mta-us-central-02.viasat.com (mta-us-central-02.viasat.com [8.37.103.59])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E858F803A8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 Sep 2021 18:57:42 +0200 (CEST)
Received: from pps.filterd (wdc1mta01.viasat.com [127.0.0.1])
	by wdc1mta01.viasat.com (8.16.0.43/8.16.0.43) with SMTP id 18EGqdIs032602;
	Tue, 14 Sep 2021 16:57:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=viasat.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=pp1; bh=CSNq/hT0Qwkp/se4PgA4TujDu0htu7GNt5GcEWbfYWw=;
 b=Vn6n4SMC5iY2aTEFSx4nf0p0ZpYmrsVDccq5SC+uCc7CTB6AAuj7fIaiBF7bIE7itNmw
 w9gMRTweVUJpFQbKC/AfnzSO5IK846Sij2OsoHs3K3G/JMysa7AswHwipncSKBOcv5hO
 aNNwBfa3sYN0HZ+C3ZwJ39mTnFki9Cxib1U5VEXKtbrwIinHUxnab/1/SsOfkl4e59aF
 eJigEuWSkczrx1KGCJhIYQAfpx2bBXd2kpCHIIdX5fruiqa8cPr7omoIPCjbK705pZL3
 +jgbWPG8wKLBd3ooxPa+8PpBTHVe+QBMAUNTzydmIztkw1b3WBUEEEZKaJYrROYwowVV nQ==
From: "Edmisten, Brian" <Brian.Edmisten@viasat.com>
To: Simon Wunderlich <sw@simonwunderlich.de>,
        "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: RE: Bonding Alternating
Thread-Topic: Bonding Alternating
Thread-Index: AQHXphOoP6gXJotlh0KJSfnzkSEapauh/diCgAHI05A=
Date: Tue, 14 Sep 2021 16:57:37 +0000
Message-ID: <711587381f3d46eeb01f77c95423a32b@viasat.com>
References: <8679334.VDzE56WMh6@prime>
 <20210910175954.1147.78979@diktynna.open-mesh.org> <3340507.qp3XP9fiM0@prime>
In-Reply-To: <3340507.qp3XP9fiM0@prime>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: F948F44FE22E5BB1EA8A465A124623E720671F5D34886A25422345C5D5F827762000:8
Content-Type: multipart/signed; micalg=SHA1;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_00D3_01D7A94E.EF2FCEF0"
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 7XtTvtkkL-t1he4851dX9VwIoLgMEHBJ
X-Proofpoint-GUID: 7XtTvtkkL-t1he4851dX9VwIoLgMEHBJ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-14_07:2021-09-14,2021-09-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1011 mlxlogscore=707 malwarescore=0
 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109140098
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1631638663;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CSNq/hT0Qwkp/se4PgA4TujDu0htu7GNt5GcEWbfYWw=;
	b=OOi5sP8ky6oQVRoGPv+PtpokQ7BdreuoKd6DQizeUlb7JFYs/UAU0LzjvSWEIaQPr3v5rO
	CPWuomtV04PDH+5z1WFPUVDeugq7XGeUh1m8hc3KUv2UrGSjVR2hcy3QvPj3yO8Gi34Ffw
	SUrkYybPrbmenz1DvEIcjdc9r9dK+yA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=viasat.com header.s=pp1 header.b=Vn6n4SMC;
	dmarc=pass (policy=none) header.from=viasat.com;
	spf=pass (diktynna.open-mesh.org: domain of "prvs=489110ce0d=brian.edmisten@viasat.com" designates 8.37.103.59 as permitted sender) smtp.mailfrom="prvs=489110ce0d=brian.edmisten@viasat.com"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1631638663; a=rsa-sha256;
	cv=none;
	b=mNkbsrkPNKsInFW4BEcr68XHd/IRZToqMKjkCYJXd/zkOYtc6wJpAomTQjSoj1jWWrQy/e
	lqDsrmkPEwD1w1GCUOMWqRguVXKHiz7WmLJ70YIwW5XYGJpz2JeJk3VhYOSkH1gAHaVDbL
	uepuymuc7QXcRr//UN56DTBoFTsj4lo=
Message-ID-Hash: KDQTATSVR7SNX7ETQQHNOXPJDYGB65ZH
X-Message-ID-Hash: KDQTATSVR7SNX7ETQQHNOXPJDYGB65ZH
X-MailFrom: prvs=489110ce0d=brian.edmisten@viasat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KDQTATSVR7SNX7ETQQHNOXPJDYGB65ZH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

------=_NextPart_000_00D3_01D7A94E.EF2FCEF0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Simon,

I did check again.  batctl bonding responds with enabled.  

Cheers,
Brian Edmisten

------=_NextPart_000_00D3_01D7A94E.EF2FCEF0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
VR0OBBYEFBsH5+9JSPJWkcVvR29Ihy7Bwyu0MB8GA1UdIwQYMBaAFCi8Gj/qVzdVQhZMUychdZKi
LYolMIIBHQYDVR0fBIIBFDCCARAwggEMoIIBCKCCAQSGNWh0dHA6Ly9jcmwudmlhc2F0LmNvbS9j
cmwvVmlhc2F0JTIwU0hBJTIwMiUyMENBLTYuY3JshoHKbGRhcDovLy9DTj1WaWFzYXQlMjBTSEEl
MjAyJTIwQ0EtNixDTj12Y2FzaGEyY2FwMDYsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZp
Y2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9Y29ycCxEQz12aWFzYXQsREM9Y29t
P2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRp
b25Qb2ludDCCAV0GCCsGAQUFBwEBBIIBTzCCAUswYQYIKwYBBQUHMAKGVWh0dHA6Ly9jcmwudmlh
c2F0LmNvbS9jcmwvdmNhc2hhMmNhcDA2LmhxLmNvcnAudmlhc2F0LmNvbV9WaWFzYXQlMjBTSEEl
MjAyJTIwQ0EtNi5jcnQwJgYIKwYBBQUHMAGGGmh0dHA6Ly9jcmwudmlhc2F0LmNvbS9vY3NwMIG9
BggrBgEFBQcwAoaBsGxkYXA6Ly8vQ049Vmlhc2F0JTIwU0hBJTIwMiUyMENBLTYsQ049QUlBLENO
PVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9
Y29ycCxEQz12aWFzYXQsREM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0
aWZpY2F0aW9uQXV0aG9yaXR5MAsGA1UdDwQEAwIF4DA8BgkrBgEEAYI3FQcELzAtBiUrBgEEAYI3
FQiFwrFU+p8hoYMphKH+SIKdo2+BfIfjhj2EyZRxAgFkAgF6MBMGA1UdJQQMMAoGCCsGAQUFBwME
MBsGCSsGAQQBgjcVCgQOMAwwCgYIKwYBBQUHAwQwJAYDVR0RBB0wG4EZQnJpYW4uRWRtaXN0ZW5A
dmlhc2F0LmNvbTBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0DBAIC
AIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwDQYJKoZIhvcNAQELBQADggEBAIAIqjbR9cebVJvFw6H3
Ey/MoQI3DLSf6jQyM4CtGuEfOlRJpVuNEj5gn+89zIQMk80nNDLApQh8CwwwUX9hCwnkHW61/hOn
og9CbFT98Z9shlUQLUAYumU28Mxk+TJN5uB0L0qVNwhkzeT8AvoUILufrifKe5v0RynfP2kh30mm
h7X6O0uARHXE0frQr2J3HHFXCjTOkX9R+T8Pk6WwnGNwXaeFHdxgpsW6BJAcfYZ1XZiZu/Ejgrx2
bGs+UTC7/DrCWk+Lclka5fHFn3Y2DWp8BO5imd4MsIk1z66b8jv9rdNh0om6pfdEhCBTW0/vSmak
BEGkKRMfEaI8GqXaXu0xggPnMIID4wIBATCBijBzMRMwEQYKCZImiZPyLGQBGRYDY29tMRYwFAYK
CZImiZPyLGQBGRYGdmlhc2F0MRQwEgYKCZImiZPyLGQBGRYEY29ycDESMBAGCgmSJomT8ixkARkW
AmhxMRowGAYDVQQDExFWaWFzYXQgU0hBIDIgQ0EtNgITbwAADtzJnoHDZwcIiQAAAAAO3DAJBgUr
DgMCGgUAoIICMTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA5
MTQxNjU3MzFaMCMGCSqGSIb3DQEJBDEWBBTiC7pagSQS+beM1j8nf2ostuCPcTCBkwYJKoZIhvcN
AQkPMYGFMIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUD
BAECMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMw
CwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATCBmwYJKwYBBAGCNxAEMYGNMIGKMHMxEzARBgoJkiaJ
k/IsZAEZFgNjb20xFjAUBgoJkiaJk/IsZAEZFgZ2aWFzYXQxFDASBgoJkiaJk/IsZAEZFgRjb3Jw
MRIwEAYKCZImiZPyLGQBGRYCaHExGjAYBgNVBAMTEVZpYXNhdCBTSEEgMiBDQS02AhNvAAAO3Mme
gcNnBwiJAAAAAA7cMIGdBgsqhkiG9w0BCRACCzGBjaCBijBzMRMwEQYKCZImiZPyLGQBGRYDY29t
MRYwFAYKCZImiZPyLGQBGRYGdmlhc2F0MRQwEgYKCZImiZPyLGQBGRYEY29ycDESMBAGCgmSJomT
8ixkARkWAmhxMRowGAYDVQQDExFWaWFzYXQgU0hBIDIgQ0EtNgITbwAADtzJnoHDZwcIiQAAAAAO
3DANBgkqhkiG9w0BAQEFAASCAQB+D0P89sVvK8IJmG3j21jHK4/J1IiGRgW0xuJHHorGMNs5+ubr
pxot1Cs/sniDHlUvt4RhzdrTe6pCVhRi9wkGI8wnEmEs8O+1z39LLMa9GJVKAk0pNpuXyxbGxgXD
Vr1cWyWYu+89Tiu//wn6IqtTkrbnz8bTj6zvmx8EtsTvcFtPI1mhHpz7+bcWiF8zucJWiHNSOV5R
+WNpr67TB3PKa6TILLgkauy7rJOKq7sXEmgrOxasIj5LyffzfxhCeT9lDJF2S0Bb3x/b8egMw2Hx
C59nOXZhN8gFFgttJ8/zLQOkWIk7rtYA3zo9q8q5Y3uO2jVkVyO05fkcbq0G5xuxAAAAAAAA

------=_NextPart_000_00D3_01D7A94E.EF2FCEF0--

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9A040C7CB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Sep 2021 16:59:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 293CE80E7C;
	Wed, 15 Sep 2021 16:59:07 +0200 (CEST)
Received: from mta-us-west-03.viasat.com (mta-us-west-03.viasat.com [8.37.96.211])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BC6B880A3F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Sep 2021 16:59:02 +0200 (CEST)
Received: from pps.filterd (naw06mta02.viasat.com [127.0.0.1])
	by naw06mta02.viasat.com (8.16.0.43/8.16.0.43) with SMTP id 18FErDg8001199;
	Wed, 15 Sep 2021 14:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=viasat.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=pp1; bh=3SK11mzEAPJjmMRuRIFREZsaq8UvpH0lqZv8HNsnpBs=;
 b=sX7eLRAjFOyR5qi8a1Op2j8rm0vHc7PJ/FQrxlTeapTPv+/Z1YqDAcIHKOwgvfVQSYJr
 FAd6tewagHujFmwPpdUFi5UJkeVcqEDPVkXw/wSKlId0l7qSZD5Wa/Is8CNjpTfzOe95
 f0N4viFEv0j4RqWUjAF8bLB60UXnCaaG3a7GTXi965oOiB2ir6TmkAEpyo2yb5e0YGeb
 sXEfO6dTAkWXJ/eIohKHf0jbRSxhRYUbusXqKdzqIYcmjSVq/oXJbI+Y7Q8YjeCRWCWA
 4te0paT+3A6cBZz5KVHkiXelEOC1QFkI8qhtnSMTVoVBBdCdkLYI5fpTcW0JgpQAfW8R 8Q==
From: "Edmisten, Brian" <Brian.Edmisten@viasat.com>
To: Simon Wunderlich <sw@simonwunderlich.de>,
        "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: RE: Bonding Alternating
Thread-Topic: Bonding Alternating
Thread-Index: AQHXphOoP6gXJotlh0KJSfnzkSEapauh/diCgAHI05CAAVe6AIAAGbTw
Date: Wed, 15 Sep 2021 14:58:58 +0000
Message-ID: <7e8fe0e7bf7b42baac350b20f2a0846a@viasat.com>
References: <8679334.VDzE56WMh6@prime> <3340507.qp3XP9fiM0@prime>
 <711587381f3d46eeb01f77c95423a32b@viasat.com> <2528179.d2XtbQqvsD@prime>
In-Reply-To: <2528179.d2XtbQqvsD@prime>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 2C50CD37820726CE66D7D47657601CB42A6367140F72CEC3CF06F5AB8FDCD0922000:8
Content-Type: multipart/signed; micalg=SHA1;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_00F3_01D7AA07.88A6E150"
MIME-Version: 1.0
X-Proofpoint-GUID: 26CfJ6wNGdLQCzO-cZ2o-zXyzk7iMEBo
X-Proofpoint-ORIG-GUID: 26CfJ6wNGdLQCzO-cZ2o-zXyzk7iMEBo
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-15_04:2021-09-15,2021-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 mlxlogscore=885 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109150093
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1631717943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3SK11mzEAPJjmMRuRIFREZsaq8UvpH0lqZv8HNsnpBs=;
	b=UgVzXr1NZ4PgPxi6bBh+PXOrXU54fqqsPknv8sHHzSQ9kgcEJkYjEKsyVZnbIV5d+MNEFY
	qOg5cwfHvNEj507cNnx/2VBXcKUlLo1JTxPTAzHp0z5ub1yiyH4kobfWIlZUQqGiyVNyEq
	y2rVFWLGvqhB2XoIF/lXmvpSFWd3wQg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=viasat.com header.s=pp1 header.b=sX7eLRAj;
	dmarc=pass (policy=none) header.from=viasat.com;
	spf=pass (diktynna.open-mesh.org: domain of "prvs=48926589fb=brian.edmisten@viasat.com" designates 8.37.96.211 as permitted sender) smtp.mailfrom="prvs=48926589fb=brian.edmisten@viasat.com"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1631717943; a=rsa-sha256;
	cv=none;
	b=Xc76fE1KRwJuI23nW0jyjAARjxz+P4Z7eatDfFw9+f4C8v+gkUij62OEKcvM328g2vf0UQ
	CZalumsnGxmJ60uFtJv76Svp1KAVBQz6/wcRBmQhOr16GqjTp7kp0YDatWFgxNu+gN6HQr
	QXWu6bVif9DjVbh1HHe2hejvR/nXGTM=
Message-ID-Hash: OG6OGFF3X42WAL5PVXO4TDH4C7OSWU6T
X-Message-ID-Hash: OG6OGFF3X42WAL5PVXO4TDH4C7OSWU6T
X-MailFrom: prvs=48926589fb=brian.edmisten@viasat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OG6OGFF3X42WAL5PVXO4TDH4C7OSWU6T/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

------=_NextPart_000_00F3_01D7AA07.88A6E150
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Simon,

Thank you. I appreciate you looking at this.

Regards,
Brian Edmisten

-----Original Message-----
From: Simon Wunderlich [mailto:sw@simonwunderlich.de] 
Sent: Wednesday, September 15, 2021 12:26 AM
To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
<Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating

Hi Brian,

hmm, I see. I will try to set up this scenario over the next few days and
let you know. I haven't used bonding for quite a while now, but I also don't
think that we had changes in the code which would break it.

Anyway, will test and let you know.

Cheers,
      Simon

On Tuesday, September 14, 2021 6:57:37 PM CEST Edmisten, Brian wrote:
> Simon,
> 
> I did check again.  batctl bonding responds with enabled.
> 
> Cheers,
> Brian Edmisten


------=_NextPart_000_00F3_01D7AA07.88A6E150
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
MTUxNDU4NTZaMCMGCSqGSIb3DQEJBDEWBBSuMnzEa7Gni05XH3cQJlqrR1/CWzCBkwYJKoZIhvcN
AQkPMYGFMIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUD
BAECMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMw
CwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATCBmwYJKwYBBAGCNxAEMYGNMIGKMHMxEzARBgoJkiaJ
k/IsZAEZFgNjb20xFjAUBgoJkiaJk/IsZAEZFgZ2aWFzYXQxFDASBgoJkiaJk/IsZAEZFgRjb3Jw
MRIwEAYKCZImiZPyLGQBGRYCaHExGjAYBgNVBAMTEVZpYXNhdCBTSEEgMiBDQS02AhNvAAAO3Mme
gcNnBwiJAAAAAA7cMIGdBgsqhkiG9w0BCRACCzGBjaCBijBzMRMwEQYKCZImiZPyLGQBGRYDY29t
MRYwFAYKCZImiZPyLGQBGRYGdmlhc2F0MRQwEgYKCZImiZPyLGQBGRYEY29ycDESMBAGCgmSJomT
8ixkARkWAmhxMRowGAYDVQQDExFWaWFzYXQgU0hBIDIgQ0EtNgITbwAADtzJnoHDZwcIiQAAAAAO
3DANBgkqhkiG9w0BAQEFAASCAQB5oOBz6CalK/kuujQfYkMMVRswua/eHxC6BL/6bzCO6Uffsjv0
/bTNFlhgneYCAl5DQZcALaWd3JGaJLPgVRX8OeSc1Ezf9EzrOD4HJWCYmNj7rSfYzn2+lwEYt7us
gw/un/ZT7fDQBzLahrbw/8vQNRNXsmfYV1bGYuH9OzOmcRDGYSdgoZpsscr0nlDPn/Q7LlAA23LW
soX/u7EsP0F66DEYwuj9t8b20rxUECjTFo5MWXyTk0/HSKuUOYrnPfOqkt7F8Gc8xaeUTXddO538
YHjOFijiOvTuD7R4BOm9JpvQua8PaS3LPnMlNZTK3+G7gei0lB2sV0fHS8qQ0nrwAAAAAAAA

------=_NextPart_000_00F3_01D7AA07.88A6E150--

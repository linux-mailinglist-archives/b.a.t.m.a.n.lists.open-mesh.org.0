Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 092013272CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Feb 2021 16:08:44 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C739081A3A;
	Sun, 28 Feb 2021 16:08:42 +0100 (CET)
Received: from sea.usurf.usu.edu (sea.usurf.usu.edu [204.113.92.110])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CBB74800AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Feb 2021 16:08:39 +0100 (CET)
Received: from sea.usurf.usu.edu (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 0C755AC9DC_3B83CAB;
	Sun, 28 Feb 2021 11:51:38 +0000 (GMT)
Received: from Mars.usurf.usu.edu (Mars.usurf.usu.edu [172.31.35.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "outlook.sdl.usu.edu", Issuer "InCommon RSA Server CA" (verified OK))
	by sea.usurf.usu.edu (Sophos Email Appliance) with ESMTPS id CCB4EAB304_3B83C9F;
	Sun, 28 Feb 2021 11:51:37 +0000 (GMT)
Received: from Mars.usurf.usu.edu (172.31.35.122) by Mars.usurf.usu.edu
 (172.31.35.122) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Sun, 28 Feb
 2021 08:08:37 -0700
Received: from Mars.usurf.usu.edu ([172.31.35.122]) by Mars.usurf.usu.edu
 ([172.31.35.122]) with mapi id 15.01.2106.008; Sun, 28 Feb 2021 08:08:37
 -0700
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: battle for yocto
Thread-Topic: battle for yocto
Thread-Index: AQHXDeE/u069KRoJAUuN0we4FcUG+qpuHyMAgAABoIA=
Date: Sun, 28 Feb 2021 15:08:37 +0000
Message-ID: <DFCF0D4B-8A76-4CB8-9577-620452E7F116@sdl.usu.edu>
References: <5849548.csWtZluKKt@sven-edge>
In-Reply-To: <5849548.csWtZluKKt@sven-edge>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
Content-Type: multipart/signed;
	boundary="Apple-Mail-D357E715-8B35-4ECD-BEAC-A1872CAFAE08";
	protocol="application/pkcs7-signature"; micalg=sha-256
MIME-Version: 1.0
X-SASI-RCODE: 200
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1614524920; a=rsa-sha256;
	cv=none;
	b=TK4eal0geeQOt2+sAzoTDiEK5Eb8qVBkwZmWtH+xgS+yMql5FPR4rbQS3Fj2TQmJsa1B31
	Dj3IAKhiA5sVwHcDVBEUuLUOrQ6jZT6GT27yrvhXUj+u2b6H0U2JHoaJITptcw9ODEZvTE
	pBKNWxjJlSQzXpyaDEJ+JZDC+kACBWA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of Jonathan.Haws@sdl.usu.edu designates 204.113.92.110 as permitted sender) smtp.mailfrom=Jonathan.Haws@sdl.usu.edu
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1614524920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YyQYFabX/XfRvjXkPcQWMPQdgWLUuq+w2vQL5YNAyC4=;
	b=rTAbGmcpwBXq4kq6o2ygIB7mGyi96ef/Mz0LGEuJYnMOW62aulTY73laKcLcVboXSfRy+r
	sN34najJJM4kRVqdMf6fnnepHOj/IssLq61qtETxECQzRDz+4HAKtXBD8uEs9zxo7JkKmK
	H2GoGkLdxOClGrOD3ccGrkeLuZtBAf4=
Message-ID-Hash: CZVYRBMGJYLE47LCYOFVIFOJTC62WRKE
X-Message-ID-Hash: CZVYRBMGJYLE47LCYOFVIFOJTC62WRKE
X-MailFrom: Jonathan.Haws@sdl.usu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "kamalp@acm.org" <kamalp@acm.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CZVYRBMGJYLE47LCYOFVIFOJTC62WRKE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--Apple-Mail-D357E715-8B35-4ECD-BEAC-A1872CAFAE08
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: base64

DQo+IE9uIEZlYiAyOCwgMjAyMSwgYXQgODowMyBBTSwgU3ZlbiBFY2tlbG1hbm4gPHN2ZW5AbmFy
ZmF0aW9uLm9yZz4gd3JvdGU6DQo+IA0KPiDvu79PbiBTdW5kYXksIDI4IEZlYnJ1YXJ5IDIwMjEg
MTQ6MTY6MjAgQ0VUIEthbWFsIFIuIFByYXNhZCB3cm90ZToNCj4+IGNhbiBzb21lb25lIHBvaW50
IG1lIHRvIHNvbWUgaW5mbyBvbiAgaG93IHRvIHBsdWcgaW4gYmF0Y3RsIGludG8gYQ0KPj4geW9j
dG8gYnVpbGQ/IHRoZSBrZXJuZWwgcHJvdmlkZWQgYnkgcmFzcGJlcnJ5IHBpIG9zIGFscmVhZHkg
Y29udGFpbnMNCj4+IGJhdG1hbi1hZHYga2VybmVsIG1vZHVsZSBidXQgbm90IGJhdGN0bC4NCj4g
DQo+IFlvdSBoYXZlIHRvIHdyaXRlIGFuIHJlY2lwZS4gU29tZXRoaW5nIGxpa2UgDQo+IGh0dHBz
Oi8vZ2l0aHViLmNvbS9qaGF3czE5ODIvbWV0YS1iYXRtYW4gLSBqdXN0IHdpdGggYSBtb3JlIHJl
Y2VudCB2ZXJzaW9uLiANCj4gQnV0IEkgYW0gZ3Vlc3NpbmcgdGhhdCBKb25hdGhhbiBIYXdzIHdp
bGwgYWNjZXB0IHB1bGwgcmVxdWVzdHMgaW4gY2FzZSB5b3UgDQo+IHNwZW5kIHRoZSB0aW1lIGlu
dGVncmF0aW5nIHRoZSBuZXdlc3QgdmVyc2lvbi4NCj4gDQoNCkkgd2FzIGdvaW5nIHRvIG1lbnRp
b24gZXhhY3RseSB0aGUgc2FtZSB0aGluZyBTdmVuIGRpZC4gIFdlIGhhdmVuJ3Qga2VwdCB0aG9z
ZSByZWNpcGVzIHVwIHRvIGRhdGUgYmVjYXVzZSB3ZSBoYXZlIG1vdmVkIGF3YXkgZnJvbSBCYXRt
YW4gaW4gb3VyIHNldHVwc2FuZCBJIGhhdmVuJ3QgYmVlbiBhd2FyZSBvZiBhbnlvbmUgZWxzZSB1
c2luZyB0aGVtLCBidXQgSSB3aWxsIGJlIGhhcHB5IHRvIHRha2UgUFJzIGZvciB1cGRhdGVzIQ==

--Apple-Mail-D357E715-8B35-4ECD-BEAC-A1872CAFAE08
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCBeow
ggXmMIIEzqADAgECAhBurESrsxWsiC0WSy8Wf1DgMA0GCSqGSIb3DQEBCwUAMIGJMQswCQYDVQQG
EwJVUzELMAkGA1UECBMCTUkxEjAQBgNVBAcTCUFubiBBcmJvcjESMBAGA1UEChMJSW50ZXJuZXQy
MREwDwYDVQQLEwhJbkNvbW1vbjEyMDAGA1UEAxMpSW5Db21tb24gUlNBIFN0YW5kYXJkIEFzc3Vy
YW5jZSBDbGllbnQgQ0EwHhcNMjAwNDA5MDAwMDAwWhcNMjMwNDA5MjM1OTU5WjCB2DEOMAwGA1UE
ERMFODQzMjIxGzAZBgNVBAsTElNwYWNlIER5bmFtaWNzIExhYjEeMBwGA1UEChMVVXRhaCBTdGF0
ZSBVbml2ZXJzaXR5MRswGQYDVQQJExI0NDEwIE9sZCBNYWluIEhpbGwxDTALBgNVBAgTBFV0YWgx
DjAMBgNVBAcTBUxvZ2FuMQswCQYDVQQGEwJVUzEWMBQGA1UEAxMNSm9uYXRoYW4gSGF3czEoMCYG
CSqGSIb3DQEJARYZam9uYXRoYW4uaGF3c0BzZGwudXN1LmVkdTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAPRBBRZuUvVx7D/Li7G1cVY/A1Gn2NRI+3Aw0xLD1gLsJgZBLOd1cDLyB8AQ
xBlQGYxWu09UUSZqpWtu/5YHFuWpIgyMzlQcXUZqmB0giP+4DVhGU/nzJi+wYpqEn1wR40Anffnb
w2+rSdlrAdnO3XhMfQvBAXB7nEP5PKjWrA3iqIO4tFP+5lqU0Uo9BGnGfpVKme41xsB9BhHb39ys
mLgBbALxj3XaKOAEVFnyQANoB3eP587ZBoCVjhh8dy0yBbHUB6C/VEu77gjRLO6W/wss5OMFmYMT
R7nAH3Hhv460NQMWprV3g3+PCuumeIHmFhfYHsaed0fZG2swahvYUYcCAwEAAaOCAfcwggHzMB8G
A1UdIwQYMBaAFH3ucdAf66lhbY9mhK0PKwfiMdu8MB0GA1UdDgQWBBT8H4kK1qBMWmn5hsd/7KX1
eRR5ljAOBgNVHQ8BAf8EBAMCBaAwDAYDVR0TAQH/BAIwADAdBgNVHSUEFjAUBggrBgEFBQcDBAYI
KwYBBQUHAwIwagYDVR0gBGMwYTBfBg0rBgEEAa4jAQQDAwABME4wTAYIKwYBBQUHAgEWQGh0dHBz
Oi8vd3d3LmluY29tbW9uLm9yZy9jZXJ0L3JlcG9zaXRvcnkvY3BzX3N0YW5kYXJkX2NsaWVudC5w
ZGYwVQYDVR0fBE4wTDBKoEigRoZEaHR0cDovL2NybC5pbmNvbW1vbi1yc2Eub3JnL0luQ29tbW9u
UlNBU3RhbmRhcmRBc3N1cmFuY2VDbGllbnRDQS5jcmwwgYoGCCsGAQUFBwEBBH4wfDBQBggrBgEF
BQcwAoZEaHR0cDovL2NydC5pbmNvbW1vbi1yc2Eub3JnL0luQ29tbW9uUlNBU3RhbmRhcmRBc3N1
cmFuY2VDbGllbnRDQS5jcnQwKAYIKwYBBQUHMAGGHGh0dHA6Ly9vY3NwLmluY29tbW9uLXJzYS5v
cmcwJAYDVR0RBB0wG4EZam9uYXRoYW4uaGF3c0BzZGwudXN1LmVkdTANBgkqhkiG9w0BAQsFAAOC
AQEACT7KlGM9Pu1i04+gkq/8r+NYkapDv2ZL9MkL+X6TmNWRWGIdTDzj2iATQkx6BSkxAVswOFkz
wn3c4rl0vyCMMG1lhLr5s4On1KkZED6wXYOZ26CM6S0DjDpPVJlKiXNsQumAM1/n3CrO5d3kIqqO
E0KrzRsOQTyR+YJ0z6BihQv2e+MbPNlcJI3ltL0UghbbKBDigcU7YjNzIqObfvkmiKsxmDyA2RSh
W113165KMOM8FdgF5/AYN0/79WC4ooknuPKoNhGux89CIbkFjCRL7H/P7mb2pkRimJd97cx0hv9t
VO0jfeWZ+kZaGrbnNj9x9ZQ7Kc7E0WIdmLQxibh0yDGCA50wggOZAgEBMIGeMIGJMQswCQYDVQQG
EwJVUzELMAkGA1UECBMCTUkxEjAQBgNVBAcTCUFubiBBcmJvcjESMBAGA1UEChMJSW50ZXJuZXQy
MREwDwYDVQQLEwhJbkNvbW1vbjEyMDAGA1UEAxMpSW5Db21tb24gUlNBIFN0YW5kYXJkIEFzc3Vy
YW5jZSBDbGllbnQgQ0ECEG6sRKuzFayILRZLLxZ/UOAwDQYJYIZIAWUDBAIBBQCgggHPMBgGCSqG
SIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDIyODE1MDgzN1owLwYJKoZI
hvcNAQkEMSIEIOav5H3Wchux0hewkp3V+2+XbHmUqbEB8XLsBmzSOLKVMIGvBgkrBgEEAYI3EAQx
gaEwgZ4wgYkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJNSTESMBAGA1UEBxMJQW5uIEFyYm9yMRIw
EAYDVQQKEwlJbnRlcm5ldDIxETAPBgNVBAsTCEluQ29tbW9uMTIwMAYDVQQDEylJbkNvbW1vbiBS
U0EgU3RhbmRhcmQgQXNzdXJhbmNlIENsaWVudCBDQQIQbqxEq7MVrIgtFksvFn9Q4DCBsQYLKoZI
hvcNAQkQAgsxgaGggZ4wgYkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJNSTESMBAGA1UEBxMJQW5u
IEFyYm9yMRIwEAYDVQQKEwlJbnRlcm5ldDIxETAPBgNVBAsTCEluQ29tbW9uMTIwMAYDVQQDEylJ
bkNvbW1vbiBSU0EgU3RhbmRhcmQgQXNzdXJhbmNlIENsaWVudCBDQQIQbqxEq7MVrIgtFksvFn9Q
4DANBgkqhkiG9w0BAQsFAASCAQAK+PvREIlI+BysuR5pHMTPdle55HIVcGpfVewvD62lwEPibeW5
U69640gAdm0D/4JkMPyYFmfSugWstPWU45ZFCJBQFTnNCYkwyKvjlcnruSuOvO69XgEpCnXPl8cz
msi4+0Hm0UIa1rpujcb9/vj6h+KKeVjRAusPUMj5526IR571FoQZAAusQ1GUVXVlO6lgJfDFlXQu
bd7+ACCjOujiYUgwCrmmwKgpHrLSyDSsiC3zSiqwAFGv5RHaRCuNPJL5IBHLErbqpod6f51lgoDc
7AMaEju2UFRs6qizu70IeaHciUASm+2ba+QKi42DNgboG3DAGudOyebQQ770PgOXAAAAAAAA

--Apple-Mail-D357E715-8B35-4ECD-BEAC-A1872CAFAE08--

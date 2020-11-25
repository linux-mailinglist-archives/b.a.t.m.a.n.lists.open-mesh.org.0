Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C75062C503E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 09:23:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5913781A3E;
	Thu, 26 Nov 2020 09:23:06 +0100 (CET)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2128.outbound.protection.outlook.com [40.107.22.128])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C055680244
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 00:14:36 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfC+gIxRieduQAhvpd18o2H3WEivk94PTB2rfVUGQQtXAaC2lWX0Jx5rKVZOevBw0QBSdR5WxDUX+unXl4b5qNNSr/v/ZvM9NCC3d9+AYoXu+WLQf7i8Sp4roT3OtjqGYZ/B2J09SXTXupzzwsIdRXMNcA9xA9tLTVWnrjMveHt+4BMg/e9RYpTMKBrejs+8Z7EgKqDfzS5+nSqM1UtFnmBsDBREsBnXIeDAqscnSJ+lACv7eTeQ9JpBQKz/TTESmhwyUq/rXs3+cmmGqlhRhJjqM9VntYCaPxjGHtSo+dmAYg5rPO4WsTaBEk/eAO8JkKRFfCN/w8681AGOHDkfGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7iQc5+0ws1Q/wG9D8W3pJKAqxvRkq1QAXQNjTbOcGc=;
 b=HAM7oYXmdMB+q2UF67zMtrI8PLYk2tT+hR/WmXIJSpBCtkEUfNo1kjK+EvSaB0m8Mo30MCgLtvAkc5bUoaycRFyMxBlSX+PmaLh9q+Y1udD/IEYcgOmBMkPYkkl0pMyHzaurmDueC7tKAabcQYmuIAh0XisG6KkqyMfpfwtma/snNRNeb0bnGLfE7FggIBwbLOCXP81dMIFQMSeN2q7MWQ93MrQOg3HvnugDcunFpe1X0essdPS+Su1G/7foKsQ4tdwsljgX1yh78sXS/fMOxFm6fNfhL1BOI6borrTLmhMkM9NvmBmeuC/0LpfLFfETy+mwcrN4qc59OLOIYd4zpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exaring.de; dmarc=pass action=none header.from=exaring.de;
 dkim=pass header.d=exaring.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Exaring.onmicrosoft.com; s=selector2-Exaring-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7iQc5+0ws1Q/wG9D8W3pJKAqxvRkq1QAXQNjTbOcGc=;
 b=arDQJHCHuJglliVGMSntfIfl6+JuHkL+EG5WFtR478afSmvRbFORRU7xH1GQlEbCkJFLlWri2rIp5bWMt+5bspt/MAxjnHmrVrT6LUuMHAKTQVH5XxkL97V9oc+P9QbrNbPFvv9qhB9gxS+pJ9t3eKA1vnZeI+AjGInP5tI8ES0=
Received: from AM4P190MB0036.EURP190.PROD.OUTLOOK.COM (2603:10a6:200:5e::19)
 by AM0P190MB0625.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:199::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Wed, 25 Nov
 2020 23:14:35 +0000
Received: from AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
 ([fe80::909e:4696:4a97:fec4]) by AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
 ([fe80::909e:4696:4a97:fec4%9]) with mapi id 15.20.3589.032; Wed, 25 Nov 2020
 23:14:35 +0000
From: Annika Wickert <annika.wickert@exaring.de>
To: Sven Eckelmann <sven@narfation.org>, "b.a.t.m.a.n@lists.open-mesh.org"
	<b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [RFC PATCH] batman-adv: Reserve needed_headroom for fragments
Thread-Topic: [RFC PATCH] batman-adv: Reserve needed_headroom for fragments
Thread-Index: AQHWwyX/JTPUwjaqYkCnrWlqcoT/1qnZi+sA
Date: Wed, 25 Nov 2020 23:14:35 +0000
Message-ID: <16FAA2FE-92FA-421E-9134-27AECE426F55@exaring.de>
References: <20201125122438.955972-1-sven@narfation.org>
In-Reply-To: <20201125122438.955972-1-sven@narfation.org>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: narfation.org; dkim=none (message not signed)
 header.d=none;narfation.org; dmarc=none action=none header.from=exaring.de;
x-originating-ip: [2001:678:e68:108:bdd2:f2fe:c9c2:42a8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5b93a99-dfc7-4d58-22ab-08d89197dfdd
x-ms-traffictypediagnostic: AM0P190MB0625:
x-microsoft-antispam-prvs: 
 <AM0P190MB062599014723E801225D88A3E2FA0@AM0P190MB0625.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Kz80x4dCIZGPMs66wR1N8muh30EqiqNET+4plrv1f7LD/iaZigKZka2/FO2EC6vMBTm7ey+TQiUpHL8KZ68zZxKW68EfV7Ir0J46fAL0G/1B7/paxxcpspUL2rpUAf0H/Of0WiDSUK9yxCUxYt+JQRklNc5UigdUWd7hZlEGoeM2dtjx1xP9P6pJEFG9TY0p+krFNgjQbaJ7I6Rtp92RO7Mh1hDRXywNJcdEpjsYCwSH3MkuONPzV3cL/8WpILYrVop03vrHi9mKq2GpH0009SvJW/mImq6m3DD3ozHZ2t/F9/sBHIxW1o4Su8MiI3Xod/QtV2D1whPDXE2a5ap7dMgkoVQPgA2EBBaLnDRl3is5kAA4+CgUPNpW9G3Op39TiBIQLNqu+n7LtBVK5bFPrw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4P190MB0036.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(376002)(346002)(136003)(366004)(39850400004)(396003)(5660300002)(2616005)(966005)(66946007)(66476007)(66446008)(64756008)(66556008)(8676002)(6506007)(71200400001)(36756003)(6512007)(86362001)(44832011)(8936002)(478600001)(6486002)(2906002)(186003)(110136005)(83380400001)(33656002)(316002)(76116006)(91956017);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
	=?utf-8?B?QkNRZXZOVFhDMmhyMDBJZHJCbHd6dldtMGdRd0JyZUR2M1VaK2FCN2ZaQlhs?=
 =?utf-8?B?THJTbWRNeEpPSWgrVFVSZFU3NEFMc1MzVUpYa0VuOE5zMnoxU2FCaWdVV29q?=
 =?utf-8?B?eEEwU3h6bVdoNFNXRzVzbk5PTnZDYUo5N3hiY0l6N3FyZ1RKaFdBVGk1cEhQ?=
 =?utf-8?B?a0hpR29mOGVVTkpFWjNMc1l5Qm1VWHNpcmdYdEp4V2FCUnM2eEhOZ1JVZVM0?=
 =?utf-8?B?TC9kQ1JKczFmRTgxSU5oRTAvTWx0blUybUhXbWJEazNpRGtJZVFmVU50VVU4?=
 =?utf-8?B?b0RRdzlyU21WRXlKSlg2QkwvL3RUMkpMYUl0K2U3bUs0Z3NWMHdncEk4ekd5?=
 =?utf-8?B?RCsza3BlSFFiRVZxZ0tNMGVET1hTMnpwNVp3RGUzcXVKTHlSQW1jTkpLNmVx?=
 =?utf-8?B?S3JNR3NLTnhidlMwQkxSUTJYWldjSEg2eTRXdWFhTXJDUkExcUhVcU12UTUz?=
 =?utf-8?B?SmtiVHBRVk85U0JwSkFnTWZCWVRORjBPQk90c2pjMWJqaXNOUi9NbVNPay81?=
 =?utf-8?B?eXk4L1dFdDM5MndWUHUzRjhGMnRKcVlPdGoyUkk1VUM4RjFlNTc3UktsUUNy?=
 =?utf-8?B?QUdqZUVHaVArYXRkUTl6UjlPTUdGNHV0RVE3T2xRZ0ZxR3B5MUJubG1Gb2Ra?=
 =?utf-8?B?bVRCOUR5YWxpUkRiZUU5S2J6OUE1anR4MDJ1c1IvY2NaN3dnVVB6N1ozUnQ2?=
 =?utf-8?B?MWpyUjJQS2p0Y053ZmQ4ckwxMHJ3UGg5eWw0UWo4UGNqa2NBTzhhdzQ2QXdO?=
 =?utf-8?B?clkvdlpZLzJkZTVIalF6dklQUE9wRVlpQVh5QXp4aGc3T3BVQXhVVXhGenM2?=
 =?utf-8?B?cnBUTE1rTm1aVnlRY0Y5citPcFYvZVZWWXhOZ3dlbCtmRjRrZEFNY2J2TFVl?=
 =?utf-8?B?THNiL3BDdlB5VFV2SnVsTDAzQWZKelgxNC9SMUcwSEFJaHVWRFRScU9qWHNj?=
 =?utf-8?B?UVpxbEw2bmt5STFnNEowT2MzazJ6VTduMSsvTjlQVVV1bFl1RUw4aDFKbE1T?=
 =?utf-8?B?cUZHbkFZc2c4U3VsVmxpOENEMTArWHZ3SGxKNGRzZURuaTVMRkNpclFYZita?=
 =?utf-8?B?anp6MmRFTXpuZnZaaTlpM1pMZGV6QzJ4cHB2VVluUWdudTMyMG1oYUxqU3Nh?=
 =?utf-8?B?LytLN0JwYjRZVjltZDZydE9kUVorUHdITWFZUE5BaVFwVCsvNXZqTldTSm8y?=
 =?utf-8?B?SDFLZmpzZXloc3ZFeUxZcllMNFBWa2pER1YvNytyY2NSSW14bDRzTFJvUjRZ?=
 =?utf-8?B?b0xQSGhxRUpDbFh1TWVicU1Uekt3WFhpVndXczh2U0JHMlBJUT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <D13721718BE94C4F82CC29BC1301A031@EURP190.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: exaring.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b93a99-dfc7-4d58-22ab-08d89197dfdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2020 23:14:35.3556
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37f2d5fb-1abb-4498-b725-9a67ff628e81
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Db2Ya0TgJR9lvhyVOPWPJ8huFy19OBVzrGdnlqAF0X6QmJZQriBcsuQOSm2dI3ZDBx0a1naCYZO4q/Y2eZPJ5IuMy99dNsuoTyzp11zNktI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P190MB0625
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606346077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=G7iQc5+0ws1Q/wG9D8W3pJKAqxvRkq1QAXQNjTbOcGc=;
	b=YI87Ckp8TjNOYsFpw1BtzGAndXioD4opY8TOYXdsIHEnIi4/F6man6av8XtOh0gaFOFuP2
	Pr7wq8771TVfmgjwhSASsKKN5VuLPql7aQUxAyDTmuBE2j1DKvb2MqcM1eqxlopc4ANTjy
	d3sWSkNh5KbVSADMuQkz0sH0RDvjARU=
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1606346077; a=rsa-sha256;
	cv=pass;
	b=bBkQHZ/489s/avWeNlavtwy7UWfCdWblMpXZncfbTQIXBJM34Aaqwmqd9iPI+NnXat4Fvk
	ozCixd8KbROsOli3ShX1+wIDJWxt1uxU7fCNeS8xrcNTJKk/Iy/ob6s50I03+vWPyz99J8
	/wLNujEUQq+ApyENW5rCt8R+QkLFMhI=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=Exaring.onmicrosoft.com header.s=selector2-Exaring-onmicrosoft-com header.b=arDQJHCH;
	spf=neutral (diktynna.open-mesh.org: 40.107.22.128 is neither permitted nor denied by domain of annika.wickert@exaring.de) smtp.mailfrom=annika.wickert@exaring.de;
	arc=pass (microsoft.com:s=arcselector9901:i=1)
X-MailFrom: annika.wickert@exaring.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: GPTZNU2MHIQOIPRT4Z2AMVEXNYB2SILZ
X-Message-ID-Hash: GPTZNU2MHIQOIPRT4Z2AMVEXNYB2SILZ
X-Mailman-Approved-At: Thu, 26 Nov 2020 08:22:59 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GPTZNU2MHIQOIPRT4Z2AMVEXNYB2SILZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

SGksDQoNCkkgdHJpZWQgdGhlIHBhdGNoIGluIHByb2R1Y3Rpb24gb24gb3VyIGdhdGV3YXkgYXMg
b3VyIHByb2JsZW0gaXMgcmF0aGVyIHNpZ25pZmljYW50LiBJIGRvbid0IHNlZSBhbiBpbXByb3Zl
bWVudCBpbiB0aGUgcHNrYl9leHBhbmRfaGVhZCgpIGJlaGF2aW91ci4gKEZsYW1lZ3JhcGgg77u/
aHR0cHM6Ly9jbG91ZC5hd2xueC5zcGFjZS9vd25jbG91ZC9zLzN3dG9ha2M0bXpGUVNHcykNCg0K
SSB0cmllZCB0byBkZWJ1ZyBldmVuIGZ1cnRoZXIgYW5kIGFkZGVkIHNvbWUgZGVidWdnaW5nIHBv
aW50cyBpbiBicl9pZi5jIGFuZCB2eGxhbi5jDQoNClRoaXMgaXMgd2hhdCBJIGdldCBmcm9tIHRo
ZSBicmlkZ2Ugd2hlbiBiYXQwIGlzIGVuc2xhdmVkIHdpdGggdGhlIHZ4bGFuIGludGVyZmFjZSBh
cyBtZW1iZXIgb2YgYmF0bWFuICggaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0
ZXN0L3NvdXJjZS9uZXQvYnJpZGdlL2JyX2lmLmMjTDMxMSApDQpbICAgMzYuOTU5NTQ3XSBCcmlk
Z2UgZmlyZXdhbGxpbmcgcmVnaXN0ZXJlZA0KWyAgNTIyLjIyMTc2N10gU0tCIEJyaWRnZSBicl9p
Zi5jOiBtYXhfaGVhZHJvb20gMA0KWyAgNTIyLjIyMTc4MV0gU0tCIEJyaWRnZSBicl9pZi5jOiBu
ZXdfaHIgMA0KWyAgNjI3LjE4NjEyOV0gU0tCIEJyaWRnZSBicl9pZi5jOiBtYXhfaGVhZHJvb20g
MA0KWyAgNjI3LjE4NjEzOV0gU0tCIEJyaWRnZSBicl9pZi5jOiBuZXdfaHIgMA0KWyAgNjI3LjYx
NjY1MF0gU0tCIEJyaWRnZSBicl9pZi5jOiBuZXdfaHIgMTAyDQoNCkFsc28gQkFUTUFOIHJlcG9y
dHMgaXRzZWxmIHdoZW4gaW5pdGlhbGl6ZWQgYW5kIHNlZW1zIG5vdCB0byBwcm9wYWdhdGUgc3R1
ZmYgdXAgdGhlIHN0YWNrIG9uIGNoYW5nZT86IChodHRwczovL2dpdGh1Yi5jb20vb3Blbi1tZXNo
LW1pcnJvci9iYXRtYW4tYWR2L2Jsb2IvbWFzdGVyL25ldC9iYXRtYW4tYWR2L2hhcmQtaW50ZXJm
YWNlLmMjTDU1NSAgKQ0KWyAzMzUwLjIxMjA5NF0gU0tCIGhhcmQtaW50ZXJmYWNlLmg6IHNvZnRf
aWZhY2UtPm5lZWRlZF90YWlscm9vbSkgMA0KWzMzNTAuMjEyMTA1XSBTS0IgaGFyZC1pbnRlcmZh
Y2UuaDogc29mdF9pZmFjZS0+bmVlZGVkX2hlYWRyb29tKSAzNTgNClsgMzM1MC4yMTIxMTZdIFNL
QiBoYXJkLWludGVyZmFjZS5oOiBsb3dlcl9oZWFkcm9vbSA3MA0KWyAzMzUwLjIxMjEyNl0gU0tC
IGhhcmQtaW50ZXJmYWNlLmg6IG5lZWRlZF9oZWFkcm9vbSAxMDINCg0KQWxzbyBhZGRlZCBzb21l
IGRlYnVnZ2luZyB0byBGcmFnbWVudGF0aW9uLmMgaW4gQkFUTUFOIGFmdGVyIHRoZSBwYXRjaDog
DQpOb3YgMjUgMTc6NDg6MjYgcmFzcGktMWdiLmF3bG54LnNwYWNlIGtlcm5lbDogU0tCIEZyYWdt
ZW50YXRpb24uYzogbGxfcmVzZXJ2ZWQgOTYNCk5vdiAyNSAxNzo0ODoyNiByYXNwaS0xZ2IuYXds
bnguc3BhY2Uga2VybmVsOiBTS0IgRnJhZ21lbnRhdGlvbi5jOiBza2ItPmxlbiA3NjINCk5vdiAy
NSAxNzo0ODoyNiByYXNwaS0xZ2IuYXdsbnguc3BhY2Uga2VybmVsOiBTS0IgRnJhZ21lbnRhdGlv
bi5jOiBoZWFkZXJfc2l6ZSAyMA0KTm92IDI1IDE3OjQ4OjI2IHJhc3BpLTFnYi5hd2xueC5zcGFj
ZSBrZXJuZWw6IFNLQiBGcmFnbWVudGF0aW9uLmM6IGZyYWdtZW50X3NpemUgNzYyDQpOb3YgMjUg
MTc6NDg6MjYgcmFzcGktMWdiLmF3bG54LnNwYWNlIGtlcm5lbDogU0tCIEZyYWdtZW50YXRpb24u
YzogbGxfcmVzZXJ2ZWQgOTYNCg0KQXQgdGhlIHNhbWUgdGltZSB0aGUgVlhMQU4gaW50ZXJmYWNl
IHdoaWNoIGlzIHRyYW5zcG9ydGVkIG92ZXIgV2lyZWd1YXJkIHJlcG9ydHMgdGhpcyAoaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL25ldC92eGxh
bi5jI0wyMzUyICkNClsgIDU2Ny41MTU3NzhdIFNLQiBWWExBTiB2eGxhbi5jOiBtaW5faGVhZHJv
b20gMjAwDQpbICA1NjcuNTE1NzkyXSBTS0IgVlhMQU4gdnhsYW4uYzogZHN0LT5oZWFkZXJfbGVu
IDANClsgIDU2Ny41MTU4MDVdIFNLQiBWWExBTiB2eGxhbi5jOiBWWExBTl9ITEVOIDE2DQpbICA1
NjcuNTE1ODE5XSBTS0IgVlhMQU4gdnhsYW4uYzogTExfUkVTRVJWRURfU1BBQ0UoZHN0LT5kZXYp
IDE0NA0KWyAgNTY3LjUxNTgzMV0gU0tCIFZYTEFOIHZ4bGFuLmM6IGlwaGRyX2xlbiA0MA0KDQpT
byBpbiBteSBvcGluaW9uIHRoZSBuZWVkZWQgaGVhZHJvb20gcmVwb3J0ZWQgYnkgYmF0bWFuIGlz
IHdyb25nIGJ5IG1heWJlIDIwMCA/IEFzIHRoZSBtaW5faGVhZHJvb20gb2YgdnhsYW4gc2VlbXMg
dG8gYmUgMjAwIGJ1dCBCQVRNQU4gcmVwb3J0cyAxMDIgdXAgdGhlIHN0YWNrIHRvIHRoZSBicmlk
Z2UuDQoNCklmIHlvdSBuZWVkIGFueSBtb3JlIGlucHV0IHdlIGFyZSBoYXBweSB0byBoZWxwLiBC
ZWNhdXNlIHRoZSBhY3R1YWwgcGVyZm9ybWFuY2Ugd2l0aCBydW5uaW5nIGJhdG1hbiBvdmVyIHZ4
bGFuIGlzIHJlYWxseSBiYWQuIA0KV2UgaGF2ZSBzb21lIGZpZ3VyZXMgaGVyZTogaHR0cHM6Ly9n
aXN0LmdpdGh1Yi5jb20vZmFkZW5iLzk3MDUwNTljZjE3ZWRkZjYwZTc0NGU5NWJmOTI2ZjA1DQoN
ClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwIQ0KQW5uaWthDQoNCi0tDQpBbm5pa2EgV2lja2VydCAN
CiANCkVYQVJJTkcgQUcNCg0KIA0KIA0KDQrvu79PbiAyNS4xMS4yMCwgMTM6MjUsICJTdmVuIEVj
a2VsbWFubiIgPHN2ZW5AbmFyZmF0aW9uLm9yZz4gd3JvdGU6DQoNCiAgICBUT0RPOiB3cml0ZSBz
b21ldGhpbmcgYWJvdXQgdGhlIGV4dHJhIGhlYWRyb29tIHZ4bGFuIG5lZWRzIGFuZCB3aHkgaXQN
CiAgICByZWR1Y2VkIHRoZSBwZXJmb3JtYW5jZSBzaWduaWZpY2FudGx5IHdoZW4gb25seSB1c2lu
ZyB0aGUgbWluaW11bSByZXNlcnZlZA0KICAgIHNwYWNlLg0KDQogICAgQ2M6IEFubmlrYSBXaWNr
ZXJ0IDxhbm5pa2Eud2lja2VydEBleGFyaW5nLmRlPg0KICAgIFNpZ25lZC1vZmYtYnk6IFN2ZW4g
RWNrZWxtYW5uIDxzdmVuQG5hcmZhdGlvbi5vcmc+DQogICAgLS0tDQogICAgIG5ldC9iYXRtYW4t
YWR2L2ZyYWdtZW50YXRpb24uYyB8IDE0ICsrKysrKysrKy0tLS0tDQogICAgIDEgZmlsZSBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQoNCiAgICBkaWZmIC0tZ2l0IGEv
bmV0L2JhdG1hbi1hZHYvZnJhZ21lbnRhdGlvbi5jIGIvbmV0L2JhdG1hbi1hZHYvZnJhZ21lbnRh
dGlvbi5jDQogICAgaW5kZXggOTcyMjBlMTkuLjUwMzliMjAxIDEwMDY0NA0KICAgIC0tLSBhL25l
dC9iYXRtYW4tYWR2L2ZyYWdtZW50YXRpb24uYw0KICAgICsrKyBiL25ldC9iYXRtYW4tYWR2L2Zy
YWdtZW50YXRpb24uYw0KICAgIEBAIC0zOTEsNiArMzkxLDcgQEAgYm9vbCBiYXRhZHZfZnJhZ19z
a2JfZndkKHN0cnVjdCBza19idWZmICpza2IsDQoNCiAgICAgLyoqDQogICAgICAqIGJhdGFkdl9m
cmFnX2NyZWF0ZSgpIC0gY3JlYXRlIGEgZnJhZ21lbnQgZnJvbSBza2INCiAgICArICogQG5ldF9k
ZXY6IG91dGdvaW5nIGRldmljZSBmb3IgZnJhZ21lbnQNCiAgICAgICogQHNrYjogc2tiIHRvIGNy
ZWF0ZSBmcmFnbWVudCBmcm9tDQogICAgICAqIEBmcmFnX2hlYWQ6IGhlYWRlciB0byB1c2UgaW4g
bmV3IGZyYWdtZW50DQogICAgICAqIEBmcmFnbWVudF9zaXplOiBzaXplIG9mIG5ldyBmcmFnbWVu
dA0KICAgIEBAIC00MDEsMjIgKzQwMiwyNCBAQCBib29sIGJhdGFkdl9mcmFnX3NrYl9md2Qoc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwNCiAgICAgICoNCiAgICAgICogUmV0dXJuOiB0aGUgbmV3IGZyYWdt
ZW50LCBOVUxMIG9uIGVycm9yLg0KICAgICAgKi8NCiAgICAtc3RhdGljIHN0cnVjdCBza19idWZm
ICpiYXRhZHZfZnJhZ19jcmVhdGUoc3RydWN0IHNrX2J1ZmYgKnNrYiwNCiAgICArc3RhdGljIHN0
cnVjdCBza19idWZmICpiYXRhZHZfZnJhZ19jcmVhdGUoc3RydWN0IG5ldF9kZXZpY2UgKm5ldF9k
ZXYsDQogICAgKwkJCQkJICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLA0KICAgICAJCQkJCSAgc3RydWN0
IGJhdGFkdl9mcmFnX3BhY2tldCAqZnJhZ19oZWFkLA0KICAgICAJCQkJCSAgdW5zaWduZWQgaW50
IGZyYWdtZW50X3NpemUpDQogICAgIHsNCiAgICAgCXN0cnVjdCBza19idWZmICpza2JfZnJhZ21l
bnQ7DQogICAgIAl1bnNpZ25lZCBpbnQgaGVhZGVyX3NpemUgPSBzaXplb2YoKmZyYWdfaGVhZCk7
DQogICAgIAl1bnNpZ25lZCBpbnQgbXR1ID0gZnJhZ21lbnRfc2l6ZSArIGhlYWRlcl9zaXplOw0K
ICAgICsJaW50IGxsX3Jlc2VydmVkID0gTExfUkVTRVJWRURfU1BBQ0UobmV0X2Rldik7DQoNCiAg
ICAtCXNrYl9mcmFnbWVudCA9IG5ldGRldl9hbGxvY19za2IoTlVMTCwgbXR1ICsgRVRIX0hMRU4p
Ow0KICAgICsJc2tiX2ZyYWdtZW50ID0gZGV2X2FsbG9jX3NrYihsbF9yZXNlcnZlZCArIG10dSk7
DQogICAgIAlpZiAoIXNrYl9mcmFnbWVudCkNCiAgICAgCQlnb3RvIGVycjsNCg0KICAgICAJc2ti
X2ZyYWdtZW50LT5wcmlvcml0eSA9IHNrYi0+cHJpb3JpdHk7DQoNCiAgICAgCS8qIEVhdCB0aGUg
bGFzdCBtdHUtYnl0ZXMgb2YgdGhlIHNrYiAqLw0KICAgIC0Jc2tiX3Jlc2VydmUoc2tiX2ZyYWdt
ZW50LCBoZWFkZXJfc2l6ZSArIEVUSF9ITEVOKTsNCiAgICArCXNrYl9yZXNlcnZlKHNrYl9mcmFn
bWVudCwgbGxfcmVzZXJ2ZWQgKyBoZWFkZXJfc2l6ZSk7DQogICAgIAlza2Jfc3BsaXQoc2tiLCBz
a2JfZnJhZ21lbnQsIHNrYi0+bGVuIC0gZnJhZ21lbnRfc2l6ZSk7DQoNCiAgICAgCS8qIEFkZCB0
aGUgaGVhZGVyICovDQogICAgQEAgLTQzOSwxMSArNDQyLDEyIEBAIGludCBiYXRhZHZfZnJhZ19z
ZW5kX3BhY2tldChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLA0KICAgICAJCQkgICAgc3RydWN0IGJhdGFk
dl9vcmlnX25vZGUgKm9yaWdfbm9kZSwNCiAgICAgCQkJICAgIHN0cnVjdCBiYXRhZHZfbmVpZ2hf
bm9kZSAqbmVpZ2hfbm9kZSkNCiAgICAgew0KICAgICsJc3RydWN0IG5ldF9kZXZpY2UgKm5ldF9k
ZXYgPSBuZWlnaF9ub2RlLT5pZl9pbmNvbWluZy0+bmV0X2RldjsNCiAgICAgCXN0cnVjdCBiYXRh
ZHZfcHJpdiAqYmF0X3ByaXY7DQogICAgIAlzdHJ1Y3QgYmF0YWR2X2hhcmRfaWZhY2UgKnByaW1h
cnlfaWYgPSBOVUxMOw0KICAgICAJc3RydWN0IGJhdGFkdl9mcmFnX3BhY2tldCBmcmFnX2hlYWRl
cjsNCiAgICAgCXN0cnVjdCBza19idWZmICpza2JfZnJhZ21lbnQ7DQogICAgLQl1bnNpZ25lZCBp
bnQgbXR1ID0gbmVpZ2hfbm9kZS0+aWZfaW5jb21pbmctPm5ldF9kZXYtPm10dTsNCiAgICArCXVu
c2lnbmVkIGludCBtdHUgPSBuZXRfZGV2LT5tdHU7DQogICAgIAl1bnNpZ25lZCBpbnQgaGVhZGVy
X3NpemUgPSBzaXplb2YoZnJhZ19oZWFkZXIpOw0KICAgICAJdW5zaWduZWQgaW50IG1heF9mcmFn
bWVudF9zaXplLCBudW1fZnJhZ21lbnRzOw0KICAgICAJaW50IHJldDsNCiAgICBAQCAtNTAzLDcg
KzUwNyw3IEBAIGludCBiYXRhZHZfZnJhZ19zZW5kX3BhY2tldChzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LA0KICAgICAJCQlnb3RvIHB1dF9wcmltYXJ5X2lmOw0KICAgICAJCX0NCg0KICAgIC0JCXNrYl9m
cmFnbWVudCA9IGJhdGFkdl9mcmFnX2NyZWF0ZShza2IsICZmcmFnX2hlYWRlciwNCiAgICArCQlz
a2JfZnJhZ21lbnQgPSBiYXRhZHZfZnJhZ19jcmVhdGUobmV0X2Rldiwgc2tiLCAmZnJhZ19oZWFk
ZXIsDQogICAgIAkJCQkJCSAgbWF4X2ZyYWdtZW50X3NpemUpOw0KICAgICAJCWlmICghc2tiX2Zy
YWdtZW50KSB7DQogICAgIAkJCXJldCA9IC1FTk9NRU07DQogICAgLS0gDQogICAgMi4yOS4yDQoN
Cg0K

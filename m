Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA863A3C01
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Jun 2021 08:25:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 966AC80B8B;
	Fri, 11 Jun 2021 08:25:12 +0200 (CEST)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2107.outbound.protection.outlook.com [40.107.92.107])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E2A7280411
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Jun 2021 03:55:31 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fPa+P7LilFVGogUsGDUecMTRSZ7QkQJhCjRT3DjJX0MyB63U7HSvzv4HKVtZTu9J5WeKjfX0fzCCaQm0CjW06sxwvD/6s881Kr1RrrjsrQbHM2NmTbhMtg/3l98OFsgafpRLEHVHFgEzQvIpxz3te4/w1cJy+g27uZksMxiJ3vlWIka5XpaHJAHJ5PNUgHzRTeoE5KcPa71MzyfIyfVM0yLu/WycCYYH+499ecjwcOOwA9T7J3a59O02gABkmY15RXYGbRbYn1LmCWleShVRlOCsbBz66ZXiN7UGEBUpphSaF7BO7EiAPRvZjjEDUaKA7fJEGJgzIsAaKRZB8WDFVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BACBiQi9JdYZjkZPAdysHGaOZKFCfC/6CFMHh+xdkQI=;
 b=XVkt1htc5ws0Hft9w36tp+jom/iv2L1IR/sv+eyY55EoytEUMUN+HKawL2pKPg9kthy/aRuwQs0JK0MoBDtRrSuAo1kTot10oJETHJTI4u5fh2n11Ms7c9+xImQoDHGwLtG3YmMUjMl5zY1hCvZq8naY5hRSC+MKmhbFVn4ixPKdmr9Vf91CbZpzStjGkVcfR3pEIp03VZ9x9aLrDlVj2sudcS/IuH/2KNjQQREBLUHMrFkXOmsd8eJZSnDzWq7wJgoFoRmiL6A3kBgMdpX3H+wRaxTUxUioHBsClSvCMN2TaF5CwYc61lw5HTAgiUAn99eQI7esKLUuJjwO/Gq49A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windtalker.com; dmarc=pass action=none
 header.from=windtalker.com; dkim=pass header.d=windtalker.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windtalker.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BACBiQi9JdYZjkZPAdysHGaOZKFCfC/6CFMHh+xdkQI=;
 b=D3u54bH8OBScwdF5EY0vlvd7zLI4JOR+BBdYTSMrmTPRsLTUUn+eCKcuUltBCgWg27C/j7/0QGBosdRBfGFz+VBaTrYE6iTAlQVsgBUIIBbusnP8PctsKECfaawC8JIpoJv5IdblQ+ce265Zf2GeRGFuNA820XBKqLMH2I+2UhqHbNVPKWyejRSImV0bgwGfhG5H9YnXiRSUCrg5Rll7NsPKVvOK4JC3QTjRv6koDOx2szQHw0gYSjrg0mmx7hO4XVnuqUXeOBedoBbIONLfFsB7bjgTwPmFK72wit8M/iKwEDwA1rWxHTiINkZuE7EyG7uh6ONnQ6Gu/wSnpJrpFQ==
Received: from SJ0PR17MB4256.namprd17.prod.outlook.com (2603:10b6:a03:297::20)
 by SJ0PR17MB4350.namprd17.prod.outlook.com (2603:10b6:a03:29c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Fri, 11 Jun
 2021 01:55:29 +0000
Received: from SJ0PR17MB4256.namprd17.prod.outlook.com
 ([fe80::4920:3d77:8243:aeb]) by SJ0PR17MB4256.namprd17.prod.outlook.com
 ([fe80::4920:3d77:8243:aeb%7]) with mapi id 15.20.4219.022; Fri, 11 Jun 2021
 01:55:29 +0000
From: Maurice Smulders <Maurice.Smulders@windtalker.com>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: MediaTek MT7612u and IBSS mode
Thread-Topic: MediaTek MT7612u and IBSS mode
Thread-Index: AQHXXmTaDf+Ijq7wAEO4UfsQ7VThFw==
Date: Fri, 11 Jun 2021 01:55:29 +0000
Message-ID: <4E744A61-BBA0-404E-B435-23C26ACF031B@windtalker.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.open-mesh.org; dkim=none (message not signed)
 header.d=none;lists.open-mesh.org; dmarc=none action=none
 header.from=windtalker.com;
x-originating-ip: [52.88.246.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 061e702a-26bc-4330-7e36-08d92c7bfd53
x-ms-traffictypediagnostic: SJ0PR17MB4350:
x-microsoft-antispam-prvs: 
 <SJ0PR17MB43508FEE965043EFA4B8A637E9349@SJ0PR17MB4350.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Vrh2ElDbjYQC79Pwg6tvMSGYJY20o0vPwmKqV8VHuSSCZvL6THuqZf/r28hKeICQBOXDxOMb8F+Tm0KRIRJIeiPYJcYxBoQbFvca6tLDGOYW2r0FqVyEo+02tgP2rdU2QB4zPrzkONLOOv0kpqscw7/E6fs0IpqevxgNke26g/7gdkz9kg2eAjNJKG+qmy8A7pYQDto8mypG6/F12HZgTBdpL9K1OzAUtIKBh5juZO3PvAqOQS3BhAEMypUPM3qbEHqWFZ8HAH2yD/9QJCzzZKfhHwFQnAJhfKNhkn+V7SImHXV13WKfDiURAu5OurRTnfa6QZmZWgImh4YDo6GpOwVZvTUn+y4xQDfMPp3MlTaWszkvDCgIRRpDIgLYbNU0E5XzQ9a7VZrjwA0OjUwA2eOM0ukf9//Txw0b7YAPbtjHGlOKDbzd9HFVPbkYV/5mMQ9Ej2dK8dj6JfzJuMaiEOEshvehYMNMnIsEHHmdMJZA2vqVWURb5FGEi38C3yax6lisPsDm7qvlr6uIlsqUyPWPwhuh2BlPCb21+8wTRoJBnTLoIZO3lI5wm40dmLnrjE08f6ku2TGcXKgb+xvLGvZgRLRSm5w70U9us9W5iXu7T45avlTbQUP3608zcs1AOfbjWdhAeKHfF5EDwjQDimvjsh9XGbrJtKMPdvYJ/SPL4xcR9yqtuATTZtvAKEpNfXpFumMHrB6iQHEeOOcQIrF4bKq0hzXAyW9Mg2IaIBEMvJRjgYLD0Amhwf+2T+YH2I86KI6VbshGLv3DaxeiMQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR17MB4256.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(366004)(396003)(39830400003)(966005)(36756003)(6916009)(478600001)(86362001)(2616005)(122000001)(6506007)(2906002)(64756008)(66446008)(26005)(66556008)(91956017)(186003)(83380400001)(6486002)(76116006)(8936002)(316002)(71200400001)(5660300002)(66946007)(8676002)(4744005)(6512007)(55236004)(33656002)(38100700002)(66476007)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y3JlbjdjQXg3dXBBK2RSMU1vYUJyTzlWOUFkMTV3cHdWNEQzWVhwZW5EeFFD?=
 =?utf-8?B?dzhNcXc5Z1JBQkU0enJVM3F1aDRpSzdvS25KSUdtYUo1cDk1Q09EZGV2U045?=
 =?utf-8?B?UUtzR3VLSy9xYVFYT2RSb2YweUJmLzg5d0x0VmZnVGJ3UG5OQ1phNUx2ZDFI?=
 =?utf-8?B?QkF4b2RURTFXem9nYUgzMHlUN0x5K1hvMVBsN0hJbTNFa3ZMbzh4MHVTSDZO?=
 =?utf-8?B?dUlJczMvMDAzaW9ycVdtaHBMWWg3QVAyU2VMRGVocjRYdXJKZmNMRDRMRXEv?=
 =?utf-8?B?VUVwcS9GaCt3RXhjY1pmTVBJUy9OYlEvdUtqNzUxT2Raa2VkSGZvV2ExOXkv?=
 =?utf-8?B?M0YxMEdiUTZHS3BuTWJDVGNoMzJiM1ArTEZRUVd3bk5nWjlOTXdreTFlQUdI?=
 =?utf-8?B?OHVjeC83OThzZkQxYVJ4VDNsOE9BY29YVXUwalZaOS9YL05UbmJxVGZCRGpr?=
 =?utf-8?B?ckRNRllwK0xWM0FEdXdOejJDVExud0w0cEJSQitwNmFjWWZVSVJWMCtLR2N5?=
 =?utf-8?B?QUhnSzlsZ20xL2FzL3NwUitvLzRsd0FYV1pXZ2cyVFhRdXFuUFR4KytCbDBp?=
 =?utf-8?B?OVl3OHBnTk14RkRocFFPZTh0cVk1ekxGdjhSbElkMVE3MHJOcEdwTk12YTk1?=
 =?utf-8?B?S3dXbEhrTjhsQWxvckFQWURBS2hEeUtHRk56Q0QzNkFHTkFVWkhjanpPRk1V?=
 =?utf-8?B?c1owQVVBQktQSFJLSmp1djV2em1YZFVvMDdUNnRIdnJFajdtbWoxb2QyWWQ4?=
 =?utf-8?B?eWhkNDNEdUpXMmx5b29WalhEOXhtVk0vcG9yQTlqVFhrQ1dtbmpvZlVKVnhv?=
 =?utf-8?B?TWN1MGJpQWJPUVFPdFd0SjVXS3VocytxUHlWNkYzc3ZrN3dlbHVCMkl6Ky9V?=
 =?utf-8?B?alY2d0dpRnFnaTR2S0dCdDJKNkFNMDBMMWxzaVd3bXJNR01aQUFIU2R4azZV?=
 =?utf-8?B?WWdvV1MrRU02bWZOaEROb1prNW9maDRuUXJyNnlFcXJOY04rU2pPNlczTU9U?=
 =?utf-8?B?LzR1SlFsakhXaDVRVVlNdWw2QklBZXNZUXoyMEE5aHBQODdVa0tuQk1TRHVk?=
 =?utf-8?B?alRPKzBaRU9LaW5qeTQwcUtENXlVMEtPOWF3TXJJMktha0szS2UyYU5xVUMx?=
 =?utf-8?B?OVFZQlFUaVJnNy83cGh5VkhpQVBOVXNuZkJtUURTOHVhWnJLMXZZZzNack9J?=
 =?utf-8?B?YkFvV0lpZTZybCtITlB5cWd5TnFWQTdKOEFNOVJ0QkhUUElndGE5NnNYem1C?=
 =?utf-8?B?QVVBeC8xYnNDZkZ0Mm1uenhtdXM2MXNUZEJTSGVNSU12eWNlNmN3SWNTM3N2?=
 =?utf-8?B?WWhvOE1rM2lZZE9ZVWNXRXFMR0Z0YmwyUXlWUk4vdHFaTjlPOUwxUFdmSm0r?=
 =?utf-8?B?bWtzQ2JVUVdITHpMVHhzS3c2aG4wMlBhZkE1cytyM3U4YS9aZVBQc0YyMGpZ?=
 =?utf-8?B?S1Y4RG5LaTFmZnh5anBrcU5BSFYvb1puT3IwUkU3OEZ6ZzdoellaUk84OXhw?=
 =?utf-8?B?bHlESjdhd29LcWNmR3o2Wm5xdkFybUNBYWdnWWs5Z0E3bWRlWHdBNUxMdWtT?=
 =?utf-8?B?bmpWc2UwN0pONlFyOTVPaU15clhmL2JwOE40Z3JTSElnY0tMUmVseE50dTA2?=
 =?utf-8?B?c0RsMStqWGlTWWZVM3ZJNk92eVV0VFRhemlXN2JBd3BJQ2hXcTdpUmY1T21O?=
 =?utf-8?B?dDFFK3cvcTBuSXdPSmJDdThUNTkxMG1LL3MxM2pLblc4aDNjaUMrRCsvekJ5?=
 =?utf-8?Q?jmS8xTDBeBcZjFfcvp/KiqkC0GYJl6hCOz416MK?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <7A7B5663B291204896ECA2B5FA7AA060@namprd17.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windtalker.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR17MB4256.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 061e702a-26bc-4330-7e36-08d92c7bfd53
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 01:55:29.0650
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 450cd5d0-8fd6-47a4-9886-31914220621d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nm1h2fP94H8Z5mPbLBTOXcQ+NEPLCWMCYTJE4spoBxTNvgAW6U/sE2rZc9jWzXyrtfAGPKECCIhTBnHVGpLU3/gsSvec9/iKi+pdodCpOXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR17MB4350
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1623376532; a=rsa-sha256;
	cv=pass;
	b=u5+fXCUuE9SfX84xiesn/IP6KBfN6n4ugCFWjZIJFnfaE/0aiXGafUOT9HSSzeCecGf5W4
	jlYTwEZg5wOnaEyue5j9xiPKn7baBNGz0PLtnGOqYcCyYghp3AX+/EEDhD9gFo8INwN31L
	oCOZse39NEVD+ZCEHp8eAvVqeL68MQY=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=windtalker.com header.s=selector2 header.b=D3u54bH8;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (diktynna.open-mesh.org: domain of Maurice.Smulders@windtalker.com designates 40.107.92.107 as permitted sender) smtp.mailfrom=Maurice.Smulders@windtalker.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623376532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=BACBiQi9JdYZjkZPAdysHGaOZKFCfC/6CFMHh+xdkQI=;
	b=NfuX9wwyCZu7rw17Ef/3zx+Ajlm3+AORHXT+bOviUc6PcPseegF3qMFqAs16YetJo0kgEq
	CzshzMnUna4mEMQK8vC1oM9KQ2Z81rpQk1HPpQjpJHthUE1vZ7HU1+5Yg8TSWAZGjiYhdy
	S7gJGH5YT3iyl9CWh1OtPlQGh4GKV9c=
X-MailFrom: Maurice.Smulders@windtalker.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: MCHIN4TT5WRVOCNSPPUR4TGIQN22TVVM
X-Message-ID-Hash: MCHIN4TT5WRVOCNSPPUR4TGIQN22TVVM
X-Mailman-Approved-At: Fri, 11 Jun 2021 06:25:09 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MCHIN4TT5WRVOCNSPPUR4TGIQN22TVVM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

UGxhdGZvcm06IFJhc3BiZXJyeSBQaSA0QiAvIENNNCB3aXRoIENlbnRPUyA4IHN0cmVhbSA2NCBi
aXQgLSA1LjEwLjQyIGtlcm5lbA0KDQpUcnlpbmcgdG8gdXNlIHRoaXMgTWVkaWF0ZWsgVVNCIGRl
dmljZSBhbmQgSSBub3RpY2UgYSAtIHF1aXRlIG5hc3R5IC0gcHJvYmxlbSB1c2luZyBJQlNTIG1v
ZGUuIE9uIHN0YXJ0dXAgb2YgdGhlIElCU1MgbmV0d29yaywgdGhlcmUgaXMgYSBjaGFuY2UgdGhl
IFBpIGdvZXMgaW50byBhIHRpenp5IAlodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9tdDc2L2lz
c3Vlcy81NDMgLSB3aGVuIGl0J3MgdGhlIGZpcnN0IChhbmQgb25seSkgbm9kZS4NCkkgd2FzIGFi
bGUgdG8gZHVwZSBpdCBjb25zaXN0ZW50bHkgaW4gbXkgaG9tZSAtIGZhaXJseSBzdGF0aWMgbmV0
d29yayAtIGJ1dCBub3QgYW55bW9yZSBpbiBhIGxhYiBlbnZpcm9ubWVudC4gSSBjYW5ub3QgZWFz
aWx5IGdvIGJhY2sgaG9tZSAtIGl0J3MgfjMwMDBrbSBmcm9tIHdoZXJlIEkgYW0gYXQgdGVtcG9y
YXJpbHkuDQoNCkRvZXMgYW55b25lIGhhdmUgZXhwZXJpZW5jZSB3aXRoIHRoZXNlIE1lZGlhVGVr
IGRldmljZXMgYW5kIEIuQS5ULk0uQS5OLiBvbiBsb3dlciBwZXJmb3JtYW5jZSBub2RlcyBsaWtl
IGEgUmFzcGJlcnJ5IFBpLi4uDQoNCkkgaGF2ZSBhc2NlcnRhaW5lZCB0aGF0IE5PTkUgb2YgdGhl
IFVTQiBSZWFsdGVrIGRvbmdsZXMgd29yaywgYXMgdGhlIGtlcm5lbCBkcml2ZXIgaXMgbWlzc2lu
ZyBJQlNTIHN1cHBvcnQgYXQgdGhpcyB0aW1lLi4uDQoNCkknbSBhZ2FpbnN0IGFuIHVyZ2VudCBk
ZWFkbGluZSwgYW5kIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoYXQgSSBjYW4gZG8gdG8gbWFrZSB0
aGlzIHdvcmsNCg0KTWZHLA0KDQotIE1hdXJpY2UNCg0KDQo=

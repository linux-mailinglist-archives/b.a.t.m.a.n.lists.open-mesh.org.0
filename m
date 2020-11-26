Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2502C5BFF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 19:27:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CED8F810E3;
	Thu, 26 Nov 2020 19:27:25 +0100 (CET)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80108.outbound.protection.outlook.com [40.107.8.108])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3F64A8147C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 19:19:51 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LITxjQAeKeo0q7p90NO3Xqxd4fjXP4L1315Qnrz+/jRBvUD2O8W8PZh4sAWACertmMxyrKxKJLHjyluSXO8VIXFplAI6e70GDGxIK/Cw+yPDasqwcKBPLbHryzt7eD7tjt9gOSMPiVW2lcu9OXIcpzkBZd3iZmNj/4UFy2HeQMCnEPAgubAgQzsYD1gKxeMs8acOxt9uclTkUsXaFx0iy209UVPMGIXSlHp/wJwlk7dkxwSsPUYroenxbjmbuJ0qblFXFwrtoJWxaJLz8Frfah4ZFaX7YxcifL1PsKyRoJ5WHji48MfGl7uQ4Vid6xXqiL5NpVTTuVMon0r1j9Zjyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k3WgZGL6uujQZk/5+ca6VZpJR+U3Q/SLU1LEUgSlbk4=;
 b=X0+d2op64JIa63cQmQ74ayoZgYwQ4k7TFyqCSjd0pkd96v/0KT8/5cjPfXocIPD3HVcNiXoHZn82vJR8rg4Kmh/z8Zu83DCDfjf2WaHwvEd3z2NNuYvpwv82Domd7iDwL7dn9ZDjVpHhJEW8+ghOzV9XkgWwfVJJbqO+PQe6k2Ngyl52O4PDgDEIHg/WWQDwlo3z2Kme8Y06jd/IHNWwSLfP0ktdCd74JE0yJe9IRAbfXtmtKhqBrym5BBrOh3L3sDJh4WbtYIyVScc3uYzcXkW6y3uQJMaCwOhpkbt5K9Q0w7X9huL9QzmdaliZgeSXDl/8svEEEWIbewpxrUS2rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exaring.de; dmarc=pass action=none header.from=exaring.de;
 dkim=pass header.d=exaring.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Exaring.onmicrosoft.com; s=selector2-Exaring-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k3WgZGL6uujQZk/5+ca6VZpJR+U3Q/SLU1LEUgSlbk4=;
 b=GRGx4atdL522db10APxKiioq/9tydgd8G7p/3/1m1sEHCNaX8cmkLfeGAsKXIrdh9YCq9kuqZvlGh1WXq45wVHvMKQph0XNZOZCwRtpFylpi1jjDaSYOLO6SBwWPW9tL14uznb7enVBERnRMU3thNYgKMtjC2HE2+qQgLU4VEIc=
Received: from AM4P190MB0036.EURP190.PROD.OUTLOOK.COM (2603:10a6:200:5e::19)
 by AM9P190MB1265.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:26c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Thu, 26 Nov
 2020 18:19:50 +0000
Received: from AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
 ([fe80::909e:4696:4a97:fec4]) by AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
 ([fe80::909e:4696:4a97:fec4%9]) with mapi id 15.20.3589.032; Thu, 26 Nov 2020
 18:19:49 +0000
From: Annika Wickert <annika.wickert@exaring.de>
To: Sven Eckelmann <sven@narfation.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>
Subject: Re: [PATCH 1/2] vxlan: Add needed_headroom for lower device
Thread-Topic: [PATCH 1/2] vxlan: Add needed_headroom for lower device
Thread-Index: AQHWw/MgdSLvwEwSu0Gh4PFqqu7RqKnaykyA
Date: Thu, 26 Nov 2020 18:19:49 +0000
Message-ID: <8257B44A-FA67-40D1-BC5E-C8AB82E42BFE@exaring.de>
References: <20201126125247.1047977-1-sven@narfation.org>
In-Reply-To: <20201126125247.1047977-1-sven@narfation.org>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: narfation.org; dkim=none (message not signed)
 header.d=none;narfation.org; dmarc=none action=none header.from=exaring.de;
x-originating-ip: [2003:dc:df03:4c01:5c86:b5c3:b73d:7515]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adb1a87d-471f-445a-9476-08d89237dcdb
x-ms-traffictypediagnostic: AM9P190MB1265:
x-microsoft-antispam-prvs: 
 <AM9P190MB126578FF40DED021ED2F6361E2F90@AM9P190MB1265.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 c71JEY+PW1wA9jsEip/gl29hcBIUg5rSRitAnt0SoPY7q9Xa3JAIotubXvB9LDyLNiA+hAioHpqm4QHMWBjdq0TQmW2za/QiuYDqhMGVVvJpjVaCmEBcFjPf9doBLUVf0yM0CdhAujtBrB5We4APmQavEpvSu+/JOTj2+3DuAdDxFn/QjuxrRo3HfseTk8DREYNMIupdYF+oEBGl9K/etUJEePfx1sPr4QBIatjEBqVhGZMJEgvbplMuQREna078GMKL00oBnJX9oM9ndV2r+R3JvyufTKQU2gXoEorRCRdOhhU5KosfmWopXjlslRfyVzzB26ceAFKJZNKl3ATi3g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4P190MB0036.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(396003)(346002)(376002)(136003)(39850400004)(316002)(110136005)(8676002)(54906003)(2616005)(33656002)(66556008)(44832011)(66476007)(6512007)(5660300002)(36756003)(66446008)(64756008)(83380400001)(8936002)(6486002)(4326008)(66946007)(2906002)(186003)(76116006)(478600001)(6506007)(71200400001)(86362001)(91956017);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?T2E4ZXBVSnFBT28yUXY4YXJ0bnNjVDZkMUc1N0YvaXpBL0RvNTI1cHJZRC9q?=
 =?utf-8?B?b1B3VmZVNWd5Sk1ldHUxN3Z4Z3NvYzRGN2RxM1ZKZTBjWHdYeThUS2hlaWNh?=
 =?utf-8?B?cUJMd0FZdUNiUVhLcDFZMzJxSkViOC83MFc3bUVUNERueG56cE04d0JqOWo5?=
 =?utf-8?B?bFZWaG13YVNGcXN3T3RlL001RWpmb0dOczB4T3JrelpLckZ4WHh1emtRMDh0?=
 =?utf-8?B?VlM1dmlZUnRPSmVxa2hqK1djcjlLY2hFWnFzVTZQcGwrSmdhYzVJTGpRckli?=
 =?utf-8?B?ejlUbjdxR3RIempwL0thZzIyU3lIeUZiVXhFdEIwbnNCVTI3ZW91L2Nrem5F?=
 =?utf-8?B?SEVFZ0hWWFRQNFpaSHdQVk5DVitaSnBsUlI1L1lKQ0ZyU2RGcWpZYVJaWDlO?=
 =?utf-8?B?cnJudWJuZEVJVWE2WnBrNXJvUGVua2Y2QzcwZGVKc1BRc0pKOWoxY3RCSEFJ?=
 =?utf-8?B?bHhxRm9KOHlGeGZTLy9vMEU3bVpNOFZGclJPcU9PZmI3NEp4NGw5RG1mLzJT?=
 =?utf-8?B?YXVCakVOcFJsNEtXMTJ5Y2JpZmxaWjNhWkJhL0lZcnFKVlZxMkkxTWpVTDNp?=
 =?utf-8?B?WEJzbGo2UEsvamVXeG5COEk5WERmZlZsTEFRNmlRRGVacUpTcmZBTFRMM0JF?=
 =?utf-8?B?WnBmaGd2Rjk5TFhSQ1NxRzFGVHE1RGh1ZzFHT2ZaZUJ1cHNNMHZuWC9vaEtK?=
 =?utf-8?B?RXJlZk5BTHlwekdwbUlGL200cnBSNWt4aFlORDhpajBLVUJHWFNNaGJheTNH?=
 =?utf-8?B?bFNFMzUxU1lIeVhLQjdyWGcvMUZhVDNXTHltM1JoMVFnTWNVbzRUQ1Rod0FL?=
 =?utf-8?B?ZmNhWGJmcTc2N3BGU3YrSGtZempmaFN4QXY1RENjeWo0clZOTWh5K09qYkhU?=
 =?utf-8?B?cE9JbmFLZWxISTNYK3BxU280MkFtYitpbGR4dlZPSVovZEZNUExpcXdBaHVj?=
 =?utf-8?B?Qk9DRmdWbjVKdEFQZ29PbzdrazE0UlQ5NlZ5TitZRGJUK2M3a2dMaURyK1FI?=
 =?utf-8?B?ZXNlSExobWNMYkV4NWI5aDlCM01Uay9kTzBhTFdkZE4zclpFd1A0cjQ2STRV?=
 =?utf-8?B?T1ZnNFNROEpqdVFxeDc3cjU5dU8wVWZXSmFrRFRjSGNUbTdnZ0FCN0N5VHRp?=
 =?utf-8?B?MWNJNnpkRWVrUWk1WHJWWFdqbDZuNkdxbGFxOTZybnlXTEoxeWJKdmxCSUw1?=
 =?utf-8?B?SUF5eTJiKzZhbjgxSFZrU1BQQUx1bkZKUHRZQ3JETzdGYVA0MUVpcWNVbFFV?=
 =?utf-8?B?NVc1OE53V1B0NUtqTTE0d29qbDNVNklkclplOG5JZGU2L0JDaFV4aWorN1R3?=
 =?utf-8?B?Q0I2VDBaL2xDVVVleEhLQnhOQlRaSElhenRpUzZOS05WTUMrVkE0TE5kTk9y?=
 =?utf-8?B?UWpWNkhRMUhlTnVpU0ZJMkp1U1dRZHY4a21XOVFuNEhWdFk1bjM3bVB1Tm81?=
 =?utf-8?Q?QUiELDcm?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <F46B60D86DB16C4CBCE1B5368EAC7B67@EURP190.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: exaring.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM4P190MB0036.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: adb1a87d-471f-445a-9476-08d89237dcdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2020 18:19:49.7290
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37f2d5fb-1abb-4498-b725-9a67ff628e81
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITRvRKfynhCM9qHiuHtFUImGG4NprvneD9WkBpqqfTut2KoPcGQcEKl9X/UQqsaAt186g+3my3UPRw/oCyKn9TC2puoS8CHufVBc4+xy2RE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P190MB1265
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606414791;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=k3WgZGL6uujQZk/5+ca6VZpJR+U3Q/SLU1LEUgSlbk4=;
	b=Z/nfwB11DdQ8hM7M6JMETmN3X3kDfw5V2YO6kBq2FCZRZjXGpOt5U6Pn51jdW1MKPSlxDX
	CGqFrSwDXnQcUcLf9pvNVvNwdDrd7WLEk+oBut7/Cl1iQbT7cSgoBZ0jBMU0Xgewsv5jsq
	MVq78bfspVVN/aZZwq/UwyeingBvwkc=
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1606414791; a=rsa-sha256;
	cv=pass;
	b=scXNJo85NJrsMI48Tq6eH6138a8eBLgcm9cHkSzz5cBg44eS+hVruD4pKGlQxBO24ZCz1v
	dMU+RqKxsUHzRisz16uMCR8I3QMjpzOx858oNTR/gDeg4VtZ4mbw4x/tW8xIZxh/PnJ/+O
	NuPCUHsq5kz5/NakyrfSIA+ImLythNA=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=Exaring.onmicrosoft.com header.s=selector2-Exaring-onmicrosoft-com header.b=GRGx4atd;
	spf=neutral (diktynna.open-mesh.org: 40.107.8.108 is neither permitted nor denied by domain of annika.wickert@exaring.de) smtp.mailfrom=annika.wickert@exaring.de;
	arc=pass (microsoft.com:s=arcselector9901:i=1)
X-MailFrom: annika.wickert@exaring.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: Z2IHZBE6BRTRPI2EPYHLKUOXPOCN4XLS
X-Message-ID-Hash: Z2IHZBE6BRTRPI2EPYHLKUOXPOCN4XLS
X-Mailman-Approved-At: Thu, 26 Nov 2020 18:27:24 +0100
CC: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z2IHZBE6BRTRPI2EPYHLKUOXPOCN4XLS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

VGVzdGVkLWJ5OiBBbm5pa2EgV2lja2VydCA8YXdAYXdsbnguc3BhY2U+DQogDQoNCu+7v09uIDI2
LjExLjIwLCAxMzo1MywgIlN2ZW4gRWNrZWxtYW5uIiA8c3ZlbkBuYXJmYXRpb24ub3JnPiB3cm90
ZToNCg0KICAgIEl0IHdhcyBvYnNlcnZlZCB0aGF0IHNlbmRpbmcgZGF0YSB2aWEgYmF0YWR2IG92
ZXIgdnhsYW4gKG9uIHRvcCBvZg0KICAgIHdpcmVndWFyZCkgcmVkdWNlZCB0aGUgcGVyZm9ybWFu
Y2UgbWFzc2l2ZWx5IGNvbXBhcmVkIHRvIHJhdyBldGhlcm5ldCBvcg0KICAgIGJhdGFkdiBvbiBy
YXcgZXRoZXJuZXQuIEEgY2hlY2sgb2YgcGVyZiBkYXRhIHNob3dlZCB0aGF0IHRoZQ0KICAgIHZ4
bGFuX2J1aWxkX3NrYiB3YXMgY2FsbGluZyBhbGwgdGhlIHRpbWUgcHNrYl9leHBhbmRfaGVhZCB0
byBhbGxvY2F0ZQ0KICAgIGVub3VnaCBoZWFkcm9vbSBmb3I6DQoNCiAgICAgIG1pbl9oZWFkcm9v
bSA9IExMX1JFU0VSVkVEX1NQQUNFKGRzdC0+ZGV2KSArIGRzdC0+aGVhZGVyX2xlbg0KICAgICAg
CQkrIFZYTEFOX0hMRU4gKyBpcGhkcl9sZW47DQoNCiAgICBCdXQgdGhlIHZ4bGFuX2NvbmZpZ19h
cHBseSBvbmx5IHJlcXVlc3RlZCBuZWVkZWQgaGVhZHJvb20gZm9yOg0KDQogICAgICBsb3dlcmRl
di0+aGFyZF9oZWFkZXJfbGVuICsgVlhMQU42X0hFQURST09NIG9yIFZYTEFOX0hFQURST09NDQoN
CiAgICBTbyBpdCBjb21wbGV0ZWx5IGlnbm9yZWQgdGhlIG5lZWRlZF9oZWFkcm9vbSBvZiB0aGUg
bG93ZXIgZGV2aWNlLiBUaGUgZmlyc3QNCiAgICBjYWxsZXIgb2YgbmV0X2Rldl94bWl0IGNvdWxk
IHRoZXJlZm9yZSBuZXZlciBtYWtlIHN1cmUgdGhhdCBlbm91Z2ggaGVhZHJvb20NCiAgICB3YXMg
YWxsb2NhdGVkIGZvciB0aGUgcmVzdCBvZiB0aGUgdHJhbnNtaXQgcGF0aC4NCg0KICAgIENjOiBB
bm5pa2EgV2lja2VydCA8YW5uaWthLndpY2tlcnRAZXhhcmluZy5kZT4NCiAgICBTaWduZWQtb2Zm
LWJ5OiBTdmVuIEVja2VsbWFubiA8c3ZlbkBuYXJmYXRpb24ub3JnPg0KICAgIC0tLQ0KICAgICBk
cml2ZXJzL25ldC92eGxhbi5jIHwgMSArDQogICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQ0KDQogICAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Z4bGFuLmMgYi9kcml2ZXJzL25l
dC92eGxhbi5jDQogICAgaW5kZXggMjM2ZmNjNTVhNWZkLi4yNWI1YjVhMmRmZWEgMTAwNjQ0DQog
ICAgLS0tIGEvZHJpdmVycy9uZXQvdnhsYW4uYw0KICAgICsrKyBiL2RyaXZlcnMvbmV0L3Z4bGFu
LmMNCiAgICBAQCAtMzc5OSw2ICszNzk5LDcgQEAgc3RhdGljIHZvaWQgdnhsYW5fY29uZmlnX2Fw
cGx5KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsDQogICAgIAkJZGV2LT5nc29fbWF4X3NlZ3MgPSBs
b3dlcmRldi0+Z3NvX21heF9zZWdzOw0KDQogICAgIAkJbmVlZGVkX2hlYWRyb29tID0gbG93ZXJk
ZXYtPmhhcmRfaGVhZGVyX2xlbjsNCiAgICArCQluZWVkZWRfaGVhZHJvb20gKz0gbG93ZXJkZXYt
Pm5lZWRlZF9oZWFkcm9vbTsNCg0KICAgICAJCW1heF9tdHUgPSBsb3dlcmRldi0+bXR1IC0gKHVz
ZV9pcHY2ID8gVlhMQU42X0hFQURST09NIDoNCiAgICAgCQkJCQkgICBWWExBTl9IRUFEUk9PTSk7
DQogICAgLS0gDQogICAgMi4yOS4yDQoNCg0K

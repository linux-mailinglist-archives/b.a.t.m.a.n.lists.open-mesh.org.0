Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BF3982B3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Jun 2021 09:09:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A1E8982F32;
	Wed,  2 Jun 2021 09:09:13 +0200 (CEST)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B2E50803EC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Jun 2021 08:57:05 +0200 (CEST)
Received: from dggeme711-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Fw08273XBz19PCy;
	Wed,  2 Jun 2021 14:52:18 +0800 (CST)
Received: from dggeme760-chm.china.huawei.com (10.3.19.106) by
 dggeme711-chm.china.huawei.com (10.1.199.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Wed, 2 Jun 2021 14:57:01 +0800
Received: from dggeme760-chm.china.huawei.com ([10.6.80.70]) by
 dggeme760-chm.china.huawei.com ([10.6.80.70]) with mapi id 15.01.2176.012;
 Wed, 2 Jun 2021 14:57:01 +0800
From: zhengyongjun <zhengyongjun3@huawei.com>
To: Sven Eckelmann <sven@narfation.org>, "mareklindner@neomailbox.ch"
	<mareklindner@neomailbox.ch>, "sw@simonwunderlich.de"
	<sw@simonwunderlich.de>, "a@unstable.cc" <a@unstable.cc>,
	"davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
	<kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: =?gb2312?B?tPC4tDogW1BBVENIIG5ldC1uZXh0XSBiYXRtYW4tYWR2OiBGaXggc3BlbGxp?=
 =?gb2312?Q?ng_mistakes?=
Thread-Topic: [PATCH net-next] batman-adv: Fix spelling mistakes
Thread-Index: AQHXV3pzyoNQoWpoCEyLGF27cSirc6r/wTEAgACHrbA=
Date: Wed, 2 Jun 2021 06:57:01 +0000
Message-ID: <8b7a220a964f452c8c3ea0c5404c0632@huawei.com>
References: <20210602065603.106030-1-zhengyongjun3@huawei.com>
 <48077100.4opSpZgCWW@ripper>
In-Reply-To: <48077100.4opSpZgCWW@ripper>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.176.64]
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-CFilter-Loop: Reflected
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622617026; a=rsa-sha256;
	cv=none;
	b=4IySPd18CwhZtSZbJ9p07p6ABPUORYAOMJXBrYG6iUBLCt3r1agJi1Saj991dmfdat1FCi
	jiGQW1jyos6qzVS+np5J8HT5vR4hSji9nv0aadXcllht1iZnfEpg+ONIqmCFBTQXLqJlCA
	X7RFJwcKufSMehNjjzWsefNr8m8eYlc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of zhengyongjun3@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=zhengyongjun3@huawei.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622617026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e10bkULNrObTlpDXghVThlXoV3gLBvfboCoYZEMApKg=;
	b=J/BASCsyty/MuSRzMkjMy4sSk2YxPwZXOp+T3RBVa7zgw+OH46HOBeih2p6H3yfKfiW8EC
	qdh8zlLNFeZeUhXZ33hSP6xJn/mLodonMYzH4876Sh/8Wcg/lZlcfMi9YrGJaUnsJIUjnh
	+rTA6w381XTeOxDLj1X6IIwuAgZAC/Y=
X-MailFrom: zhengyongjun3@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: MAKDGSGLFEHCIXKQFPRPHYENB53QFLP5
X-Message-ID-Hash: MAKDGSGLFEHCIXKQFPRPHYENB53QFLP5
X-Mailman-Approved-At: Wed, 02 Jun 2021 07:09:11 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MAKDGSGLFEHCIXKQFPRPHYENB53QFLP5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

VGhhbmtzIGZvciB5b3VyIHN1Z2dlc3QgOikNCkluIGZhY3QsIEkgc2VuZCBwYXRjaCB0aHJvdWdo
IHRoZSBweXRob24gc2NyaXB0IG1hZGUgYnkgbXlzZWxmLg0KDQpXaGVuIEkgdXNlIGNvbW1hbmQi
IC4vc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAwMDAxLWJhdG1hbi1hZHYtRml4LXNwZWxsaW5n
LW1pc3Rha2VzLnBhdGNoIiwgdGhlIGluZm9ybWF0aW9uIGlzOg0KYGBgDQpNYXJlayBMaW5kbmVy
IDxtYXJla2xpbmRuZXJAbmVvbWFpbGJveC5jaD4gKG1haW50YWluZXI6QkFUTUFOIEFEVkFOQ0VE
KQ0KU2ltb24gV3VuZGVybGljaCA8c3dAc2ltb253dW5kZXJsaWNoLmRlPiAobWFpbnRhaW5lcjpC
QVRNQU4gQURWQU5DRUQpDQpBbnRvbmlvIFF1YXJ0dWxsaSA8YUB1bnN0YWJsZS5jYz4gKG1haW50
YWluZXI6QkFUTUFOIEFEVkFOQ0VEKQ0KU3ZlbiBFY2tlbG1hbm4gPHN2ZW5AbmFyZmF0aW9uLm9y
Zz4gKG1haW50YWluZXI6QkFUTUFOIEFEVkFOQ0VEKQ0KIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+IChtYWludGFpbmVyOk5FVFdPUktJTkcgW0dFTkVSQUxdKQ0KSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gKG1haW50YWluZXI6TkVUV09SS0lORyBbR0VORVJB
TF0pDQpiLmEudC5tLmEubkBsaXN0cy5vcGVuLW1lc2gub3JnIChtb2RlcmF0ZWQgbGlzdDpCQVRN
QU4gQURWQU5DRUQpDQpuZXRkZXZAdmdlci5rZXJuZWwub3JnIChvcGVuIGxpc3Q6TkVUV09SS0lO
RyBbR0VORVJBTF0pDQpsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnIChvcGVuIGxpc3QpDQpg
YGANCg0KTXkgc2VuZCBwYXRjaCBzY3JpcHQgZm9yZ290IHRvIGRlYWwgd2l0aCBsaW5lIGxpa2Ug
dGhpcyhmb3Jnb3QgZGVhbCB3aXRoIGtleSB3b3JkIG1vZGVyYXRlZCBsaXN0KTogIiBiLmEudC5t
LmEubkBsaXN0cy5vcGVuLW1lc2gub3JnIChtb2RlcmF0ZWQgbGlzdDpCQVRNQU4gQURWQU5DRUQp
Ig0KVGhlcmVmb3JlIEkgZm9yZ290IHRvIHNlbmQgaXQgdG8gdGhlIEIuQS5ULk0uQS5OLiBtYWls
aW5nIGxpc3QuDQoNCkkgd2lsbCBmaXggdGhpcywgdGhhbmsgeW91IGZvciB5b3VyIHN1Z2dlc3Qg
OikNCg0KLS0tLS3Tyrz+1K28/i0tLS0tDQq3orz+yMs6IFN2ZW4gRWNrZWxtYW5uIFttYWlsdG86
c3ZlbkBuYXJmYXRpb24ub3JnXSANCreiy83KsbzkOiAyMDIxxOo21MIyyNUgMTQ6NDcNCsrVvP7I
yzogbWFyZWtsaW5kbmVyQG5lb21haWxib3guY2g7IHN3QHNpbW9ud3VuZGVybGljaC5kZTsgYUB1
bnN0YWJsZS5jYzsgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsga3ViYUBrZXJuZWwub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyB6aGVuZ3lvbmdq
dW4gPHpoZW5neW9uZ2p1bjNAaHVhd2VpLmNvbT47IGIuYS50Lm0uYS5uQGxpc3RzLm9wZW4tbWVz
aC5vcmcNCtb3zOI6IFJlOiBbUEFUQ0ggbmV0LW5leHRdIGJhdG1hbi1hZHY6IEZpeCBzcGVsbGlu
ZyBtaXN0YWtlcw0KDQpPbiBXZWRuZXNkYXksIDIgSnVuZSAyMDIxIDA4OjU2OjAzIENFU1QgWmhl
bmcgWW9uZ2p1biB3cm90ZToNCj4gRml4IHNvbWUgc3BlbGxpbmcgbWlzdGFrZXMgaW4gY29tbWVu
dHM6DQo+IGNvbnRhaW5nICA9PT4gY29udGFpbmluZw0KPiBkb250ICA9PT4gZG9uJ3QNCj4gZGF0
YXMgID09PiBkYXRhDQo+IGJyb2RjYXN0ICA9PT4gYnJvYWRjYXN0DQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBaaGVuZyBZb25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1YXdlaS5jb20+DQo+IC0tLQ0KPiAg
bmV0L2JhdG1hbi1hZHYvYnJpZGdlX2xvb3BfYXZvaWRhbmNlLmMgfCA0ICsrLS0NCj4gIG5ldC9i
YXRtYW4tYWR2L2hhcmQtaW50ZXJmYWNlLmMgICAgICAgIHwgMiArLQ0KPiAgbmV0L2JhdG1hbi1h
ZHYvaGFzaC5oICAgICAgICAgICAgICAgICAgfCAyICstDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KDQpZb3UgZm9yZ290IHRvIHNlbmQgaXQg
dG8gdGhlIEIuQS5ULk0uQS5OLiBtYWlsaW5nIGxpc3QuIEFuZCBpdCB0aGVyZWZvcmUgZGlkbid0
IGFwcGVhciBpbiBvdXIgcGF0Y2h3b3JrLiBBbmQgeW91IHNlbmQgc3R1ZmYgZnJvbSB0aGUgZnV0
dXJlIC0gd2hpY2ggaXMgcmF0aGVyIG9kZC4NCg0KQXBwbGllZCBhbnl3YXkuDQoNClRoYW5rcywN
CglTdmVuDQo=

Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A165FA634F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 11:07:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 68541842A1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 11:07:42 +0100 (CET)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1742119662;
 b=rvGLNjZ73x+qs2Ewzn/D5Dsy8aQD1rClToioa1ApKby1+Fh0jMRlKFATSasZOz1D+f6D1
 u5N/Vc1qc0uZoChKvM4jELldrP3QEVLiMAHKzZF/C+Ri5LcBuaANmem8A/Yv3JkIRFNAnkd
 u/mFFxenBLyuf3xClqxrqkQw4Q+cE5A=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1742119662; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=elSpzsbdFu0cOHz3yyxanf7EDCPDY8IIJSG5JFZU0d4=;
 b=OV0d+YZLeks3CPTZYiW1o35a043ASdbDPtCBgfLQ0WoFo/au1hY8fiAIqS//cVJZsJBPQ
 4yJCIepzeQltJwvE912OwjR+4j5ede3T4hgq8bV499c5Tsqc8sWkzje3u3+QDi2AQJinQQG
 dz/2gZt0TNlXBU24H7sb2695WTRsmmY=
ARC-Authentication-Results: i=3; open-mesh.org; dkim=pass header.d=live.com;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=live.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=live.com; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=live.com
 policy.dmarc=quarantine
Received: from OS0P286CU010.outbound.protection.outlook.com
 (mail-japanwestazolkn19011034.outbound.protection.outlook.com [52.103.66.34])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D535682273
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Mar 2025 11:07:20 +0100 (CET)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1742119641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=elSpzsbdFu0cOHz3yyxanf7EDCPDY8IIJSG5JFZU0d4=;
	b=UUB+bUi4vT2bX/Q+dRZ+NZ89FONc3WJMjWV8CYHS/ra+Owgm43wxl3DCY6tw/HFm1M3uvP
	+2flvJnkYG7ywpB9tT51i7Cn76c+s9bCpbdVHEmNzlvw+F57DcDpALDNdISkiqN134ionw
	PR6AsCkL2y9GJQEvaiTxhORbVTY0Fvg=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=live.com header.s=selector1 header.b=KPv5oYld;
	dmarc=pass (policy=none) header.from=live.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (diktynna.open-mesh.org: domain of marscatcn@live.com designates
 52.103.66.34 as permitted sender) smtp.mailfrom=marscatcn@live.com
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1742119641; a=rsa-sha256;
	cv=pass;
	b=jg2re4p/5US/ANRxA/ssH+Dgn4T5Y9fjpA0UkgvUZdNgFWw82srK0p4k+sAdoF9xDPrdXZ
	CW0c9N7I9z0c3SswkQqE3ITmfMsfwNOm2RaX5Dpox9D6gWLMg2dpQiyyzPhN3Gi9BLjNsn
	V83PYjkBKzpfG3XSp/cuEFSGEiD7yHE=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=axQInyXqpGmwBpalANLaMR0gRa08ji0yVNGNOqSpoU+62WmhE1hv7aOfdOtrp/UshRyxTgUpNHgVLC7/XT+Hxfm7e3aQXik2DgP5PZh8U8J+vsjeH6C3/yLPFv/RCeHdp50U4wKbqvHWoqrQISdI9bbEftQT+i778KK+BWxizGBYFgTUSRhCtJAZtlka8GKI9Vtyz7akGQJppjPwiPkQvSK8VpfTr4tSoIJC5W1fXwtLtdxKJC3hQ8oQm/Py3Chz65qkomIJARvSlkh43JK6QPW1dhEntj1iv9AOYWOFt41FnQBPLKwgucpIevfzphsa31UnHEdeERqoN9tRwVeuqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elSpzsbdFu0cOHz3yyxanf7EDCPDY8IIJSG5JFZU0d4=;
 b=CWpA2P4ezVh06k3wZgqRyJ6TWiEnkJJWLk3a8Tx1cYGeYd1eCUViOJIEo4qRXOhq2iISPZlVVx1UIlb8xWL6obbigQ9XuqJ3AXuDnm985KiquRAJaEpJ9qhq30LWlukpvyOhXHyEHoh9ecVbUrWcBX7ScgTpjakLvp7CZCJjg3cU/QVJfy23E95fG6ITKtxjjE/87sW1M/2ejrl8HzMnSON4VrwtDQ7f0fjMk6sIrCwTA5JXqFa1VC1By4dXTAzWSO0KYf2Y8GPE4mC5RtuiCXCD+Gk0NP1ldn9r7tdixSBH5eJqiUvRltNT+q/NaPmMdwW8tD9wARg+byJYR1LwSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elSpzsbdFu0cOHz3yyxanf7EDCPDY8IIJSG5JFZU0d4=;
 b=KPv5oYldqXsADX59Wdi5kYjT0i1QR4ngcW9lFs3tLXnJBnyN/id09dyd+FWz/2ZnRgBBsldBpGQwvAEkfTc1bpS5RZ1V1T+Jxmej02LzmCcCwj5zOMKrhc2jBYSBx7zbg6fF+f/0rI7D89h0iWgKxfLvyQc5Ytp4L65TbGKZ5/JOiBcQAWE2aAsPjQFuxNh9wxL0IOEff+A7lwp6jCa/EkbES0CLjgFywQ5EVRpH9iVV2LapIJ9FD520p7Qc6obxNmDCEsdyHaK68bPklgA6hCeX8DmYXGl5hmO73G4YrK/hFbPGeGLPS1BF/mglUIqqd3e87Qt6x4ij/YDAy/d1AA==
Received: from OS3PR01MB5765.jpnprd01.prod.outlook.com (2603:1096:604:c2::14)
 by TYWPR01MB10854.jpnprd01.prod.outlook.com (2603:1096:400:2a8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Sun, 16 Mar
 2025 10:07:17 +0000
Received: from OS3PR01MB5765.jpnprd01.prod.outlook.com
 ([fe80::74e6:516d:66db:2df9]) by OS3PR01MB5765.jpnprd01.prod.outlook.com
 ([fe80::74e6:516d:66db:2df9%2]) with mapi id 15.20.8534.031; Sun, 16 Mar 2025
 10:07:17 +0000
From: Jingwei LI <marscatcn@live.com>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Limited Connectivity in Mixed Wired & Wireless Backhaul Deployment
Thread-Topic: Limited Connectivity in Mixed Wired & Wireless Backhaul
 Deployment
Thread-Index: AQHbllneeJKvVjs6IkipuvKhZ8eM7A==
Date: Sun, 16 Mar 2025 10:07:17 +0000
Message-ID: 
 <OS3PR01MB576553C5DACFE878AF2C6878D5DC2@OS3PR01MB5765.jpnprd01.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS3PR01MB5765:EE_|TYWPR01MB10854:EE_
x-ms-office365-filtering-correlation-id: 9e628e8f-7385-4b3a-70ef-08dd647254ec
x-microsoft-antispam: 
 BCL:0;ARA:14566002|15030799003|8060799006|19110799003|8062599003|15080799006|461199028|7092599003|10035399004|3412199025|4302099013|440099028|102099032|1602099012;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?TNd3QgNm9HWniUCp73o39d340xvPGgEEBQ14ok760SOnMin95B6+sCmF6k?=
 =?iso-8859-1?Q?7ySj+mt3h8tLkKsqLZrr8la78SuEU8ZARQifKLKERPZ/55CDU7EC35Sy6U?=
 =?iso-8859-1?Q?8cGnQWA9flrsIc5JwgWpkERBk+JaN3DIIOooGss5zDDYskCnm+gCpwWuGN?=
 =?iso-8859-1?Q?Z3npFgE2jjgb2wu0vofSjvXVHI/8Oi53TWUGTUMBGojeflBmrP0C7VwEgH?=
 =?iso-8859-1?Q?6pfoM7Wd2d4/G4Zt45y7fOqJAEjN+ld1FYpc0pSTIdsK9Vqf95yZYV04M3?=
 =?iso-8859-1?Q?Z6Bv/hTjVwd6+kWxbD8ofhytWYIo5vNpwlUtaAAznJY7J0Z900fIhNx1dn?=
 =?iso-8859-1?Q?MeUjM04fTVcyfci5IIa+GvRMal1HJiZmC2nsUPJ5UUIqQij5/FQWQKGcDf?=
 =?iso-8859-1?Q?IMt5AOBpcKP4VJGgQSf+vC+ADak/bOLcUEpLD26o3y9hYi9mUWqxVEhjv1?=
 =?iso-8859-1?Q?MGgPvnl3jbYRdLZuCoFCVpv95W5q6ZBjBEmXeIoH7NaCVEVCSsRv7uIah/?=
 =?iso-8859-1?Q?RnFkSsf0WV0qpnncrp83i9F/AqrtDhu4xm4ElG2kdLhipjo1JeWB799wif?=
 =?iso-8859-1?Q?2ZkHQ3/wgBaU62ujfDwCF49ERw+NZbhvNOVgZM+RNocLBtx3MHyZ/6jAEH?=
 =?iso-8859-1?Q?f5xQkMcWQWcCpR+LLAVWn2MxbEKy7l1E1yLePeHGUjS5db929e3rA59MQ1?=
 =?iso-8859-1?Q?E7LBv6+zv20j/8s5la/OUzXzQIW7CAC6glZWOkRB2+NuvXqN7i3U2YIpkF?=
 =?iso-8859-1?Q?sFWaLBAtU9nDxaSXbi9xVm8n6xZ0bqbniXHoOaAhNPt8dvzzO3ZkF7VzG8?=
 =?iso-8859-1?Q?3BLqlQ052CTY3tHIgmZUrEOYFNqpQWe+EhPpAwd0NDSRbIFFHK+cBzAhR4?=
 =?iso-8859-1?Q?yxoAADPw9fynuIlXifUCjqB+EhfhctYIvBeuEwj3TKGOpW/fZyQA0GXHh/?=
 =?iso-8859-1?Q?9z+Q3PqEMDRNnLtMeYv5qeB4slU/uFAKYtArChEftVZA+x8BTVKy7xqNnR?=
 =?iso-8859-1?Q?EBLVt/K6Dg4bJYdaM+9XPVBgeH7Va6CMeh9oKhlIR2qv0ZNFterN0px+Wq?=
 =?iso-8859-1?Q?wfKG+IHOnQ9Okmj+ZnjnssA6RIQ34DXlpsnu4tcAhiOETyJqzpGQbHvh1X?=
 =?iso-8859-1?Q?4KH8Irf+DnMvwLaDHe/h3SadwhlixU2weQ8Qg3CCy7xX6qbr+KjWmhJf7Q?=
 =?iso-8859-1?Q?m0eETizpv3oojE8dOiPET5Qd0h3Dg6/9SHWy3mzeIGBgf+PIcsp4x5YVXB?=
 =?iso-8859-1?Q?SnwCqGSYKa+TB7rpr673ttXaGsjVv2sn+GfUZdNBg4fpZaxO1HLirh2k1D?=
 =?iso-8859-1?Q?6N7I?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ysP2bVzE3PeD3VIe3T4NvUG713o+uSqm0kjwF1A849K1ZrXeb4z1vFtfyP?=
 =?iso-8859-1?Q?w5R65HE5k+SB28+ueAR5vJ0kPp6uUQmQD+Szl/vduJZLNem1paXRz6mW4j?=
 =?iso-8859-1?Q?GxBZxU7qPAQqZ6egzmgZwi0v7EFpcWLfl0ZXfZXFAMQP0rermAh5MFMXAE?=
 =?iso-8859-1?Q?y3fchjgJRlu4twPJoArpQMeHmC21THCayeVQw3wZjBRGGMk0Xrhfi84le1?=
 =?iso-8859-1?Q?6MpHpYckhcJVSWdgt2vxcgUNIO5K+CXWuywYo1xsnYAKI8YHwVfZrC6/sB?=
 =?iso-8859-1?Q?fZgbMtNDA7wX1bCUWISonI/JcyZwOn9PKKAjcbcgDGwpro4qtFH+fGuMha?=
 =?iso-8859-1?Q?jk6bgzvGKxuDY4NEX31Re48rqmFnJZO+PMae3IQ58bXa5OpItvESXKxDVy?=
 =?iso-8859-1?Q?ORIIuoMr9yS363CfM0Cyz+hB4EOMbMuLeo/rEK/tCbtm22twJd9tCl8sK6?=
 =?iso-8859-1?Q?l2THl708t4u80qL6ELqX/tLdbiv9Cu73m9FlXImKSlokAc9ZUVL3u/N3LM?=
 =?iso-8859-1?Q?SYwbB6/fXUYCMUXNdIG/foKSO300AR4S41g91avuThTjHXZwcNk8+8HnuB?=
 =?iso-8859-1?Q?vO1IG0ZbBvNXGRr7jP1mKe55yxLi3U31sOcArbDwwhJUGpx35JlqGHWyh4?=
 =?iso-8859-1?Q?jWoD+bINpRZ1UXui1DWhj2GaZhDcLZ8ZMl43QXpG3IgIixWUW+nr2BejbE?=
 =?iso-8859-1?Q?AWbDX9I2q5nR9FFGpv6BBKh9cJiFrEhKrmmvyxwnlFE7DpM9kbovy+nuJ+?=
 =?iso-8859-1?Q?tQedys58/tJXwixQ3VMecyRzuvTS4ardpBH7n8ukhqFzpVJ/iq9YAEuVON?=
 =?iso-8859-1?Q?kRagDhX1Xv6xol/OJME5N0qki+wUBIqOwjdocugCjT8lgFdUV6ILwzY97w?=
 =?iso-8859-1?Q?UxjAYLnLbH+e+/nx1R6rbcGCS4guwHNcg4exq0zcnGZCByQKSD09i9bmat?=
 =?iso-8859-1?Q?uMieENNx9MmDyKJNfzlFOlobtg+pZtiTI1WGyTnFVmXbrxdxhfVCDcWG/v?=
 =?iso-8859-1?Q?q2f2jxQ4mIwQiljV7VammQGikNs7rqOoWkRdjBcMpHgKYbLBqtrDnGSLBe?=
 =?iso-8859-1?Q?YdLJyMh4BPj+42/o0yZeOluX4bOLgLCpkCUCFw8v+F/ojqaw4G79otk+ve?=
 =?iso-8859-1?Q?OHL2T/lpLbUwtDJW+ScDKoXc9EzS55r9ZDi4B8tgZ0HV753qzqPqsR93Fz?=
 =?iso-8859-1?Q?NiqTxJ5ZIfq002YgK/RXVfaXryDjheQd4wmVE0IqzQIjC2ZN8dOYtLlm4J?=
 =?iso-8859-1?Q?VDUyI74rdoFMzoDpGN6Q=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-15995.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB5765.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9e628e8f-7385-4b3a-70ef-08dd647254ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2025 10:07:17.0177
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB10854
Message-ID-Hash: FJTQLNPXCEDXMRIJXPN63CYOU34MSYDX
X-Message-ID-Hash: FJTQLNPXCEDXMRIJXPN63CYOU34MSYDX
X-MailFrom: marscatcn@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G5OWFXFPABFRL44HALHCT4ETDWSMZ3KW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi all, =0A=
=0A=
I want to build a mesh network that uses both wired and wireless backhaul w=
ith Batman-adv like this:=0A=
```=0A=
   Router A             Router B                Router C=0A=
_____________     ___________________       ________________=0A=
|    br-lan    |      |         br-lan        |      |     br-lan         |=
=0A=
|____________|     |__________________|      |________________|=0A=
|AP|   bat0  |     |AP|      bat0          |      |AP|     bat0      |=0A=
|___|________|     |___|_______________|      |___|____________|=0A=
   |lan|BHAP|         |STA| lan | BHAP|           |STA| BHAP |=0A=
   |___|______|         |____|_____|______|           |____|_______|=0A=
     ^     ^----WiFi--^     ^      ^-----WiFi---^=0A=
      |______Eth_Cable_____|  =0A=
```=0A=
=0A=
Router A and Router B are connected together by both wireless link (upstrea=
m router runs an AP mode interface while the downstream router runs an STA =
associating to the AP) and an ethernet cable. Router B and Router C are onl=
y connected by Wi-Fi.=0A=
=0A=
According to the document (https://www.open-mesh.org/projects/batman-adv/wi=
ki/Quick-start-guide#Mixing-non-BATMAN-systems-with-batman-adv) and figures=
 in (https://www.open-mesh.org/projects/batman-adv/wiki/Wiki#Layer-2-), I t=
hink this would be a common configuration, however it doesn't work correctl=
y in my setup. =0A=
=0A=
-----------------------------------=0A=
=0A=
Problem description:=0A=
=0A=
Router A (192.168.6.1) and Router B (192.168.6.2) can ping each other. The =
client (192.168.6.192) associating with Router B cannot ping Router A and i=
ts associating client.=0A=
I also wrote some simple rules to trace the data frames in each router, bel=
ow is the output for a ping from client associating with Router B (192.168.=
6.2) to Router A (192.168.6.1):=0A=
=0A=
```=0A=
# Trace info on Router B (192.168.6.2)=0A=
root@ImmortalWrt:~# dmesg -c=0A=
[ 8633.614104] PREROUTING_ICMP: IN=3Dra1 OUT=3D MAC=3D90:15:64:00:0b:ff:90:=
de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D0=
x00 PREC=3D0x00 TTL=3D64 ID=3D3060 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D5=
8728 SEQ=3D1=0A=
[ 8633.632366] FORWARD_ICMP: IN=3Dra1 OUT=3Dbat0 MAC=3D90:15:64:00:0b:ff:90=
:de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D3060 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D=
58728 SEQ=3D1=0A=
[ 8633.650709] POSTROUTING_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.192 DST=
=3D192.168.6.1 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D3060 DF PROTO=
=3DICMP TYPE=3D8 CODE=3D0 ID=3D58728 SEQ=3D1=0A=
[ 8633.729794] PREROUTING_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:de:80:07:24:7b:90=
:15:64:00:0b:ff:08:00 SRC=3D192.168.6.1 DST=3D192.168.6.192 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D39290 PROTO=3DICMP TYPE=3D0 CODE=3D0 ID=3D58=
728 SEQ=3D1=0A=
=0A=
##=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D HERE the problem happens, not for=
warding the ICMP reply to ra1=0A=
=0A=
[ 8634.644973] PREROUTING_ICMP: IN=3Dra1 OUT=3D MAC=3D90:15:64:00:0b:ff:90:=
de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D0=
x00 PREC=3D0x00 TTL=3D64 ID=3D3171 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D5=
8728 SEQ=3D2=0A=
[ 8634.663238] FORWARD_ICMP: IN=3Dra1 OUT=3Dbat0 MAC=3D90:15:64:00:0b:ff:90=
:de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D3171 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D=
58728 SEQ=3D2=0A=
[ 8634.681573] POSTROUTING_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.192 DST=
=3D192.168.6.1 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D3171 DF PROTO=
=3DICMP TYPE=3D8 CODE=3D0 ID=3D58728 SEQ=3D2=0A=
[ 8634.760652] PREROUTING_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:de:80:07:24:7b:90=
:15:64:00:0b:ff:08:00 SRC=3D192.168.6.1 DST=3D192.168.6.192 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D39376 PROTO=3DICMP TYPE=3D0 CODE=3D0 ID=3D58=
728 SEQ=3D2=0A=
=0A=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
# Trace info on Router A (192.168.6.1)=0A=
root@ImmortalWrt:~# dmesg -c=0A=
[ 8636.392669] PREROUTING_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:15:64:00:0b:ff:90=
:de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D3060 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D=
58728 SEQ=3D1=0A=
[ 8636.411042] INPUT_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:15:64:00:0b:ff:90:de:8=
0:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D0x00 =
PREC=3D0x00 TTL=3D64 ID=3D3060 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D58728=
 SEQ=3D1=0A=
[ 8636.429048] OUTPUT_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.1 DST=3D192.16=
8.6.192 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D39290 PROTO=3DICMP TY=
PE=3D0 CODE=3D0 ID=3D58728 SEQ=3D1=0A=
[ 8636.442859] POSTROUTING_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.1 DST=3D1=
92.168.6.192 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D39290 PROTO=3DIC=
MP TYPE=3D0 CODE=3D0 ID=3D58728 SEQ=3D1=0A=
[ 8637.423525] PREROUTING_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:15:64:00:0b:ff:90=
:de:80:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D=
0x00 PREC=3D0x00 TTL=3D64 ID=3D3171 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D=
58728 SEQ=3D2=0A=
[ 8637.441904] INPUT_ICMP: IN=3Dbat0 OUT=3D MAC=3D90:15:64:00:0b:ff:90:de:8=
0:07:24:7b:08:00 SRC=3D192.168.6.192 DST=3D192.168.6.1 LEN=3D84 TOS=3D0x00 =
PREC=3D0x00 TTL=3D64 ID=3D3171 DF PROTO=3DICMP TYPE=3D8 CODE=3D0 ID=3D58728=
 SEQ=3D2=0A=
[ 8637.459891] OUTPUT_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.1 DST=3D192.16=
8.6.192 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D39376 PROTO=3DICMP TY=
PE=3D0 CODE=3D0 ID=3D58728 SEQ=3D2=0A=
[ 8637.473708] POSTROUTING_ICMP: IN=3D OUT=3Dbat0 SRC=3D192.168.6.1 DST=3D1=
92.168.6.192 LEN=3D84 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D39376 PROTO=3DIC=
MP TYPE=3D0 CODE=3D0 ID=3D58728 SEQ=3D2=0A=
```=0A=
=0A=
-----------------------------------=0A=
Other related information:=0A=
=0A=
On Router A:=0A=
```=0A=
root@ImmortalWrt:~# ./batctl n=0A=
[B.A.T.M.A.N. adv 2025.0-dirty, MainIF/MAC: rax0/90:15:64:00:0b:ee (bat0/22=
:b8:04:c2:f2:f8 BATMAN_V)]=0A=
IF             Neighbor              last-seen=0A=
90:15:64:00:0b:f7    0.140s (     1000.0) [      lan4]=0A=
9a:15:64:00:0b:f8    0.172s (        1.0) [      rax0]=0A=
=0A=
root@ImmortalWrt:~# ip neigh=0A=
192.168.6.2 dev br-lan lladdr 90:15:64:00:0b:f1 ref 1 used 0/0/0 probes 1 R=
EACHABLE=0A=
192.168.6.3 dev br-lan lladdr 90:15:64:00:0b:b8 used 0/0/0 probes 4 STALE=
=0A=
192.168.6.4 dev br-lan lladdr 90:15:64:00:0b:f6 used 0/0/0 probes 1 STALE=
=0A=
192.168.6.112 dev br-lan  used 0/0/0 probes 3 FAILED=0A=
192.168.6.193 dev br-lan  used 0/0/0 probes 6 FAILED=0A=
192.168.6.192 dev br-lan lladdr 90:de:80:07:24:7b ref 1 used 0/0/0 probes 1=
 DELAY=0A=
=0A=
root@ImmortalWrt:~# brctl showstp br-lan=0A=
br-lan=0A=
bridge id              7fff.901564000bff=0A=
designated root        7fff.901564000bff=0A=
root port                 0                    path cost                  0=
=0A=
max age                  10.00                 bridge max age            10=
.00=0A=
hello time                1.00                 bridge hello time          1=
.00=0A=
forward delay             8.00                 bridge forward delay       8=
.00=0A=
ageing time             300.00=0A=
hello timer               0.00                 tcn timer                  0=
.00=0A=
topology change timer     0.00                 gc timer                  55=
.93=0A=
flags=0A=
=0A=
bat0 (7)=0A=
port id                8007                    state                forward=
ing=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8007                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
=0A=
rax2 (5)=0A=
port id                8005                    state                forward=
ing=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8005                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
lan2 (2)=0A=
port id                8002                    state                  disab=
led=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8002                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
=0A=
rax1 (4)=0A=
port id                8004                    state                forward=
ing=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8004                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
ra0 (3)=0A=
port id                8003                    state                forward=
ing=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8003                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
lan3 (6)=0A=
port id                8006                    state                  disab=
led=0A=
designated root        7fff.901564000bff       path cost                100=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8006                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
=0A=
lan1 (1)=0A=
port id                8001                    state                forward=
ing=0A=
designated root        7fff.901564000bff       path cost                  4=
=0A=
designated bridge      7fff.901564000bff       message age timer          0=
.00=0A=
designated port        8001                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
```=0A=
=0A=
=0A=
On Router B:=0A=
```=0A=
root@ImmortalWrt:~# ./batctl n=0A=
[B.A.T.M.A.N. adv 2025.0-dirty, MainIF/MAC: apclix0/9a:15:64:00:0b:f8 (bat0=
/be:45:5c:1c:71:8f BATMAN_V)]=0A=
IF             Neighbor              last-seen=0A=
90:15:64:a0:0b:ec    0.424s (     1000.0) [      lan3]=0A=
9a:15:64:00:0b:b9    0.272s (        1.0) [      rax0]=0A=
90:15:64:00:0b:ee    0.456s (        1.0) [   apclix0]=0A=
=0A=
root@ImmortalWrt:~# ip neigh=0A=
192.168.6.3 dev br-lan  used 0/0/0 probes 6 FAILED=0A=
192.168.6.4 dev br-lan lladdr 90:15:64:00:0b:f6 used 0/0/0 probes 1 STALE=
=0A=
192.168.6.1 dev br-lan lladdr 90:15:64:00:0b:ff used 0/0/0 probes 1 STALE=
=0A=
192.168.6.193 dev br-lan  used 0/0/0 probes 6 FAILED=0A=
192.168.6.192 dev br-lan lladdr 90:de:80:07:24:7b ref 1 used 0/0/0 probes 1=
 DELAY=0A=
=0A=
root@ImmortalWrt:~# brctl showstp br-lan=0A=
br-lan=0A=
bridge id              7fff.901564000bf1=0A=
designated root        7fff.901564000bf1=0A=
root port                 0                    path cost                  0=
=0A=
max age                  10.00                 bridge max age            10=
.00=0A=
hello time                1.00                 bridge hello time          1=
.00=0A=
forward delay             8.00                 bridge forward delay       8=
.00=0A=
ageing time             300.00=0A=
hello timer               0.00                 tcn timer                  0=
.00=0A=
topology change timer     0.00                 gc timer                  54=
.47=0A=
flags=0A=
=0A=
bat0 (4)=0A=
port id                8004                    state                forward=
ing=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8004                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
=0A=
rax2 (8)=0A=
port id                8008                    state                forward=
ing=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8008                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
ra1 (6)=0A=
port id                8006                    state                forward=
ing=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8006                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
lan2 (2)=0A=
port id                8002                    state                  disab=
led=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8002                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
=0A=
rax1 (7)=0A=
port id                8007                    state                forward=
ing=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8007                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
ra0 (5)=0A=
port id                8005                    state                forward=
ing=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8005                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
hairpin mode              1=0A=
=0A=
lan1 (1)=0A=
port id                8001                    state                  disab=
led=0A=
designated root        7fff.901564000bf1       path cost                100=
=0A=
designated bridge      7fff.901564000bf1       message age timer          0=
.00=0A=
designated port        8001                    forward delay timer        0=
.00=0A=
designated cost           0                    hold timer                 0=
.00=0A=
flags=0A=
```=0A=
=0A=
Thank you so much in advance!=0A=
=0A=
Best regards,=0A=
Jingwei =0A=

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA89395674
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 31 May 2021 09:47:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B1500816FD;
	Mon, 31 May 2021 09:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622447271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=VIbFRUgjIx8KN9zthN9tqct+XQW3+5YSc2jPfMv8VIo=;
	b=KgQfD+EooWQcGYdeL+L+1M3Br/HQUnePdyb5J1UOS2iPa0577wI9RRRqhNsVIg80wf+2xF
	ZgLCbwlyxN3sutztoCXCSce0OoCVYWo/5MfQQvj5wt8ia6RV3bNmsTEphh0zOUic31StEP
	6qx228QqUQTWVI2Guvn8k5MEO1bKRo4=
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Request for consultancy on B.A.T.M.A.N derived overlay routing
Date: Mon, 31 May 2021 07:45:07 +0000
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Approved-At: Mon, 31 May 2021 07:47:49 +0200
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PCLC4QAG4GZPIWTV7TOB6GJBF76NYEIE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <162244727035.1314.8476603047553166580@diktynna.open-mesh.org>
From: "Brian Enggaard Jakobsen via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: =?iso-8859-1?Q?S=F8ren_Stiig_Hansen?= <soren.stiig.hansen@systematic.com>, Brian Enggaard Jakobsen <Brian.Enggaard.Jakobsen@Systematic.com>
Content-Type: multipart/mixed; boundary="===============5771060400934862909=="

--===============5771060400934862909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5771060400934862909==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on072b.outbound.protection.outlook.com [IPv6:2a01:111:f400:fe0e::72b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8456880346
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 31 May 2021 09:45:08 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0xxxBQtRnbXHlTtSajr4bCebCnxFMhFmrYXZbLXKlh5t3wlp4ujh9yqXSCC/soOAfETgXltekvIYQU0p/ZNnmGMtV0GWmTC62WGcqaVSqLnZZafMKVl1W3imhse4TXwmYPLZEui0n3GGmF/KwLvQLLustveMSwjVDDiQ/8CnKP5l6Brgw/QZmJMRlHic4A1DIkZwFlr4fxVtpS2wA2CM1H+NiHyN9Q09RmIa486aEVao33gAezS2x30DQT+iLBNA1K5/dll9TP9wgfQyS5oVAgFRkTU94btQouHP8TGEn+Th+nbqXbpWPIcKu+IoPwpI/9ZyHIcOQ0h7GteOXseXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tNfNISG/EHROHBUqbvU2cJwVX2ZDE0s/fP8WGb0F/0M=;
 b=BXOFAYc3sW02jtZ/8J4bB8MfmrNJpL8cNm3xNnY3U/FBB41lJGvr4bKXDXBbOjm1uyX78NQBP2iwwY1VSKdDu6yGC34W6ZxMF1Vc8rAUqykaDVWyKBViWE9GXYa5Y/TwWuEeIHcRPWV3NtLxqum3i60pg1k1vEjNklWcl2cbI1EQNb7HRKKyctjLRkxKR1f/ghGLv/mrKfU4cRU8/fV4P0GHiAJ+b9whjauZqiCeN/vLLpYhRQjmZAxCEkeCTdnF2fY6QpKVwWvPJweOJTDWS6MOV3bM+VQ1kEDim1gX0wDqQX6RCWg2lmyLaeUtUp5CBiS8EggpMmR67T33Pf8u2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=systematic.com; dmarc=pass action=none
 header.from=systematic.com; dkim=pass header.d=systematic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systematic.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tNfNISG/EHROHBUqbvU2cJwVX2ZDE0s/fP8WGb0F/0M=;
 b=NBJ70igg+BdjGns6hRvqxvuvbhveR2FGlbyUgtgYRyo8wAtRn7nzumloIRzh075TP99z1ao5uo/LXUvdwlOlBh26SMT8uFEs5eq+XJk312b+MuD40wrsHGQGNpQ0dHANtMzPMP7eTcZneUKuqn+TgZruMb4NCYGNAHOzcU6nWn0=
Received: from AM0P191MB0257.EURP191.PROD.OUTLOOK.COM (2603:10a6:208:4c::32)
 by AM9P191MB1304.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:1fd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Mon, 31 May
 2021 07:45:07 +0000
Received: from AM0P191MB0257.EURP191.PROD.OUTLOOK.COM
 ([fe80::ec0b:e2db:b7cc:c4ef]) by AM0P191MB0257.EURP191.PROD.OUTLOOK.COM
 ([fe80::ec0b:e2db:b7cc:c4ef%7]) with mapi id 15.20.4173.030; Mon, 31 May 2021
 07:45:07 +0000
From: Brian Enggaard Jakobsen <Brian.Enggaard.Jakobsen@Systematic.com>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Request for consultancy on B.A.T.M.A.N derived overlay routing
Thread-Topic: Request for consultancy on B.A.T.M.A.N derived overlay routing
Thread-Index: AddV7iPq5FbTb0hbQKOThnZSDTQ9WQ==
Date: Mon, 31 May 2021 07:45:07 +0000
Message-ID: 
 <AM0P191MB0257694E5BEDB8A508953B1AD13F9@AM0P191MB0257.EURP191.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.open-mesh.org; dkim=none (message not signed)
 header.d=none;lists.open-mesh.org; dmarc=none action=none
 header.from=Systematic.com;
x-originating-ip: [185.43.140.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab584019-8f09-447b-bcc8-08d9240802a5
x-ms-traffictypediagnostic: AM9P191MB1304:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <AM9P191MB130414BBBAE30B22126E9023D13F9@AM9P191MB1304.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 YdzgVgpRz8oUnP3WY3xz9S1MByafD4suPUvopegv6TECmHh4lIq5v6vB1KJtNZmoVLnnUENqDromLOH5+T7jQlwIqEiG5E508p9ld6ngOtpSbNXbt0mw5d0Tie6GaavlPPLGWuXE8qv0P4uy8hxg+y3Z+B/Ndj86HCoRdSvHg+yDubhYAewxJ2Iv39DoK0Rby5zV5HnX1p678vXcV/Y2n0w3101pikWcGG8YMopOZWHAnseQs54TaIjFcSFy5DE5xKtW6Y2UWVJwFTUjRuEaC0jyiyoRWaVesN5q7Btx53HzwOM7MEH1hyn+WAZd2iClHSwQiC+AKuVbvgzAHazzj70BzKmMBadvYC77DXPTzA2PE0wDekwr5rby8LfSn+jdFvtaKKRFWrxWnuoSizDlu67lizxwkM8YD11lDaL5e2uz2iNjs3zt8TYddtBR/8GOKRtoIiJXD98D/unf7aNZ211boEW4eKjaK5bJUg0Cgo94o+WL9fl+Ah0jLuUizowRiwq9KOrhnVM8LPSQFkKbfnrD2jU+Z6Gk1sPIGtvTlwlFdGZ/SISKBUlQovgZiiI59tsuOjy4UNGVH1hEPxZdpvCDop3oN+i6jFMScd1Q5AA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0P191MB0257.EURP191.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(376002)(346002)(39850400004)(366004)(6916009)(5660300002)(33656002)(478600001)(8936002)(4744005)(55016002)(186003)(9686003)(6506007)(122000001)(83380400001)(316002)(86362001)(107886003)(66556008)(52536014)(66476007)(66446008)(64756008)(71200400001)(76116006)(66946007)(8676002)(38100700002)(26005)(7696005)(4326008)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?tiYsYBk7EuSPGXJGj+g1rxh7iD4hDhFsUhmc4wt/wAMGQXKfuTXRix0MlK?=
 =?iso-8859-1?Q?3FIb9ue2oR1GSGmhcQmkCsP9vtMywmTyzQ6o2uwdtTcPKMAjyPljN7EgDY?=
 =?iso-8859-1?Q?dqJey+RoWRif1+SRkTJg/94FrJm7cfsPjYR19xctLkhJjuGNqVytLn+GpK?=
 =?iso-8859-1?Q?49tsTkrQao0xywv7L7f4DRU0GSiyB7ZjrNXqnO1qol6yEUhGHKvhjyQmRP?=
 =?iso-8859-1?Q?9pHdOpdrIr7VbNemcgVccqXq8nBVhshRuK8u9OfrehNUOuquWXZTlZf6dO?=
 =?iso-8859-1?Q?Xao1sKyq+Jwtyn3kI6avzlf4y3SoGlUA7d526q6OPDg4Wa3vyN76UkNcr8?=
 =?iso-8859-1?Q?AasfMTa8mK0LJcLRhEWl8q+regHF1Saj36tpBGcwujcnYZevjuDi1leidL?=
 =?iso-8859-1?Q?t0V6PcO2FmsSleLqUyBkGCxEvpDBNPuj0LL7oL3fykETNbmphk/Mdf9xfj?=
 =?iso-8859-1?Q?7qR0EzEtCJKrCsmatUDps53CAcZFjYtE5Y+cv+1XKKhYJMGMJUlNAne2Mh?=
 =?iso-8859-1?Q?O04haLZ7fp3lF/3dkJ56yacArpEIgTJGGbA5PbAd7Q4eoSrJOt+gmp9zYS?=
 =?iso-8859-1?Q?AIWvRzJ3svZHkT2JGT3NG2COrAWXXzE4FMBoB7TpyklTayOPmphs6ZHvSx?=
 =?iso-8859-1?Q?b5or90E3e8sMxZC2Zjo5vMljxJMIG7UJ2sLA4zLD0GBIjR0I7MJ/6E6Ug1?=
 =?iso-8859-1?Q?4dtVcAKcmE1pZdv/n4VupU0wxhq5iUugabBJPqr5uPUcrqqBEZTL2rGMef?=
 =?iso-8859-1?Q?F4wUkDjIlb0L0VadxHRXtOTEtSs0sM7pO+t8xbTBgmayOWTfrRu8URgPCv?=
 =?iso-8859-1?Q?7oI1iS8OGar3aC8ZG93c2UIN/2v0u/GpsC+LB1SQwPeO3bM5MSw+cXqPSP?=
 =?iso-8859-1?Q?hhZa9BpB/R04g8jTyZb0filjVVWDDJ9xaAAJLFOvqX54OuakGHb4iBNX+R?=
 =?iso-8859-1?Q?jgGfN+EpBOdTAPRuzoZZ1JNC4zCWE16aUb1/gDJvXT+/W82N/Hto3lc1pO?=
 =?iso-8859-1?Q?mAeTezH3fOLt8H1kLo0Ikv77D5YF7MKli/mG+ZmUg1uETqMfuIVcuk8lFF?=
 =?iso-8859-1?Q?MyLdGc/yCI1ynd0Rf09eMIKE36f47xZnJYfnCGh+LseNUJFHrSSRgCTA7y?=
 =?iso-8859-1?Q?VMxIRYaFIUhBNGgswI5NQbejpj87OiemsK2qIta9Y/5SNj0q99uR7IXiF3?=
 =?iso-8859-1?Q?XmdG4cGpdxfphA0hVbJzCJrtqJcMVvzs3LwyXzL/JX0UcKpirIu/FeEJ2Q?=
 =?iso-8859-1?Q?hmj6K1DJkwYB2t5mcOqJDuG620tdjme6nmNwO0ZgejkTp7Da2VebympYIp?=
 =?iso-8859-1?Q?Rs8QbwueDU3UStPNBrkUjj5X+Kx6nSTjfizkqSq/4Y5rxjZfW4zgQjWzRR?=
 =?iso-8859-1?Q?6zRhbc072U?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: systematic.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P191MB0257.EURP191.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ab584019-8f09-447b-bcc8-08d9240802a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2021 07:45:07.1261
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7f6211b1-7c5c-4277-8403-c0ccbd7f0408
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +oYSbgkziVb3e23FUsxk90z7lnqpb0sOoj8q+FmgfzXOGcHef2Uydh4IRFAnKLIxlDg4yMcd3ibFNPoLrH54UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P191MB1304
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1622447108; a=rsa-sha256;
	cv=pass;
	b=IzPnEym8KoXF8wapm/Mc/YcL5k6cwOt2c6i+5fn3yXGBC6SdXx0rgXxCOUFdR3tlkfspQE
	Ra2EHGzyoRcTYHgTMFKJZxMlHRslNH3i6FSkiA3lOgKLI/M00cPdkPqlleCsXSOuS3b9UP
	Ah+TKAOwr8dVTkcecdQPao1hbPzW9C0=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=systematic.com header.s=selector2 header.b=NBJ70igg;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (diktynna.open-mesh.org: domain of Brian.Enggaard.Jakobsen@Systematic.com designates 2a01:111:f400:fe0e::72b as permitted sender) smtp.mailfrom=Brian.Enggaard.Jakobsen@Systematic.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622447108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=tNfNISG/EHROHBUqbvU2cJwVX2ZDE0s/fP8WGb0F/0M=;
	b=kE1x8DeOvy3Gy2fdej8gHw1DLnQQEhhywTvmzSw+gxE1rJNEvolp3mUd59TYvo+SkqFCHX
	OHyQFRYoPedqxSlWZSteGA3qbNXFDP65fCn/yaFHvEYA8fmK2xxAVsWZanw2aYEr6UOXtp
	Svtrn5SMTeEudSAuHLAB/frxu1wcIew=
X-MailFrom: Brian.Enggaard.Jakobsen@Systematic.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: ZITUS3AFJRZW5QOZ4EODF6BJXDTGUPEO
X-Message-ID-Hash: ZITUS3AFJRZW5QOZ4EODF6BJXDTGUPEO
X-Mailman-Approved-At: Mon, 31 May 2021 07:47:49 +0200
CC: =?iso-8859-1?Q?S=F8ren_Stiig_Hansen?= <soren.stiig.hansen@systematic.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PCLC4QAG4GZPIWTV7TOB6GJBF76NYEIE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi B.A.T.M.A.N developers

I am commercially trying to develop an overlay network (not in kernel space=
), bridging multiple network technologies, with a routing algorithm partly =
inspired by B.A.T.M.A.N protocol version V.
I am wondering if any of the developers of the B.A.T.M.A.N protocol is inte=
rested in participating in a peer review of the suggested overlay network r=
outing protocol? We are very much interested in getting some experienced pe=
ople to participate, casting a critical view on our protocol, and we will p=
ay for the hours spent.
Participating will imply signing of a NDA.

Please let me know if any of you would be able to assist.

Kind regards

Brian Enggaard Jakobsen
Architect

Systematic A/S
S=F8ren Frichs Vej 39
8000 Aarhus C
Denmark

Mobile: +45 2462 5977
Brian.Enggaard.Jakobsen@Systematic.com

--===============5771060400934862909==--

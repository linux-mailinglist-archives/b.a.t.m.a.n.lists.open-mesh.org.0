Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 469F23D7164
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Jul 2021 10:44:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0100F80C47;
	Tue, 27 Jul 2021 10:44:28 +0200 (CEST)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0F3708073F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Jul 2021 10:44:25 +0200 (CEST)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mtapsc-2-V9oMQAtEOq6BFHQKDsaWeQ-1; Tue, 27 Jul 2021 09:44:23 +0100
X-MC-Unique: V9oMQAtEOq6BFHQKDsaWeQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Tue, 27 Jul 2021 09:44:21 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.023; Tue, 27 Jul 2021 09:44:21 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Sven Eckelmann' <sven@narfation.org>, Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Thread-Topic: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Thread-Index: AQHXgKmQSnOHUxbKO0+Mz34J8bnrJ6tWhKAw
Date: Tue, 27 Jul 2021 08:44:21 +0000
Message-ID: <bb831fbad4f74e11b868d936f7616d1a@AcuMS.aculab.com>
References: <20210724162429.394792-1-sven@narfation.org>
In-Reply-To: <20210724162429.394792-1-sven@narfation.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627375466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=979XmkHeWuxnHm5/ToqAwCyJRo3gLbM4xz8aYq7tUss=;
	b=b71frtyMl4ugKipVhOOm3FxMy0qCxdOKRu03sbpnQ+Br+qyysOKnZ3QT6kdK5nrBRVTzzD
	agHvMkIGXNT+sTJzV6IIaVW8qmf1hslUr7e2nMcsd/mujbW8HZcwgDHIz2iLlYIamPU4MI
	1jiirsp0jVYvFLsNdt7vvCYqlGaWu/o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627375466; a=rsa-sha256;
	cv=none;
	b=GMglHgR8xK3fMMeg1RKdkjXk4PKlxB/lAGmfWpCEPD33/NiH1KJrVz6qh3bLn5GH1ZnFuY
	MqZg/3+n6QhDgj3M1aA3zdgLvSVvtsS/tPCLrqYwz27nMQUYzT7uS/0/Ul6xtc9dr/9Gd5
	Bf9+jAgE1um6Yg1VuNilveJl05jaELU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Message-ID-Hash: E2EEGT2BXU2REPEJLHLACKC4C4WI7UQ6
X-Message-ID-Hash: E2EEGT2BXU2REPEJLHLACKC4C4WI7UQ6
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/E2EEGT2BXU2REPEJLHLACKC4C4WI7UQ6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann
> Sent: 24 July 2021 17:24
>=20
> Sparse will try to check casting of simple integer types which are marked
> as __bitwise. This for example "disallows" simple casting of __be{16,32,6=
4}
> or __le{16,32,64} to other types. This is also true for pointers to
> variables with this type.
>=20
> But the new generic {get,put}_unaligned is doing that by (reinterpret)
> casting the original pointer to a new (anonymous) struct pointer. This wi=
ll
> then create warnings like:
>=20
>   net/batman-adv/distributed-arp-table.c:1461:19: warning: cast from rest=
ricted __be32 *
>   net/batman-adv/distributed-arp-table.c:1510:23: warning: cast from rest=
ricted __be32 [usertype]
> *[assigned] magic
>   net/batman-adv/distributed-arp-table.c:1588:24: warning: cast from rest=
ricted __be32 [usertype]
> *[assigned] yiaddr
>=20
> The special attribute force must be used in such statements when the cast
> is known to be safe to avoid these warnings.

At least the __force is being added to an existing cast.

The real problems are when a (__force __le32)value cast is used
to silence sparse.
These should really be something like:
=09__tell_sparce(__le32, value)
so that the whole thing can be removed by the preprocessor when
compiling the code.

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)

Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HcmLteO+WlN9wIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 08:31:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 567A04C739A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 08:31:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F23AC85AA0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 08:31:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777962710;
 b=kXWPE4dNAlHXOiRi2pxfHNZ9DwasnpHSe5KdPbNzDe9KYb/hgvXtmCTZH1RCKuVu/6sBv
 9C0icZlIG744hh0TKFmzs5XrWaC4GPyiHzKF5IodDndAfjQ2wMNO/1Pp4gQN9fl78z8IDyE
 XQ0FQRoDxLaxsydp0tJsMXeiKOs5eMQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777962710; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0p63Vuyg2BHhSCETxmGqmI4a7vMqL3by6SZS5CTlcLk=;
 b=WgxVPWcIyc8xk+4ZZ5v1MXMafu+98uDTsJpG13xTUT4RN5w3M4oFs5qGXenlngl87oFXd
 Nd1PVsjtcebedJX6ezFRZbhQB+57hsAlvIey85dWj7DINRrn+wQUJqckMaFzGrthe2xyO/+
 BULGChfRY9ZCrVlRGg4ICFge7XbAlQQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 32EAD82310
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 05 May 2026 07:00:19 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777957219;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0p63Vuyg2BHhSCETxmGqmI4a7vMqL3by6SZS5CTlcLk=;
	b=D8fKMom7T2OW+6WO02+jEnSpqI1mGJL7l/g4Wn0hKprrmhaOtLg/PP/QwvsWwo90+zzoi2
	kpXbljpOCM+pxcnLY69OtsVN5SjSfbscrle4Xuste98sLxzbWV3ohf70/NXNAMukmev67b
	5sPM8/PgO8BPoxqvOxLYaJV1cnjE/FA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=dCoS9LBa;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777957219;
	b=eOngPztbVwuYLLLrIBzjc/8N+3qRLoC+i+ieCWIxxtB2ukTw8nQaUAbiqq8EELOvaZtg10
	aLLPYjM2aITd9UeyUh58w8cOnO3QKSIk2o9eyxNiWkH6EOU8OJqF7CuDXtY/S4ov6EZhhT
	orA8hXYpfgwkcRzgakT+lb4UsifJNEw=
Received: by dvalin.narfation.org (Postfix) id B1DB31FF65;
	Tue, 05 May 2026 05:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777957218;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0p63Vuyg2BHhSCETxmGqmI4a7vMqL3by6SZS5CTlcLk=;
	b=dCoS9LBafapQqcaPCIGlZCEsmGIVJ5bwtRDdM5qEu1t604SHKmFW5JGuU4hGMIQ6YoB5GC
	NY/LLnm60aRptb233MQUyr838Uak5inR/AMAmxcY7ctCH+et1EFlFcRkez5UuyJHvrwVW+
	2QLLEV3uI2cIs2NMQYVFrl/DFlyPhvI=
From: Sven Eckelmann <sven@narfation.org>
To: Jakub Kicinski <kuba@kernel.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Marek Lindner <marek.lindner@mailbox.org>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ao Zhou <n05ec@lzu.edu.cn>,
 Haoze Xie <royenheart@gmail.com>, Jiexun Wang <wangjiexun2025@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Luxing Yin <tr0jan@lzu.edu.cn>,
 Ruide Cao <caoruide123@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Yifan Wu <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 stable@kernel.org, "Kernel.org Tools" <tools@kernel.org>
Subject: Re: [PATCH batadv 0/8] batman-adv: follow up fixes
Date: Tue, 05 May 2026 07:00:13 +0200
Message-ID: <2262783.irdbgypaU6@sven-l14>
In-Reply-To: <5990011.DvuYhMxLoT@sven-l14>
References: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
 <20260504171051.2b3e47ef@kernel.org> <5990011.DvuYhMxLoT@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart14003289.uLZWGnKmhe";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-size;
 news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: SUTWHVT2C4A367GSIUYUGSN6JDGZ2JR2
X-Message-ID-Hash: SUTWHVT2C4A367GSIUYUGSN6JDGZ2JR2
X-Mailman-Approved-At: Tue, 05 May 2026 08:31:30 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SUTWHVT2C4A367GSIUYUGSN6JDGZ2JR2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 567A04C739A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[mailbox.org,simonwunderlich.de,mandelbit.com,davemloft.net,google.com,redhat.com,kernel.org,lists.open-mesh.org,vger.kernel.org,lzu.edu.cn,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim]

--nextPart14003289.uLZWGnKmhe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH batadv 0/8] batman-adv: follow up fixes
Date: Tue, 05 May 2026 07:00:13 +0200
Message-ID: <2262783.irdbgypaU6@sven-l14>
In-Reply-To: <5990011.DvuYhMxLoT@sven-l14>
MIME-Version: 1.0

On Tuesday, 5 May 2026 06:46:11 CEST Sven Eckelmann wrote:
> On Tuesday, 5 May 2026 02:10:51 CEST Jakub Kicinski wrote:
> > On Sun, 03 May 2026 14:22:33 +0200 Sven Eckelmann wrote:
> > > While reviewing the fixes submitted to batman-adv in the recent weeks,
> > > further problems in similar or adjecent code was identified. This was either
> > > noticed in the manual review or reported by sashiko.dev.
> > 
> > Are you CCing netdev to get this reviewed by Sashiko?
> > Please don't..
> > We delegate code to sub-sub-systems to lower the patch volume :(
> > 
> 
> Because of `b4 prep --auto-to-cc`. Will now manually remove you.

To speed up the discussion: @Konstantin, is there a way in b4 to say "stop at 
the sub-sub-systems" when doing `b4 prep --auto-to-cc`? I am just trying to get the 
`b4` workflow somehow working with the netdev requirements.

Regards,
	Sven
--nextPart14003289.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCafl5XQAKCRBND3cr0xT1
y9kbAP0We2KhIMdc154ZGMvJr5fgFhZ3BuBDeXGUee0WAUaLPgEA4HdEwJwLk+ri
//HNnBYNg7ZtoVdLqMIpLaFy0KqO0AY=
=KjI1
-----END PGP SIGNATURE-----

--nextPart14003289.uLZWGnKmhe--




Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIcgCvvp+mlIUAMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 09:12:59 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3754D70F5
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 09:12:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 56D6481F41
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 09:12:58 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778051578;
 b=CXjW5FT5sKbILzPQnlyUQcKuGPWs1uJv2rNjKoxyUYWREXQpBgyLEVA7V+WoBi+Cim3Vg
 y8FRG7uQw6jQDmo3XagOSpVDYaNjpOrwOBlCYN3N1M7wm/hZEtE08MyuA9qF853Mxla+h0r
 koZ9Zxy5vGj5nxPC+2FF74A/rRcQFWU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778051578; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uWVaLyHPZtQIn5sUjDowWMmG8VQiZnZt08qHxOQJwuQ=;
 b=Ih/+1VI3Z3Hr5dnPDbN30M7eFHY7Cn1els82xZJm8Z/fOsvyBmrmkcGvBq+r5VafeUl1a
 VbFVJyH8UycfgvXxr2prawuYioVIpGrFV0L4HDYZDvqQdk9lMDSsQG0BJHC/N9c7IJ8u40H
 SWkCbdVc5mgnE99k1Hz/ydx9daZDLbk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F07308183E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 08:59:24 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778050765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uWVaLyHPZtQIn5sUjDowWMmG8VQiZnZt08qHxOQJwuQ=;
	b=qrrw2N1R2iZAU8ADx5hn+Aih8RiePvTh/wurTTGkJfj/chjrvd5HR0T/Hfp7Og8EqVlYeE
	etXCKY1n6+jKYIDbx9Mk8hmHYp2BwKk2SbNmm7BSyXuPWE7AtHv1ZNZZV5k/rwanlXgT0F
	5shbaVmSy9qto8lSqgfP9bW7LSG56/s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JjglE0W1;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778050765;
	b=IMhS+joEQcHO22BNLJciILJHtSAeaksisbl4N0BbASmU56NS2ALJ+8dmgN5c4c4Pti0UpM
	by1akvByJ6nkmqkor26z8im8iyX61AG3b/PcRVDoS6tJ4+NN32FSRD+2R2B1dP+NfQphem
	iLtgYUvUIx7Vjh7ve7BXgRZdJs6NZMk=
Received: by dvalin.narfation.org (Postfix) id 502FC20DBE;
	Wed, 06 May 2026 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778050762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uWVaLyHPZtQIn5sUjDowWMmG8VQiZnZt08qHxOQJwuQ=;
	b=JjglE0W1bfq7CphEirApsrNeQYJaIS6NCjTH4w6oaUSZnTubnpGXNM4D73Qn4sPK4Qk+p0
	iqA/gOzCTPfEzEzqflV/fXf5HwcyLJgQAdZUYH1JSAotz5mSxIKmBWb9gf8lnkFNV0BGCN
	eZ81mGfDt1HRb5suqbqyZ+kFwIPlcAs=
From: Sven Eckelmann <sven@narfation.org>
To: Jakub Kicinski <kuba@kernel.org>
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
 Yifan Wu <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>
Subject: Re: [PATCH batadv 0/8] batman-adv: follow up fixes
Date: Wed, 06 May 2026 08:59:19 +0200
Message-ID: <5367405.irdbgypaU6@ripper>
In-Reply-To: <20260505172017.6caf7347@kernel.org>
References: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
 <5990011.DvuYhMxLoT@sven-l14> <20260505172017.6caf7347@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart17108528.uLZWGnKmhe";
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
Message-ID-Hash: B5LM46MOJ56AJPOVJOIN4XSR3HUT25U6
X-Message-ID-Hash: B5LM46MOJ56AJPOVJOIN4XSR3HUT25U6
X-Mailman-Approved-At: Wed, 06 May 2026 09:12:37 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/B5LM46MOJ56AJPOVJOIN4XSR3HUT25U6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: AC3754D70F5
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
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[mailbox.org,simonwunderlich.de,mandelbit.com,davemloft.net,google.com,redhat.com,kernel.org,lists.open-mesh.org,vger.kernel.org,lzu.edu.cn,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email]

--nextPart17108528.uLZWGnKmhe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH batadv 0/8] batman-adv: follow up fixes
Date: Wed, 06 May 2026 08:59:19 +0200
Message-ID: <5367405.irdbgypaU6@ripper>
In-Reply-To: <20260505172017.6caf7347@kernel.org>
MIME-Version: 1.0

On Wednesday, 6 May 2026 02:20:17 CEST Jakub Kicinski wrote:
> Ah, I see. I was asking because I don't recall us getting much batadv
> patches CCed to netdev. Maybe it's simply because there wasn't that
> many of them to begin with.
> 
> If the rate keeps up let's add an X: to MAINTAINERS to avoid
> netdev@ being CCed. IDK if that's what X is supposed to be used for 
> but we use it for wireless and bluetooth already. The PRs still
> flow thru networking tree, but there's no need for netdev to be CCed
> on 99% of the patch submissions.
> 

Thanks for the hint, queued up a patch:

$ ./scripts/get_maintainer.pl -f net/batman-adv/*
Marek Lindner <marek.lindner@mailbox.org> (maintainer:BATMAN ADVANCED)
Simon Wunderlich <sw@simonwunderlich.de> (maintainer:BATMAN ADVANCED)
Antonio Quartulli <antonio@mandelbit.com> (maintainer:BATMAN ADVANCED)
Sven Eckelmann <sven@narfation.org> (maintainer:BATMAN ADVANCED)
b.a.t.m.a.n@lists.open-mesh.org (moderated list:BATMAN ADVANCED)
linux-kernel@vger.kernel.org (open list)


$ ./scripts/get_maintainer.pl -f Documentation/networking/batman-adv.rst
Marek Lindner <marek.lindner@mailbox.org> (maintainer:BATMAN ADVANCED)
Simon Wunderlich <sw@simonwunderlich.de> (maintainer:BATMAN ADVANCED)
Antonio Quartulli <antonio@mandelbit.com> (maintainer:BATMAN ADVANCED)
Sven Eckelmann <sven@narfation.org> (maintainer:BATMAN ADVANCED)
Jonathan Corbet <corbet@lwn.net> (maintainer:DOCUMENTATION)
Shuah Khan <skhan@linuxfoundation.org> (reviewer:DOCUMENTATION)
b.a.t.m.a.n@lists.open-mesh.org (moderated list:BATMAN ADVANCED)
linux-doc@vger.kernel.org (open list:DOCUMENTATION)
linux-kernel@vger.kernel.org (open list)

$ ./scripts/get_maintainer.pl -f include/uapi/linux/batadv_packet.h include/uapi/linux/batman_adv.h
Marek Lindner <marek.lindner@mailbox.org> (maintainer:BATMAN ADVANCED)
Simon Wunderlich <sw@simonwunderlich.de> (maintainer:BATMAN ADVANCED)
Antonio Quartulli <antonio@mandelbit.com> (maintainer:BATMAN ADVANCED)
Sven Eckelmann <sven@narfation.org> (maintainer:BATMAN ADVANCED)
b.a.t.m.a.n@lists.open-mesh.org (moderated list:BATMAN ADVANCED)
linux-kernel@vger.kernel.org (open list)


@Yuan: Thanks for updating your internal rules. But the main problem (more 
patches send to netdev) was caused by my oversight. Btw. thanks for all your 
contributions.

Regards,
	Sven
--nextPart17108528.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCafrmxwAKCRBND3cr0xT1
y4M7AQD3C+0KX+H35fwADJMKyyDf2c6YpeMAzo+O1stjymGMpgEAwQzkhEb6I/tf
HEOwkJ70VPq8m4RGK8qvBwrpKpKFNgc=
=cvFu
-----END PGP SIGNATURE-----

--nextPart17108528.uLZWGnKmhe--




Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNuuLBEC92nZbAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:06:41 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 710424B4DB8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:06:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3849585AAC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 10:06:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777795598;
 b=37Ex62cUXnN57I40pufdERlqwK+k7pc66IFVd0vLvUhkn1rg9ynMv3CoM8egkXjRG9ryR
 74cLrnPHbKz3pRxAkfKRKaojLsc0W62v6VfsMITiFVwvkGRID5km8+kO5wI92kkw0DvJgzb
 7SowMpjBTn2eppGcTm6yP0QgOoAykTc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777795598; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fzR8+k31T3dyo0vuNU9VsFopPI5PjBRJUMzt+T9FZaY=;
 b=PWFVLzVeUUkc7rPSNQbBYGHlvB6veILUae51t6RlnOW3p2bwzH5JpY05cVwkZpDkDpbBV
 spnA7D7pIjxMZIHmZaM5i3YSWPyCww+ey398bAdDu9DZUIPVYVsbmfl7eov0jq6KNrpciFT
 p8lMT35KakFpMGDeLESAlECK8i4a7wg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9BA1A844AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 10:05:46 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777795556;
	b=heilhXzUVVSVox3ywoNtJ6b24sRu0e0WWD1DbbH0rMQzXzNTgOk58SDaDwAaBNc9EqbDDE
	oSDJWx2l7s6+y6460bYvvh/UQOVRaxCyW/3D2gbbWkgsZXzL8WEUOU7vqKb5chKRQcPSno
	IgeFkGBllio3uZ+hJWlYXFLOL1RqF48=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zzq5e9Ka;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777795556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fzR8+k31T3dyo0vuNU9VsFopPI5PjBRJUMzt+T9FZaY=;
	b=e1KphscR/v1ZHjOaQXfs92XKlLPJphLZmD2iGMABaQhV62rkcgMlU5QX0Xh0uOX5wKB6pS
	+jmzu58Up6UC68o8/1P9mvK5/LGZNAkYb0fR9iAOkrMKi2Ltp8qnICRdbU17PqGwRkqg8y
	8gBnkVqBIo3hzI3323BxHyx3QbRK0o4=
Received: by dvalin.narfation.org (Postfix) id 7A05D1FF83;
	Sun, 03 May 2026 08:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777795545;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fzR8+k31T3dyo0vuNU9VsFopPI5PjBRJUMzt+T9FZaY=;
	b=zzq5e9Kap5VbFyzDbR2iwLtVyyJDPfdZepaW/Wx/mfpcMuskYQmaD41D0ch77+ZOgR8kU8
	xk5ER8I3cjMMw/UvFB2FKL2q2fwtM/HjoPt9CClwVLeCD61krsezhMCuXpSBdK1wwlRajd
	XMkwBCFqD9CwQjzoqaJTMvNCPXYeT2U=
From: Sven Eckelmann <sven@narfation.org>
To: Ren Wei <n05ec@lzu.edu.cn>, Simon Horman <horms@kernel.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 yuantan098@gmail.com, yifanwucs@gmail.com, tomapufckgml@gmail.com,
 bird@lzu.edu.cn, tr0jan@lzu.edu.cn, wangjiexun2025@gmail.com
Subject: Re: [PATCH net v2 1/2] batman-adv: reject new tp_meter sessions
 during
 teardown
Date: Sun, 03 May 2026 10:05:35 +0200
Message-ID: <14078459.uLZWGnKmhe@sven-desktop>
In-Reply-To: <20260428183028.GW900403@horms.kernel.org>
References: <20260427064338.1526762-1-n05ec@lzu.edu.cn>
 <20260428183028.GW900403@horms.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3119035.e9J7NaK4W3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: IVO5L7L3YOO5H34AP2S5HUCHVPA76EPO
X-Message-ID-Hash: IVO5L7L3YOO5H34AP2S5HUCHVPA76EPO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IVO5L7L3YOO5H34AP2S5HUCHVPA76EPO/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 710424B4DB8
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,mailbox.org,simonwunderlich.de,mandelbit.com,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lzu.edu.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

--nextPart3119035.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Ren Wei <n05ec@lzu.edu.cn>, Simon Horman <horms@kernel.org>
Date: Sun, 03 May 2026 10:05:35 +0200
Message-ID: <14078459.uLZWGnKmhe@sven-desktop>
In-Reply-To: <20260428183028.GW900403@horms.kernel.org>
MIME-Version: 1.0

On Tuesday, 28 April 2026 20:30:28 CEST Simon Horman wrote:
[...]
> Hi Ren,
> 
> An AI generated review of this patch-set is available on sashiko.dev.
> Could you take a look over that. I expect that some follow-up patches
> are warranted.
> 

I have some question regarding sashiko.dev - not sure if you can answer this. 
When I get a patch for review (the the newest one from Ren), sashiko marked it 
as "Embargoed" and I can't see it in b4. I have no idea why this is the case 
and I am unsure what I should do in this case:

* ignore sashiko
* wait until sashiko lifts the embargo
* ...

Maybe there is some document which explains it further and you can just point 
me in the right direction.

And just a question from Simon: sashiko.dev is meant as read-only platform, 
right? So, no way to write a rebuttal for wrong statements, correct?

Regards,
	Sven
--nextPart3119035.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCafcBzwAKCRBND3cr0xT1
yzy+AQCoHOxLYLXLW0CXpJXmp1UT5lwOd0umbXwMfALvhQEMWgEAkzoJrWTyqcGR
9O17fKZCPmU79ZR4xkK2e2USU5n/9AQ=
=MBZ2
-----END PGP SIGNATURE-----

--nextPart3119035.e9J7NaK4W3--




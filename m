Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Sq9VN0jdlWl3VgIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 18 Feb 2026 16:39:52 +0100
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8536815773A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 18 Feb 2026 16:39:52 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4BD2385923
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 18 Feb 2026 16:39:52 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1771429192;
 b=oAahwXAxSZUdHIfwTgz+IuVEayYGK0YQyXooqlX54LqhjOwtU82GAHceg26cad45Sfv3r
 4bVqpRH4Qn8rHEKZE3V+KaHNJrUnBTkD8fYTjCO+dlUfZMXQfJescvf3P7BV8wbRW2aNFsJ
 xe6T50P5YePjkdYWYmkd6ou2PoWjzq8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1771429192; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8VvcYrea6sHh+GqMj/SJShm4gng7cbUXMHd15ATAHbI=;
 b=GOtqmMqWZZWytvISc7IVXoxcZlVc+DNyZJebkNrtnXnbdiLCyU65RNjR88ZWzTMRHQgsR
 Dr0GjkO2j0fG4JSr5tDEF81vVR9dK2pKho7Iap59adAT27OfYCNT9yvir5AjwrOcXIHEx5l
 bWFkmtQmmhmhznopo1qwhgyqb0AfuNg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D128A84289
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 18 Feb 2026 16:39:20 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1771429160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8VvcYrea6sHh+GqMj/SJShm4gng7cbUXMHd15ATAHbI=;
	b=zDfGfijLamnhpKy6LnVZROSW4rR9JkbN6aXUSLl0xEeKiKZQCNiSjqsyF0qW7yrvvl0QxP
	ygEPUOSLpU2x3OQcyqlMSI3oWiP7WzLsjjTXYbIc5onKOLP2nCMBl1xEKyS0DURs67fi5x
	pUMSK1hEP6UiPjNMYUAW274fIg84vIc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="o/rT4i6m";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1771429160;
	b=BXVyShPZiuAVHioil69wESBiEURlkvdvC51EMi0/g5GR+zdwF1xpYrOV5+2KQAujYS//on
	/xz6oHrbmg7nHpc04kdHQZkbZr9BX1jzLwhCPjQ3JZW7UBEOwIs2qH3JFdMuGfaGrNNoNo
	8x+Nf2Khl5keucSEorrKErWbeVZFcPc=
Received: by dvalin.narfation.org (Postfix) id 8E0181FF29
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 18 Feb 2026 15:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1771429158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8VvcYrea6sHh+GqMj/SJShm4gng7cbUXMHd15ATAHbI=;
	b=o/rT4i6mETScccBcuPqniBee+n4wURzbRg23kfqVuTxkvEHyomjWx8L447jGnT47amj+cm
	rejBYlLMnKFdLCgu6tECDbfJhpAzOL0Kyych75KbU2sOeigcd7ApdQJfbqikb8ynG0mSXK
	FwtEbN0zdZ/QsR6RgyAO+RwlsuDeDg0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Avoid double-rtnl_lock ELP metric worker
Date: Wed, 18 Feb 2026 16:39:16 +0100
Message-ID: <2032168.PYKUYFuaPT@ripper>
In-Reply-To: 
 <20260216-double-rtnl-lock-throughput-v1-1-513f66d3b36e@narfation.org>
References: 
 <20260216-double-rtnl-lock-throughput-v1-1-513f66d3b36e@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart23010935.EfDdHjke4D";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: 525DKXXKOUYSDQLG4YDQZHLVHDKXQ6ZR
X-Message-ID-Hash: 525DKXXKOUYSDQLG4YDQZHLVHDKXQ6ZR
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
Archived-At: <>
List-Archive: <>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Queue-Id: 8536815773A
X-Rspamd-Action: no action

--nextPart23010935.EfDdHjke4D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 18 Feb 2026 16:39:16 +0100
Message-ID: <2032168.PYKUYFuaPT@ripper>
MIME-Version: 1.0

On Monday, 16 February 2026 20:05:55 CET Sven Eckelmann wrote:
> batadv_v_elp_get_throughput() might be called when the RTNL lock is alrea=
dy
> held. This could be problematic when the work queue item is canceled via
> cancel_delayed_work_sync() in batadv_v_elp_iface_disable(). In this case,
> an rtnl_lock() would cause a deadlock.
>=20
> To avoid this, rtnl_trylock() was used in this function to skip the
> retrieval of the ethtool information in case the RTNL lock was already
> held.
>=20
> But for cfg80211 interfaces, batadv_get_real_netdev() was called - which
> also uses rtnl_lock(). The approach for __ethtool_get_link_ksettings() mu=
st
> also be used instead and the lockless version __batadv_get_real_netdev()
> has to called.
>=20
> Fixes: 405d49a20a20 ("batman-adv: Drop unmanaged ELP metric worker")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
>  net/batman-adv/bat_v_elp.c      | 10 +++++++++-
>  net/batman-adv/hard-interface.c |  8 ++++----
>  net/batman-adv/hard-interface.h |  1 +
>  3 files changed, 14 insertions(+), 5 deletions(-)


Via github [1]:

Reported-by: Christian Schmidbauer <github@grische.xyz>
Tested-by: S=C3=B6ren Skaarup <freifunk_nordm4nn@gmx.de>

Regards,
	Sven

[1] https://github.com/freifunkMUC/site-ffm/issues/776#issuecomment-3920865=
984
--nextPart23010935.EfDdHjke4D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCaZXdJAAKCRBND3cr0xT1
y4g2AQCJi6xJCAj2mMDyTpOw/In+7qZr6oEgiJbhHLqUaK/9hwD/cfjpvJLRiI1U
U5syhR6f0hAL0VxcgexYuf0ERYp7oAY=
=Tz3m
-----END PGP SIGNATURE-----

--nextPart23010935.EfDdHjke4D--




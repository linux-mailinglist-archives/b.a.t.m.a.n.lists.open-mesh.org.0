Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YH8sDTE0AGp/EQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 09:30:57 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2D8502F50
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 09:30:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 22D3485B30
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 09:30:56 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778398256;
 b=U4IKtqppHGmHnB0Xhmh5mW1EtposckCWeX4Buv/yEhRQXreRKvllhGKkoxq6UEirJvJH+
 +ClCkyK6iq8DW2rzr6L7VRv/Nk9oTiuRV8hSje6bZTNJqU0Ho5SVIVy1U80Z99rBudrUjxD
 qqga5yC7m26m3TeQpimX8Mc/qQp/4LM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778398256; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=s0pXAsroFmy3RG2Oct2MYElbUy7bdYgO2iWJ3mlSD4U=;
 b=ofmogHgUR/m1wtekKlTSpihYFWbBF8CYZR3OEX/VE/kN1fKpmRmOIoW6cdOthwG+EvXoz
 +8ZXMx9fhd2Gq5Txn1hriyrJS2sRXFZguYYuGs/o7vNiwgBkBTHZ3UDcDx3mzMYnj0YzVP0
 y1EwHW4LbaFliUAUWuiV85xNv92ZDho=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E2BFC82752
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 09:30:11 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778398212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=s0pXAsroFmy3RG2Oct2MYElbUy7bdYgO2iWJ3mlSD4U=;
	b=mGfhLiiMU5HibVRXHmFCMMmtpT5neSkb4L3ea66TO21nVCoiLksFkPxE2wxEoTEu/sV4vn
	zXTF52RE8DMX3rAR6BKiXGXaJ37rHZyodEnt5z6mG2LuEfnbxpMTEU5mm/XLpS3ivIIIip
	vo8PYcTor2GqZLAjbhonjWQONx4kELs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RRsNGAiJ;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778398212;
	b=l/TYB5pdaBZe9EQiEvi716XjyZyxsyn/RDbUSvHgEoMNqwOyscwv77TpzkmscRAXIei5lH
	PNT137tlRNnp0/JUA2p9TaAjlYQorEHLmr34oYLWtZLb+pqGuOJ/V4EBtsiar5cZGNlRIK
	hxHDJfcKXnFp6VyaPqoL9NWp6aewTiQ=
Received: by dvalin.narfation.org (Postfix) id C2CC42020B;
	Sun, 10 May 2026 07:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778398210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=s0pXAsroFmy3RG2Oct2MYElbUy7bdYgO2iWJ3mlSD4U=;
	b=RRsNGAiJLKzvBigevBzfa3u/q4o4/LLt+XQ/1bNppu7jkKZ2IIBtNibBtEaEq3sJd3W5mj
	KXESGYjzmlhFmF8n1oRD7wlcG2Lnf6NkNzi7l2oylkHLvr+aGwwgtIxkZYamVigSySG6hJ
	8C9avUamFp4x/C9uhkpbP8VR+qYjsFs=
From: Sven Eckelmann <sven@narfation.org>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv 4/5] batman-adv: remove global hardif list
Date: Sun, 10 May 2026 09:30:04 +0200
Message-ID: <6325094.lOV4Wx5bFT@sven-desktop>
In-Reply-To: 
 <262d5c5a5afe3d478d2e65187c0913a3a8c4781f.1747687504.git.mschiffer@universe-factory.net>
References: 
 <0b26554afea5203820faef1dfb498af7533a9b5d.1747687504.git.mschiffer@universe-factory.net>
 <262d5c5a5afe3d478d2e65187c0913a3a8c4781f.1747687504.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5158825.31r3eYUQgx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: QCJ55O5MHYADTRALOEZX4EDEQH7JFTGI
X-Message-ID-Hash: QCJ55O5MHYADTRALOEZX4EDEQH7JFTGI
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QCJ55O5MHYADTRALOEZX4EDEQH7JFTGI/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: CE2D8502F50
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

--nextPart5158825.31r3eYUQgx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv 4/5] batman-adv: remove global hardif list
Date: Sun, 10 May 2026 09:30:04 +0200
Message-ID: <6325094.lOV4Wx5bFT@sven-desktop>
MIME-Version: 1.0

On Monday, 19 May 2025 22:46:31 CEST Matthias Schiffer wrote:
> @@ -876,6 +869,7 @@ void batadv_hardif_disable_interface(struct batadv_hard_iface *hard_iface)
>         batadv_purge_outstanding_packets(bat_priv, hard_iface);
>         netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);
>  
> +       batadv_hardif_generation++;
>         netdev_upper_dev_unlink(hard_iface->net_dev, hard_iface->mesh_iface);
>         batadv_hardif_recalc_extra_skbroom(hard_iface->mesh_iface);

I think, the following code also has to be removed from here:


	netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);
...
	hard_iface->mesh_iface = NULL;


And following has to be added then to the batadv_hardif_release function.

	netdev_put(hard_iface->mesh_iface, &hard_iface->meshif_dev_tracker);

Otherwise code which iterates via RCU over the netdevices list might find a 
batadv_hard_iface which is currently getting removed - but it can still find 
it and might try to access hard_iface->mesh_iface (which is NULL at that 
point).

Regards,
	Sven
--nextPart5158825.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagAz/AAKCRBND3cr0xT1
yzcFAQDRALiRgoKwOrIr4X3JQNWI1sm+7rpqt3kdSj47zuvl/wEA/pO4scc5JM6P
wEZ1lhcYQzvk54ctpDxojTjYPe2xowc=
=xW22
-----END PGP SIGNATURE-----

--nextPart5158825.31r3eYUQgx--




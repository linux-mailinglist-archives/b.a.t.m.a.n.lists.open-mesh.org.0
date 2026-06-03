Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FD/9AT6xH2obowAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:44:46 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A898D6342FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:44:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yVA2rvNv;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 89067853A0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 06:44:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780461885;
 b=okaPbeGkAux6/0lA/l25PESR+PTKZnrpZSwIDgDgt5cUxKC3gkIFtL9sT9J7M9WC4lUzv
 AMnooEzbSHAbV66blrC7CUOi6noRUGhsU+SWprLhe+Bm8A8jCBvlMFbmtDSVU+thoSxLt2H
 dJD1NdJto19Ie1eZHtK4IfURY0zcsLA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780461885; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JD0IzI8sLxEETIOY5GidPb6bANGZ3n6dvh0j7MQE+k0=;
 b=kgrGXXa/3zJAa/Hsn+FnsvSDpmkvqmYxyS/Ela3nX9DSNX2tNPqdH/DcK7tLjn67b9y2s
 sxCN4tFRGM0l2zFsOHFkJehM0pbKG1zOmX9QQ86Yy2n0AzK++UXF9IzxWTOhH2mh8jGAtgV
 ShethZumh1iiDNtxl4a5Dh2G6xDPirA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7F665810DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 06:44:09 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780461849;
	b=E+aUsyqvX4OsWJOekjq+B+Awt3De3UkAQZ96nf7vbrWekPvUGlq/cSryAUVFbAGKHnyzbv
	4V7rIOa+15KFj94kdJ6SgUVMmhxYvrGFpY+auQSMmzO2cDPot+rz+44SAbPvYEhHJFB9YB
	63BR8CkPlEttrWOClI0+yrDdUa85cr8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yVA2rvNv;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780461849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JD0IzI8sLxEETIOY5GidPb6bANGZ3n6dvh0j7MQE+k0=;
	b=pv3plsOhWid72zXIERLELwegerJd82qJJptpWXX3meYg/eZRxoMYDZ2dMxDEw9kVJ2pkMs
	63AxSQt28pt9kIORPWuYYkfHjKjRPsgs3/CdipSH7D9O6Nz7dG1KKnEs6S3zcgHwfrBNAx
	/4BTTrKJLVkUPZ4HVOchS5NaSDJEYyM=
Received: by dvalin.narfation.org (Postfix) id 2BC0F1FD9C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 04:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780461849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JD0IzI8sLxEETIOY5GidPb6bANGZ3n6dvh0j7MQE+k0=;
	b=yVA2rvNvMWNmZB6EK9Whzul00S3aJXXlqsQCuyikPwoEzr323Yy//5efjKzqQ46WBdmWYn
	tUT1HMOFndjuk+vZD6zbzUFRWWKCiK5VRliYzetT60DlB8ugKXjPaGQVUe707Rwhgx+0qh
	gL9FlcNO2P5p6I9EfaMi9tRNJXdjgqI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv v2 1/5] batman-adv: tt: directly retrieve wifi
 flags of
 net_device
Date: Wed, 03 Jun 2026 06:44:07 +0200
Message-ID: <2272515.irdbgypaU6@sven-desktop>
In-Reply-To: <20260603-drop-hardif-list-v2-1-5f79821ca333@narfation.org>
References: <20260603-drop-hardif-list-v2-0-5f79821ca333@narfation.org>
 <20260603-drop-hardif-list-v2-1-5f79821ca333@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart14029559.uLZWGnKmhe";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: GP66B6ZGSJJCRS4RRZJDSGJ7UJ746INE
X-Message-ID-Hash: GP66B6ZGSJJCRS4RRZJDSGJ7UJ746INE
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GP66B6ZGSJJCRS4RRZJDSGJ7UJ746INE/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,s:lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:from_mime,narfation.org:dkim,sven-desktop:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A898D6342FF

--nextPart14029559.uLZWGnKmhe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 03 Jun 2026 06:44:07 +0200
Message-ID: <2272515.irdbgypaU6@sven-desktop>
MIME-Version: 1.0

On Wednesday, 3 June 2026 06:29:00 CEST Sven Eckelmann wrote:
> +       u32 wifi_flags;

u32 wifi_flags = 0;
--nextPart14029559.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCah+xFwAKCRBND3cr0xT1
yxQLAP0SY9Lxrg8j48QEzWQmrWSlEU3+Id1eIXFaPLs813a0lAD/em7adL6McxCC
8ynIIMUcGxRPXk3Zhrh0cmXlwoHBWg0=
=dp3D
-----END PGP SIGNATURE-----

--nextPart14029559.uLZWGnKmhe--




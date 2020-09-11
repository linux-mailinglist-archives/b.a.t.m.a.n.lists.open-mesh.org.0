Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D31265FCE
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 14:51:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 24B01807EF;
	Fri, 11 Sep 2020 14:50:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A4D7E80197
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 14:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599828654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5Z6g+zHYzZgv5Ow8f/tG5KfUWuP3IuY+uNWiuKJti2c=;
	b=tHxR+PXDECCgy/l7JNgVpBfrS/zgEumd/iqQmA95GMD2ijt75pHqgSFPBBJcbxYMYQKayZ
	klY1TKTCK5P1paYKbAl0MkgxBUdoui6mtL54mT3MKmgWbqE7ca0IIzVF/gUm8Y25tsLj18
	rwGHTvL/psYqgP1WoKQ5cdbMauAnMNw=
From: Sven Eckelmann <sven@narfation.org>
To: Alessandro Bolletta <abolletta@netter.io>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 14:50:51 +0200
Message-ID: <2590739.vkdJLyYtQh@ripper>
In-Reply-To: <38142483.hY40ij8To5@ripper>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com> <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com> <38142483.hY40ij8To5@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8213720.rV3WY1PWML"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599828654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5Z6g+zHYzZgv5Ow8f/tG5KfUWuP3IuY+uNWiuKJti2c=;
	b=lGMi1twonYeIay1IgLWR+eFHwNerHJY+valhoLBsb8ktriIpMf91O1l5WXStS/eWR/7Gn1
	uj7iqe8Qw80cn5D/hhlcYY5Xr+mPJjwUHx82ErQJ5Z5oWIE8KnMPojtB40QyAUQkbawOW1
	gGy9/NWpr0/dGVRPTuod7jMV88P7gRs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599828654; a=rsa-sha256;
	cv=none;
	b=g4ulVHb34J//Ft+058fiJveHKeoWukWS7VgktNt/QFOxGEuPyV4eLiqafUHEhv2zzaqBx2
	LsmNtOVhgJ2wHE1+dqjA1bG9rnGdsgLmV6YyJqJgJX7liGZUHG1VAGRzzpjgazeRz07d19
	GF7yKIwD4t7AF+jfAoNuJjUhuova9yw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tHxR+PXD;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: TB6RZZKBAYYS4KZYSV2OIS6VORHN5362
X-Message-ID-Hash: TB6RZZKBAYYS4KZYSV2OIS6VORHN5362
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TB6RZZKBAYYS4KZYSV2OIS6VORHN5362/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart8213720.rV3WY1PWML
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 14:48:19 CEST Sven Eckelmann wrote:
> On Friday, 11 September 2020 14:19:59 CEST Alessandro Bolletta wrote:
> > So you mean that it is not feasible to create a (single) linux network
> > interface that let me send traffic on the batman-adv network in an
> > untagged or tagged way, though the same interface I mean?
> 
> batman-adv is depending on the Linux code telling it what VLAN it should 
> handle (through ndo_vlan_rx_add_vid and ndo_vlan_rx_kill_vid). So something 
> like the 8021q driver or the bridge code for vlans. Only when this was done, 
> it will also handle the addresses in TT. So no, bat0 is not enough to 
> transport something like an ethernet frame tagged as vlan1. You also need 
> bat0.1 (assuming this is the vlan interface for VID 1). But it is then not 
> really relevant for it whether the data was send through bat0.1 or was somehow 
> else tagged and then put into bat0.

Btw. why are you now using VLANs on top of bat0 - weren't you trying before to 
have multiple mesh clouds by using VLAN (or VLAN-like) technologies below 
bat0?

Kind regards,
	Sven
--nextPart8213720.rV3WY1PWML
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bcqsACgkQXYcKB8Em
e0Zw9A/9FF4QLhOobvoBmtIVA1CPfsCFSsB5QRLStMPLgeQko7SqbMRAmvVw4P7A
xABGa0/8AwlFNvdOxJAYjHEehYFxxiWl4Deq06mBmzNDdgunhGqhxEX/xlhuMaNH
sIXhRRMsmr+JXw5rOoiINn8ohDeYCi3FFWj3TINRgnuDMCV44EEl2wuU+Fe1NLtK
aHoT3wBXZYMDNnG30FjikJDO8ixP5+GJtW+cW5dljAZxxVhvWsTeW7iLA6c5km7s
Isf7t7ZDyK4csNs8ZMfOr5P8W24fwDLJ12Q/E2NwsgnoTnayFGTBQISwTeQ9tAsb
19mzTsrxSxLPgw9hDL4f6hcWpeilEMt3ihftTwChMEwAPVxwNglnfvcMIslB5807
XO3cnBNiGMfs7z1sDMjjwthF+fetiXuyjfaxDxF/I7O8OGFDZ1PCDQmHuTzsvVOS
dtrqQmx1a7Jsh7Tijb18Nii6hpfnJbFvcc7SlfYaYQBY+uvjF8+kUkR16GrGc2GI
46vWQmHfnDi2QlwUKeiUygJRnu3K1uB+ejkrVDcsVUSwqNyxMAcfLta9rgyBmnLy
VKfa89Ln5akuURxz88QLKq/bXOTS87LLGKRA1f53PVcnlqv2KA77mgJH4FJOwjGM
yydtf5ZQhjtGrpYPW8TKjQ1+kkgl8n8RUqgwO607UyeLE16O/zI=
=E0+V
-----END PGP SIGNATURE-----

--nextPart8213720.rV3WY1PWML--



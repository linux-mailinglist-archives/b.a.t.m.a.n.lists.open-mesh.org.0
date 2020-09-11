Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FF6265FC6
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 14:48:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 780C080297;
	Fri, 11 Sep 2020 14:48:27 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 203C580297
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 14:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599828502;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=g1PU37K6KqY2k5Mb82vhtB50/I01/4VTRTLkCR8eqqg=;
	b=YI7JatQwtIb2azsIYekX3AXirtIpLL9//2ywC8xUSjmZIm3kmhrOoAXUFf6v6nLXseVUMV
	T2KiS/dBH7y5mTVzKOv5R6U65eTrAH257ePM+NsNI5Xhly6XxF5vAAl2EVoHb+lFCdXUub
	CxF4EVgFZC+V97mdUH3iyEpRsTw/pd4=
From: Sven Eckelmann <sven@narfation.org>
To: Alessandro Bolletta <abolletta@netter.io>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 14:48:19 +0200
Message-ID: <38142483.hY40ij8To5@ripper>
In-Reply-To: <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com> <2850909.jKhAPPOaAE@ripper> <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4070998.WN2MUrjTul"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599828503;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=g1PU37K6KqY2k5Mb82vhtB50/I01/4VTRTLkCR8eqqg=;
	b=IHDQy7ReML2+5AIco5w9zaIGL9zX+YZy4fvSXWVb4c34C498EefPiOeCJ6iN/DhgXJpBB4
	nWkGJoEnzG18BMbJK/pff32a/b86RR7bO3ymLgq0HWFmvk1NBMTcRg407KY1pfjLdEr/kP
	63MXeTIgjwU5HcWwSbWwzH13mb0KM2k=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599828503; a=rsa-sha256;
	cv=none;
	b=b9lUPysDRuJ6T7+vFXS52k7ukglR9wNkyCUbv0Ps2LGkuVI3Ws2CczRxXi/r6MNHg+cMA8
	GEjzTyjthSE/OR5TP2uG2MfxMKXlmyxKflLPvFLd6VpJcT1hTMV1MM4URdYUGCFcKtihYP
	9hKH377L/Yq3lhXYTt1ApoG35i1lrX0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YI7JatQw;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: QTQBGPIFLQBMJO6KECXHXRZAEC7CQNVZ
X-Message-ID-Hash: QTQBGPIFLQBMJO6KECXHXRZAEC7CQNVZ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QTQBGPIFLQBMJO6KECXHXRZAEC7CQNVZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4070998.WN2MUrjTul
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 14:19:59 CEST Alessandro Bolletta wrote:
> So you mean that it is not feasible to create a (single) linux network
> interface that let me send traffic on the batman-adv network in an
> untagged or tagged way, though the same interface I mean?

batman-adv is depending on the Linux code telling it what VLAN it should 
handle (through ndo_vlan_rx_add_vid and ndo_vlan_rx_kill_vid). So something 
like the 8021q driver or the bridge code for vlans. Only when this was done, 
it will also handle the addresses in TT. So no, bat0 is not enough to 
transport something like an ethernet frame tagged as vlan1. You also need 
bat0.1 (assuming this is the vlan interface for VID 1). But it is then not 
really relevant for it whether the data was send through bat0.1 or was somehow 
else tagged and then put into bat0.

Kind regards,
	Sven
--nextPart4070998.WN2MUrjTul
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bchMACgkQXYcKB8Em
e0aV9hAA0NJ2tGfgkJHpplUvb9lOowjty1csFMdxTWc3Et4nnXSLFd7VShS+xUFN
dsBufc5su/IELiPSbDDyk6I2GLUOvjA26zt+kCDMvov3MitllIV/it0YsR15ajID
7KvSrHf4fCqLMYvwXm507LDiUfaBk3mQk3SqMLs6DvNbzsZon++hjGSEonU1wxkj
rMcpkqT6BVRVysKp7pb2bT0MEcOMeRPgJ+uGsIJw21yqutTXuSOeAKSoa58vynjJ
HUfnFWEOJPC8yISb8pQGiNGCygYdb9o8gyS71VmFee8XqQlnM5RP0I5NG9gzuiuh
Cv5IDM2SdyeFT3H8eLN1jXrnHc5i64Qu0G1Ar79DbBWun6t9WAGChAiYZrAcPs1h
POdhhPHzwwXf5kMENm0uAJWY7bk3RQsR17C/aWZIF/CnaI45rIH4JEQhGry3rYu7
RwLVlTIcETL0x0TK2N2kT+GGqJvg2rULab4+m/f8PgP2AXQgIH+xita+N/uGHoOy
nECbceuXdV/bNfTQPsEeau7wdbZqUzY46fS4Xt382LUpvXgzuExIbLTBFFMGWF3y
zRCngr9sF1MWf7Ie6+hcmFBRMzKg1cdhR+1rVrdPKP/8hPC45b3nuoScX/jmdH1v
ey8Kouks+wHSFm9vVP4bMj0RGBDJ+rAuftkDjz5m02gXtN+opyo=
=JJc+
-----END PGP SIGNATURE-----

--nextPart4070998.WN2MUrjTul--



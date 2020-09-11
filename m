Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 592712660DA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 16:02:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2BE61807E0;
	Fri, 11 Sep 2020 16:02:43 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1A29380038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 16:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599832958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D9fCUStJF7HFFGHsGcBl5qdy5TUz7U2upJJ87V8mk1s=;
	b=XUfEQZalbWTKsWgePAXw2KvB6q2hBU4xnDSQlpn9NpgJRFIT1vFx/oAGegV5L8pa54B/GL
	2OCZnlKn8h/nMVmKvLK0a4l9l7VgvxXzh6vTc013cuip0ch5R4E/W0LcvWvb61NBoiDDL1
	WVW78ulFejQj2//WBcK0wervlhAqvis=
From: Sven Eckelmann <sven@narfation.org>
To: Alessandro Bolletta <abolletta@netter.io>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 16:02:27 +0200
Message-ID: <4337705.76P5Ur0oAU@sven-edge>
In-Reply-To: <CADJ1cUQZ2YqFSVj=SNhPcC_sOjy+AkrEr=dQ=8T_0HegFou=Hw@mail.gmail.com>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com> <38142483.hY40ij8To5@ripper> <CADJ1cUQZ2YqFSVj=SNhPcC_sOjy+AkrEr=dQ=8T_0HegFou=Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2823689.4OuIXJuOzZ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599832960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=D9fCUStJF7HFFGHsGcBl5qdy5TUz7U2upJJ87V8mk1s=;
	b=q2PcU7yU0CAyYo0+k/mLuz2vWgiQqC39zkUnxLUi1DG2HMQWZQc1Pu5nRF3Pg3+GmTjzMG
	I0n9eUXe/XPh2axpqfcw71aUT020Ffw7xx+5AN63CWqEX1BN4P9V1jp4DoYazl6B7J3V7f
	FP3T0Ch8fsX3wv/bcDfVAKMlwaWeXk0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599832960; a=rsa-sha256;
	cv=none;
	b=QLQbO3TapmbipN0MItQtPXv08bt6YIJYCtrQhdQNQNdOzpvHZH/68UXllQTpCTKHw+f2OY
	9w5a/2MCA8ck9h/sibfs70MeXx8hduZ3dIxSd/XhBQGNmHjKuHXsIPF5tPnlGKsVrNNI3d
	S3xDxACWYTXO0q2MWhNzYqmVRRmfbjg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XUfEQZal;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: KQP7VT32IZCRAG5D3ITOD3ZVFD2CFAOM
X-Message-ID-Hash: KQP7VT32IZCRAG5D3ITOD3ZVFD2CFAOM
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KQP7VT32IZCRAG5D3ITOD3ZVFD2CFAOM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2823689.4OuIXJuOzZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 15:03:13 CEST Alessandro Bolletta wrote:
> I see. Ok for transmission purposes, but what if I have to receive a tagged
> frame?

It should not have been send to the other node when there is no TT entry for 
this mac + VID from the receiver.

> Should I only rely to the 8021q interface (eg. bat0.1) or receive the whole
> traffic (untagged and tagged) from the plain bat0 interface?

Hm?

> If this is not feasible, is it possible to handle in someway this?

Hm?

> A linux
> bridge on the top of bat0 interface could make it possible?

No, the bridge must also enable the vlan for this bat0 interface.

See also
https://www.open-mesh.org/projects/batman-adv/wiki/Faq#BATMAN-Advanced-VLAN-questions

Maybe Antonio wants to add more things to this discussion.

Kind regards,
	Sven

--nextPart2823689.4OuIXJuOzZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bg3QACgkQXYcKB8Em
e0bddhAAzGSla8K4Z2fabst3X+L7RgPImxl6sJg49bFbGkbqYxoNZE0QO3kYufTP
AfMMt3SKUYzGSV4xeQujPTclIr9Bn3LSfNP9z6PfwVDjgdfiuKzbkL92VIVCjG8X
fdfLmdF0cLYtxG2JCsqM/cWxR55JHOS4cWJgTKDa5nr0ZxLyrFuKowAbKKVC1ZxC
jv9aw3qOO1aIW8mrBJcCgjlzLunYyaeisJ+oMhlSS1np7bqZAeFWa/32LMficNWh
Jy01he+VThTYPi4yCvkgUoxC1aYSZPxD4g6w6Ta68MFSVYpYi+YmcwCCp3t9bsE4
7SQU6ypL6dc4aUtXmHWXbtxCTYt8ZwDFHulWHhv3D09fEK5L1lRC66psh4kkMuAU
wFH7XKMKOoh1nT2MoM1LusaqCJ0cIc+DBhm8SIiDbgkN4smO8A0ccOHm2ELuoww8
PlyVZ0Pi5OPV1ZGfEkehc/MHqaOu7PGGq1BRhy7tQ2dVMNFP+BNIeewudwzMiCYP
dhyf4iVT33uEpTfLz1X0guTOIYAwxhj6TQTqBWpgkbgmS00lrROBEFZ0d6GDQmPK
VB107caPei9qDCJXufL1fUzYjeqMoQaAlBBq/8gxjszF+yOn6yV8o+mv3nb/L0IE
a1bg4FHtHviDAgx8ceNSPFpSBNNViykTK9210AhcDQ0HjZaZeco=
=4gCe
-----END PGP SIGNATURE-----

--nextPart2823689.4OuIXJuOzZ--



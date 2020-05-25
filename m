Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 476911E0F98
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 15:35:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 23A0F81B4C;
	Mon, 25 May 2020 15:35:44 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 363CC8070A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 15:35:40 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman-adv packet retranslation
Date: Mon, 25 May 2020 15:34:51 +0200
Message-ID: <4309595.MtDqpTPQ1e@rousseau>
In-Reply-To: <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <2164745.TYCVdmGlQZ@sven-edge> <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2484156.u8uEVRVafc"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590413740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JtKNwyBLDd4VVpcEEiWcHExareltnuPSBzT1QV49Cbg=;
	b=gAXwDo7sPUsymVpFZOT1ICKZwSR+FtDT8RF6OqyEjgf7B3wIvhImlMdNhQuFP0CKsiMbz5
	91gQmAAhl6zEv3XLiAkYudQck3So+pJANFMrBJK81Tyg8iXkCACOZFX6ysGlxjLYx3zUP6
	xQ/NmDCcgd3XhBhq0+fhsMMuDhEd9Wo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590413740; a=rsa-sha256;
	cv=none;
	b=2InmVz+JoANdYwUeuQ7t+FMjycwBhAX/+v5QNUkqyZ0lUOFFAh08bK7jKhn3LbOPPcvo6J
	o48DcqzYibD/f0zC4uNo2OWWGPet5o4806fBYU8xbm01IYcwPEnOqe/N3cbNcQq0WPqGsu
	8G8j54bJxgog+sOztL6iruyVrd1SX3M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: ATO46ZGT5C5TV2MGO5QTPX3ZFZP7QHR4
X-Message-ID-Hash: ATO46ZGT5C5TV2MGO5QTPX3ZFZP7QHR4
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ATO46ZGT5C5TV2MGO5QTPX3ZFZP7QHR4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2484156.u8uEVRVafc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 24 May 2020 23:53:05 CEST Alexey Ermakov wrote:
> Summary: If I don't set override throughput, batman doesn't switch
> back to ster eth0, but if I set it, retranslation doesn't work
> properly.
> I believe, I should tweak batman and I whould be happy if you say how.

To give advice on what to change, please provide the batman-adv routing tables 
which allow us to understand how batman-adv sees your network. Please refer to 
Sven's email with various examples.

For starters, we can focus on a single setup with originator & neighbors 
tables. then you can explain what isn't working the way you think it should.

Kind regards,
Marek Lindner

--nextPart2484156.u8uEVRVafc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7LyXsACgkQU1VOj+62
HMAT8AgAiqjQ5WasOtdBtoc16guL96EEsefj/xgTa2eIOPKdA/TfPzx4t3GkknEy
7cdgOFhJTIJOrJ8S+jFnZhrL+22/W99LWw51KOzPPtG0bn71tE+7OOi02pHY8Em1
khjs8IUY1LiNd0vkpe3BwVfFQH4QRcTwJEJDgsTKaD6ZtE1QyjNGRkTdM86sJR/U
eqH2dnF2heGknPiaNck3whMWWKNOXgYEbGz2k9jgvAYdy3djYI1CyyC2INI3Dgn2
h75594Mo+v+byqOmA2z8SAEw8R80iDwDv/4Fo1q3ugQGIEyqexOcbbQO2G6absGs
exZ9arB0DHdaSdKlLSedtoyvXeq9hg==
=xuM1
-----END PGP SIGNATURE-----

--nextPart2484156.u8uEVRVafc--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFB21DFFD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 17:29:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 57DAC81058;
	Sun, 24 May 2020 17:29:52 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DE89180043
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 17:29:48 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman-adv packet retranslation
Date: Sun, 24 May 2020 17:29:30 +0200
Message-ID: <6286065.m5U1xfpyP1@rousseau>
In-Reply-To: <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <4485194.d5W8GeZ6RB@sven-edge> <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart14035963.Mkpfcnify1"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590334189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jGXcvUPlel4kUx69V71mfg7eqHRAyM8i03t408vp3Pw=;
	b=JnWucDzzSrft8qvtWwcVLb+DV6UCOLh6mumUQOeCbEOuFMq1PkDhagwFp84fW3yUrsJYNY
	Xk3WYzsmJAC1sCIKeoLJwI9o7KYAjCw873ybj9qO6M3zNwntctxyADa0Z2OSn/3d/bzz0r
	6IbrP1XP6CnEAV2bZ+K5REFBR9BdjfM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590334189; a=rsa-sha256;
	cv=none;
	b=qnKtTLJXog26tKw/9EWcK8rOc0Zvizuv/PwD9QL3ymm5KIDC+Bu3/A749WJjLkv5/uTWNM
	0aa35DFPX7VIMgJ5V8Uk4m//7SuWAthfh8XgGGnM6+Xe0b1Rahe7i/1W8zj7fnWogbZPgp
	PRQggPBhtlQDtS8A/DE0I1ilx54cCgU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: NHF5ZURDMWQPVXQFZKBCUYX4VPBJRCYU
X-Message-ID-Hash: NHF5ZURDMWQPVXQFZKBCUYX4VPBJRCYU
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NHF5ZURDMWQPVXQFZKBCUYX4VPBJRCYU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart14035963.Mkpfcnify1
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 24 May 2020 16:43:55 CEST Alexey Ermakov wrote:
> [B.A.T.M.A.N. adv 2020.1, MainIF/MAC: eth0/00:04:23:dc:3b:01
> (bat0/62:7f:0f:87:43:78 BATMAN_V)]
>   Originator        last-seen ( throughput)  Nexthop           [outgoingIF]
> * 00:04:23:dc:3b:10    0.580s (        0.1)  00:04:23:dc:3b:10 [      eth0]

BATMAN V chooses routes based on link throughput. If the throughput drops 
below a certain value the route is dropped. As you can imagine, a throughput 
of 0.1 is pretty close to non-usable.

BATMAN V attempts to auto-detect the throughput using various methods which 
does not work in a virtualized environment. I suggest you go with the per-
interace /sys/class/net/<iface>/batman-adv/throughput_override setting.

Kind regards,
Marek Lindner


--nextPart14035963.Mkpfcnify1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7KktoACgkQU1VOj+62
HMBfvggAn/qZCzmQm+wGHb3lJn5ayNsgn10Ey2oF8bh01guMiL4BUHE+SitYVVlW
igs4QsUA7pIq4qnPTE1yzD89SJ+Ri51cxpNwrXh1b5ysywcAUbzWw82sPlfEt8NO
c+U58KcxT9HBuVrMnuXFqxZZszTJrSu1tGCybYCsfEkS8uwzc+nK+mIe4nu1i75L
Oq0rwRgBOQ524a4VJsqlRclAI8gawjkGra7vU11HHGaCqdtss2ddkxfoTgNa1/pP
mL20ukZL262RGOecRAjfvFSiBWvD9tSwykHIEchhEkng05jNbAxXQrUYc/SYA8P1
eO/Cg+d3yZDBsnlcmIzPBTQu/m6DXA==
=r05A
-----END PGP SIGNATURE-----

--nextPart14035963.Mkpfcnify1--



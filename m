Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC831E6B01
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 21:31:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95AE882126;
	Thu, 28 May 2020 21:31:35 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 264718033D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 21:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590694292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uKXBztHVbTvqCHqvkpcv1QW3/B4WVHm98rMAYXfbm0M=;
	b=UyNA8oA77uyQ5jMjonZgoQ+aIDv3jYi2ZeoRsxCOcqOKqAq97Is5Sxidva93REIOggIfHM
	j/CCyrwQ7uu07q5W1QXxNoptD8WiKFBZrBCq43wf6EYlsL24dXSlaHklqmAkgthPSGaGys
	gcDBpj0HOiK1egQ2NQHuRteBBLgQwtk=
From: Sven Eckelmann <sven@narfation.org>
To: srn@coolheads.com
Subject: Re: Network stops passing traffic randomly
Date: Thu, 28 May 2020 21:31:16 +0200
Message-ID: <3401202.5RrQZ6mRRn@sven-edge>
In-Reply-To: <cf75d66e-b0ac-632d-34e6-681ed9c6769d@coolheads.com>
References: <20200525083512.832.13419@diktynna.open-mesh.org> <32459667.Id32LJz2i1@bentobox> <cf75d66e-b0ac-632d-34e6-681ed9c6769d@coolheads.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3152172.vQxhpj8DWe"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590694293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uKXBztHVbTvqCHqvkpcv1QW3/B4WVHm98rMAYXfbm0M=;
	b=BnuIcI9rXZJpZ8Uxwspm7Bng3DPBdmuVO/1WAZEwfPt6IloE7Mh6SNPSjxs5lzQf+y4fCs
	LD9uIRWnMjvNsRPJ2Uk/NJKWP7AGTdcnt1ZFgwmw+evE9x5Kg8dh7eTxTrybrnymbmdhuj
	xDPSm+oro3EEkMSVuQ+yWt2D5edAChA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590694293; a=rsa-sha256;
	cv=none;
	b=iotLpi5TGXsW+xpAGcgtgZtL14/h2sM4cVwhEVqZwjHH+g1k6FLcgp76IQ8/AzvG85aWet
	ppX37aykFB9Kpa/WJtSLzR7k9/+CIuN4rLRgBZSgyTcNuMZHpXp8YBAX7chX/+wVsq3ab7
	wSOmBVm58bxcS053FVKG90Y9ca5QrQw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UyNA8oA7;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: WOUQY5I7DPQMYLHWG74AS3BHRD54RIJT
X-Message-ID-Hash: WOUQY5I7DPQMYLHWG74AS3BHRD54RIJT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WOUQY5I7DPQMYLHWG74AS3BHRD54RIJT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3152172.vQxhpj8DWe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

[please don't send me private mails about batman-adv - unless you have a 
 really good reason to do so. And if not stated otherwise, I must assume
 that you actually wanted to send you message to the mailing list]

On Thursday, 28 May 2020 21:18:36 CEST Steve Newcomb wrote:
> > My first guess is that the underlying interfaces (mesh0) stopped to transport
> > unicast frames. Did you check this by setting an IP on mesh0 and ping between
> > these devices using the IPv4 ping?
> Not sure what the phrase "to set an IP on mesh0" means, if not simply to 
> endow the corresponding bridge with a static IP.  Which is what I'm doing.
> 
> Not sure what "IPv4 ping" means.  I've disabled IPv6, so I'm not using 
> anything but IPv4.

I am assuming that mesh0 is the device which was added to bat0 as slave. 
Please replace this with whatever you are using

    # on device 1
    ip addr add 192.168.23.1/24 dev mesh0

    # on device 2
    ip addr add 192.168.23.2/24 dev mesh0


> If "IPv4 ping" means "the ordinary Linux ping command", then, yes, I've 
> tried that.

The IPv4 ping was just a placeholder for "not batman-adv ping packets". So you 
can also use ICMPv6 if you prefer. Just make sure to send it over the 
underlying ("slave") interface of batman-adv. And not on bat0 or any higher 
layer bridge/vlan/... interface.

With the addresses mentioned earlier:

    # on device 1
    ping 192.168.23.2

    # on device 2
    ping 192.168.23.1

And also observe with tcpdump what is received by the other end.

> 100% packet loss when the offline condition occurs.  Batctl 
> o, on the other hand, looks just fine.

Sounds to me like "mesh0" is still able to transport broadcast frames (which 
are used for the OGMs - which "create" the originator lists in `batctl o`). 
And if you cannot send unicast frames anymore on mesh0 then something is wrong 
with the unicast part.

For example, when you are using encryption for the mesh0 link, maybe the group 
key is still set correctly but something happened with the pairwise key and it
is now "corrupted".

Kind regards,
	Sven
--nextPart3152172.vQxhpj8DWe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7QEYQACgkQXYcKB8Em
e0YPug/9Hc2kcIXlFtyyJfSeZEIRPSlHFP5Tbj9wxfMRyJRUVAt2uHkzeDXJf+bP
QFuuQO04N0xAvn7CODFFD0H3la1u/EXOUtU0pFPEJM2rv7vFDQv8GLneGXx6Swr/
fBQYU2HxbykIyX6g3mOy6LxSqhPhoWuD3Seezv82InG8OTC0JLcQ6k16E0SCKXZ7
oAxO4VGu9rOhQ9Cj667XzRE2XQFrysXow8EVZCZ0me89DDEXjO8quEbQ3F5mXIdB
1Nx8xb+ZddlUM1avPHki2BxsMUJK+tAhUNiVP3aF129UelbnllgcKFZEHnZYoQ5N
IXebHSQAzD99FaXoN7rYB6dxXjWuBINSn28yjV8u4A9sBBZKy4pGB34mpLcOTqU8
tmTEl7CJRndR4lHI1thZsd7q0/jW0xD/eyhwZb+U3W8o7lGE5XVLhHxPgVCteGFW
BUShbGnq7ewrUfOY1+aAFQMH8ijacsSSwejZjlwLv/yWpmSKa9kwp9S/PF6MvGnP
O6iN6ZZC05kVLbpbrtUhACIYQ34jyt+lc8DcQXq6KFIcdsFhkdBpeb3/CjsPlM23
2uwabQKIeihT647rgIMDrmD9dqfDCx1+TgNxIs6TXESNqfmOABR1rRMjGj6yWp89
Mc2+fxhueX9RWPfG3rmfAsI0jsAIt7GZoYgmYNof6SBVeXQ+V4I=
=PgVe
-----END PGP SIGNATURE-----

--nextPart3152172.vQxhpj8DWe--



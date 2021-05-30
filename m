Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CACA13950B9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 30 May 2021 13:52:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7AEBF8062B;
	Sun, 30 May 2021 13:52:54 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6D8D28062B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 30 May 2021 13:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622375571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xP3NR5jE84EMBStMyLmKBinvz1f/DpVD1f7HFpREY38=;
	b=W5MmoDoQO+glliTiSDZe4PYOhdMEo3NnuHmQo4f3U3ckw7q2EBde9mVMNYVwGgz9Harm2F
	btHm3/irgr2Y4rJmX7w64AF2XhdiHltx4KQ556nfloD87Dp1z6UUVGQk8sutVWC6RWtUV9
	qvYf8yutuY8UJuQqP2UM6KS8j2YuiQU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v3 3/3] batman-adv: bcast: remove remaining skb-copy calls for broadcasts
Date: Sun, 30 May 2021 13:52:48 +0200
Message-ID: <2507587.JJKAMBb5lu@sven-desktop>
In-Reply-To: <20210516223309.12596-3-linus.luessing@c0d3.blue>
References: <20210516223309.12596-1-linus.luessing@c0d3.blue> <20210516223309.12596-3-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4424562.ejFWvheSWG"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622375571; a=rsa-sha256;
	cv=none;
	b=3jqcseSp63hlxMKshORG39hLR9MoRbglzDW/FGh+bbBYT2fPr3LOMZJrSx3jRfhRYUMvyl
	+jpWdUx0Uv8Vj5TmypW0xKw1j7AadGvV1UuNXytGfnjvIbppgRiEUQL9PrY02vaOfGwRSH
	5P9w93rUMjL3pMQ7ahrPSbMq6LBaGL4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=W5MmoDoQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622375571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xP3NR5jE84EMBStMyLmKBinvz1f/DpVD1f7HFpREY38=;
	b=lv7ky+J/zGQuZJWIGLS5QBvYOetwtS/auZ1bY+fdkSvGoSaycE9cJjkUn7cZVsdROhp9Go
	MgQ1UMfQ8ZJW9wW1IIJpxfyttMKUjm6MEUyffqqyWlR6RN04SWT8EQymd/L42b06AYftty
	462ur1GfWriahHrAe+5RpyQ2WypClho=
Message-ID-Hash: CA7ZKRH5FTTRGURK3ZB7JIWV2J45Q6GR
X-Message-ID-Hash: CA7ZKRH5FTTRGURK3ZB7JIWV2J45Q6GR
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CA7ZKRH5FTTRGURK3ZB7JIWV2J45Q6GR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4424562.ejFWvheSWG
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v3 3/3] batman-adv: bcast: remove remaining skb-copy calls for broadcasts
Date: Sun, 30 May 2021 13:52:48 +0200
Message-ID: <2507587.JJKAMBb5lu@sven-desktop>
In-Reply-To: <20210516223309.12596-3-linus.luessing@c0d3.blue>
References: <20210516223309.12596-1-linus.luessing@c0d3.blue> <20210516223309.12596-3-linus.luessing@c0d3.blue>

On Monday, 17 May 2021 00:33:09 CEST Linus L=FCssing wrote:
[...]
> However
> after (queueing for) forwarding the packet in
> batadv_recv_bcast_packet()->batadv_forw_bcast_packet() a packet is
> additionally decapsulated and is sent up the stack through
> batadv_recv_bcast_packet()->batadv_interface_rx(). Which needs an
> unshared skb data for potential modifications from other protocols.
> To be able to use skb clones for (re)broadcasted batman-adv broadcast
> packets while still ensuring that interface_rx() has a freely writeable
> skb we use skb_cow() to avoid sharing skb data with the skb clones in

So you are talking here about netif_rx. But this doesn't seem to ensure tha=
t=20
the data is "private" at all. It can even easily happen that there is a=20
tcpdump listening at the same time on the interface which is "netif_rx"ing.=
 In=20
this case, both AF_PACKET and whatever is parsing the layer 3 stuff is=20
receiving an skb_shared() skb.

In this case, the receiver of the skb must use skb_share_check to clone the=
=20
skb - so we would end up with the same situation as you had before your=20
skb_cow. And it must then for example use skb_cow_data to "gain" write acce=
ss=20
to the skb's data.


Take for example the bridge code. You can find the skb_share_check in=20
br_handle_frame. Afterwards, it knows that it has a clone of the skb (but n=
ot=20
necessarily a private copy of the actual data). If it needs to modify the d=
ata=20
then it is copying the skb.

Another example is the IPv4 code. One of the first things it does is to che=
ck=20
in ip_rcv_core for the shared skb. And if it needs to modify it (for exampl=
e=20
by forwarding it in ip_forward), it uses skb_cow directly.

Kind regards,
	Sven
--nextPart4424562.ejFWvheSWG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCzfJAACgkQXYcKB8Em
e0b6Yw//SYHkBZubXfjAxP4VhOKhA3hX5ZAxpZ7YzzEW8B40G0ivcZ6LaFzocy/y
epOpcw+VKzOL061gAotHKoFbwTaOl1SGihtsN5L3SVuu8fuH8mj+ey4KNW9WXo0R
ZdbD142JKoaA5g8fWKJD6fS2SnV4yjk8wfKwXRT0725b+yb06JqYWJzcJ8CBIs8V
mQt5V+bpluWcxEhtaVmMcNgIJTUwMwOr3FOMIJ9vm6Hd765ea8Rt5ABBRG5Hk5/L
bHj2G7TFku3G4aYzpwRCYx/se7ld0QxG6A9vmv8RsGfshKM8VBXRAbZd42QNZofz
rcV5leLjafQDZi8x8Sa562GFmrz0dE5E6BqfogcwYrt6U0JP9YWqD+RcDck6XuRp
hRMf4Y6LSovoKfA/NYnYbJsWPe9otGXDasIhKTE0ESevAmttYYlEfFGsAXUEUX7G
UggI4jqfbri6yvLW4L23hWbvEr5ddcxImjCiSUNsUShjIVeQWYPOJcLHs0KConWT
ZwmD2YtacBhusoK2l0al/sif/gvVwXtV3EO0b0GB2Gu6VTVci3SwNPPTTMojk6d7
kOZZ2Rgl0X2qhQ7YCkYrXvyoSlhU264wjgj8V3fKLBpSpdhBCxc6W6cKb5ZryQLE
UKWk8NMbyAHU7/vZW1ynD+M4C+qbdMJLdsx0Hgkc5ZBXBlA6nSg=
=2Cwr
-----END PGP SIGNATURE-----

--nextPart4424562.ejFWvheSWG--



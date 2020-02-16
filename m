Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB3A16058C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 19:39:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 818E980912;
	Sun, 16 Feb 2020 19:39:40 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id C115780198
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 19:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581878377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ewwvh2H1flXIBKC30QDwVE8ymiF2dRH3S7mmTkP3+m4=;
 b=mWWaHbQZzd56Vi5eTQxBUuqez9e+7fnR8JWx50i4L0/Mvt3JjZFJ+Q3kJaR+LgDma0Kr3h
 /RKoR4+6kXUnheIQXOdiC7QreZuS0XBjeOAzLGWyZdawJZmWH6iMdrhl+C0c90GWcNGLI6
 Y2pNMgOtkiae9gSRYgx8VhKVcXWniVk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Issue with bridging LAN and mesh network
Date: Sun, 16 Feb 2020 19:39:33 +0100
Message-ID: <1873965.jgP86xNRV2@sven-edge>
In-Reply-To: <CAFF9uhp7M94yAPhWnpUkBwLzQa8rgxMGdBYU2CNQ203QtJZs9g@mail.gmail.com>
References: <CAFF9uhp7M94yAPhWnpUkBwLzQa8rgxMGdBYU2CNQ203QtJZs9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2366461.Inl0MMqdo2";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581878377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=Ewwvh2H1flXIBKC30QDwVE8ymiF2dRH3S7mmTkP3+m4=;
 b=0lCNFgMHM9mYAsiZ71IZrTzhd/BM6yLi75ohd/Ke4FF/5Sj7hcBMPEXacmEGK5CQ32Dgwr
 V1EV360AVPFMef2MQ/f5MInSHFP2efGzqc8dWTmuKxmBuzjlJ8C+onVFuDKRgHDFlnzWRc
 dH7Hs+HAKWhiO20zo8LcVhfMWtwVwfw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581878377; a=rsa-sha256; cv=none;
 b=mDdaTidl+NHRqbChVCGjNRHm56hkjr3ZTlFASuTw4NyMqzLJ/qX8VNQtAjwaA8WCfzciH9
 4JIyblrOzEuwW0RKFJycplWe2IhJwdqqF2ar0LW5vd8rFFmkxQELrXbQy+QUk+ki+cmvUZ
 o0TEb76ZPsx8gIqEqe0Ze8X1RVEduE8=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=mWWaHbQZ;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Emilie Meyer <emiliemeyer1016@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2366461.Inl0MMqdo2
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 16 February 2020 19:20:41 CET Emilie Meyer wrote:
[...]
> root@OpenWrt:~# ip link set eth0 master mesh-bridge
> ip: either "dev" is duplicate, or "master" is garbage
[...]
> OpenWrt 18.06.4, r7808-ef686b7292
[...]

The problem here is that the networking/libiproute/iplink.c from busybox in 
OpenWrt 18.04.x has the code for the "master" interface configuration 
disabled. You have various options:

* switch to the current release OpenWrt 19.07
* switch from busybox's iplink applet to the package ip-full
* use netifd to configure the interfaces [1]
* use brctl to configure the bridge slave interfaces

     brctl addif mesh-bridge eth0

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-201300-till-20190-2
--nextPart2366461.Inl0MMqdo2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5JjGUACgkQXYcKB8Em
e0YXkg//dvj84BXzINr83MJt4ghOSeNX92qPXyj3n4UeGDdzktp3grMsZPUp2TWP
/Pdpd0XtG5Xlvf31t665U7giViLAbHj5z80SA07uoNLKZ0JvrnjyGcudsypAgk5g
zBHfXyMg748Z5saKL3FrTGca4KnNc6Oqr/3epAOw+tf73C3bg5I1b46MXuDQp0cT
+eMeOTNK6Wr280jcOqzAjmM+ny5VLgEnJhKocloZKDN78/LgjSkh3d0ghFSfkfm5
Z+iODn9/v1M+BnEFibXFMG9NGcwyrOs1lLBuuyfCLpZXqXZT7ed/AyJkx46tfcUU
rSpfAwtkqwSDTLnQeXbZxLeGJZ/t5UCLAPmBZWnwnrtBW3wU+7tXVOaYyBsthNJK
xCY+45o1NS07S4JCsoPZYJPYcWQuAk4ymWnPEMmwL5+i09+H4JKgpOVjI7cErgJ+
BwANQtAau7yyQgFIIbP+F4MA6cBd7F9wFfYjj1HRmcpBOESD12ww9oPuDi2qjKI3
zy+YPFQ02TQicjHiHaW2amEYgGAHe8SPZFFqFsNUboNcyMm+vBAGEuyYjuWY5T8/
SEPh1fd3uVvxyn918rB4XWMiDAqVup6rqkgBvhqHixe0FeTBV7i7YOhrKk3+LTzL
+BaQdiXTeMO9qGcMXwjwKtgNFhgpHk1JBkjwTQdrUtT0rppeE4o=
=rmo+
-----END PGP SIGNATURE-----

--nextPart2366461.Inl0MMqdo2--




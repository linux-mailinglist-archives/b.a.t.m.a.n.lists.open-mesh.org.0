Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E233168D2D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Feb 2020 08:18:19 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F224780366;
	Sat, 22 Feb 2020 08:18:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 407B380179
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 22 Feb 2020 08:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1582355894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xUsT8ICiB6pB0Y2QlMGnxRVXT3GAwySjB6skrL3laaw=;
 b=Nx9UHe/DYShBmWV84kgH4BrkQ371Pp2Ff3abzj0rtNpvdA6u5h3P94qzDwquVYFVyUYKPq
 HUb9CdSSm0CYGY0RIqkpu0PgC+fht7bz/l3h+iRgMtUb6qBwsndODvvx6Tz8gKPLYVND8S
 AYHMKF8OoXQGScwSlobwEmUb5grRLP0=
From: Sven Eckelmann <sven@narfation.org>
To: Emilie Meyer <emiliemeyer1016@gmail.com>
Subject: Re: Issue with bridging LAN and mesh network
Date: Sat, 22 Feb 2020 08:18:09 +0100
Message-ID: <121721768.aRRP5j3uff@sven-edge>
In-Reply-To: <CAFF9uhqaC0HOhiYxVaHAvU++enbO2STjupsoCiNauaeRTynu8g@mail.gmail.com>
References: <CAFF9uhp7M94yAPhWnpUkBwLzQa8rgxMGdBYU2CNQ203QtJZs9g@mail.gmail.com>
 <1873965.jgP86xNRV2@sven-edge>
 <CAFF9uhqaC0HOhiYxVaHAvU++enbO2STjupsoCiNauaeRTynu8g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1620035.GKgGgltsZg";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582355895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=xUsT8ICiB6pB0Y2QlMGnxRVXT3GAwySjB6skrL3laaw=;
 b=rdbrOkApj6JZiV+OG7D9q+xmK8r1kHn6pgpErPZdew5VwjMnlnZtl9t/n8jXhAI9VUO4Yg
 nywXKbbxi0u62Uw+RoL74iHgsSq21wmwYB/rIzOVXR+hOg+7tBy12yB6QDP29v9voWGMQv
 E1V5XvHje+GRx52jatMGku2Uz4+BBb8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582355895; a=rsa-sha256; cv=none;
 b=I1OmOU01yU/MRfCDeMqWclRGfqaTCxd6Zaoj9HWPHnhRjd4dtaJvvQI9YVEhNsMsxMNP8r
 IfNqa7aJqSe7sL4VeOklCuSV8YVWWXO2tbWzpD9+U8dRIXYGNbvOqU67MZTp4bln5cCubI
 JRgVZZ0UcMkwc6QJDJ5xH7NOaXs+VEo=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=Nx9UHe/D;
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1620035.GKgGgltsZg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 21 February 2020 23:41:28 CET Emilie Meyer wrote:
[...]
> Each time the router is restarted, all
> previous configurations are lost.
> I guess one way to solve this is by using UCI configurations, but I am
> not certain how to translate all the steps above to UCI.

You should read first some instructions how to configure the wireless and 
wired components in OpenWrt. And when you understood this, continue with the 
instructions how to configure batman-adv on top of this.

* OpenWrt network configuration

  - https://openwrt.org/docs/guide-user/base-system/uci
  - https://openwrt.org/docs/guide-user/base-system/basic-networking
  - https://openwrt.org/docs/guide-user/network/wifi/basic
  - https://openwrt.org/docs/guide-user/network/wifi/bridgedap
  - https://openwrt.org/docs/guide-user/network/wifi/dumbap
  - https://forum.openwrt.org/

* batman-adv:

  - on OpenWrt 18.06:
    https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-201300-till-20190-2
  - on OpenWrt 19.07:
    https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-20190-3-and-newer

Kind regards,
	Sven
--nextPart1620035.GKgGgltsZg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5Q1bEACgkQXYcKB8Em
e0awoQ//Resvf7/1YLJzUaWm75m+otw7CHiOb7Q7FUXWLzdo2hEdyNs3u0DZdZaD
tkthLMBjJgz7a7vlzqK5fYaYH9rUxxan9cLj/ubsbQSiqb8fBOKINcnp+XRYYM8l
etXbMjRe5WzKan0+kQtHmVQhLg6LCitCQvnYf9SZ288mwxOBWIqFZwgDU34q8ZTD
HmGmdnJ3vz7ebewVkhpjdNx1yCy2QRzcrTzskeqL1uaBOFUVZ58eDr8wcN/YPMcF
2iLyK4o1FjgmP7Lr4S8P3edZE0qvGbyPxST6kjK0zhiYTiMwBDOKblMz8XLpJAtF
Pdv8PtFTmfqcQqg71+tnb7LdX4DZrT2YjpQZ+mo8xXrphWKAvqDUWbJd4CUvVhFm
q+NxhI5E8sDipB3vxoisYOiDspFDnlOnsTcTaDOY1rLGlXPOqBvLnhkx7i27MFsW
LQG73Pz3tudeefkCwKGn5Tsrp2wliWj15kZydevOfbLoC8a/dfdrVQZml9q+MaNb
kMNJ1YM1sPyhCdyWM9ZBKS26vYgjsAKAOOlbSAO18wJ5HLgEvzLKVXuMVFht0VNN
BUoUugZ+HhCkuWBQPwH2tTiEOcZ/y7gLmrn21RNO+6HMtBswlvGfLGRzcRshCfMR
sAlekp7pIy/E20l9zONqwdrGVFWf416HjofQGpaJiIfXc49NDSo=
=qKVQ
-----END PGP SIGNATURE-----

--nextPart1620035.GKgGgltsZg--




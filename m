Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id C5797F5F73
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  9 Nov 2019 14:51:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id ADAA080C3F;
	Sat,  9 Nov 2019 14:51:19 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id B4B3F80041
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  9 Nov 2019 14:51:12 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Any suggestions about configuring batman-adv gateways + modems
Date: Sat, 09 Nov 2019 21:50:57 +0800
Message-ID: <17293366.m7Fd2njPPT@rousseau>
In-Reply-To: <4aaa0e89-d428-a7c9-ef47-67dfef8e1411@gmail.com>
References: <4aaa0e89-d428-a7c9-ef47-67dfef8e1411@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5918963.fXUcyqcrPY";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573307475;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SRlO5Phpnr1AJU1g2/GiYeWEaFeqN9mIIbH53Euxznk=;
 b=opowejb+1f2dNUJMmNB/QnfONMxydY8lJqa8V5r3Bg4YlHiU7C44IABa4pf/MHsIC0a9uu
 x+UiVFVadZsoW4SM3D+TGPSkzuQ1HvwNiTtMqvymHceFSz4hodeXZIgwgDn4c1spYdYgCO
 IVc8Kh2LLcuXcP8Q+VKg3pkID7OB3Xk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573307475; a=rsa-sha256; cv=none;
 b=NRFXcQ9C85RNLaAaXWCqDuTWPv44HMVw0dvIklg6ELGTLxDMlpwBtPYJn/+e+AdkxA3lxe
 Ak2/y7ouYg5gyho6GR9jUBfq9IxzTrCouPffCpSzYNRZ/SPaOqyVHCEZZwsxgAiD42tAUe
 i/mHAcQiOdiTJPK14z9h4vH+HEKF4OY=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of mareklindner@neomailbox.ch designates
 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart5918963.fXUcyqcrPY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

On Friday, 8 November 2019 18:51:14 HKT Xuebing Wang wrote:
> We have been building openwrt 15.05 + batman-adv mesh network for over 2
> years, they work great.

hopefully, the batman-adv version you are using is newer than 15.05 ...


> 1) My first thought is to use batman-adv gateway (with 4G modem
> connected) as dhcp server, and forward batman-adv interface to wan
> interface (modem).
>
> 1.1)  But, there is an issue with this setup. Once a modem is down,
> nodes that are connected to this batman-adv gateway (with modem) can not
> automatically "roam" to another batman-adv gateway (with good modem
> connection).

Why not ? What should prevent nodes or clients to choose another batman-adv 
gateway ?


> 2) My second thought is to bridge batman-adv interface and wan interface
> (modem). This works great, I do not see issue (1.1) above.

Can you elaborate ? Are you comparing bridging vs routing ? What's the main 
difference between 1.1 and 2. which makes you think it works better ?


> 3) When I bridge batman-adv interface with other interface (as in step 2
> above), can I use batman-adv interface via *ipv6* to ping other
> batman-adv nodes?

You can always ping or transfer any IPv4/IPv6 payload over batman-adv 
regardless of your WAN setup. In fact, you could operate batman-adv without 
any WAN uplink at all.

Cheers,
Marek

--nextPart5918963.fXUcyqcrPY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl3GxEEACgkQU1VOj+62
HMDdvQf/SXHigxijvh7392SPmFFbBYH2p7OYCBA4gJOVCYayLL+v9RzQ2IFlGADT
OIYnTpZvx/gDbaZgIIjWlkcqZvJL3h3oph0gi/DZe02oyEcKzLwY/CsjSXXE0DXZ
u+JqS5/LMQYTZ5jXA+/MQ2NXIIjx1jCMweZ1PmGhrBBpg/OTNfvqZD3paFLMUlOE
JMjOl8uPic4mUUjTaYUgdx1ofv07cHy8y/iCYZuA3j4KimbG7wCBytF5/k4Xm4Vw
BUNsytiOjW7cTntmM4aou3EEIx09IOun9jv1XkN5TOeCillFyvPHuOoNgZ8D/FTU
AoZuNaL0FfAcJVpQBwW2p3o1m/9n+w==
=Ba7C
-----END PGP SIGNATURE-----

--nextPart5918963.fXUcyqcrPY--




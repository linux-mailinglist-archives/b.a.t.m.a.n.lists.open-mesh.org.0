Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69E16048F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 16:36:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A9E8E806AC;
	Sun, 16 Feb 2020 16:36:19 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 96CA480020
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 16:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581867357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ERM3RGanh1fJgg7kpnX8A1AoqKzN5Z7w2qMVfhCXT1I=;
 b=B62hACUiCwcx0eJVymY+ugJzprPBeXkRoSzSZAHbzM4bleKfk4DDX6TUntzaHJKanWzBnk
 D1HxNnRqj64HXoh1XTy5wSRdUXKwpTmMgvcCNaEqpOK8iku8iNtg6+e3jxpjxeka9e2G/H
 Sk6wU7zF21xY4t1PKhmMROuotTo+VII=
From: Sven Eckelmann <sven@narfation.org>
To: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Date: Sun, 16 Feb 2020 16:35:54 +0100
Message-ID: <1634394.jP7ydfi60B@sven-edge>
In-Reply-To: <20200216153324.GA4542@madhuparna-HP-Notebook>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
 <3655191.udZcvKk8tv@sven-edge> <20200216153324.GA4542@madhuparna-HP-Notebook>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2119546.QtC4LbVagd";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581867357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=ERM3RGanh1fJgg7kpnX8A1AoqKzN5Z7w2qMVfhCXT1I=;
 b=riEXpyUsNc58rrVi3JB+42osyjX9R18PFKCgdCft4Ihv959r8U5fJ8b83zX0T4oi216Y70
 qo+fmlqGRntRWMQ/pV8lNopzB58WGhCOlfMa+jBi5gvRjx8q7jwd7WgI1Fg9VqwXhTwBuX
 QTBVOYKULJb9Q5IL+Okkgs4gXxyu2RE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581867357; a=rsa-sha256; cv=none;
 b=BnBwiGF6PxGhhb/4fSL7BfyMIM8I/UFEx+m+sJZ8mwt8w83ss6cjr7cy8Mh4HN1UWzVPIC
 +YpvW+JRfjtv12d6TkfHbo+D5rSp5tApawj2RouAnrs1MN7V97SnUFaOuNPdYTn/ABfxzX
 6AB/MKdVJl1NBhbKvBp25sDsx1Khz28=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=B62hACUi;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Sun, 16 Feb 2020 16:36:07 +0100
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
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 frextrite@gmail.com, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2119546.QtC4LbVagd
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 16 February 2020 16:33:24 CET Madhuparna Bhowmik wrote:
[...]
> > Can you tell us how you've identified these four hlist_for_each_entry_rcu?
>
> The other hlist_for_each_entry_rcu() are used under the protection of
> rcu_read_lock(). We only need to pass the cond when
> hlist_for_each_entry_rcu() is used under a
> different lock (not under rcu_red_lock()) because according to the current scheme a lockdep splat
> is generated when hlist_for_each_entry_rcu() is used outside of
> rcu_read_lock() or the lockdep condition (the cond argument) evaluates
> to false. So, we need to pass this cond when it is used under the
> protection of spinlock or mutex etc. and not required if rcu_read_lock()
> is used.

I understand this part. I was asking how you've identified them. Did you use 
any tool for that? coccinelle, sparse, ...

Kind regards,
	Sven

--nextPart2119546.QtC4LbVagd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5JYVoACgkQXYcKB8Em
e0ZuPRAAmCB3qGjKpbrldhlDz7BJwE/RY7I7K2zMd0bsx9IV/WmU0fmsplSNNf9m
m7LaBD/F+4BxSBvaPlE19OXOTLurtetpsL9J7/RgP67jl9SBGglvTwNUtx45PoNZ
QTteXCARAK9DpzpYJzMZjeplDkJ0kH7OmTFlDypKNxFyRH+29ePII0TADeYfRo/7
B9TYrS/sT/idL15gm1KimGNbwjUpr+9KlBg6ASs2HlhhX/dI5Ah2Cpt9xZYD4FZ+
IF5AsS+s0wEln3Yycd4xyHEHUoYrP+MjF9k7MR+o7EalZD3/2LDUUPGy8akkkZ36
xOgDyfVVOWQ6Ew6r1fl5Tty4pz3Kkt7HewRsOkPUkJrX6JvxGoq+FlxEJwDv0oL7
fLsCl/A3otfLCqxGTlZaIKOJmBg1t/eeFGHx6c31yza6HxgH3X8uQ7i6RtRy7Vac
FNciX8lPZjqjldm3rRpVweopBB/11v72mZRsV/L50tx1piVfQtmYvtseSXPvyTfS
mQufCXGXdZ0UI6rVda9bzzO7Yi1c+I2sczMw5YA7mDrAeEWldVBT/mcJsoRTz4dh
uWGnh+fUbD5GFOSnkctXZkN4BVN75ZGztTfcsDdOF9Aa+JOq6mrljeSPsAgKxuly
DhbSVonE5CHUVgCD/4Mv8phrEbKRIBPbFFZjlmQ9fKz6cT+Rz/s=
=AU3U
-----END PGP SIGNATURE-----

--nextPart2119546.QtC4LbVagd--




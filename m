Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C270EAB3B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 31 Oct 2019 09:00:35 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CC233808EB;
	Thu, 31 Oct 2019 09:00:29 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 00BD380089
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 31 Oct 2019 09:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1572508825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ia3172o3/jD2ekntHB/GkBV4C7wIggs5s/Ni/QTMMRI=;
 b=IRBmdR7dNASrVBhBhvK6MA6irw6Nb6bC//pd3DoPAsobpxxI2+oWjxkqoytud7ilnB3P5m
 r7HjTJ367tS1+ezqogDhtfm7ecD5rHhbpqpvmrTxHCS/CCb2Vvs2DzwKmneMZNeEm9S0/7
 x4VDfO47VaWNDVgW1zcJWeB82zRhyi8=
From: Sven Eckelmann <sven@narfation.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] batman-adv: Simplify 'batadv_v_ogm_aggr_list_free()'
Date: Thu, 31 Oct 2019 09:00:21 +0100
Message-ID: <3535726.AjB5hMM71F@sven-edge>
In-Reply-To: <20191031074255.3234-1-christophe.jaillet@wanadoo.fr>
References: <20191031074255.3234-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6722122.X2YU2N7q37";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572508827;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=Ia3172o3/jD2ekntHB/GkBV4C7wIggs5s/Ni/QTMMRI=;
 b=s0X2F5AOXxbEQcCKbwcNvzn2keRa5QuzuT6+jp37bJcWrDhkR6C2UA+Vn7ygVl+XJMhKx0
 mVr1ZvIcbcQkoYBz0TBOkUKnGkfw0hKIELgmE6Rwiol3wnctDq77N/Al58Y5GHNZwHunno
 uFRBORB0fLptAMP3uc5XJfM5lO9QFpw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572508827; a=rsa-sha256; cv=none;
 b=eCs0AiQJ2yy31B8Lp1PKsSTDLjSR5F7vxJ+v5ohzUps0dxSqct66Al6DpEKCl77YYTqOHf
 txoF1pKVLfbxXfArJ8VwHsyLG2YpS2JdZKIqwVFjmF29FeLi7v3g+z/v6vgdtaJFRTRNTo
 a9NlcDwtiVgU4xc37kbmyUsJ7FiyA3w=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=IRBmdR7d;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: kernel-janitors@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 linux-kernel@vger.kernel.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart6722122.X2YU2N7q37
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 31 October 2019 08:42:55 CET Christophe JAILLET wrote:
> Use 'skb_queue_purge()' instead of re-implementing it.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Consider this patch applied. I just have to leave now and thus I will only 
apply after my return.

> ---
> BTW, I don't really see the need of 'aggr_list_lock'. I think that the code
> could be refactored to drop 'aggr_list_lock' and use the already existing
> 'aggr_list.lock'.
> This would require to use the lock-free __skb_... variants when working on
> 'aggr_list'.
>
> As far as I understand, the use of 'aggr_list' and 'aggr_list_lock' is
> limited to bat_v_ogm.c'. So the impact would be limited.
> This would avoid a useless locking that never fails, so the performance
> gain should be really limited.
> 
> So, I'm not sure this would be more readable and/or future proof, so
> I just note it here to open the discussion.
> 
> If interested, I have a (compiled tested only) patch that implements this
> change.

Yes, please send it over.

Kind regards,
	Sven

--nextPart6722122.X2YU2N7q37
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl26lJUACgkQXYcKB8Em
e0YLkg//SFeu7zgzY5RZPY5HcftrEK1rjC2M7A8sCfKGM1M8vzzTA3tloEHUCNxD
EbJLxaVmG24RWkBL6vthM2PT1lvjHRFUphtpYa5z1uyXJFEoO2YRp8hDgIOw+/+1
OckzUOWC0Lq5OokHISYtWp673ZBLSNmshZY5eAZLec7p42UE3xnrWr7OOTGs6yTQ
nwb734FvWvmi44PUs5DGPaW7gpUYXFY9EWyAbpJD7uuifshVIaY7ql5LAfF2VL71
6hJ4rYPGtFN6wxMuh8QehYwiWG+Ze95uYl4oS05YdhsXGNuhFjN5Q2iOU4R4WBFD
g+ztkU7BitUMoaZz3ICi1T31QFUFzy5OPmUo97bX7BId9aTtVMwPvW06aJU/dBZc
pXI9vps1QPoGfTzNn+N12S5GB8ZFYJ+3ycaQjqb69uE3c8EsHVa42qoSiieaqsln
TiYMCK67jcB+cOYR/zbsw6YRr+ZTWxPJMN9ZVEFxswbHl1H677oTBpuC0eyTil/L
qscb04MIE0r11DJA1S4oWnidM+9zn7bGG7tVzMNsKCgvUaXkTWewahJR0ynTI/6j
XfbztcvAlMswIcb6Mk4f5LtARZ+l3BlXll/+WMzxLSZwwWU7yAwp0QxQJwXyKafV
PEps/jYve9O423rfIIwanNJIWi2Ab1sprc5Ka/iSmciz6hswmNk=
=3utl
-----END PGP SIGNATURE-----

--nextPart6722122.X2YU2N7q37--




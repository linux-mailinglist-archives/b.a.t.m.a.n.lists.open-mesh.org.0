Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EF343824C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 23 Oct 2021 10:07:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9B8A48274B;
	Sat, 23 Oct 2021 10:07:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 31F4A80838
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 23 Oct 2021 09:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1634974870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bp+h9Q3F8cNFhhE6LBcWdJCOqb72uOO1D9u4WGGgbLw=;
	b=jVkq8h0ICsmmaP4HsZD2zNJZm5SuBexP0sOMKNKTJq7mDDbEWbbx2aqMZX0sRPc5abdUmK
	81hEq68BztnAp8/lcDcTy3veJzp5xP3q/FKfh7rYh+SidFJ0pxWD214vJHEcXASU8K3zfo
	B6YkfTu1RQDc3OEkTAFZzaH+4kjQ8qs=
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com>, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, Pavel Skripkin <paskripkin@gmail.com>, linus.luessing@c0d3.blue
Subject: Re: [syzbot] WARNING in batadv_nc_mesh_free
Date: Sat, 23 Oct 2021 09:41:04 +0200
Message-ID: <2056331.oJahCzYEoq@sven-desktop>
In-Reply-To: <5e29e63c-d2b5-ae72-0e33-5a22e727be3c@gmail.com>
References: <000000000000c87fbd05cef6bcb0@google.com> <1639fcba-e543-e071-f17c-941b8c7a948f@gmail.com> <5e29e63c-d2b5-ae72-0e33-5a22e727be3c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6490338.QC3ak14lfZ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634974871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=bp+h9Q3F8cNFhhE6LBcWdJCOqb72uOO1D9u4WGGgbLw=;
	b=ngyxTlJCwSZCXN3ZxFw3Y73eYWrZgEm/6djlJJLl2ZrU4MPQ8EWGuY3aQ7EkDXdm/niPVD
	hGNQmUGk2l8bg6AMUtl6FDR7+AZSrFOcA4FF8+oyN/fXyYC104HVCyApnXxWjZQ1691uVI
	RLxQrPgRxAyZ21/k8laGfUUtiWu4lXI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jVkq8h0I;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634974871; a=rsa-sha256;
	cv=none;
	b=fLjjy2yWYUBN+RLcK7qvbzugQXZvBD5HWwRESSSq/NtPgakGmjr+iUqwPjpZaSlCAGrLzx
	p7KtoYne6SfgVOM2ecNpVNsTsG/s9BimyXJN0XXm4RX2KHhFJhaiToPoiwLaDVudIYsfJz
	p6zO5GlS40xfjevZfwoRqXcEmpILhLo=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: FUZFEEGF5JCLXYR5KKFW33LFLOZCTJ6H
X-Message-ID-Hash: FUZFEEGF5JCLXYR5KKFW33LFLOZCTJ6H
X-Mailman-Approved-At: Sat, 23 Oct 2021 08:07:46 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FUZFEEGF5JCLXYR5KKFW33LFLOZCTJ6H/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6490338.QC3ak14lfZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+28b0702ada0bf7381f58@syzkaller.appspotmail.com>, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, Pavel Skripkin <paskripkin@gmail.com>, linus.luessing@c0d3.blue
Subject: Re: [syzbot] WARNING in batadv_nc_mesh_free
Date: Sat, 23 Oct 2021 09:41:04 +0200
Message-ID: <2056331.oJahCzYEoq@sven-desktop>
In-Reply-To: <5e29e63c-d2b5-ae72-0e33-5a22e727be3c@gmail.com>
References: <000000000000c87fbd05cef6bcb0@google.com> <1639fcba-e543-e071-f17c-941b8c7a948f@gmail.com> <5e29e63c-d2b5-ae72-0e33-5a22e727be3c@gmail.com>

On Friday, 22 October 2021 22:58:15 CEST Pavel Skripkin wrote:
[...]
> > Oh, ok. Next clean up call in batadv_nc_mesh_free() caused GPF, since
> > fields are not initialized. Let's try to clean up one by one and do not
> > break dependencies.
> > 
> > Quite ugly one, but idea is correct, I guess
> > 
> > Also, make each *_init() call clean up all allocated stuff to not call
> > corresponding *_free() on error handling path, since it introduces
> > problems, as syzbot reported

Thanks for the patch + syzbot interactions. I just wanted to implement a 
change - which would most likely have ended up the same way. Can you please 
send it to netdev and Cc b.a.t.m.a.n@lists.open-mesh.org? We don't have 
anything else to submit at the moment for netdev and this patch can be applied 
by netdev directly. I will add my Acked-by in this process.

Not sure about the Fixes. It is definitely wrong in the initial commit.... but 
it got only really problematic when other features got introduced. I would 
still say that the initial one should be mentioned.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")

@Linus, @Marek, @Antonio: Please check whether it is ok to move the 
batadv_v_mesh_init after batadv_tt_init + batadv_originator_init. 
batadv_v_mesh_init is basically there to initialize:

* bat_priv->bat_v.ogm_buff(|_len|_mutex)
* bat_priv->bat_v.ogm_seqno
* bat_priv->bat_v.ogm_wq

batadv_originator_init is there to initialize the 

* bat_priv->orig_hash
* bat_priv->orig_work (batadv_purge_orig) + queue it up

batadv_tt_init is a lot more complex but should in theory not interact with 
ogm specific algo ops.

I wouldn't know why there could be a problem but I would leave it to the 
experts.

Kind regards,
	Sven
--nextPart6490338.QC3ak14lfZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmFzvJAACgkQXYcKB8Em
e0Zxcw/7BhvGwY42rdxsBw3mezOekP3zB3tq0ScjTg5xypXRDcLiKWvxzcC6CSqV
xKkN5hK5hfqt1WExhmJN6IZGCUO423QcqElaqvr0dsTkuBfv7LN/mjbQgMj1SZ3F
i5pfN2oOe0kuV38J70YuntkjpxKQNT1a8ej05Ko6ZGqFRlqE+EP+7ILgV+76HeHB
OXkyGaVTPnN+xr293qc+15JzxNN2MGKcLJXI9HYPtMiLGY5cPT4Z8SXRfKNhFFi9
wvTjlNqeTZIzi6uFtdNUqkq/A9Q7AiADICs1AJ+fK4RJ78k4CV07V2UB41bSxjn8
yCn0tXFQiALIX7oMwUGlBPxU1q3rwXiHIBkNUrRkyIcdu4aK1gyGgfU5bIE/NQto
KxxPVqhGUv70bjhr9R7/k6pUl3oNUaxPosd4mise0CTapVMgGYO/EL3F2fufxXaI
/iek4gLrks71hQPjXL9npfWcEoN8dV+d95CXJ6fhvRcxpwenKIIDGG+T1rGsA7BI
rYLE8dd3mpJeFxO3xu47C2OQR2JHEuGlbtp7L0bBjEifUPGlHoOJtad5MV/7rJXE
s9PINuPpc1CtA1W+YguwkpnTAbLQF/1YgGH6RkNFFjq99oBmDrTIsvmZZ/lkrpta
XtGY0rreN2vKwAgGkcQ3T5psUJgjbR37/lNur+IoI80jM/dzT0k=
=GCx5
-----END PGP SIGNATURE-----

--nextPart6490338.QC3ak14lfZ--



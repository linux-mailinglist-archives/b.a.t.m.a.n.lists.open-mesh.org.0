Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E08131AAFB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Feb 2021 12:20:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F0A4080FEC;
	Sat, 13 Feb 2021 12:20:15 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 43D9A80344
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Feb 2021 12:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1613215212;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5pQC00ynFVZzi3M/BycxL37zuVZmtCOk2Z3Uqpai/yQ=;
	b=wR8IHS54XI4T3kef5fapdF4rn/dGoMBiHGIKGFxv+kL7ey49jG0cGL/UZK1FlIboIRtqEG
	nKVg3Hbp2/+qabSTMO2fz3M1TAOyRFtvRGbxWIp/fjoMsJ4sX1eQRY+sPzlxBLXg+DaPC9
	kwtfIGTd3tnBdw8PyBXapW7IrnL0sS4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: BATMAN Adv design choice and comparison to Babel routing protocol
Date: Sat, 13 Feb 2021 12:20:06 +0100
Message-ID: <2779797.dbB02zZU01@sven-edge>
In-Reply-To: <CAHw+5zrk5DoMWY8KG6W=JPxkC+WhLzOKnWm-zry195Cke1GyBg@mail.gmail.com>
References: <CAHw+5zrk5DoMWY8KG6W=JPxkC+WhLzOKnWm-zry195Cke1GyBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4891709.YNz7R0F5LP"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=wR8IHS54;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613215213;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5pQC00ynFVZzi3M/BycxL37zuVZmtCOk2Z3Uqpai/yQ=;
	b=QVmOMnAUDxrTsWoQOc4o+MzO+vr2sqvO2aJTvdhS5IkEqgYl4hBzmBJWjQ0x0XRZ71mM3k
	hLN2oWMUKBmEbck03wFYRDKIz8aHMcILTRI+6z5d/gKr6RyKoLQT/KrH4fSLAkAhVlqdcw
	QqsYyOgm+KYTDpoLQ/zOpqjaEConm4Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613215213; a=rsa-sha256;
	cv=none;
	b=wkU9bSbf1HREeBREfT5a63eNTChu8VaW5l9sCXsB+DaDmBpKFCZAogd2uG8qWM6hBQuSvu
	1HbtH0xkl+uR4UeKLJEQ1UlvLNYcP2ORsbMtTEjaa3aVKNop89gQ6uwHvGOyfvk4P7FY15
	KWL8+P1oWSSDp0rAQxyKWvI1jRs4If4=
Message-ID-Hash: PAT3OSPMLTFAAEKCNCIMYFQ43RDON6P3
X-Message-ID-Hash: PAT3OSPMLTFAAEKCNCIMYFQ43RDON6P3
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tushar Malpani <tusharmalpani20@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PAT3OSPMLTFAAEKCNCIMYFQ43RDON6P3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4891709.YNz7R0F5LP
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Tushar Malpani <tusharmalpani20@gmail.com>
Subject: Re: BATMAN Adv design choice and comparison to Babel routing protocol
Date: Sat, 13 Feb 2021 12:20:06 +0100
Message-ID: <2779797.dbB02zZU01@sven-edge>
In-Reply-To: <CAHw+5zrk5DoMWY8KG6W=JPxkC+WhLzOKnWm-zry195Cke1GyBg@mail.gmail.com>
References: <CAHw+5zrk5DoMWY8KG6W=JPxkC+WhLzOKnWm-zry195Cke1GyBg@mail.gmail.com>

On Saturday, 13 February 2021 11:07:11 CET Tushar Malpani wrote:
> What is the difference between BATMAN Adv and babel routing protocols.

I keep this for another person since I don't want more conflicts with Juliusz. 
But if you want to know more and have a couple of minutes than you can find 
out more about babel in https://www.youtube.com/watch?v=Mflw4BuksHQ

> Why use one over the other and why does babel scales over a thousand
> nodes whereas BATMAN Adv has trouble doing that?

Can you please back up this claim? And batman-adv implements the routing 
protocols B.A.T.M.A.N. IV and B.A.T.M.A.N. V. So you have to compare these 
with babel if you want to compare routing protocols.


If you talk about the kind of traffic transported over the links then
you are talking about apples and oranges here.
Linus made an interesting Talk which discusses Layer 2 and challenges it 
causes - but focuses at the end more on the multicast aspect:
https://battlemesh.org/BattleMeshV10?action=AttachFile&do=view&target=scaling-l2-wbmv10.pdf
https://www.youtube.com/watch?v=yE8uE-0tMuM

> And more of a general question about the design choice of BATMAN Adv,
> Why go layer 2?(I read the article where present in open-mesh but
> still it isn't very clear to main. What advantages do we have going
> layer 2 ?)

For examples watch the beginning of the video. Maybe someone else has more 
resources.
But basically, the idea for layer 2(.5) was "borrowed" from AWDS [1,2,3,4] to 
achieve similar easy setups that can just use your existing infrastructure for 
layer 3 management and L2 (b|m)cast by simply bridging it.

But as Linus' pointed out correctly - if you want to get this kind of 
functionality then you have the problem that you got this kind of 
functionality and have to deal with it.
And if you don't have this functionality you have the problem that
you don't have it and find ways to deal with it ;)

Kind regards,
	Sven

[1] https://web.archive.org/web/20110724001404/http://awds.berlios.de/
[2] https://chemnitzer.linux-tage.de/2007/vortraege/detail.html?idx=587
[3] https://web.archive.org/web/20110724002106if_/http://awds.berlios.de/doc/vortrag.pdf
[4] https://web.archive.org/web/20110724001720if_/http://awds.berlios.de/doc/poster.pdf

--nextPart4891709.YNz7R0F5LP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAnteYACgkQXYcKB8Em
e0amEhAAtZ68pXJSxwxNBT4wtdn1PwSUzOjuuLuIuVep7BierI81kfD6ubvkOY9B
S2XclXbAgRUcE4lwb3evPEiA93PIIZQM7Mv3n6j5s1/o9tze/Wt+XTxQBYhSZbEV
1eYxu6yFLalmMYlt1kh0ZBst83UuDdm1rXlCO3gU1S5ahCsJfywkPAsCHZUDyuKz
bBwXT3ZuZE1DskMRmyCJ/i3PN2/LHvigJDBHhviaEzLyquRls7v+gpJeRC6Hu7e9
fpc+yhEZ503Kc35Vh29Ems1K3YDVH+oPpIF1ig52J6Sryy8Xa3y+2DlHv0giI5/O
V/6yyUfcNow/O7IkyoNZeYB5pvNdmh3GVR2ZNAplC20JMt8tqRCJEyjsDHn/UO8m
CMGmUASF0Zhd8Z5S+mBvO5wN7WT/XWV99P0DmRxSmv0wIx4a0C/zOFGNSF9ehwFe
kI8tUeqUO6uW1qujbcy4b33ow5qrWbaWDispb1/j53yHOo+bm8NOKpPZcvBvjYet
OY8O0+hy/rmGsPHIUczvqT3Z/FL+tuxoqErhvo0QtbYMlpxsUjTjJB7KUZFe+CyX
Fe0L9YzFYNb/E6I/wCDB81aCJaZa1Xd21hEnSPhY4LuCtZ6rHiOKrc83bTi3uAGr
akvsSME1F1MuQ/ZVt5MNqmYp6DkOyZKkCEcZZHXUeGLzQ59+PmI=
=mpv3
-----END PGP SIGNATURE-----

--nextPart4891709.YNz7R0F5LP--



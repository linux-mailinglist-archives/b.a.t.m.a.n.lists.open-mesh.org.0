Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id BF09E12BEC1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 28 Dec 2019 20:50:30 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 9EDE180713;
	Sat, 28 Dec 2019 20:50:25 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 6958680098
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 28 Dec 2019 20:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1577562621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cXjH4qiyqdZZ5v9XwcDD9SmJTGnfIgQUvbw2tEe1EbE=;
 b=xZz8Z36NW2/oNFHIhhgT60VjrxMSXYrJRS9HhV6Puu1n3MixkW3fZH/vwU1TWE8fYiXKRp
 bSkBFeOGH7YmW48a3vxZWlMYQXBqcrY5wxpUsT8qHwpVL37IQ3//KUWBHbDl82NQTB/rYt
 UmggdpBqR1SN6jBqjaxqFPZoun+AMw4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batman-adv on FreeBSD
Date: Sat, 28 Dec 2019 20:50:14 +0100
Message-ID: <2133199.KtOkACyYIB@sven-desktop>
In-Reply-To: <839a5aa7-ed42-27d5-1453-6b152943d811@FreeBSD.org>
References: <839a5aa7-ed42-27d5-1453-6b152943d811@FreeBSD.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2530546.ii0FQi9CEZ";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577562622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=cXjH4qiyqdZZ5v9XwcDD9SmJTGnfIgQUvbw2tEe1EbE=;
 b=YuZWHjLSI5alRb3AoCwriDMvfj/47OXHXWKDFLflvlNWLDigfKEm6Ek3OwbsizYHvd5KmF
 Uu9TU2F3DCGnQh6nkoRlGyMa8ysXYKjCpnXRRRDeRPEraiLldBy8rN/ya2nixJO5h9Mxje
 9LfYGd5AXWBA1/AcrvBtlwcKiUfaOmk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577562622; a=rsa-sha256; cv=none;
 b=o4/zMLGDLPsC7++6UwCFqGYs00/HXM4fWUw6ZtFysk9mFfPy29Y119llmmZXuhC2CFXf1k
 ThPolRptRktkMTMSUMcVZ/YlHJaHV7ow3em2AccCscLFuHWLyicf42rhUKQSlPsDcBww6I
 zNeW1yrHoxV2V6DnMiBlpHJ8y0RdrwI=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=xZz8Z36N;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
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
Cc: Mahdi Mokhtari <mmokhi@freebsd.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2530546.ii0FQi9CEZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

[please don't contact me privately (without Cc'ing the mailing list) about 
 batman-adv - unless you have a good reason not to do so and state this in the 
 mail]

On Saturday, 28 December 2019 14:39:05 CET Moritz Warning wrote:
> I've met somebody who wants to port batman-adv to FreeBSD (in CC). The 
> bigger task is to create a netlink glue layer that can be used for FreeBSD 
> and other OSes.

I would guess that you should then get in contact with the netlink developers. 
batman-adv depends heavily on rtnetlink (only via the various hooks) and 
generic netlink. And they work quite differently.

There is already a (non-upstream?) hack to get some parts working [0]. But I 
haven't checked what it actually does and whether it can be used for anything 
at all.

But at the end we need a new new socket type (AF_NETLINK) and protocols on top 
of it. And the data from these protocols must not only be written/read but 
also the relevant infrastructure must be created to get the data to the 
correct receivers via the correct interfaces. Getting a good working 
AF_NETLINK with NETLINK_GENERIC already sounds like quite a big task for 
something as short as the GSoC. Don't forget that it has a lot of non-obvious 
features (multicast, [ext] ack, data type validation, subscriptions, 
attribute/command families, module autoloading, ...). So I would recommend to 
not even more on your plate for the first steps - maybe it is easier to avoid 
implementing NETLINK_ROUTE and the code to get rtnl_link_ops working to avoid 
a lot of wrapper code to reduce the implementation cost for the initial 
implementation. 

> Can he send you some specific netlink related questions? Or maybe you even 
> know someone who would act as a mentor for is effort

I doubt that I can help a lot with the details about the inner workings of the 
various netlink (AF_NETLINK) based protocols. And I doubt that it is 
trivial to implement everything correctly in FreeBSD. You would have to:

1. implement AF_NETLINK
2. implement NETLINK_ROUTE for AF_NETLINK (maybe only minimal support for 
   rtnl_link_ops)
3. implement NETLINK_GENERIC [1] for AF_NETLINK
4. port an userspace library like libnl3 (with the essential features) to 
   freebsd
5. Get some applications working over both protocols

There are a lot more experienced people around. A good starting point would be 
to get the list of contributors from the Linux git tree. I would (as starting 
point) suggest

    ./scripts/get_maintainer.pl net/netlink
    ./scripts/get_maintainer.pl net/core/rtnetlink.c

> (maybe even in a GSoC context).

Maybe it is a good idea to get in contact with the freifunk project and 
propose some (not overly complex) task for GSoC. But I would not know who is 
skilled enough and willingly to directly mentor him - and the last mentors in 
the open-mesh.org context were not eager to do it again.

> He currently got stuck with netlink and his email to the batman-adv mailing 
> list did not got far: 
> https://lists.open-mesh.org/pipermail/b.a.t.m.a.n/2018-February/017562.html

There were two mails (Simon [2] + elektra [3]). But there were no further
replies (or other mails) by him on the mailing list.

On Tuesday, 13 February 2018 16:22:51 CET Mahdi Mokhtari wrote:
> P.S. sorry if I'm not really good at starting conversation from scratch
> and out-of-nowhere 
> but I hope by continuing the collaboration we can have better (more
> enriched) FreeBSD and better (as in more portable) B.A.T.M.A.N 

Keep in mind that the batman-adv is primarily an in-tree module of Linux. So 
every change in our implementation has to be forwarded to the Linux networking 
developers (netdev) and later merged by Linus. So all changes which are 
implementing things in a non-Linux way will simply be rejected - either 
directly by us or by the next layer(s) (David S. Miller, Linus Torvalds, ...).

Kind regards,
	Sven

[0] https://github.com/luigirizzo/netlink-freebsd
[1] https://wiki.linuxfoundation.org/networking/generic_netlink_howto
[2] https://lists.open-mesh.org/pipermail/b.a.t.m.a.n/2018-February/017563.html
[3] https://lists.open-mesh.org/pipermail/b.a.t.m.a.n/2018-February/017564.html
--nextPart2530546.ii0FQi9CEZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl4HsfYACgkQXYcKB8Em
e0YC3BAAvNlrFUrLkLUlLDRCHU2HBJ7ZXu+Y0sjf1s7xEMYgP96Xej/IEeG9gjDf
90VSOT0YrLwp3ahMvF26H8LOtIudeWJ8ADwEvxChPJlr+vgh9MFsSdfflRggrjkb
uont2ITbmZ1VeRp1ExAL22TJy6exPBR4IrD9QWUSK1Rd/uFhRvjo1NVneK1TTNPH
Qd/nE09sQsUwsXG35gTfbf/VCiOi/XnILomzL1a0MMjyjLUOZfuGJBUvWppYFa1/
N8WP5qZI2VLzQQ9vvqn0/39x/OlXZN+hC3X+CKUlpukcAbYto/GofEFxotFJtKn1
sqR4kHNqmqgVRRPF0abVDOWPLRu+FlneOdD263trUX6SCF3En5mE/BIXkkoi4JuP
K4u6gfu/E9HtioEuVMOBcI6MSiO856m2TOklwrvRJqdaUjkabzpq4Xu/+q2p1s2c
hsyJP1EC1RT2K42y4oXn2bEaIqtdw10km/Jj2HGPCvETgI9YU+aPMZACTlMgnFGu
7hL7mrmXEvcYw6pYGXziQNYvwLZJvPbPNJG+VKy6x2EZyAlB7745rHqlpFQvYRRA
xyK6JRomZiug6Kje0kxm++iIS0Uc8OH22fLS6iKwsxqzLzHuHkAk2V5KGocErQdU
DcetQxF916u60d76o5pIUWfcI//Uj/0lRd/6HGnd8FiIwyCE+sI=
=WDAG
-----END PGP SIGNATURE-----

--nextPart2530546.ii0FQi9CEZ--




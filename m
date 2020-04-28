Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 902F01BC3CA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Apr 2020 17:33:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 51D0381081;
	Tue, 28 Apr 2020 17:33:47 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588088026;
 b=WBbgVUZ5Gsw8SDJEV9+pQ8ZkKwnl2nSgS4sKDN4vRb6Jc/E8l4sDerdmyYHiWm8ijffS0
 P+kBgAoX0NBNH+NfOfDnghDbr9AH72l6qPDm/QbPI5blLhF3KhPPsJ9RJmgtUK62hZIb9Lz
 dxJ7YTxU+e1mwbQglE70UB/OvkQqmDY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588088026; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=plXdNeHb6Cd5kv/JDn/gTkii2YhvS9ggqKlZIP5NL90=;
 b=PTJZBUrgLJ0mYX6MWXtQxo7zJwy8CE8prxIBVQczwFssQ1xeV6hjPmIxPpdMWp5DKIFh0
 wTKD9zlND0ol3VYSg54/OmP0KXtTxarhGCelhGItUe5ctlTBbGLtjBAAyuWUrFpvUxeiRCu
 psvbLO7iGShnxyDE/u4SuAP3fLibW40=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D203A8009B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 17:33:44 +0200 (CEST)
Received: from prime.localnet (p4FD57764.dip0.t-ipconnect.de [79.213.119.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 967B362058;
	Tue, 28 Apr 2020 17:33:44 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: b.a.t.m.a.n. specification
Date: Tue, 28 Apr 2020 17:33:44 +0200
Message-ID: <1691638.nYY6pOqhUW@prime>
In-Reply-To: <a4778f23-2eec-b3aa-b661-fe06112dccae@si6networks.com>
References: <a4778f23-2eec-b3aa-b661-fe06112dccae@si6networks.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1848796.Aj0k4S2dUG"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588088024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=plXdNeHb6Cd5kv/JDn/gTkii2YhvS9ggqKlZIP5NL90=;
	b=Hq4rfe678OSzZVaKMW74XK3viyn/Y7dviVzWi8RinqfPHnIwbaMTbvs/u+Qi1mieigR6WC
	9nCnn6D5BTg/di56PRiOk7/ihZ+JsYyvtWdlH87+7v54FNCmI1bfHQcXc47slK6GGKIDW+
	BytLPcLijv0+fZm9201LBiSNruCZJ4g=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588088024; a=rsa-sha256;
	cv=none;
	b=DNf5RcQglTjagbE0Z4vKh3vUEadPxR+xfWE1ZloUAELUmeOgeT/Cq7IBRrLrbjI/DroMCj
	P/xFTvYD4Hzq40Hc4JkU6uQuRFShHO+J4e4hrAcLM9T3Kx+Bbbbswp9HJRVgf8HrrAsrEI
	uLdExjrkN5/Z9jcJG6amlIYsRWEg568=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Message-ID-Hash: GBPHVKLSV252IJ26WLVMAG2P2GJHGIFM
X-Message-ID-Hash: GBPHVKLSV252IJ26WLVMAG2P2GJHGIFM
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Fernando Gont <fgont@si6networks.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GBPHVKLSV252IJ26WLVMAG2P2GJHGIFM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1848796.Aj0k4S2dUG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Fernando,

On Tuesday, April 28, 2020 5:07:00 PM CEST Fernando Gont wrote:
> Hello, folks,
> 
> While looking at batman, I came across your IETF Internet-Draft
> https://tools.ietf.org/id/draft-openmesh-b-a-t-m-a-n-00.txt.
> 
> Questions:
> 
> 1) Is this the closest there is to an specification of batman?

Yes, that's the closest complete specification. There are various aspects 
documented on open-mesh.org in the documentation section, although those are 
not really complete.

> 
> 2) Does it described the current protocol, or have there been changes
> since then that have not been reflected into the internet-draft?


There have been various changes. The algorithm described in the internet draft 
was called B.A.T.M.A.N. III ; there have been amendments which have been then 
implemented as algorithm version B.A.T.M.A.N. IV. Since then, batman-adv has 
been implemented as Layer 2 mesh software (BATMAN as described was a Layer 3 
routing daemon). There have been more modifications since then like multi 
interface routing, bonding, interface alternating, bridge loop avoidance etc.

See: https://www.open-mesh.org/projects/batman-adv/wiki/BATMAN_IV

> 
> 3) Any reason why the draft wasn't published as an IETF RFC?


The initial draft received various devastating reviews from some professors, 
including missing mathematical proofs and that we should change the name since 
it was considered ridiculous. We thought otherwise, but didn't want to spend 
energy making reviewers happy. Instead we focused on the software itself. I 
believe the original draft received around a thousand scientific references 
(although nobody should reference IETF drafts, but after all its the most 
complete document there is). Batman-adv is now in the Linux kernel, and the 
old Layer 3 BATMAN daemon development is pretty much abandoned for years, but 
still available for download. Almost everyone is using the layer 2 variant, 
which wouldn't fit well with IETF in the first place but would more be an IEEE 
thing.

Cheers,
       Simon
--nextPart1848796.Aj0k4S2dUG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl6oTNgACgkQoSvjmEKS
nqFxQQ/7Bt2uD/4vhqSTVd1Aw/K+gd4Z5UKEmBgcP5QGJ5y0Lzwq4ahjUM3IBOml
vxvY2d/OZCAC58/QM39rlHeq4OAUnXPEYNF5Yi9URIO1zRUH+48r/46qVTcyAnbc
OEiauApED5wlCMAZVjdzdNqnqrlJCD+FlHvpkE2TLTYFkvh+BT7x8KZiEi4oFBmC
BzDD9B+g2qiW1bXt/Lt9evhk+jnT1OaTNfjYliCQyZdJm2rXZfoNsGyowiCGDw8r
wW/XKzFKrYv1tNVC0VUQrQ7yNZ6uJLRidrlC/l0r5NyHFvpsnfkzSGIYumq6UhUc
mC/3aC2GAZLEwCu2rUqge8IfjWKz21C6KRvBhE/jv79TkuV9DVxHo3mPVvTUely0
5kmQegNfdqVjIiFzmZbx2aiJpBH4sEsv9DJBwb2Xr83j4HPsXuMshjQfZtY+VQU8
g809Ib0tXOIiglpcjVQtcBfpaIQo8I+wchn4W188IAe7PfulEDdbXIAVnizYfDNf
l8ExuiDgXKZmHp1hNLyj3q5oH3Q2IHi/knNNoFZ8tAm7l6aJaT6T+HJFDNvU0M5c
K1rLm+AnhUfuhRBhtVsQBcdLsvvk+2WHKJXF+15hZcBATTESw/6ZKxpYhwfGihyv
NhbVxFwNt7YJCy2CErf8L6naNupzx7aW6gjRvujopNBZ3LB4k64=
=Av3V
-----END PGP SIGNATURE-----

--nextPart1848796.Aj0k4S2dUG--



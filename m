Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B70245988
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Aug 2020 22:52:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C40BF807FA;
	Sun, 16 Aug 2020 22:52:28 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ABB7380408
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Aug 2020 22:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1597611146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WpfN2OPWOL/UbSu73cEPtMFxCEba+795TZerhUtQgts=;
	b=DJcSuHtr5oyePgY8brKuzANn8+rPpQkTry9Z57dCR9Zi1cpv9BTbw4akDs6+eW1ItNf8ck
	9JdQYbpzTlCgmah6N5xKTv6IDb1nDzXdqRP7OIgCJxjxKeWLUl6TlSiJcWlxdjxsiw7yQg
	uZq//wHTB1tZuz2E2h2GOu0HNuOW35U=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Venceslas Ngounou <venceslas_2008@yahoo.fr>
Subject: Re: Scientific research
Date: Sun, 16 Aug 2020 22:52:22 +0200
Message-ID: <5875846.8nX1ehlX3a@sven-edge>
In-Reply-To: <159663455103.1225.17359938306185241419@diktynna.open-mesh.org>
References: <1533568759.456734.1596634544852.ref@mail.yahoo.com> <159663455103.1225.17359938306185241419@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6242944.YmMhbTAbEu"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1597611146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WpfN2OPWOL/UbSu73cEPtMFxCEba+795TZerhUtQgts=;
	b=koNUbhe2peXf5giHDvXwpinLUOHdNzs4JWtPVcSCBTYAzC7jRnZvRGtP1wX6cCjNbMJ6PL
	ip4O4sa/HCc7jf4coAl1mnF+96oulWxn2euYu0JZKnhdnD8xPkkJU9mv0Rzgg3OONOVV4G
	xfUK7mysjiXl0cFAm1r8t9gm+jt4uto=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1597611146; a=rsa-sha256;
	cv=none;
	b=m+5pS6VzfJ7C3blmEWr58E0Pokna+2iysPU2p4WD52WJR+ZjgO28BleG1es6NzsX2XwQCj
	ePpB0mUg8aBPqVs1OJSE9wMjy7nm4hHjcpV1UqMFRJOSf/ttz3wpmuacL/Ibu8XC3iQHte
	sJ642fGrm8vBp22OxLS2E293PQ47Lbk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=DJcSuHtr;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: AKIXITFSSIA6FI75JOHNVZN4D7RG5ATG
X-Message-ID-Hash: AKIXITFSSIA6FI75JOHNVZN4D7RG5ATG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AKIXITFSSIA6FI75JOHNVZN4D7RG5ATG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6242944.YmMhbTAbEu
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

to be honest, the documentation needs an overhaul. There were some ideas to 
move it to sphinx and to have a more coherent structure. I've started with the 
conversion to restructuredText [1] some years ago but the person interested(?) 
in doing more work on the documentation in sphinx didn't continue the work. 
Maybe I have to lure Linus and Simon with some ice cream and discuss some 
ideas with them.

On Wednesday, 5 August 2020 15:35:44 CEST Venceslas Ngounou via B.A.T.M.A.N wrote:
> - An up to date documentation on Echo Location Protocol (ELP). On open-mesh.org, the dedicated page has the mention OUTDATED.

Yes, I've added the "outdated" because this documentation describes some ideas 
various people had. But they were not synced when the actual protocol was 
implemented. Things (most likely not complete) which don't line up:

* actual packet format is completely wrong
* not neighbors are announced but the "own" originator
* padding is not used for broadcast ELPs
* unicast ELPs are completely valid (for rate control probe packets)

Would be nice if the page could be checked and fixed by someone more familiar 
with ELP.

> - An up to date documentation on the different packet types

What do you have in mind here? Best documentation for the actual binary format 
is the uapi file batadv_packet.h [2]

> - Scientific papers (if any) related to the design or the modeling of the actuel version of BATMAN-adv.

Since batman-adv was never a traditional academic project, there were no 
papers written about it by the original authors during the development.

But there are two pages with pointers to various papers [3,4] but there 
weren't updated in the last 3 years. So you might find more interesting things 
on Google Scholar [5].

Kind regards,
	Sven


[1] https://git.open-mesh.org/doc.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/batadv_packet.h
[3] https://www.open-mesh.org/projects/open-mesh/wiki/Experience#Papers
[4] https://www.open-mesh.org/projects/open-mesh/wiki/New_papers
[5] https://scholar.google.com/scholar?q=batman-adv
--nextPart6242944.YmMhbTAbEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl85nIYACgkQXYcKB8Em
e0ZyMg//W9l9QQbus+spMs37Gz107OqOdHE9WJyHTUqBBFtom2HIIFxheeQFwQiZ
YMONxpV09Teu250JxVNmoCCjtjAD0ajUMq8EzaiZzof86PL6DOx4Gk6m1UXyR3H6
TuQqXaziCooFGGk4OKX2an9kVdGdqJSwgA/cPc2dER2IQH239h53cGkeqwG5BoH2
cG2lYwiNB6EBRb8SMg0/3KnmbFzBM66m4f/5sPpwKkMegLg0eyOo939NgHHG1MTm
Wu8HVH0+lUpP04ncl1TizMHA6WMA09CUtK3NfgVQOzYRUZFCpOruEevJ30ijoLTB
I9OeZ1GGiZMBllrBEUFDM03WShKtvqUV9UQ5UboNhR3j4mzLtnlCr3p05BW4pAY7
JKadecLHoprTlIY8xmLHbUf0K5JUzVkqTYINQpdOqd0qK32tHzlGpgshUFvsR8I5
4tEbGGEzaI7epgThWp/DaxYF0GIK7Z2xieoSg8Vpoq9RNhDym96U8uvwLXM0pVHO
DD63RISVWygnmqj71FPf9Sqx3dC+naZX6Ac0KHjCt4qAuo6FSD8v+kooB5yppO0l
FRA27Obe2mTXtdIo8kni6hkPoT0INh1sknuMYZpuN39jD2LIvD+Sof58dA4Sh2Hq
BXhZhTKrHLjhPijOHkUt0EtO0htEnVOFljDEh4lwzgN7tNThT6A=
=FWEI
-----END PGP SIGNATURE-----

--nextPart6242944.YmMhbTAbEu--



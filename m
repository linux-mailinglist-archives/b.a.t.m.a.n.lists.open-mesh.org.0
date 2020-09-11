Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C286C2660FE
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 16:12:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9BD78807FB;
	Fri, 11 Sep 2020 16:12:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4EB7880038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 16:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1599833575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LWMvX/VZv+o9+UsXWQJo31lzq/REVSdfbfyphSpoPMw=;
	b=H4/4vANUlZGeSyEiYJfMbxLkr513U7O5xykJLb6WPdzwKxr4qYbZi4xfrj1pGG0Zos3LuL
	39vahi9uWII+NIKAmHcc3REoeQTJcV+URys889WjJJSOs0Wz6hdSh4q6Cdq+slBjir3w1F
	oqqtc5Ncmv6S8m0nk6ld02obqAVKll0=
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: dan <dandenson@gmail.com>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
Date: Fri, 11 Sep 2020 16:12:44 +0200
Message-ID: <6532047.u29W2yvW7A@sven-edge>
In-Reply-To: <CAA_JP8URSGzzCRqG4wrOB585PqXyMud2AA8w0W1SAstxeHtYhg@mail.gmail.com>
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com> <2590739.vkdJLyYtQh@ripper> <CAA_JP8URSGzzCRqG4wrOB585PqXyMud2AA8w0W1SAstxeHtYhg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2104393.CiIkOxTNtG"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599833575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=LWMvX/VZv+o9+UsXWQJo31lzq/REVSdfbfyphSpoPMw=;
	b=orzaiqA+HipukLi0od1KjcZ/U9usWF6y3OxiV6vpSBYuiHjWZXhGTcQpCwJcAp62JJpjhC
	Iv1NkkIQsMOcfIgzkY6wa6BBFs3DL0AU4JTz9z/ZEsN/NyWb/KAZBpXM9JgJ4sELSi7CT5
	r6mQyhbD/M9WGscuLaPdeZZbdTBSwiM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599833575; a=rsa-sha256;
	cv=none;
	b=AzG9gzZYnt+hIPTc2DUvzdvBqJZOYSycAOqlS2KOVahMHsRCHJKNxkE8jEsPdQEBHPNv6h
	mTueK1UlV5VzbDGbKToe3QRnrSrzdCOYMGJZsd6A8n6v9UGgwYnvlydLFapHA7KVEvjWNW
	SQ8Ila+e6YeeuYFBFANF0q3f4TapG0c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=H4/4vANU;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 5BB63BRQBCMF3Y5TGOISS3EOCKFJZ6R7
X-Message-ID-Hash: 5BB63BRQBCMF3Y5TGOISS3EOCKFJZ6R7
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5BB63BRQBCMF3Y5TGOISS3EOCKFJZ6R7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2104393.CiIkOxTNtG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 September 2020 15:25:17 CEST dan wrote:
> so, based on the previous statement, is the way to make bat0 agnostic
> about VLANs to create a bridge br0 and put bat0 in br0 and then make a
> br0.10 vlan interface?

Not at the moment.

Kind regards,
	Sven
--nextPart2104393.CiIkOxTNtG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl9bhdwACgkQXYcKB8Em
e0YrYBAA0hko9sps61lJad+ouyZPwhxqmXfDa9FlYem49AONWYSuP3/FDjjm4JaQ
jUXAjlm1+QQd0dPAZ2FDQvaZ2ogUTEzGpNrI8LWPbUEsKhVntpnoy8dddwLE/oOh
sPnWkch3SNjlcxsSgnt8W5ZWEC/CpnRzfgg1RNe8Vc/ZLltV5R5p22rYnOXT7y5G
21zvUYuLtMNRML28nh+5PSz051m8maF/NkPktCrTetBP9Me8OeUfSyBhQ7H8BJgQ
VIhBDxpNN3gK6FLrU1HBBidDQqPnGGAmxu3G1arN7ThejQceQHBfj5G4iyKGFZDa
byQ6uy/0CFRVE6iCPGWolN/LN/fZACGrbqZtdHoO/2vgHlzYoFchPr/ZIiBuliNK
RinBsfXVSxQM2217L/aiuhIgPdEoauvhlnr8ud7gOo4b3OSDiPSC47twZ/siPFg9
FicLI/Azgb7sZFliwC8FZeIJf/c6U8qNRFlzC/i2pxuuFtqqlUCeP3+MUPywlfH6
s2WEzvMAH5A540+UC4hA1L5y225sFEcGtu0OL6mUuYY4h+dKuu5vsRGAu+uiWb0R
qgbaKluy6fjWWUkqYXlT56K7nywZrJ8wX0g/gIPKBRrLIDSlVhC2rC9F5c0luWNt
OIqXYYkzSGu0F6J6SZJyQW9FYisuIqWGarcQ8ahYDp37RHUHjtA=
=WvlR
-----END PGP SIGNATURE-----

--nextPart2104393.CiIkOxTNtG--



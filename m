Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B91D315F3E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 10:21:49 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C9698823E6;
	Tue,  7 May 2019 10:21:46 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 7D1E080A40
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 10:21:44 +0200 (CEST)
Received: from bentobox.localnet (unknown
 [IPv6:2001:16b8:553e:edf2:a8fb:d592:8e48:5aee])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id DA1211100E8;
 Tue,  7 May 2019 10:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557217304; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=xiqFdCgyt7FtDFxt4Rq1xnXKJORrf9g5d7Uje1VWnJk=;
 b=qhYC9/cq9oY/mkqsgpRF6oBcVWsZM9USNKwJehxfintIuBsj6g6RdWle9tGvTj7e4o92uq
 idtsTxSj7tEreM5RJA+mORE1rsdYUnRaV2junbz0V+NGynkuxUj6TVZw2BMbzyzDvYpQte
 8qkRrVND/Es7JJz8FD3aMEhw148EMNU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Date: Tue, 07 May 2019 10:21:40 +0200
Message-ID: <1895475.8kFdyZb9vl@bentobox>
In-Reply-To: <3691280.TvIfeD7Em7@rousseau>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
 <3693433.LtgH54LjNc@bentobox> <3691280.TvIfeD7Em7@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5448167.cg51Gv6jSr";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557217304;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=xiqFdCgyt7FtDFxt4Rq1xnXKJORrf9g5d7Uje1VWnJk=;
 b=B0YQwOcjQ42k1tly9l3WnUXNKRLnEWEKatxjkm6pIfil0gDjiR0XaYr/qqJu0PN91AZlTT
 IwYddhtpnqnuJV8gqdYCXO8m6DJJM4jsidSITK74+Ge9jcKnCQANwf34viKgdv/QxCAfMW
 1XRFY6jsFx2BupIr9GthUum8JoJJicE=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557217304; a=rsa-sha256; cv=none;
 b=Z3nJEIEI8h7FN5PBYT2X9jKtWrOaU1ooCdBWYVDroTEZ+RN03poQzkeWIiFt3UhGNyQ26f
 Moj4MhcGTNIswwlYiZGMADtU0/yQWlnyhkuHZcC1ejOdiX7T2li2jcsBzNkfmf7Z/5yOVE
 5xhfS1Czw+02MCJT1nNowER6phRxZKY=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart5448167.cg51Gv6jSr
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 7 May 2019 10:00:18 CEST Marek Lindner wrote:
[...]
> > I still don't see why this has to be implemented in batman-adv and not as an
> > external filter (tc-ebpf or something like that).
> 
> As I understand the use-case (Linus correct me if I am wrong): The mark is 
> supposed to drop packets that couldn't be $optimized by one of the various 
> batman-adv payload traffic optimizations. From outside of batman-adv it would be 
> difficult to tell if a broadcast / multicast packet was optimized (think: served 
> via DAT cache, sent as unicast, etc) or not.

It should be easy to see in tc whether a packet is transmitted as unicast or 
broadcast. It is just a bit check in the destination mac. So it would end up 
as a filter somewheere in the hardif tx path which first checks following 
before rejecting a packet:

* is it a multicast/broadcast destination address?

  - maybe this part isn't even necessary - at least the mcast2unicast stuff 
    uses batadv_send_skb_unicast 

* is it a batman-adv packet?
* is is a batman-adv compat 15 broadcast packet?
* does it have the noflood mark?

This would even allow some fancy stuff like rate limiting or per hardif 
behavior. With the problem that there is no package yet which does this in 
gluon.

Or am I missing something essential here which is also done in the 
batadv_interface_tx path?

And why would we see see stuff which as served via DAT? This is usually not 
transmitted on the hardif ports.

Kind regards,
	Sven
--nextPart5448167.cg51Gv6jSr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzRQBQACgkQXYcKB8Em
e0aK3Q//fJgaqNdebPTylHegpnepVVn1fsb6JSnF/GUAIZDDNwJBtAXq+SFL73AZ
y9NVla7GqmnMgI5Xxsih8jhvN+a5qq9PULF8ouuiFtDWUaGKJxuZjZxGFtbc+Aab
YDShIn6iNh5TdyUM9TxhbP/9Traofq96JERejODKoifavC4doQpYNSkPbit+n3y4
WAfL5NbDpQ7yIDbB4f2EkNb096ZEcbdjZo6QkN+4mM8ZtfuTSNxQVpQ7ogmjFKZu
WQ825agrvQyDE3CioZZpgd28yYF814+ri8V4gtHpuZC+WZoJw49qml/XlYWoDSW0
1X1mFLsZ9iCHhp2aQqxlBSSU2bJRKEGQVyl2/F4R08ajBCL1V1egBIuqadrBBdms
Nrb5Sx85yUAs8h3tXAIBWpyc2TcgwCrbgZZSbvHURlHkCogY2ZVfxFyUZJS+yLN7
DmgONthMqnCQoI2d8mP/Q2ZtGOyIbmeZQJR8zMz2i5g+rzPviil7Vtu+dnLTORip
ct7JkyDDfrpnuFZJx1zhsOUcXggiRo7ls5Oc2cmFSrY3OfN+mK8vhOU4+A8pyF7R
ab9OUtS+aBddyRfN88fxz1xtR7UU7i1o9MpXlt/4NXI5Z7uyNhyZJ7KGvsW2P4jJ
eGKH0WZh5IxjpFNmtr8sB9x7DWn8Jb5v9X4yucu6+FKeilMaDac=
=7D5L
-----END PGP SIGNATURE-----

--nextPart5448167.cg51Gv6jSr--




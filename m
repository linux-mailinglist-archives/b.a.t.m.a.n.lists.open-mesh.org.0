Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A7527D7A6
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 29 Sep 2020 22:08:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4ECE3805D2;
	Tue, 29 Sep 2020 22:08:52 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 303A0802C5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 29 Sep 2020 22:08:50 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Does batman choose DHCP server by random?
Date: Tue, 29 Sep 2020 22:08:30 +0200
Message-ID: <5418055.QJl9yYDR6S@voltaire>
In-Reply-To: <998e8a9b-e0c6-babb-0b45-5fb3fb657a32@kkk-web.de>
References: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de> <88928628.8v8VXxemU5@ripper> <998e8a9b-e0c6-babb-0b45-5fb3fb657a32@kkk-web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart20589037.UUG1GkrsbY"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601410130;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3wkmGeFt2xxQf28EWyDiZH63IpcV0GGGN6zOlCKrN5k=;
	b=SVl1vMT01N7xHruMkQwreVLpPOn+ekF0VfJCqtuG4efTs7aRuxeFiso/6e4d5vgrqRL72l
	4WnIa2+eMsjpZ9nqAWFc8T1OSXFtFhNJC1Ro0qbXlYKDH5nIKy8H1+WxSXagmZYyTnAJJv
	Ayins6Tljcey1yLN99kQZiwnhJ/kdmY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601410130; a=rsa-sha256;
	cv=none;
	b=Y7aDN6dGL7y/KQczS97U05nJGxHS6avVNym/BzCFX1uIea/ocMi+7cnOFUhdVUHdmzGEuj
	H8ynfqiaWQyDAG3jfPwBAXQuyllj0BfKU/wj+a18ndT4X4Er42Sbd3SByEbvXrmkErYuwC
	7NBqVbqDk3dXMmAy0NLw1dwwZktryF8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: SMWHPG24KEKKNK7LBC6GYYSKY5DCQ2CF
X-Message-ID-Hash: SMWHPG24KEKKNK7LBC6GYYSKY5DCQ2CF
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SMWHPG24KEKKNK7LBC6GYYSKY5DCQ2CF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart20589037.UUG1GkrsbY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 29 September 2020 22:04:58 CEST MK wrote:
> > See https://www.open-mesh.org/projects/batman-adv/wiki/Gateways
> 
> We did set up all batctl values according to the manual, but still get
> IPs/Leases from other gateway's ranges and therefore cross-traffic...

Have you also taken care of the gateway client settings ? If so, feel free to 
share your config.

Kind regards,
Marek Lindner




--nextPart20589037.UUG1GkrsbY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl9zlD4ACgkQU1VOj+62
HMBpDQgAsDF9k+wuMcoNTGP9oH6xpjtcHs1N4NU9iXo/7jxyInvGpXZOkq95T0CL
WyEzzVwzLam4J1GyPQszycKCJCw+smXCuz3E08tRhRGtyFTDIKdWUGcb6eyVkiqC
QFV4gORvjx/8AgxyhdJwwp6moMny6zoPfCdwevXwMt1BKoXqb2/NHGCv5pAL6LYw
X7FGl7kg7Qzk38rp3QweN2yHsBxnsIFx2JU0DJAGiUzN4BNxnuUte1Y4ZauwHnKW
/q+8/NRZwDh203jbFqG8GjKLLjq0szCgP5T7AIDMs/JnCYNt1l0XDemCZszOzB4T
2cyGi0MAs/7Gj06qx2E7FqdZm1x8Ag==
=XYZv
-----END PGP SIGNATURE-----

--nextPart20589037.UUG1GkrsbY--



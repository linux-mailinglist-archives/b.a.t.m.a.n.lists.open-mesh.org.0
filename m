Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9498948C7F1
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 17:11:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6AFD783DA1;
	Wed, 12 Jan 2022 17:11:20 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 322D080292
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 17:11:16 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 2/2] alfred: Simplify calculation of fixed size IPC TLV length
Date: Wed, 12 Jan 2022 17:11:06 +0100
Message-ID: <1842756.Lh0aRYJY5D@rousseau>
In-Reply-To: <20220104091103.162365-2-sven@narfation.org>
References: <20220104091103.162365-1-sven@narfation.org> <20220104091103.162365-2-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5473470.eyY3ROyXAo"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642003877; a=rsa-sha256;
	cv=none;
	b=aOU9IY2d3fTEugaxQqykzSA7QBIHmtIGML2CgkOAYod3espdJhnR5PmyBsfMIheyr9i914
	aeJVr+YRLBQ3PlcJXJCcu58ffr3pacfzKvCfHHVO1lKtmlH/IlPJ4CeorjRzCHcKq4Gl7i
	tTU5+zO98PPW7I6gfQVR1idM3yTlrvw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642003877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=E7d0YbD9J+nmlxaAPTRkbt8McQDHXUQbZMIlQpgZbDo=;
	b=COa0fHaq+059QMGRBBfKxDmpNGNkYPk69x95hq3/WZOhQ4r7Y2TXVy/jyKCtMU8YDSMoxc
	m75VcwGGobMrU35HCbOtzJHlbkQ2WOl9lIPcQL6IIHpxTm5nLRH4O/o4zb6qu/G1xw2VPF
	zce/ddRfHfozQuPmgEQ9iRIRaZ6yUsk=
Message-ID-Hash: Y5WZLDD4UTKTLRHT3Z7UY5E7ZTC52WSJ
X-Message-ID-Hash: Y5WZLDD4UTKTLRHT3Z7UY5E7ZTC52WSJ
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Y5WZLDD4UTKTLRHT3Z7UY5E7ZTC52WSJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5473470.eyY3ROyXAo
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 2/2] alfred: Simplify calculation of fixed size IPC TLV length
Date: Wed, 12 Jan 2022 17:11:06 +0100
Message-ID: <1842756.Lh0aRYJY5D@rousseau>
In-Reply-To: <20220104091103.162365-2-sven@narfation.org>
References: <20220104091103.162365-1-sven@narfation.org> <20220104091103.162365-2-sven@narfation.org>

On Tuesday, 4 January 2022 10:11:03 CET Sven Eckelmann wrote:
> Instead of copying the same code to calculate the length of fixed size
> TLVs, just use a common macro.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Acked-by: Marek Lindner <mareklindner@neomailbox.ch>

Cheers,
Marek

--nextPart5473470.eyY3ROyXAo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHe/ZoACgkQU1VOj+62
HMDy3gf9HmSb/QqVrMqOOfbS2Nj3+aYkyf++Hfu2U4D1DqKuaymlyoAruD/mj7FV
r8T+cJbc2ysWU1Ud2WjmcYRQdFxnGSd41hTuTYL4OnbN3ZASFmWmk7mVdoFd1Qzz
2PDh3ivoTwSd/hJHk00SzYDKlKLxy5LUadQI4Ej8RYpktufT4uN8bJF+GJF6vXM3
q5HRY8ccSIrOWZb3JyL2uFiL886wy/ZxFq2R7P7o16U5Hh4e7yx/GWEOAxjPAIGF
P/UYsd7Z0Ge4ki4B/4l4pkKMHlnWZ5hsZuw9BHywxfdQIWlUFap3yan+WFmjCNEH
RRX8314cnk9pfHUfF1U1sSE4mfLwKA==
=zhQi
-----END PGP SIGNATURE-----

--nextPart5473470.eyY3ROyXAo--



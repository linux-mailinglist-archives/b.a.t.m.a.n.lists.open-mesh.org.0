Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B48548C7D6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 17:08:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C19D18256E;
	Wed, 12 Jan 2022 17:08:00 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 02B6C80288
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 17:07:56 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 1/2] alfred: Avoid large send buffer for fixed size IPC commands
Date: Wed, 12 Jan 2022 17:07:42 +0100
Message-ID: <1892741.M55d7pzXy7@rousseau>
In-Reply-To: <20220104091103.162365-1-sven@narfation.org>
References: <20220104091103.162365-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart15364136.Uj9UFOjQu5"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642003677; a=rsa-sha256;
	cv=none;
	b=y8TvRNW2gLMm2Jbx5a/F5Z4xFmGt0GgsNMXMHtROuaE3CfXOkM2Rn+067NUjoNW6mcTrhz
	Wr4aKil14nHITrU8D7DnQKvNwrdy5Clp+GoNSKfOyDA9/aBPYLiXBGiy/msB/7V7Y81+AM
	eS4qlgvadHpwKoogUa+SoeeA0TOELNg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642003677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FsObkv+WaDa1uNWgZISzIwUFOnS6EitkHmj2jEkutFE=;
	b=l4WdhQQSMQHfF9i9hGoUMoW1NBlFuPzVQOuvVoPmPp8BEosc6WSq/LWoTEKf20qkrfAK2M
	B/SmqlQS7zITYIWrYlsuVzUI0FldtZgW4Sxj5e6/dfAHRTfFGFhrF8nbN++Sniq7iV/Vkp
	wf9c80BxFU4kF8gh3jqx5FbEd7Qjl0M=
Message-ID-Hash: PLDUX26MH2EHIA7OBB73ZUFCYSPOENMN
X-Message-ID-Hash: PLDUX26MH2EHIA7OBB73ZUFCYSPOENMN
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PLDUX26MH2EHIA7OBB73ZUFCYSPOENMN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart15364136.Uj9UFOjQu5
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 1/2] alfred: Avoid large send buffer for fixed size IPC commands
Date: Wed, 12 Jan 2022 17:07:42 +0100
Message-ID: <1892741.M55d7pzXy7@rousseau>
In-Reply-To: <20220104091103.162365-1-sven@narfation.org>
References: <20220104091103.162365-1-sven@narfation.org>

On Tuesday, 4 January 2022 10:11:02 CET Sven Eckelmann wrote:
> For data related IPC commands, a buffer of 65527 bytes is necessary to send
> or receive a complete command. But for non-data related IPC commands
> usually have a fixed size. It is therefore enough to allocate exactly the
> minimum required amount of bytes on the stack for non-data related IPC
> commands.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Acked-by: Marek Lindner <mareklindner@neomailbox.ch>

Cheers,
Marek


--nextPart15364136.Uj9UFOjQu5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHe/M4ACgkQU1VOj+62
HMA/Pgf/Sy51Zhxx2sFgbLO9dCRHtnZg2T5eaAi5pXmbQYp6SWHs8CHudh4QEH5I
zjBtszzhKZN/D2QeqESKctoA08fF2HhPR2FHn0FMqsxiud1tGsPCKlXwWxKFfpUG
dwoyNNOnDbPXqAPS7yT0ttvDyt/RWZTsWn+3n9+8jCqRcpeGVVfLERR1D60HP72B
dq/z4Z/92jh12G3nb/TwgeVUhhk9z3KYljcFNb7ylZzB2zi8nB67aWoqQgPyNYsX
MJ7KUwK2D1BlTCPAd2j0jz9RCYXi6orFviuYxtEzGYA+VUMvGob2tx+/sGN4P2um
LfowZ+qG5to2ujd5sSt2ScQy4VYpiA==
=ildg
-----END PGP SIGNATURE-----

--nextPart15364136.Uj9UFOjQu5--



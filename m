Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A66D433DFB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Oct 2021 20:03:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8090682614;
	Tue, 19 Oct 2021 20:03:02 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 67E43808DE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Oct 2021 20:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1634666578;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ln6fDIelQdu7pPt1Ea6IyCGF5H+PqfVVx6cMKX9jpGE=;
	b=zhiWMjjt9fhFCKQvndXY3K5+G4AELPlwAkF/EyxP5o9aUymSwlfcrI9wTNDt4W0LfcbBFe
	IpfcA95RGHNR+nq+UGIOGNHlBKeHHvJmvYZjLgei//MpWhUWUwjw4wnmFIrGWFFj0NNV4f
	1hgAnedJgrgaWxHvTSKbtWU0Fh03M6g=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, mareklindner@neomailbox.ch
Subject: Re: [PATCH] batman-adv: prepare for const netdev->dev_addr
Date: Tue, 19 Oct 2021 20:02:52 +0200
Message-ID: <33425786.lHEVMZF3NE@sven-desktop>
In-Reply-To: <20211019163007.1384352-1-kuba@kernel.org>
References: <20211019163007.1384352-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3738197.mCjuJMru3Q"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634666579;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ln6fDIelQdu7pPt1Ea6IyCGF5H+PqfVVx6cMKX9jpGE=;
	b=4Io1T9DrETRPgNxLVV8SSizUt/WHRJqQmTmLZnPG9zvzoDkt2DK0+jwOjywg90otW9nxd+
	FVbD7Hlc3dvxSd3KSQzUZhu5Dnu9Zt4gnnuxHDM+aXyuRQ1IgLADs4L2zDldHzQhXquf5E
	54sFRmxUwnSYBn2wBqxzqAO//V///XU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zhiWMjjt;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634666579; a=rsa-sha256;
	cv=none;
	b=X99WWcmbSVWtoWINoRu5Z6qIzPrBlXKKBLMXVkZNvXU6Ukvc15UohTDOMmzgjZVRYpRdKm
	mt87vsRcLEXOKr7oegsSjkzEmINw+YyirK9hYQbLuGEs/XqiLryN/2yAVyB8+b5hnN7A1g
	bR1ps/Pm23knJn1Mvi2rjHN40UEyQg0=
Message-ID-Hash: 5UX6VWWTTVYR5FRMK7V5TCSZOR37QZYI
X-Message-ID-Hash: 5UX6VWWTTVYR5FRMK7V5TCSZOR37QZYI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5UX6VWWTTVYR5FRMK7V5TCSZOR37QZYI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3738197.mCjuJMru3Q
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, mareklindner@neomailbox.ch
Cc: sw@simonwunderlich.de, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: prepare for const netdev->dev_addr
Date: Tue, 19 Oct 2021 20:02:52 +0200
Message-ID: <33425786.lHEVMZF3NE@sven-desktop>
In-Reply-To: <20211019163007.1384352-1-kuba@kernel.org>
References: <20211019163007.1384352-1-kuba@kernel.org>

On Tuesday, 19 October 2021 18:30:07 CEST Jakub Kicinski wrote:
> netdev->dev_addr will be constant soon, make sure
> the qualifier is propagated thru batman-adv.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Acked-by: Sven Eckelmann <sven@narfation.org>

Kind regards,
	Sven

--nextPart3738197.mCjuJMru3Q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmFvCEwACgkQXYcKB8Em
e0Y5ARAAzLudn8YgxZr1hwMPId7eiSbHQAAuDyqwyaB8ktJvIULjzmLUcD4PsqzR
lrHIA2L1JGu5fmlKsCK+axL43zgYAnVYrFWAwdDgYEm3DLBR8B+Ntv7qcfb8NxuJ
8OrlUwyD8MfkaHMbXR5XRv2OcLFIMplT1qsEYiZvnK8mo3eFvQ3C33kDIL93owT0
+eyPZ0lsClVqpNiREngLv8TQ5NrxMhOWcm/LAQycWtk/JH2fLU1oEZkg6eZnPG8B
1hbqlz7TooVjJee99nL4EuFdg2KAfE6+0sgluTShLPf1qaq9AkK682qWK9o7JT65
qBmCA4yW8dDtZizOYDUWwl2wUDhMDDupSkIwIy//DVt3L9SFOujD/DmoEnTE8uV3
A3cNbtzF5Iv7GD0B4QfyY+hyTvvCgyodbNmL1bes70y8CdjnSDQSvpv9Ft31Ba8A
rPnD3xTcJ02OK8tB37bE6vqVpAWMKceIYz6mUnEXlxZ1zZb4gJY+emZmGSOkxklt
cmFcoJsz5gzqFkRbb23djPgrjp5675BsaiPNxNjXsTj1De5Pkn0bVDuckCrtZvGX
2MkyzivLQ8vTpBn1iQOv8kgr+i+87QbKmXo6gee33rwgubTDCKlY2YxpBz+R42Mg
WOLdSHNt/S7G+Ov7lPCsUEYdROfwLET0hf/g2oyWuneGq93onbg=
=rpsb
-----END PGP SIGNATURE-----

--nextPart3738197.mCjuJMru3Q--



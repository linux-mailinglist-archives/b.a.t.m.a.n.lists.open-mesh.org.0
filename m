Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CC42C5BB1
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 19:11:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A770C81F21;
	Thu, 26 Nov 2020 19:11:17 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 58D85801AA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 19:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1606414275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hCmGbQAgUvcw9GAu1You89gNHD+DNx54LLR0gm42N58=;
	b=eTstLp5cMyTMP03AuVtTnzYtPRUIz3USrhsjOdSa5kv/u+ddqwOkfzL+dZuiKd5S0qLUL0
	WqkukoFcUsRIXsUro+SGpMOKJTmiRu/KS1ci/xHhyiXbpYz9Imbvx7CExttNjmH12ZB6K6
	I//CTNEAAo/dQILCPfF94G69S0wbYac=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Don't always reallocate the fragmentation skb head
Date: Thu, 26 Nov 2020 19:11:11 +0100
Message-ID: <2771856.2VHbPRQshP@sven-edge>
In-Reply-To: <20201126174404.1068235-1-sven@narfation.org>
References: <20201126174404.1068235-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2469787.9Mp67QZiUf"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1606414275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=hCmGbQAgUvcw9GAu1You89gNHD+DNx54LLR0gm42N58=;
	b=plRnlICkgJ8gcJ9UZ+5LE8fQcyosjxrlUJwra1zK+vjscgOQZ8fUNJ+y0BJcOV+RJlk626
	UeojWeWwyh17ChlDKRyOUBEbz1P+RnuZHDYKEszdkwL1kuY7QSeDidHJ5ZuEfmRB8vQ5Qd
	K3zR2nbGKNJZzzk+9CXZQ98cW/krimc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1606414275; a=rsa-sha256;
	cv=none;
	b=P8nnfZzm5TuchZUtDigbQPp7lkkW0+ec6S4jgcECOUvPY0SA6xSzoYXmHEENZDMfRc4ikf
	KrsvkiXnDMuFV6QTFgQcSYryUAbveET9HUeftL2bq9knvcokbRYUK5AVAKXfyrgQbRYIrp
	ASCWb10d5zYV1c1MtkbQtPyllE/Cn3g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=eTstLp5c;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 2RVB74AOJOMSADWL3C4NVZTENDQLP46U
X-Message-ID-Hash: 2RVB74AOJOMSADWL3C4NVZTENDQLP46U
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2RVB74AOJOMSADWL3C4NVZTENDQLP46U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2469787.9Mp67QZiUf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Don't always reallocate the fragmentation skb head
Date: Thu, 26 Nov 2020 19:11:11 +0100
Message-ID: <2771856.2VHbPRQshP@sven-edge>
In-Reply-To: <20201126174404.1068235-1-sven@narfation.org>
References: <20201126174404.1068235-1-sven@narfation.org>

Fixes: db56e4ecf5c2 ("batman-adv: Fragment and send skbs larger than mtu")
--nextPart2469787.9Mp67QZiUf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl+/778ACgkQXYcKB8Em
e0bcYg/+PD+t5/jq4mR/mKKrR88RuVxAzAbkAplFKLMVOQj/Bm3Nx+B1xDFpCpFY
BNr91it75PG/YeMXvVV2f/FHxjLAmMmsJIrLaDKpiEmi9f4mfDmmYokE5n+s0KhO
tdTRIA02XiPHbD1kiJ9bti6LrHkg6BgTR6IWpobQ5tRVNKeGE+suVvMzLwYNaESY
k2Chtrv1BJcukBDEeoHm/QosBLKnzjqtGVZ6Be8qhkkhwPh+Da56f06YR2P2o6L7
AkHBSED8op//Xm8Z7A3jS2ZwKM1nJPbrrL49ZiyQGm68X8kNCh9uDRQJsC+1subE
3z6oUheAsHodOa7PIBJbyyz/wZ4bQQAKOrxodJNLrIAef8Brn9gDbDfcDSwWroYU
GrSh8mJycISTJCTFG8YDcDJF1eaCXpASVp4Rx5+nMbY4W2uNLLHT2XGFbnDC+3+R
lnzzcTyg4/KcWG682iZYTq2z0KUJtaTF49i30XAN7Hi7H0/AuUmERB84CCyIUQlh
h0sGMDGDM95OH8wD1b8nnossv+CrSrjffjGbEEhOeEluPfno3N7rzu+xVhQqzgrt
EEHAQa9X57mRjiNl996vjV8jx3wLg3s1Gj9IpEHLkwZ0vd+O2jkgD8OWJ5aIFecn
zUthmlsVCB3vgl2ABzRvCr9a/640iqv9z5en/5CKitBIeIAyPCc=
=YHwi
-----END PGP SIGNATURE-----

--nextPart2469787.9Mp67QZiUf--



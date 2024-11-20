Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2969D435C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 Nov 2024 22:04:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 119A883E3F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 Nov 2024 22:04:14 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732136654;
 b=Qk/es9eiwXrlgwxPMtyghoZzfcyh/7Q6p94M8hMLHi4mwHi/oliLucE/Y9BW6HJNr06Kz
 gXfM6Uyo7SLKUVLCcCR3CyG1kBSFz32L3m/xRSYbIJitVxvS6aDZrZFprtPdmfeeN1WdmBh
 6QcZeuLMquy+FJIHpoabr+R7nP2l+Ss=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732136654; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=k4920v8cWJxmuLTYqsbzxKlFeaMS76LZUwYIwO8JM30=;
 b=GjEDlq9zhOZcw9JfkrhDm57IWBWN2Wj9HN2jZxmDI4ht3EqAFtz4vaR7S4tYRXeDK93Xz
 gXDbd+HQ4jKu22zBpHOM/szuTxj8rO5u1W5PljRWwKPoytRdz/7bvyAoI+wlBkBFUqncDCj
 VeXOoe4O04SXxL7b0Ou7RylYilP84kE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6788381DCF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 Nov 2024 22:04:11 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732136651; a=rsa-sha256;
	cv=none;
	b=lislVgZ63SYqa3OA05bLmHCa7hKRVnHIJ1cK0z9Nm+rkkCBp8D+Q59Kv2Re5SApstuJfGw
	mbrcduD8MZgN1UMKezRAaDOfTheCzB7X3ypdi2IYMv6qv5h4i6m0DfwpmhhKLsYlANhdd+
	6twmHEQOGjvyHOqeqtTNLQ/Yom73WSc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Ew5VA8qO;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732136651;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=k4920v8cWJxmuLTYqsbzxKlFeaMS76LZUwYIwO8JM30=;
	b=tUPplyF1vJ0Q+JF2YMv6RhBE/Urt72ZttG+xWSiifEeqI9J5p5KGG1g4pKSJ7ZaLequ48P
	afEU0/5TdNDoKnZwQbroeKqnAqBz2V1m/AEEOW/0iME5CVMGe7zbLYHcZCks6bLWlNtVec
	T17cIcrQDmXLM82sjG6uWESEWsheRSU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732136650;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=k4920v8cWJxmuLTYqsbzxKlFeaMS76LZUwYIwO8JM30=;
	b=Ew5VA8qO+QKmOzSlPoSX8COt2JZAY11VifItt0L+XGFwD7QPlQBoBswWrG8BRRo1leLagh
	ACP+wG8TKBF3oyUwH7nFUj0/Ngu2/d0h8VQtnV8IOkcxPouTFC115p2dCZaWU911cYrsnk
	LE/9BTgMhW3hBDEJcXiOU9Dt/iAAbqM=
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Cc: Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>
Subject: 
 Re: [PATCH v3 0/5] batman-adv: TT change events fixes and improvements
Date: Wed, 20 Nov 2024 22:04:07 +0100
Message-ID: <13673972.uLZWGnKmhe@sven-l14>
In-Reply-To: <Zz4-ief3zxThRJGm@pilgrim>
References: 
 <cover.1732124716.git.repk@triplefau.lt> <4969949.GXAFRqVoOG@sven-l14>
 <Zz4-ief3zxThRJGm@pilgrim>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2996018.e9J7NaK4W3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: GURJIHZE3QUIJKP76FVIWGD5LX63JMR6
X-Message-ID-Hash: GURJIHZE3QUIJKP76FVIWGD5LX63JMR6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GURJIHZE3QUIJKP76FVIWGD5LX63JMR6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2996018.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Date: Wed, 20 Nov 2024 22:04:07 +0100
Message-ID: <13673972.uLZWGnKmhe@sven-l14>
In-Reply-To: <Zz4-ief3zxThRJGm@pilgrim>
MIME-Version: 1.0

On Wednesday, 20 November 2024 20:54:49 CET Remi Pommarel wrote:
> Also just saw that I forgot to remove the "a" from "a creating" in the
> commit log, sorry about that. Do you need re-spin for that ?

No, I will try to fix this directly when applying the patch.

Kind regards,
	Sven
--nextPart2996018.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZz5OxwAKCRBND3cr0xT1
y3tyAQDtJoqnwxet9zAemXUqgCqI82iUZoctL0rOdr/MOaKMYwEAmpvLSdJFvFUp
PcEGMQX5RQvf4ukvs29seuDlnnN1CQg=
=jXHH
-----END PGP SIGNATURE-----

--nextPart2996018.e9J7NaK4W3--




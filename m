Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 04544A0130A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  4 Jan 2025 08:47:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5005083FDD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  4 Jan 2025 08:47:12 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1735976832;
 b=cLvBF4bgOhJuijtug56gtLVAT1Zht2v13WWCEF563fMfEMg5xM1qFVI1tRte23ABSlYeY
 3yDjpJdNVslSI4OWANPCSmS5dzBT/wv7JuVBqtiNoVs45ijJodQgtctNNN1nFQer3/Yk5CW
 6i23XH1HOVSM3XM92n6anp8WgzAf++4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1735976832; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JHRccw9LSpzse6IIjHytYj7AL3k0AUYdK46qnOJ07Kk=;
 b=Np25ouw1nZOukv2eAXTGHQW0rEsf5+jR87N02lz4zaZyuvGT41zWuTT8lh52eAOGwFp0m
 1iSFdBeSipgMLyPGZFCuOHHRIiphI5ApxyWpxoxk7SEw/Ho3uMgAznMz07JoyUIKgEkdeki
 tw/Porvjy9xpJQ0ESCa2p2fyRPz3iYY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 833A88158D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  4 Jan 2025 08:46:50 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1735976811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JHRccw9LSpzse6IIjHytYj7AL3k0AUYdK46qnOJ07Kk=;
	b=mCfG+AgCLC5bk1Yav1tPU5CQ0K27QW2Ewc1dY3VMyxrCJSSSV6QNWeWviG0mTkRU8BBG6j
	txPvYEkk6q6ajIE4IuFlIRdayXqx14jXzfKjRIBaZhIGUG7rjR/pDRroMI0DEILqsXH0Ie
	pMajidGRHQfLgrAwGhQ4jWjTofMxXCs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=RjGDp2DS;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1735976811; a=rsa-sha256;
	cv=none;
	b=b1moYc2c/SfkIcdGJLKCfpTkDDiTE1jldm5MJfisIPYbI4aSKiQNyTWTYPX4yx5h4hAh1B
	aH+yaSHd1l/3XuDfm5WFjL2bE9TemYKjCaEpk2UwcPicHMqDJepMYB8f1zYY+iXdG09sid
	26Q1hbF3FXd88VhAA1hfXTjYrThu9TU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1735976809;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JHRccw9LSpzse6IIjHytYj7AL3k0AUYdK46qnOJ07Kk=;
	b=RjGDp2DS8sdMzEcLEyh9K8HQVry+1M9VR5CR7UNubmXcEExCRFoXnciWTYkSAprUkwXTws
	MhesSdAG6eHg+em2mGZzx9Xd5Dj0JThwKKn1TabqmnAokwfYlhnxFLBSsCKFT/iKCLgcV+
	A8ea1SB5EiolpFqFr9AWUQphF4YE5gk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Noah Peterson <NoahBPeterson1997@gmail.com>,
 Noah Peterson <noahbpeterson1997@gmail.com>,
 Noah Peterson <noahbpeterson1997@gmail.com>
Subject: Re: [PATCH] batctl: ping: Add subsecond precision to ping interval
Date: Sat, 04 Jan 2025 08:46:42 +0100
Message-ID: <13922919.uLZWGnKmhe@sven-l14>
In-Reply-To: <20250104012750.52056-1-NoahBPeterson1997@gmail.com>
References: <20250104012750.52056-1-NoahBPeterson1997@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3221292.e9J7NaK4W3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: XQ5QGOGVYIV22OUWQCG6RZ2VCBF5WDVU
X-Message-ID-Hash: XQ5QGOGVYIV22OUWQCG6RZ2VCBF5WDVU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XQ5QGOGVYIV22OUWQCG6RZ2VCBF5WDVU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3221292.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 04 Jan 2025 08:46:42 +0100
Message-ID: <13922919.uLZWGnKmhe@sven-l14>
In-Reply-To: <20250104012750.52056-1-NoahBPeterson1997@gmail.com>
References: <20250104012750.52056-1-NoahBPeterson1997@gmail.com>
MIME-Version: 1.0

On Saturday, 4 January 2025 02:27:50 GMT+1 Noah Peterson wrote:
> v3: Rebasing on latest commit, reformatting code based on comments by Sven
> <sven@narfation.org>

This code wasn't rebased at all.

Applying: batctl: ping: Add subsecond precision to ping interval
error: patch failed: ping.c:65
error: ping.c: patch does not apply
Patch failed at 0001 batctl: ping: Add subsecond precision to ping interval
hint: Use 'git am --show-current-patch=diff' to see the failed patch
hint: When you have resolved this problem, run "git am --continue".
hint: If you prefer to skip this patch, run "git am --skip" instead.
hint: To restore the original branch and stop patching, run "git am --abort".
hint: Disable this message with "git config advice.mergeConflict false"


Kind regards,
	Sven
--nextPart3221292.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZ3jnYgAKCRBND3cr0xT1
y1nTAP4+UR3mwrOtkHzQoupX1PzQ+XVGu3SEZaGFM7lkqiJfPQD/WDgrLeMCJt0h
+SV281/RHhV1vUxG+/o4j7ojGLmTjww=
=tF6f
-----END PGP SIGNATURE-----

--nextPart3221292.e9J7NaK4W3--




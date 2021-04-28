Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F3836D0BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 28 Apr 2021 05:05:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9AE4F8273A;
	Wed, 28 Apr 2021 05:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619579156;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=GcobI4vprC8qT1wtvcGOhGBl0JKphngFN0tEolMkvgs=;
	b=2PyyI0/5SzKN2xDevGIO3zi89nzNpMamBVAYCHecqnmzjzAxlNZAUTrk/068p10jTZR5nw
	tK+NjrJFxJ3c0x6vKsZA9R1EjDt9o3Z3GU5Da9jU35JvnQkNVW5mS69rmrOQQuYlMgLVvY
	6d12JGib71fKkmTobhAGx7zLaQi18DQ=
Date: Wed, 28 Apr 2021 03:05:47 +0000
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Callback Function
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/D7GWQM6XU65KEQWMRLAYQSAPWYQXFI64/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <161957915635.1314.16696904735566517476@diktynna.open-mesh.org>
From: "BrainGeek via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: BrainGeek <braingeek@protonmail.com>
Content-Type: multipart/mixed; boundary="===============1894147942680285681=="

--===============1894147942680285681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1894147942680285681==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch [185.70.40.135])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F020080024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 28 Apr 2021 05:05:54 +0200 (CEST)
Date: Wed, 28 Apr 2021 03:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1619579154;
	bh=xF2CDAAlL8ebjOI6DLJrIaG417fp/awLAFxO7sk8XR0=;
	h=Date:To:From:Reply-To:Subject:From;
	b=drYGazauUAyezjAK7mAGsPqkFFMztuTM28pLI7bl9srXFXi/U7PBZEvvrCK2VGjLg
	 BPO28HsEq6SWfaty9ZYHAsU75i7dVpCprO//kfGckuDx/upzG+9gfoxmRGMt/E45rd
	 O0Lce608LSdCKBXRUTb3FhmE9m3tYi67DPSqSXPE=
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
From: BrainGeek <braingeek@protonmail.com>
Subject: Callback Function
Message-ID: <pYxS_SbGp4jLwzdYJKID7uwQCI5M1s6eTc1Ib1EohCNZ1HeNzc341ewCY15CatPmfxur4rEV3i6KhcKPlcU_CcxpS5_VSTLwbM_OrYfIaWM=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619579155; a=rsa-sha256;
	cv=none;
	b=G15MtSwkkbtH31FyAb79M3SuDDHgG5KLr0ZWvicdBSwCalBuwMKUCm7ttTvBYsHBCdZWAy
	CQ31vmfBiyCLp7z47GynFlFv9pmiboawhwWG4UwDzw6M/kYqZidvEjyNxk4qLjZhg49gAW
	fuFpjYdlh3Tre/ESSbTrFUAIKU2BuFI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=protonmail.com header.s=protonmail header.b=drYGazau;
	spf=pass (diktynna.open-mesh.org: domain of braingeek@protonmail.com designates 185.70.40.135 as permitted sender) smtp.mailfrom=braingeek@protonmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619579155;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=xF2CDAAlL8ebjOI6DLJrIaG417fp/awLAFxO7sk8XR0=;
	b=kWTZqc+tLfur0pD6eXTrHmZjlmUIlNGPaB/T3N9gZwZ7LDPvpTPwmFbSUtZ0Jozw3uY1Ig
	vV5/hXyi8YdSkBMeTQ8QZrpjSWpLIxhFUY8HGbNENfPh/tvwMjtUAydgCyd/umurR+6GKT
	HTpakItQrx934e3vlld5v2p86e1Ta+o=
Message-ID-Hash: D7GWQM6XU65KEQWMRLAYQSAPWYQXFI64
X-Message-ID-Hash: D7GWQM6XU65KEQWMRLAYQSAPWYQXFI64
X-MailFrom: braingeek@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: BrainGeek <braingeek@protonmail.com>, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/D7GWQM6XU65KEQWMRLAYQSAPWYQXFI64/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

With ALFRED I've noticed a parameter you can pass into it labeled "-c" whic=
h is described to be a callback. I've tried things like "-c poweroff" just =
to make it obvious that the callback worked, but to no avail. How can I pro=
perly use this feature and how does it work?

I'm currently running ALFRED and batman-adv on my Raspberry Pi 4. All the s=
oftware is up-to-date.
--===============1894147942680285681==--

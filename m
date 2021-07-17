Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B033CC2BC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8BA781196;
	Sat, 17 Jul 2021 13:11:18 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F3F2B81242
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uNn4UBVbpNyUFVhpp8S7g0hiJxLqFcGoG2SIJTUY9qE=;
	b=A67hU4kKfcjTwHFk9yBaqIz/dlXdNo/ULcl9s1GN313UBmqJiGnlw1HTNw/qTNzpQ6IwsD
	uVPvjCm8ZpOk1j7H4midDyNA+hk5pIn957Hrowf6Wr5yxwiWxsWsnbgnUSPlYPVWj7XftT
	jl45QBBVZsxrCdZs7hgTLcWy2lCHqX8=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/9] batctl: manpage spring cleaning
Date: Sat, 17 Jul 2021 13:01:20 +0200
Message-Id: <20210717110129.25539-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=uNn4UBVbpNyUFVhpp8S7g0hiJxLqFcGoG2SIJTUY9qE=;
	b=Su4wSCOKZbLPf0OmpDx25c3XptfSkcaCWxPP0dMrrzKQUU+74SjqkmA1u5EPvyAf9NbtQg
	nmtmFSlwWrMZXvNeRTr3oWWs4vr+AyHhRDJ8CingvI2zAKe7/JutWsyotp7P95jAu1VHAw
	lFy214z07IS6/ScHewPDz9fTcfXGNio=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520275; a=rsa-sha256;
	cv=none;
	b=JeXTSzZrD0J/UekDrUGD0qyU70z+wrQ+U+zKmivsnvav+Ao6vxhk4lz2rZ+4G+lIv0RpyY
	PFYLFxTB/7Z8D9vrJlMLP+BLjPiR92DAUQYeP/YnBJZsP1SteTEjdunabVod1u+3oNlMIp
	j46FyQOvqrJGyaT/C9jqqZ4v9OEcbwo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=A67hU4kK;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: X3T7OHEOZUHXO77I7PUU4TEE3EHVQBTD
X-Message-ID-Hash: X3T7OHEOZUHXO77I7PUU4TEE3EHVQBTD
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/X3T7OHEOZUHXO77I7PUU4TEE3EHVQBTD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through the manpage and tried to clean up the structure of the man=
page.
This should make it easier for add new entries to the manpage when subcom=
mands
are added. But also to have a slightly better impression when trying to l=
ook
something up in the manpage.

As said, this is mostly about the the structure and not about the texts. =
So
if anyone wants to improve them too: feel free to submit patches.

Kind regards,
	Sven

Sven Eckelmann (9):
  batctl: man: Fix alignment after json list
  batctl: man: Move commands to own section
  batctl: man: Convert lists to indented paragraph
  batctl: man: Use native list support
  batctl: man: Use tbl groff preprocessor for tables
  batctl: man: Switch to manpage font convention
  batctl: man: Add example section
  batctl: man: Reorder and restructure sections
  batctl: man: Rewrite SEE ALSO list

 man/batctl.8 | 619 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 337 insertions(+), 282 deletions(-)

--=20
2.30.2

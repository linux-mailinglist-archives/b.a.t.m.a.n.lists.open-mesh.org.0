Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA822457E77
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Nov 2021 13:41:50 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E658A8449A;
	Sat, 20 Nov 2021 13:41:02 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5BA7883DEC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Nov 2021 13:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1637412060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=t7wbxovLoX7LRwlLOel7o2Ymj+dtVX9lRg/4gewPTQk=;
	b=1r5RT5rWdN4r6tse23U/puZ/UqDahbQaUyy3Pew9hKKnmd3AYVAjxI7pdPKrEDUwHWjI46
	2Vo8RPA27yju39rbn1WYdjdDo0jqKBVO4o5G+l20zm1tVI0OPXMl5QGzq8tKCRxu+WM1Bi
	bTbspJfiwaCCHgQJmgzHa3rfzr1hpfY=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org
Subject: [PATCH 5.4 0/3] batman-adv: Fixes for stable/linux-4.19.y
Date: Sat, 20 Nov 2021 13:40:50 +0100
Message-Id: <20211120124053.261156-1-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637412060; a=rsa-sha256;
	cv=none;
	b=xJtlwi0EtTB2H0Aj6KqY92jYxT72EA63hk4OpyfS3KytV+NiUJE7/SXZ1RfVMQtjccjOgL
	nQJ0e0gLf1xtNvcB+nUH+soAbZe4uyN5znluUhmXR6u6dMISVByOD4e0gt50KGCkHuL7WK
	F5fheh6arQy8v5rhS4zCGGnOz738QCw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637412060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=t7wbxovLoX7LRwlLOel7o2Ymj+dtVX9lRg/4gewPTQk=;
	b=V/uIxmUqSspmE4M/swqKBOYorajh9FSCS7xYD7s27dFCspBDlj55fu/nW/IRpZx/QU/JQu
	xXsL43xcDRfEnKRyS3EnRxB7sSzrxV5V8PtoYWiqJ7BG6oMKd5nGaoczwdFpvBXiuudHeH
	3ftMOzWp6QvYG++j3ldxyABtTFCPS64=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=1r5RT5rW;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IX74YV6RDRNDLHXWSYKSPYLL5FFBC74B
X-Message-ID-Hash: IX74YV6RDRNDLHXWSYKSPYLL5FFBC74B
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IX74YV6RDRNDLHXWSYKSPYLL5FFBC74B/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I went through  all changes in batman-adv since v4.19 with a Fixes: line
and checked whether they were backported to the LTS kernels. The ones whi=
ch
weren't ported and applied to this branch are now part of this patch seri=
es.

For this kernel version, I only found following three patches:

* batman-adv: Consider fragmentation for needed_headroom
* batman-adv: Reserve needed_*room for fragments
* batman-adv: Don't always reallocate the fragmentation skb head

which could in some circumstances cause packet loss but which were create=
d
to fix high CPU load/low throughput problems. But I've added them here
anyway because the corresponding VXLAN patches were also added to stable.
And some stable kernels also got these fixes a while back.

Kind regards,
	Sven

Sven Eckelmann (3):
  batman-adv: Consider fragmentation for needed_headroom
  batman-adv: Reserve needed_*room for fragments
  batman-adv: Don't always reallocate the fragmentation skb head

 net/batman-adv/fragmentation.c  | 26 ++++++++++++++++----------
 net/batman-adv/hard-interface.c |  3 +++
 2 files changed, 19 insertions(+), 10 deletions(-)

--=20
2.30.2

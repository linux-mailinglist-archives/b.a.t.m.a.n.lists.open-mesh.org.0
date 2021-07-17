Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2157E3CC2BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 131F482428;
	Sat, 17 Jul 2021 13:11:26 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7A9F3814EE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sDXQi2Mx1YcVOxhxbVnrI9+t9oFvqMn0qot5+27g/yA=;
	b=fcAMe1TkNJKK3f6O3HG0LLvpVoViJVgi7Pfh3ZYwHDj0FU5Ij4cwQcjBKZc3e0EjHV3VDv
	LhceX66w0JUNFCNkY4jnDpMN9yD740JoXBA71jZ8WvUg1Xpw1cBg+KXh+XG83AR6Y/QUkp
	w0ehWoAtRC0XIJs+Gg69rRKvuMei7Uo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 9/9] batctl: man: Rewrite SEE ALSO list
Date: Sat, 17 Jul 2021 13:01:29 +0200
Message-Id: <20210717110129.25539-10-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sDXQi2Mx1YcVOxhxbVnrI9+t9oFvqMn0qot5+27g/yA=;
	b=pY2LW9UcD76eD0r6neaYcn9OUoQcmTM5Lvlekgk6EKtAbWSWqfy/XcjpzzGugWrynS961y
	34P0944hWWW6FN+KtGQiUxnbEK6nTASxGkltB90fPR2cIqHRbFeD3LL+Os9MDJ1v8BaPMS
	srrT1qSR4Cfqm1e2NJw0AlVYHZ/ekec=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520274; a=rsa-sha256;
	cv=none;
	b=lCQZed1+BdR4b8f1Ssgu6KLQRlLs7kOk/iZ98EC5RM0P/h5GdFY8khMRbiqu66pdL5NZNT
	o3oUq4xP8O/JGZAo+G+sMqKx7YllNHRrnNJ133ntjoYC+eSmW1cceZ8jSoS7jVTxQNmuuv
	SFDPwwfZX3ffS5jDSl1W6ezkjsYmPrY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fcAMe1Tk;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: G2OAJFAQC65H7USABLLK2ZARRVLQY5LE
X-Message-ID-Hash: G2OAJFAQC65H7USABLLK2ZARRVLQY5LE
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G2OAJFAQC65H7USABLLK2ZARRVLQY5LE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The dot command is not relevant anymore to batctl because the vis command
is no longer provided by batctl/batman-adv.

The ip and ip-link are the main tools to handle the kernel net_devices vi=
a
rtnetlink. They are therefore a must for anyone trying to use the batadv
interfaces.

The trace-cmd is the tool which has to be used to gather the logs from th=
e
kernel when batctl enabled the various loglevels for an batadv interface.

The bridge utility is the main tool to configure bridges over the
batman-adv interfaces. It must also be used to read out the mdb state in
case the multicast handling of batman-adv has to be debugged.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index 1470beb..b5be0b8 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -506,11 +506,14 @@ provided host name or replace MAC addresses in debu=
g output and logs. Host names
 addresses.
=20
 .SH SEE ALSO
-.BR ping (1),
-.BR traceroute (1),
-.BR tcpdump (1),
+.BR bridge (8),
 .BR dmesg (1),
-.BR dot (1)
+.BR ip (8),
+.BR ip-link (8),
+.BR ping (8),
+.BR tcpdump (8),
+.BR traceroute (1),
+.BR trace-cmd (1)
 .SH AUTHOR
 batctl was written by Andreas Langer <an.langer@gmx.de> and Marek Lindne=
r <mareklindner@neomailbox.ch>.
 .PP
--=20
2.30.2

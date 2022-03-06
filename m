Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9C14CF28A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Mar 2022 08:24:33 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7722280D22;
	Mon,  7 Mar 2022 08:24:29 +0100 (CET)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8B2B580794
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Mar 2022 22:58:01 +0100 (CET)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1646603881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OLij3hLq/ByEiIvsKO2mUqNMbWd2cFRiFv/iL/CpBCk=;
	b=tUne71KCZTwV5KHN/PA2BeuDU0Ui2RmzmR06wo5VCgSnXvcNJ6gUdlowRejfyJNqosczI0
	XyIRewLv9JIHiQHH8tPt2M+F4beDGD/0Yt9G+nD/DvgMbBI64JFULurNIZzsA0PINVVvbJ
	1QmKMsvsr8OT4Dt1Kql7HOdKoTP+eJN1PnsOPhvPeyuU0o0fqW5DVr/vBOLYy2td0FE4iD
	mI6Bh7LRqEVP0JG44lJL9GazmWDjSATwFYGnODpUEoEwH3i8Qxyw9zG+Pj3ogW8w9lOUAq
	htbT4393p5kH+q1pUt6hS94uyx81KNWM5UWwCA2zec7l3KTSzI3/u1bWwA9cSw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1646603881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OLij3hLq/ByEiIvsKO2mUqNMbWd2cFRiFv/iL/CpBCk=;
	b=rkxcvxvK79CfwpOoWAKzxP921+aI4UP2669w0fns34DkINPs693vfhMMINY9U6iEsbZWfw
	PeHf6FpY2DQ8tJBQ==
To: netdev@vger.kernel.org
Subject: [PATCH net-next 00/10] net: Convert user to netif_rx(), part 3.
Date: Sun,  6 Mar 2022 22:57:43 +0100
Message-Id: <20220306215753.3156276-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=tUne71KC;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=rkxcvxvK;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (diktynna.open-mesh.org: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646603881; a=rsa-sha256;
	cv=none;
	b=LNHZhWGrgf2HA1KY9aIv0YdcFANy2v55cOmM+rqlI7HjIVQxI/Ax9aPSUTL176ux3bXI5x
	RwgT6CUC3pedXPuHSDsrqZKqYjunV5kH3bYiMx4AjC/8MJEDV4rJCgCgPSwbUnRVUaVqyi
	8pkFwj6RSJIEL1lRXQ8v9aTF09Vh0ss=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646603881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=OLij3hLq/ByEiIvsKO2mUqNMbWd2cFRiFv/iL/CpBCk=;
	b=cjNnG8651ldXXvXLI+eN3BN/B6LvDr2P5suV1etbNyiZ3zUjQLay954i87JaPvRfc622Gi
	00OGAHcTpgNZddx+o/zS9jSluUD+svcfuWnd8MyCu2rKypZZM5ta9EF+GjZSe9eoBLxLiJ
	ncq7iH3Ey6MGVABIZIMiinusndzRPcM=
X-MailFrom: bigeasy@linutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LAL34W7W7R3Q4JICQJKYP4ALNECWK47B
X-Message-ID-Hash: LAL34W7W7R3Q4JICQJKYP4ALNECWK47B
X-Mailman-Approved-At: Mon, 07 Mar 2022 07:24:24 +0100
CC: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Alexander Gordeev <agordeev@linux.ibm.com>, Alexandra Winter <wintera@linux.ibm.com>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, Christian Borntraeger <borntraeger@linux.ibm.com>, Divya Koppera <Divya.Koppera@microchip.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Carstens <hca@linux.ibm.com>, Heiner Kallweit <hkallweit1@gmail.com>, Johan Hedberg <johan.hedberg@gmail.com>, Jon Maloy <jmaloy@redhat.com>, linux-bluetooth@vger.kernel.org, linux-s390@vger.kernel.org, linux-staging@lists.linux.dev, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Marcel Holtmann <marcel@holtmann.org>, Marek Lindner <mareklindner@neomailbox.ch>, Remi Denis-Courmont <courmisch@gmail.com>, Russell King <linux@armlinux.org.uk>, Sven Schnelle <svens@linux.ibm.com>, tipc-discussion@lists.sourceforge.net, Vasily Gorbik <gor@linux.ibm.com>, Wenjia Zhang <wenjia
 @linux.ibm.com>, Ying Xue <ying.xue@windriver.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LAL34W7W7R3Q4JICQJKYP4ALNECWK47B/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This is the third and last batch of converting netif_rx_ni() caller to
netif_rx(). The change making this possible is net-next and
netif_rx_ni() is a wrapper around netif_rx(). This is a clean up in
order to remove netif_rx_ni().

The micrel phy driver is patched twice within this series: the first is
is to replace netif_rx_ni() and second to move netif_rx() outside of the
IRQ-off section. It is probably simpler to keep it within this series.

Cc: Alexander Gordeev <agordeev@linux.ibm.com>
Cc: Alexandra Winter <wintera@linux.ibm.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Antonio Quartulli <a@unstable.cc>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Cc: Christian Borntraeger <borntraeger@linux.ibm.com>
Cc: Divya Koppera <Divya.Koppera@microchip.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Johan Hedberg <johan.hedberg@gmail.com>
Cc: Jon Maloy <jmaloy@redhat.com>
Cc: linux-bluetooth@vger.kernel.org
Cc: linux-s390@vger.kernel.org
Cc: linux-staging@lists.linux.dev
Cc: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Cc: Remi Denis-Courmont <courmisch@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Simon Wunderlich <sw@simonwunderlich.de>
Cc: Sven Eckelmann <sven@narfation.org>
Cc: Sven Schnelle <svens@linux.ibm.com>
Cc: tipc-discussion@lists.sourceforge.net
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Wenjia Zhang <wenjia@linux.ibm.com>
Cc: Ying Xue <ying.xue@windriver.com>

Sebastian


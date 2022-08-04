Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFB658A0DF
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Aug 2022 20:52:28 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1A4F781445;
	Thu,  4 Aug 2022 20:52:27 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5682B80146
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Aug 2022 20:52:23 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] alfred: add missing alfred_event_notify_v0 struct documentation
Date: Thu,  4 Aug 2022 20:52:10 +0200
Message-Id: <20220804185212.3074514-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1659639143; a=rsa-sha256;
	cv=none;
	b=n0IjdP1+T/UfvrCFapCyBMYpMnKRhJm7Sont2c4k5mQPWQX3YXYJrUsUq5ayWarQ81PqEt
	C9ETAoMOaWW8acwms10j8mlheJoRcYNyR0vrcfG74GOyZh1e1QvNqxOiMzDypcainAEfj3
	zfDV75qdCRegmEunVYyMYBstSoviyjk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1659639143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eaQxRbIVn1Tgn9srGhtHXReZa3LmwYLKlzI9lFKrS+o=;
	b=Fcm33kXwWxwmqZWcQiXsOCel6jI/XsfUqjOcWJk0oeUBCXrvn+ZlX4dXBuFDXEopwcevW8
	G0gi7/oCM2XhEuFgmBNEpkdaIo2TgOrvPWBzPbdGT/BPxlC6hY2Zl+OaFuhIlUjcOrj50C
	yD5wd3HPV7Sb5smExMxe+kexfMk2UvU=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: X37AJLYB5IRB5V6AJAKGUMMSS6LJOWQW
X-Message-ID-Hash: X37AJLYB5IRB5V6AJAKGUMMSS6LJOWQW
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/X37AJLYB5IRB5V6AJAKGUMMSS6LJOWQW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 packet.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/packet.h b/packet.h
index b8d528e..c0723b8 100644
--- a/packet.h
+++ b/packet.h
@@ -247,6 +247,7 @@ struct alfred_event_register_v0 {
  * struct alfred_event_notify_v0 - event notification message
  * @header: TLV header describing the complete packet
  * @type: Type of the data triggering the event
+ * @source: Mac address of the original source of the data
  *
  * Sent by the daemon to client on data record update
  */
--=20
2.36.1

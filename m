Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D2848CD6B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 22:06:01 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3933383E98;
	Wed, 12 Jan 2022 22:06:01 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7143483E46
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 22:05:58 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Wed, 12 Jan 2022 22:05:06 +0100
Message-Id: <20220112210506.3488775-3-mareklindner@neomailbox.ch>
In-Reply-To: <20220112210506.3488775-1-mareklindner@neomailbox.ch>
References: <10410848.OOsao9LFFs@rousseau>
 <20220112210506.3488775-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642021558; a=rsa-sha256;
	cv=none;
	b=qcsDfe7U65/mEbFVwPQzrJeQHFiadyae7GP8dyYK2eygh+6ETNFDOqsR67K8U8h0I9jE4C
	2Ou9SpigD/q5KHd0139VYOGbLW7a1HtlHQa/638dbSspPM0mgOlgeWgw7vuaF+4lS8fUaA
	UwdmHwFC/OlhYjpbzNToYGQi7pOWQAs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642021558;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NVI4cMzS+FQAMGCh0y9pZ/Cu8V2R+vchBJrn/PpDH5A=;
	b=YGm1UoJy5A1soOl3zTwkJoKYb+3UFXNrVUopix4D1YKpCXWnZkNK+skharXk1giPfYpDKl
	JG3TJlguDkaFnHDr2exKv/Wo7NwrIu9ynpqO4zmy7CnEpqYS4mEnm1iUSjNMyaIQSnwxYv
	vnfoVCUss82rVPs5BYFPnlmCfr0ZnRc=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KAQQACDKPGCW3TNG7PAYE52EAGQJZA2A
X-Message-ID-Hash: KAQQACDKPGCW3TNG7PAYE52EAGQJZA2A
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KAQQACDKPGCW3TNG7PAYE52EAGQJZA2A/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Without explicitely initializing the buffer with null bytes, the stack
variables may contain process information which may be leaked when
transmitted via unix socket.
Also, the size of the variables sitting on the stack can be reduced.

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 client.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/client.c b/client.c
index b5d8943..cf15ff4 100644
--- a/client.c
+++ b/client.c
@@ -35,6 +35,7 @@ int alfred_client_request_data(struct globals *globals)
 		return -1;
=20
 	len =3D sizeof(request);
+	memset(&request, 0, len);
=20
 	request.header.type =3D ALFRED_REQUEST;
 	request.header.version =3D ALFRED_VERSION;
@@ -184,6 +185,7 @@ int alfred_client_modeswitch(struct globals *globals)
 		return -1;
=20
 	len =3D sizeof(modeswitch);
+	memset(&modeswitch, 0, len);
=20
 	modeswitch.header.type =3D ALFRED_MODESWITCH;
 	modeswitch.header.version =3D ALFRED_VERSION;
@@ -260,6 +262,7 @@ int alfred_client_change_interface(struct globals *gl=
obals)
 	}
=20
 	len =3D sizeof(change_interface);
+	memset(&change_interface, 0, len);
=20
 	change_interface.header.type =3D ALFRED_CHANGE_INTERFACE;
 	change_interface.header.version =3D ALFRED_VERSION;
@@ -308,6 +311,7 @@ int alfred_client_change_bat_iface(struct globals *gl=
obals)
 	}
=20
 	len =3D sizeof(change_bat_iface);
+	memset(&change_bat_iface, 0, len);
=20
 	change_bat_iface.header.type =3D ALFRED_CHANGE_BAT_IFACE;
 	change_bat_iface.header.version =3D ALFRED_VERSION;
--=20
2.32.0.rc0

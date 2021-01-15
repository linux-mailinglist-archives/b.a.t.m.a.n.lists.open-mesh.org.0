Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA82F88A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 Jan 2021 23:45:37 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A7A69807E7;
	Fri, 15 Jan 2021 23:45:35 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 52834803F8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 Jan 2021 23:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1610750314;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HXWf4JpfyHMTWpD8sxgIrxgm54rEFt2O7U4Y0l3dBoA=;
	b=A5WRBBz69F/8X5WYy5F3517ksiNx05d6POFC2nQjWw6bBxYtWzCYE3vPiDaY4yEto+FznP
	EY3YYOjVhsGgcqo3Mto7hfoEE13INeuu07OplZTgWaOTP/k0dSbGfTsZLs6FGTUC+PElBp
	y1MV9ShaUm8QM9tXKC4VkauRBNlLJUY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH] batctl: Don't stop when create_interface detected existing interface
Date: Fri, 15 Jan 2021 23:38:31 +0100
Message-Id: <20210115223831.18027-1-sven@narfation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1610750733; a=rsa-sha256;
	cv=none;
	b=ZbEUczOInXKOWGs2rx59MF8vuW8fVxpx5R+2JrurD2Of6B8axtZ0BesMPPduT2i6D5D1EB
	5DWmuWiCqdreIJv2jxGhxE0zaA5lBYuePHMXALYToav95ikVqIGZte5osjuuEHrOGSSQ/q
	i3yp/ntmORB6b6L8A0AcR07ajbCLRpo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=A5WRBBz6;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1610750733;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=HXWf4JpfyHMTWpD8sxgIrxgm54rEFt2O7U4Y0l3dBoA=;
	b=BcUVeeR7Rjak/RWwfPqgG59gnnIJ8EtfQ5rUa3Q4Qmq9Yrt4+vetMpKWOzajP1A7Mk8Hh2
	HmKZJwg7VOrPaJZUGsTJmI0ZXoJ9pZrKwtSxvA56Qh8vLDe1ErHgg0gQzoIiipu3gScYF7
	bMY3DjmB++9QpEZF2wPr2RSiDI3+Rp0=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GZIXWIFJ5I46Y4ZR67D3T3TERP5VCPVO
X-Message-ID-Hash: GZIXWIFJ5I46Y4ZR67D3T3TERP5VCPVO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GZIXWIFJ5I46Y4ZR67D3T3TERP5VCPVO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

"batctl meshif bat0 interface add ..." should never be called in parallel=
.
But when something still does this, it could be that the code first detec=
ts
the missing meshif and then tries to create it - which fails when another
process requested the creation of the same interface slightly before batc=
tl
did it.

But this should not prevent batctl to add the lower interface to the
meshif. It is not really important that the batctl process was the one
which created it - only that it exists is important.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/interface.c b/interface.c
index 77ca1a0..7f77459 100644
--- a/interface.c
+++ b/interface.c
@@ -526,7 +526,7 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	ifmaster =3D if_nametoindex(state->mesh_iface);
 	if (!manual_mode && !ifmaster && rest_argv[0][0] =3D=3D 'a') {
 		ret =3D create_interface(state->mesh_iface, &create_params);
-		if (ret < 0) {
+		if (ret < 0 && ret !=3D -EEXIST) {
 			fprintf(stderr,
 				"Error - failed to create batman-adv interface: %s\n",
 				strerror(-ret));
--=20
2.29.2

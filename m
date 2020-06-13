Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FCD1F8437
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jun 2020 18:08:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6C38800AE;
	Sat, 13 Jun 2020 18:08:01 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6D401800AE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Jun 2020 18:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1592064006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MO4x1njS37yzqtkx4BbpM28kgy4OyC2bpqp+/yTDqCw=;
	b=m6LvgJW0U+jMiP8HGlUOtTVQ6l1/Rdppz2tO+GxqnRMjcFmct9yb22UIjZi2KfRyYPBexs
	l4G+whj4H/sxWANnS9ogCuxv0Ze2MsqkAJTACC1qWIbYwNVoSgMKbdkwVRjGHCrl/gxydb
	Gdvnn93P5xTlmpUmIJISU3vLwpBZdFo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] batctl: Disable automatic destruction of empty meshifs
Date: Sat, 13 Jun 2020 17:59:35 +0200
Message-Id: <20200613155935.8934-2-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200613155935.8934-1-sven@narfation.org>
References: <20200613155935.8934-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592064479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MO4x1njS37yzqtkx4BbpM28kgy4OyC2bpqp+/yTDqCw=;
	b=r1S16h4m1Znnyz7UujQgFyXTgHih8tQo3jDOYYWclvHcqSilFOEqVYTWGOdC1FaV9rCeub
	mEqW4m8DqTbdy4iYpOB6nII7Psj0ScdbbeBVo1GIfmFWagRHevoRzakau1NlUU+EBL81wk
	hIKYCtAX/1HsFJNitujQ8+/rxpKWxi4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592064479; a=rsa-sha256;
	cv=none;
	b=LlOxwvm49rAigpAmXzEVVBeloUvgj8WIxKuIt/FG3GFntvaVsADf/1dXN87X+0O64SfzUW
	YdDkoT4SLcGKTgXxdn6qEdeUh1sc3IMAUPqUESzFFgymF1l0qWNQa/aE0ZXf53dGt8X8FC
	7GA3jxAZujmCjPC9MMZow6jVt+nAYpo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=m6LvgJW0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FVF26Y3XDWXND6UOBMMDR5HD4VSJDSNU
X-Message-ID-Hash: FVF26Y3XDWXND6UOBMMDR5HD4VSJDSNU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FVF26Y3XDWXND6UOBMMDR5HD4VSJDSNU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs interface of batman-adv used an automatic drop of empty batadv
meshifs. This was necessary because no other method to remove this type
of interface was available. The same behavior was tried to emulate in the
batctl rtnetlink implementation to make the migration easier.

But this caused problems with both (rtnetlink/sysfs) backends because the
caller might not be aware of the current state of hardifs list for the
current meshif. The meshif might therefore be deleted accidentally (and i=
ts
configuration lost) even when the caller only wanted to swap some devices
around.

Instead print information about the necessary addition steps to drop the
empty meshif instead of performing it automatically.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c  | 5 +++--
 man/batctl.8 | 4 ++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/interface.c b/interface.c
index ac4d883..d0d9435 100644
--- a/interface.c
+++ b/interface.c
@@ -31,7 +31,7 @@ static void interface_usage(void)
 	fprintf(stderr, "Usage: batctl [options] interface [parameters] [add|de=
l iface(s)]\n");
 	fprintf(stderr, "       batctl [options] interface [parameters] [create=
|destroy]\n");
 	fprintf(stderr, "parameters:\n");
-	fprintf(stderr, " \t -M disable automatic creation/removal of batman-ad=
v interface\n");
+	fprintf(stderr, " \t -M disable automatic creation of batman-adv interf=
ace\n");
 	fprintf(stderr, " \t -h print this help\n");
 }
=20
@@ -535,7 +535,8 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	if (!manual_mode && rest_argv[0][0] =3D=3D 'd') {
 		cnt =3D count_interfaces(state->mesh_iface);
 		if (cnt =3D=3D 0 && pre_cnt > 0)
-			destroy_interface(state->mesh_iface);
+			fprintf(stderr, "Warning: %s has no interfaces and can be destroyed w=
ith: batctl meshif %s interface destroy\n",
+				state->mesh_iface, state->mesh_iface);
 	}
=20
 	return EXIT_SUCCESS;
diff --git a/man/batctl.8 b/man/batctl.8
index 6e75cdd..fedfb21 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -58,8 +58,8 @@ performances, is also included.
 If no parameter is given or the first parameter is neither "add" nor "de=
l" the current interface settings are displayed.
 In order to add or delete interfaces specify "add" or "del" as first arg=
ument and append the interface names you wish to
 add or delete. Multiple interfaces can be specified.
-The "\-M" option tells batctl to not automatically create the batman-adv=
 interface on "add" or to destroy it when "del"
-removed all interfaces which belonged to it.
+The "\-M" option tells batctl to not automatically create the batman-adv=
 interface on "add". It can also be used to
+suppress the warning about the manual destruction when "del" removed all=
 interfaces which belonged to it.
 .IP "[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP [\fBcreate\fP|\fBd=
estroy\fP]"
 A batman-adv interface without attached interfaces can be created using =
"create". The parameter "destroy" can be used to
 free all attached interfaces and remove batman-adv interface.
--=20
2.20.1

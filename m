Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BAABC48CD69
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jan 2022 22:05:26 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A6AA283E39;
	Wed, 12 Jan 2022 22:05:25 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F0E7A8038C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jan 2022 22:05:22 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 1/3] alfred: move interface check into helper function
Date: Wed, 12 Jan 2022 22:05:04 +0100
Message-Id: <20220112210506.3488775-1-mareklindner@neomailbox.ch>
In-Reply-To: <10410848.OOsao9LFFs@rousseau>
References: <10410848.OOsao9LFFs@rousseau>
MIME-Version: 1.0
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642021523; a=rsa-sha256;
	cv=none;
	b=kxNV2lb+TwZ+G0l4V5tM0ke+ufpkjXIs0IoAofRX/034E8A09pV0UeRXjogtdVWpxhFBnJ
	n6l6mkiRCTBqSAI6QXP8PMZdK1Hi/0nXLTYGAQAN2Wi2DwGysxBmAmDfr00LC6Idwth5Gr
	Zp7cfxRD794t9RxRTJXMXzs5chfc3Fo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642021523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T7Vfi45bTFi+bODG76o1WqTufK7at7JFpVqaywdEsd0=;
	b=MpCxBHmscYS1q+G4aLoH0nF7BkanwyUVBbVLq8yqMtCQx8zRjtL1io3XcS7qY/oJPcKvPD
	uobzONoZ/pvrC2gHFhrpGEGO+zL08IJI41dV5FffGkw2rK6O/pW9sMs+Hh3N/pjCeqwnZ4
	jZVKI6AdXJHAj0NN1SpyX90sAlDXT30=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: KXUGSTR5WDS5WRM6A37NQKAQ53TCPI5D
X-Message-ID-Hash: KXUGSTR5WDS5WRM6A37NQKAQ53TCPI5D
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KXUGSTR5WDS5WRM6A37NQKAQ53TCPI5D/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 alfred.h |  1 +
 server.c |  4 ++--
 util.c   | 11 +++++++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/alfred.h b/alfred.h
index 0e4dd26..c595b06 100644
--- a/alfred.h
+++ b/alfred.h
@@ -204,5 +204,6 @@ int time_diff(struct timespec *tv1, struct timespec *=
tv2,
 void time_random_seed(void);
 uint16_t get_random_id(void);
 bool is_valid_ether_addr(uint8_t *addr);
+bool is_iface_disabled(char *iface);
 int ipv4_arp_request(struct interface *interface, const alfred_addr *add=
r,
 		     struct ether_addr *mac);
diff --git a/server.c b/server.c
index 85bf453..1efc211 100644
--- a/server.c
+++ b/server.c
@@ -205,7 +205,7 @@ static void update_server_info(struct globals *global=
s)
 	if (globals->opmode =3D=3D OPMODE_PRIMARY)
 		return;
=20
-	if (strcmp(globals->mesh_iface, "none") !=3D 0) {
+	if (!is_iface_disabled(globals->mesh_iface)) {
 		tg_hash =3D tg_hash_new(globals->mesh_iface);
 		if (!tg_hash) {
 			fprintf(stderr, "Failed to create translation hash\n");
@@ -385,7 +385,7 @@ int alfred_server(struct globals *globals)
 		return -1;
 	}
=20
-	if (strcmp(globals->mesh_iface, "none") !=3D 0 &&
+	if (!is_iface_disabled(globals->mesh_iface) &&
 	    batadv_interface_check(globals->mesh_iface) < 0 &&
 	    !globals->force) {
 		fprintf(stderr, "Can't start server: batman-adv interface %s not found=
\n",
diff --git a/util.c b/util.c
index 42a625a..eabef57 100644
--- a/util.c
+++ b/util.c
@@ -67,6 +67,17 @@ bool is_valid_ether_addr(uint8_t addr[ETH_ALEN])
 	return true;
 }
=20
+bool is_iface_disabled(char *iface)
+{
+	if (!iface)
+		return false;
+
+	if (strcmp(iface, "none") !=3D 0)
+		return false;
+
+	return true;
+}
+
 static void ipv4_request_mac_resolve(const alfred_addr *addr)
 {
 	const struct sockaddr *sockaddr;
--=20
2.32.0.rc0

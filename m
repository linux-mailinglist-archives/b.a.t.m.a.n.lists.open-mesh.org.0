Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D91202A1902
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 31 Oct 2020 18:39:22 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2826880E6F;
	Sat, 31 Oct 2020 18:39:22 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5ADBA80E69
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Oct 2020 18:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1604165958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jB2WudxsTtxo1e+1EKMoedDZYndBNikXTPx5Q/LMBsk=;
	b=sroYsv1JNefOE/E5NIsghwwcDbkqiLpA/fZUPyUkuHJHCgbBkJbJMzUeQDO0/fEjUVlQf4
	lwJlqIQzQ005OOJ+QjgvwCb8AXc32gvG3jBdGX2yCA3EEbc1wBtS0cvFR/27sWa+MMXLjy
	AsGatprSrR5gIzZ33HpWJmfh8upkeEE=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/2] alfred: Drop deprecated sysfs support
Date: Sat, 31 Oct 2020 18:39:12 +0100
Message-Id: <20201031173912.108591-2-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201031173912.108591-1-sven@narfation.org>
References: <20201031173912.108591-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604165959; a=rsa-sha256;
	cv=none;
	b=JeRW1pe89cOhhvp+oT8vwHRuA1eM4BvqGLyj7SpDgzRqUeGZo5i2lwNNz/4bJ6jc4vtpCq
	qvHhHnPQh40PxczUDUGSgx80RDI97S9sK7y6SVk3FHoSewyWyvMXzHmINhWRDzYCwsAyOo
	Y/ZnwG3UbwhKlGVvk0pBAX2PWaB7YCY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=sroYsv1J;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604165959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jB2WudxsTtxo1e+1EKMoedDZYndBNikXTPx5Q/LMBsk=;
	b=Fzp8fjfoI89mKogxv9OoUswfV41kA1R9qIkKLkIKJmtz8er/cC0doGb7Ze+0Sq3Cm+7Moe
	B62zMPrh3lCg7J3d1IFRXVhOnLIl54ikJihrLqw0hNY0o+e3rbe60v9oR7HT897+EJWQ2U
	mbqpvyJ7PSL2c2PbnZQyRD/L9ldTPpI=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7UF5DJBFIKZ63YKDOMCK5ZCD6YG5VLI4
X-Message-ID-Hash: 7UF5DJBFIKZ63YKDOMCK5ZCD6YG5VLI4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7UF5DJBFIKZ63YKDOMCK5ZCD6YG5VLI4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The sysfs support is disabled by default in batman-adv since a while and
will be removed in 2021. The generic netlink interface should be used
instead.

The alfred support for it should be removed with the same release as the
removal in batman-adv.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 vis/vis.c | 50 ++++----------------------------------------------
 vis/vis.h |  3 ---
 2 files changed, 4 insertions(+), 49 deletions(-)

diff --git a/vis/vis.c b/vis/vis.c
index b62359c..1bb82ab 100644
--- a/vis/vis.c
+++ b/vis/vis.c
@@ -36,39 +36,6 @@ struct vis_netlink_opts {
 	struct nlquery_opts query_opts;
 };
=20
-static char *read_file(char *fname)
-{
-	FILE *fp;
-	char *buf =3D NULL, *buf_tmp;
-	size_t size, ret;
-
-	fp =3D fopen(fname, "r");
-
-	if (!fp)
-		return NULL;
-
-	size =3D 0;
-	while (!feof(fp)) {
-
-		buf_tmp =3D realloc(buf, size + 4097);
-		if (!buf_tmp) {
-			free(buf);
-			fclose(fp);
-			return NULL;
-		}
-
-		buf =3D buf_tmp;
-		ret =3D fread(buf + size, 1, 4096, fp);
-		size +=3D ret;
-	}
-	fclose(fp);
-
-	if (buf)
-		buf[size] =3D 0;
-
-	return buf;
-}
-
 static char *mac_to_str(uint8_t *mac)
 {
 	static char macstr[20];
@@ -443,26 +410,17 @@ err_free_sock:
 	return ret_status;
 }
=20
-static bool interface_active(unsigned int meshif, unsigned int hardif,
-			     const char *ifname)
+static bool interface_active(unsigned int meshif, unsigned int hardif)
 {
 	char iface_status[IFACE_STATUS_LEN];
-	char path_buff[PATH_BUFF_LEN];
 	char *file_content =3D NULL;
 	char *content_newline;
 	bool active =3D false;
 	char *status;
=20
 	status =3D get_iface_status_netlink(meshif, hardif, iface_status);
-	if (!status) {
-		snprintf(path_buff, sizeof(path_buff), SYS_IFACE_STATUS_FMT,
-			 ifname);
-		file_content =3D read_file(path_buff);
-		if (!file_content)
-			return false;
-
-		status =3D file_content;
-	}
+	if (!status)
+		return false;
=20
 	content_newline =3D strstr(status, "\n");
 	if (content_newline)
@@ -518,7 +476,7 @@ static int register_interfaces_rtnl_parse(struct nl_m=
sg *msg, void *arg)
 	if (master !=3D register_arg->ifindex)
 		goto err;
=20
-	if (!interface_active(master, ifm->ifi_index, ifname))
+	if (!interface_active(master, ifm->ifi_index))
 		goto err;
=20
 	get_if_index_byname(register_arg->globals, ifname);
diff --git a/vis/vis.h b/vis/vis.h
index bed6615..6f5b839 100644
--- a/vis/vis.h
+++ b/vis/vis.h
@@ -23,9 +23,6 @@
 #define	VIS_PACKETVERSION			1
 #define UPDATE_INTERVAL				10
=20
-#define SYS_IFACE_PATH				"/sys/class/net"
-#define SYS_IFACE_STATUS_FMT			SYS_IFACE_PATH"/%s/batman_adv/iface_statu=
s"
-
=20
 enum opmode {
 	OPMODE_SERVER,
--=20
2.28.0

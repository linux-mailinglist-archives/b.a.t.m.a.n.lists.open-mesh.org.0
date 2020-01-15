Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 8891413CDC5
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Jan 2020 21:10:02 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1A4B180715;
	Wed, 15 Jan 2020 21:09:51 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 4C732802DB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Jan 2020 21:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1579118528;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XV85c9KVq42MuhSnWOGFpYbOHDZwbLgS8+aatrqshgk=;
 b=JwIckGPj4JyX3pstqcjRXnHoYEI8yy5sa4boRl7t5/lrAvAZH0Fq9Ugy7PUOZdgCRgpUbb
 b069zCquIOZYkVOZjcX6/mCFo0ukBpu6BvrWcjkza7Fb1cC0QxdPFfsSa/zr9UMT7sySv4
 nVdDbwH3v2CewLyQm7yTY+9lMO6cRyw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] alfred-gpsd: Fix build against gpsd ABI 9.0
Date: Wed, 15 Jan 2020 21:01:58 +0100
Message-Id: <20200115200158.2920-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579118983;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=XV85c9KVq42MuhSnWOGFpYbOHDZwbLgS8+aatrqshgk=;
 b=kGHwLX4fFwVR0cKWmBv9NwH30RrXVDv4Yo7auGXjN3ISucqMLplxbqZoIMTugBRypbJSPH
 XDZoYc9ss0nztotGpbxbKmOtlSa7JD7v5fn2wq7nMQ9IO7Bm9wBDgIiOiiPEhq/PPhdoeg
 s0Ruh9Gs5mPF8a/xs1wleLhYK/FfRLI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579118983; a=rsa-sha256; cv=none;
 b=GcJIXFbgPVS3+D1L5b6Hr3AYKKDWfyVLseA2Wt4HUZJdpnTYqdz5CAp9tfILdxCdojlrYk
 hJvL24oOvUUXnXrwhgFa7XB5ip2+iNKluFCf5Uf44oxo19JD8URLI483OYh4tNrIkSPqJ1
 FKrPzTNP8TTTVgeNwe0wtx0NnpuBOp0=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=JwIckGPj;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: =?UTF-8?q?Steffen=20M=C3=B6ller?= <steffen_moeller@gmx.de>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

libgpsd 3.20 removed the timestamp_t type and the function
unix_to_iso8601(). The same release introduced the timespec_t based
function timespec_to_iso8601().

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 gpsd/alfred-gpsd.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/gpsd/alfred-gpsd.c b/gpsd/alfred-gpsd.c
index 884bdbf..47d6a64 100644
--- a/gpsd/alfred-gpsd.c
+++ b/gpsd/alfred-gpsd.c
@@ -8,6 +8,8 @@
 
 #include "alfred-gpsd.h"
 
+#include <time.h>
+
 static struct globals gpsd_globals;
 
 static int alfred_open_sock(struct globals *globals)
@@ -64,19 +66,31 @@ static int gpsd_publish_data(struct globals *globals)
 	return 0;
 }
 
+static void gpsd_now_to_iso8601(char *tbuf, size_t len)
+{
+#if GPSD_API_MAJOR_VERSION >= 9
+	timespec_t now;
+
+	clock_gettime(CLOCK_REALTIME, &now);
+	timespec_to_iso8601(now, tbuf, len);
+#else
+	timestamp_t now = timestamp();
+	unix_to_iso8601(now, tbuf, len);
+#endif
+}
+
 static void gpsd_get_location(struct globals *globals)
 {
 	if (globals->source == SOURCE_CMDLINE) {
 		char tbuf[JSON_DATE_MAX+1];
-		timestamp_t now = timestamp();
 
+		gpsd_now_to_iso8601(tbuf, sizeof(tbuf));
 		sprintf(globals->gpsd_data->tpv,
 			"{\"class\":\"TPV\",\"device\":\"command line\","
 			"\"time\":\"%s\","
 			"\"lat\":%f,\"lon\":%f,\"alt\":%f,"
 			"\"mode\":3}",
-			unix_to_iso8601(now, tbuf, sizeof(tbuf)),
-			globals->lat, globals->lon, globals->alt);
+			tbuf, globals->lat, globals->lon, globals->alt);
 		globals->gpsd_data->tpv_len =
 			htonl(strlen(globals->gpsd_data->tpv) + 1);
 	}
-- 
2.20.1


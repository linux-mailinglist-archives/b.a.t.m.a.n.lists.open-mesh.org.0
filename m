Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KL+oM7/pBmpKowIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:39:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B5F54C964
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:39:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 47019857E2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 11:39:11 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778837951;
 b=kWnBOkRZEJTx/gpEIa5/rHcc6zXxQmn7lNwtzxqzz8soQi5uWvnRqOWFrNquLwbW3ntaY
 3F3x/efy6wFhhjT8tkbYROrgjtAu0Wa0fx6QZJNsSHg+e4BObabMjyWvrbWpY844TgRMPHB
 Z/bfUU2sneuHIQkTYEx9sDGf4tpsFtU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778837951; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=KesFVBbFBdTXG1cYhGPrecWznk4odX3vlkrvcWA4D7g=;
 b=Ucu7Kr7Hujzu9ML9m1YdspGEb9lng2g5gwDEBr5jkGXMKS1kF/sboaIfxMYyvFfCuPhfa
 SlF6mL5RyzuJ6XqOt2bpdQMKFLXyB0cSorY/5kPymqny2Xt83P72bj417kAuxcVLFyGN8XF
 TvtUgAbUlpLx9aUJtgERxT0JY7WZZS8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0D58D84A9F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 11:38:17 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778837908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=KesFVBbFBdTXG1cYhGPrecWznk4odX3vlkrvcWA4D7g=;
	b=TqTezRkFpGWP/ixUvS8Iu2mE51nTEbAtxvAn7KP5rAI9DaEaKJbzmuC6wiT0Z2iJFtkCV4
	MIitDy7uAiBGwerk4K5ngB36eW5Hymp7FYpxC6cdnfaSwUdBzsJb2dm8T8oVYOINuHkFR7
	ZhyIOcY5f2ejZkdbHOGnI1YKnmftt5E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=2QJz83sK;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778837908;
	b=yLgB3HPbe/KUAYhGgtuLvR4NOrpmHwNpC4namwL8gGj/FCk0pXfiXZF0n4e2NKy4c+zqu1
	RP3kJYfcQl59eLM3pYals9S8G08XkdwXG4NQ+5z9VA0EVDtX3zYxLQnU2DflDgMa4Kaf1J
	pftulSjd9UuVdnE7QYz/kqol4t1qP4A=
Received: by dvalin.narfation.org (Postfix) id 24ECE21550;
	Fri, 15 May 2026 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778837896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KesFVBbFBdTXG1cYhGPrecWznk4odX3vlkrvcWA4D7g=;
	b=2QJz83sK3AW+pJ5iDrJ3Fb7tzT3Desk9ykS6wWHL3fd6K0r8ON5//q6bog5Hl5CnVAGiyj
	hVlziEAcI3Pi705tIk6idZUiUWGDwugIkXY0tOi3/500RuihmSs/ozCP4rahnj5pCqPR/M
	6Edq0RGTIs69QQ2HT1nOR4RdIHKHfHI=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 15 May 2026 11:38:08 +0200
Subject: [PATCH] batctl: don't stop on missing batman-adv version file
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260515-no-version-file-check-v1-1-21c3dd60e4dc@narfation.org>
X-B4-Tracking: v=1; b=H4sIAH/pBmoC/yXMUQ6CMBCE4auQfXaTApZGr2J4gHUKq6aYVokJ4
 e4UefySmX+hhKhIdC0Wipg16RQyylNBMnZhAOs9mypTNcaWlsPEM+I+Y68vsIyQJztve3dxcq6
 NUP6+I7z+/t1bezh9+wfks8doXTeQC8preQAAAA==
X-Change-ID: 20260515-no-version-file-check-7f5b797c430c
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4069; i=sven@narfation.org;
 h=from:subject:message-id; bh=WPQsqBr2OgOdD9AhAf1pbUX6+Ns/lzug696ikdd1yT0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFlsL1uyLx36qfHtnfjF3FPCllcv1YY7ykYtP3P2apjJs
 ZsPrNbFdpSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmoq/AyHDjRuKnO6f4jQ7s
 3nOk49aZJpNlNhuenX/0dj+j9Om0SWXXGBkudExjtFU8W3l6b/XVPa33/Dl733rZbTE5Ov1O8Mp
 V/+5wAQA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: F53HY5YWWH34E2KWSY35SV72CNYZV2BD
X-Message-ID-Hash: F53HY5YWWH34E2KWSY35SV72CNYZV2BD
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F53HY5YWWH34E2KWSY35SV72CNYZV2BD/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 70B5F54C964
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

The system doesn't have to expose the /sys/module/batman_adv/version to the
userspace. This can either happen because:

* batman-adv was not loaded
* container doesn't expose the root namespace's /sys/modules
* distribution (like OpenWrt with `CONFIG_MODULE_STRIPPED`) decided to
  strip out this information and therefore the file
* kernel removed the version support at all
* ...

The check does therefore more harm and is not helping a lot to identify the
a missing batman-adv kernel module.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 functions.c | 12 ------------
 functions.h |  1 -
 interface.c | 11 -----------
 main.c      |  4 ++--
 main.h      |  2 --
 5 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/functions.c b/functions.c
index f7a3080..771b065 100644
--- a/functions.c
+++ b/functions.c
@@ -110,20 +110,8 @@ char *get_name_by_macstr(char *mac_str, int read_opt)
 	return get_name_by_macaddr(mac_addr, read_opt);
 }
 
-int file_exists(const char *fpath)
-{
-	struct stat st;
-
-	return stat(fpath, &st) == 0;
-}
-
 static void file_open_problem_dbg(const char *full_path)
 {
-	if (!file_exists(module_ver_path)) {
-		fprintf(stderr, "Error - batman-adv module has not been loaded\n");
-		return;
-	}
-
 	fprintf(stderr, "Error - can't open file '%s': %s\n", full_path, strerror(errno));
 	fprintf(stderr,
 		"The option you called seems not to be compiled into your batman-adv kernel module.\n");
diff --git a/functions.h b/functions.h
index 33b57da..c2ce1b8 100644
--- a/functions.h
+++ b/functions.h
@@ -42,7 +42,6 @@ double end_timer(void);
 char *ether_ntoa_long(const struct ether_addr *addr);
 char *get_name_by_macaddr(struct ether_addr *mac_addr, int read_opt);
 char *get_name_by_macstr(char *mac_str, int read_opt);
-int file_exists(const char *fpath);
 int read_file(const char *full_path, int read_opt);
 struct ether_addr *translate_mac(struct state *state,
 				 const struct ether_addr *mac);
diff --git a/interface.c b/interface.c
index dfe5ad4..dc77ad4 100644
--- a/interface.c
+++ b/interface.c
@@ -154,11 +154,6 @@ static int print_interfaces(struct state *state)
 {
 	int ret;
 
-	if (!file_exists(module_ver_path)) {
-		fprintf(stderr, "Error - batman-adv module has not been loaded\n");
-		return EXIT_FAILURE;
-	}
-
 	/* duplicated code here from the main() because interface doesn't always
 	 * need COMMAND_FLAG_MESH_IFACE and COMMAND_FLAG_NETLINK
 	 */
@@ -524,12 +519,6 @@ static int interface(struct state *state, int argc, char **argv)
 		goto err;
 	}
 
-	/* make sure that batman-adv is loaded or was loaded by create_interface */
-	if (!file_exists(module_ver_path)) {
-		fprintf(stderr, "Error - batman-adv module has not been loaded\n");
-		goto err;
-	}
-
 	pre_cnt = count_interfaces(state->mesh_iface);
 
 	for (i = 1; i < rest_argc; i++) {
diff --git a/main.c b/main.c
index 9516dee..921b3af 100644
--- a/main.c
+++ b/main.c
@@ -20,7 +20,7 @@
 #include "netlink.h"
 
 char mesh_dfl_iface[] = "bat0";
-char module_ver_path[] = "/sys/module/batman_adv/version";
+static const char module_ver_path[] = "/sys/module/batman_adv/version";
 
 extern const struct command *__start___command[];
 extern const struct command *__stop___command[];
@@ -138,7 +138,7 @@ static void version(void)
 	if (ret == EXIT_SUCCESS)
 		printf("%s]\n", line_ptr);
 	else
-		printf("module not loaded]\n");
+		printf("module version unknown]\n");
 
 	free(line_ptr);
 	exit(EXIT_SUCCESS);
diff --git a/main.h b/main.h
index bbac4c2..e6a08d3 100644
--- a/main.h
+++ b/main.h
@@ -33,8 +33,6 @@
 #define __maybe_unused __attribute__((unused))
 #define BIT(nr)                 (1UL << (nr)) /* linux kernel compat */
 
-extern char module_ver_path[];
-
 #ifndef VLAN_VID_MASK
 #define VLAN_VID_MASK   0xfff
 #endif

---
base-commit: a77a273d30a2fff8027e0b2382b4759740435f8c
change-id: 20260515-no-version-file-check-7f5b797c430c

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 239C037F970
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:10:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 94EA984049;
	Thu, 13 May 2021 16:10:54 +0200 (CEST)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C1AF381246
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:10:44 +0200 (CEST)
Received: by mail-ed1-x52a.google.com with SMTP id t15so3448799edr.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8FKV1BRsouKC6FX+cnISXShC/ILQwcM2YKjGeeNtTIk=;
        b=ZvqgrnYSPll2zvSulGyoG6FyWY2aXb6WbfkmlnEp42AzDqpksxLeGwQQJK9a4mL74b
         MoVBopCd/iKAm0bRB0j95UQTEe6rN8j30NqD2RkLfAJZTkujhZab1yOPrKLnrP0Kyw9F
         TrsXpMTDTG3mBk9cFfVHBme4FDBBlCAoEDcvey4OQBpKBwcilwA2n4SiFF/tbfmaD1F/
         oT1UAzrryhC++2ysKS2VYq/0WWDcDuWAqll+OpJBIJzjqKqprh6acQhGwfx4YJj1ddpQ
         +d+icXZY3j8H30i25b+A/u8xl1j2To1jzeadQ6OtPa68CB8T2HzWKG4UETwPw/29WC8I
         0QiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8FKV1BRsouKC6FX+cnISXShC/ILQwcM2YKjGeeNtTIk=;
        b=HOgCqUSe2fQEJ9RzwGU18Xk5LQVu7aJgsfCpJ1j/B+kl2nsJLDPC5Jq7J2n0+QfJbl
         hFIEAMdir61Xt00wieQuo4JKpzbUZSewS6fR22iCF2bn1FYWRnVMe7bdvQTjn8IP+j4I
         V8B70ZdDs6quEfyFNWhVzCWUBmxyaR2ubQ4NUyU9oieswR45pg+2zEKlaPqaCkniV1AV
         tmJAflr5yzyNc0b+oasRLCmjNRnQWyD0nyR6PqIyOPAHvcuMQnTZGdlLF3QXSCbndvJE
         QW9vPmmtQbIMmJB5BAIaSqa252QYlf19bBPvRJDUflHaSY+1K3NWa+IT+JMsUp+wDWjB
         Wvvw==
X-Gm-Message-State: AOAM533Xa/q8lwGXlb3XEXPPq7l7YXPMTRJYLtJ6dAs08wQrnknRgoeX
	KAz42Iqri01bX60WuGOxpO7EWqnLHeqQkzv29SQ=
X-Google-Smtp-Source: ABdhPJzNCa36RfkYj9I+vs0X5L6ZY5cuXERlJ7j+JczOUdIQnZIkmOYd49SwMwJibPpy362ywMIR2A==
X-Received: by 2002:aa7:d8ce:: with SMTP id k14mr51801245eds.248.1620915044349;
        Thu, 13 May 2021 07:10:44 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id f7sm2504910edd.5.2021.05.13.07.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:10:44 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 2/2] batctl: debug: Introduce handler for DEBUGJSON
Date: Thu, 13 May 2021 16:10:34 +0200
Message-Id: <20210513141034.1649576-3-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513141034.1649576-1-asarmanow@gmail.com>
References: <20210513141034.1649576-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620915044; a=rsa-sha256;
	cv=none;
	b=Pfsv7N51tpIVMvG4Qw5ypV3J5Xe1onKAvodyCDFrKu9w9FdxdWpHwkAVvbrIMxnow7d73u
	1xObcHuPXVqZrxdBqTH0vlU+FifCHdiH+c8BGYInW/YLBfnnBBKACxwQMNwZLdVidi2LsM
	hiTq2InAr6QTR/vaUsSsFicGYWdhy6Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=ZvqgrnYS;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620915044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8FKV1BRsouKC6FX+cnISXShC/ILQwcM2YKjGeeNtTIk=;
	b=gdqbyQ/q5irVsJCzv2Pw8rHkW+ZJbNpWJ4OU6geUpbiOLtqeEju4Zs1d5w/M6JXS2kcAMv
	eZnS1RSslCCkcYFwDu5dcgxbjAC2RUPW6XFuDS6XM6M5PGxMwMmRBeiCTK4PN+lHaQBmn3
	sbuL7qNG606aL/e2a0MRBkACkUUoyQk=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JRDAKZUX6BZUEJY63UFBZLN7ULJTCJKP
X-Message-ID-Hash: JRDAKZUX6BZUEJY63UFBZLN7ULJTCJKP
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JRDAKZUX6BZUEJY63UFBZLN7ULJTCJKP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

DEBUGJSON commands require an own handler, since they may have their own
parameters. So far there is currently only the help parameter, but more c=
an be
added in future.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 debug.c | 29 +++++++++++++++++++++++++++++
 debug.h |  5 +++++
 2 files changed, 34 insertions(+)

diff --git a/debug.c b/debug.c
index 458c137..20467c7 100644
--- a/debug.c
+++ b/debug.c
@@ -42,6 +42,14 @@ static void debug_table_usage(struct state *state)
 		fprintf(stderr, " \t -m print multicast mac addresses only\n");
 }
=20
+static void debug_json_usage(struct state *state)
+{
+	fprintf(stderr, "Usage: batctl [options] %s|%s [parameters]\n",
+		state->cmd->name, state->cmd->abbr);
+	fprintf(stderr, "parameters:\n");
+	fprintf(stderr, " \t -h print this help\n");
+}
+
 int handle_debug_table(struct state *state, int argc, char **argv)
 {
 	struct debug_table_data *debug_table =3D state->cmd->arg;
@@ -148,3 +156,24 @@ int handle_debug_table(struct state *state, int argc=
, char **argv)
 				      orig_timeout, watch_interval);
 	return err;
 }
+
+int handle_debug_json(struct state *state, int argc, char **argv)
+{
+	struct debug_json_data *debug_json =3D state->cmd->arg;
+	int optchar;
+	int err;
+
+	while ((optchar =3D getopt(argc, argv, "h")) !=3D -1) {
+		switch (optchar) {
+		case 'h':
+			debug_json_usage(state);
+			return EXIT_SUCCESS;
+		}
+	}
+
+	check_root_or_die("batctl");
+
+	err =3D debug_json->netlink_fn(state);
+
+	return err;
+}
diff --git a/debug.h b/debug.h
index bfc6224..90f2e68 100644
--- a/debug.h
+++ b/debug.h
@@ -21,6 +21,11 @@ struct debug_table_data {
 	unsigned int option_orig_iface:1;
 };
=20
+struct debug_json_data {
+	int (*netlink_fn)(struct state *state);
+};
+
 int handle_debug_table(struct state *state, int argc, char **argv);
+int handle_debug_json(struct state *state, int argc, char **argv);
=20
 #endif
--=20
2.25.1

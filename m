Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E6337F96E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:10:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0B75484034;
	Thu, 13 May 2021 16:10:49 +0200 (CEST)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2522181246
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:10:44 +0200 (CEST)
Received: by mail-ej1-x62d.google.com with SMTP id u21so40014298ejo.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=szQDmu854OpWjE2+WcQFOqkKvoJXPQVIw/eIoFlq/Ow=;
        b=mYbC8884jOrhcxNGI9u8vLWsDT9v1L8FOzDwd3lXmQ3C+3+gBGPFzQnVp/AETtss9b
         I7A224TDKBPVhaRRukJlFfz6vGjushZ99dPptAskswq8PMtUzks7bTJ+SKDcrlYkSMf+
         5eEVo279bcR+dSdAu6RTUZQ+y27Se4qruupL8Z2L1NfGgrhw0QMZhxSbi68OaQBeXbj8
         bSz82GmU663O9mzrNg+qO6YwTeUKkpq0y0aTPLOoFcOk4yv1Tbl1KB3fGODrW0FJMwvH
         whYVb+rE6he8c1rWjaQqitI+Rrbn2D535vBmtcowYX7988ZlBwBr+VlA4dHWKbsaHNHC
         Tl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=szQDmu854OpWjE2+WcQFOqkKvoJXPQVIw/eIoFlq/Ow=;
        b=ZJhhodDoDK74ZX+1EqQ2VEvqRXZXtnV07pYkd2WbWqWexWGetSZbRAZWO1I6KGBGtA
         6wOhAt2TN2wqv1feQAiH0Umxxhg9HaID4rvr7uxalXiq8NNiJd+KbWDzIDP3XngFTm3B
         ciOvVHGHsr2rT04j/sGk12cKCruNcOR6drefJIHvqpEt38UPQ1a/S/Wj4dKwaMURHsTs
         tyIqMW0GS0SccMSRex2OVGK4SNiD1+zN+kTbQz61090K60Dt+FMQPumsWutKI7voQ+PP
         hq8JvAMesK/qFqmXqP3vsAzBlsAx9AXzvRSFjDq+BG2o+Z6p6wiVqJ6UC7JFjji7yszA
         M7Bg==
X-Gm-Message-State: AOAM5302uJ481/cdXCNuOw5uHzY2qWVtzo3iQ4ux970q0Blkb9C2YuAH
	rlv+cjxVfkNoyyyyFRGG7cc=
X-Google-Smtp-Source: ABdhPJwWY9pgwP/9zXfWL/7uZrFZAT3x7s/wlE2r5KAL4H+X3V4qsnVfzj6urEeUL611mHAp9H8w6w==
X-Received: by 2002:a17:906:1f07:: with SMTP id w7mr23772708ejj.203.1620915043731;
        Thu, 13 May 2021 07:10:43 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id f7sm2504910edd.5.2021.05.13.07.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:10:43 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 1/2] batctl: main: Prepare DEBUGJSON command type
Date: Thu, 13 May 2021 16:10:33 +0200
Message-Id: <20210513141034.1649576-2-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513141034.1649576-1-asarmanow@gmail.com>
References: <20210513141034.1649576-1-asarmanow@gmail.com>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620915044; a=rsa-sha256;
	cv=none;
	b=ekd7FVcWfcqWr6JYfoj0i5mWTp21nZvBd5JY/Rg9EAi/XDFnBuKak9pUFcC/CwtXlrjcL2
	FALoXng24y3VDgCpp5/aoQAWsd7gQHmKIqGxxLF3iKzl3hU4/9VWE2ejc/aUWKy3gjEiNX
	bKJYydyINzJGn5nQAfvFY7hVjHiPVNE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=mYbC8884;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620915044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=szQDmu854OpWjE2+WcQFOqkKvoJXPQVIw/eIoFlq/Ow=;
	b=wcR0m55YbGlkTWe4B98uPlZEH9TstJHOGmYvsCH0hTfGe7Kh/Qr9H/hCJo2p56pDiX7DHV
	dx7MQw3PkvNYjpFHT87WmOby9z5m83//q+/6lL2DM1P8uHv0j6g3vzbz46/IDXl+FtgTQL
	UXKRrOlKrwNGmnzocvAhXH9I/Y72g6M=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5G7KUNTOHSMWFLARIUIUBSEOQKDIOWUI
X-Message-ID-Hash: 5G7KUNTOHSMWFLARIUIUBSEOQKDIOWUI
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5G7KUNTOHSMWFLARIUIUBSEOQKDIOWUI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The introduction of JSON debug commands requires a new command type.

Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
---
 main.c       | 14 ++++++++++----
 main.h       |  1 +
 man/batctl.8 | 15 +++++++++++++--
 3 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/main.c b/main.c
index d9b63f3..1371bc0 100644
--- a/main.c
+++ b/main.c
@@ -43,6 +43,10 @@ static void print_usage(void)
 			.label =3D "debug tables:                                   \tdisplay=
 the corresponding debug table\n",
 			.types =3D BIT(DEBUGTABLE),
 		},
+		{
+			.label =3D "debug JSONs:                                   \tdisplay =
the corresponding debug JSON\n",
+			.types =3D BIT(DEBUGJSON),
+		},
 	};
 	const char *default_prefixes[] =3D {
 		"",
@@ -67,9 +71,9 @@ static void print_usage(void)
 	char buf[64];
 	size_t i;
=20
-	fprintf(stderr, "Usage: batctl [options] command|debug table [parameter=
s]\n");
+	fprintf(stderr, "Usage: batctl [options] command|debug table|debug json=
 [parameters]\n");
 	fprintf(stderr, "options:\n");
-	fprintf(stderr, " \t-h print this help (or 'batctl <command|debug table=
> -h' for the parameter help)\n");
+	fprintf(stderr, " \t-h print this help (or 'batctl <command|debug table=
|debug json> -h' for the parameter help)\n");
 	fprintf(stderr, " \t-v print version\n");
=20
 	for (i =3D 0; i < sizeof(type) / sizeof(*type); i++) {
@@ -87,6 +91,7 @@ static void print_usage(void)
 				continue;
=20
 			switch (cmd->type) {
+			case DEBUGJSON:
 			case DEBUGTABLE:
 			case SUBCOMMAND_MIF:
 				prefixes =3D meshif_prefixes;
@@ -167,7 +172,8 @@ static const struct command *find_command(struct stat=
e *state, const char *name)
 		/* fall through */
 	case SP_MESHIF:
 		types |=3D BIT(SUBCOMMAND_MIF) |
-			 BIT(DEBUGTABLE);
+			 BIT(DEBUGTABLE)     |
+			 BIT(DEBUGJSON);
 		break;
 	case SP_VLAN:
 		types =3D BIT(SUBCOMMAND_VID);
@@ -380,7 +386,7 @@ int main(int argc, char **argv)
 	cmd =3D find_command(&state, argv[0]);
 	if (!cmd) {
 		fprintf(stderr,
-			"Error - no valid command or debug table specified: %s\n",
+			"Error - no valid command or debug table/JSON specified: %s\n",
 			argv[0]);
 		goto err;
 	}
diff --git a/main.h b/main.h
index 81b7a27..f5f00d2 100644
--- a/main.h
+++ b/main.h
@@ -69,6 +69,7 @@ enum command_type {
 	SUBCOMMAND_VID,
 	SUBCOMMAND_HIF,
 	DEBUGTABLE,
+	DEBUGJSON,
 };
=20
 struct state {
diff --git a/man/batctl.8 b/man/batctl.8
index d490100..b2abedc 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -27,11 +27,11 @@
 .SH NAME
 batctl \- B.A.T.M.A.N. advanced control and management tool
 .SH SYNOPSIS
-.B batctl [\fIoptions\fP]\ \fIcommand\fP|\fIdebug\ table\fP\ [\fIparamet=
ers\fP]
+.B batctl [\fIoptions\fP]\ \fIcommand\fP|\fIdebug\ table\fP|\fIdebug\ JS=
ON\fP\ [\fIparameters\fP]
 .br
 .SH DESCRIPTION
 batctl offers a convenient way to configure the batman\-adv kernel modul=
e as well as displaying debug information
-such as originator tables, translation tables and the debug log. In comb=
ination with a bat\-hosts file batctl allows
+such as originator tables/JSON, translation tables/JSON and the debug lo=
g. In combination with a bat\-hosts file batctl allows
 the use of host names instead of MAC addresses.
 .PP
 B.A.T.M.A.N. advanced operates on layer 2. Thus all hosts participating =
in the virtual switched network are transparently
@@ -294,6 +294,17 @@ List of debug tables:
 .RE
 .RE
 .br
+.br
+.PP
+.I \fBdebug JSONs:
+.IP
+The batman-adv kernel module comes with a variety of debug JSONs contain=
ing various information about the state of the mesh
+seen by each individual node.
+
+.RS 7
+List of debug JSONs:
+.RE
+.br
 .IP "[\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\=
fBbat\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP"
=20
 Translates a destination (hostname, IP, MAC, bat_host-name) to the origi=
nator
--=20
2.25.1

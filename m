Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F16513CC2C1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 41B3382493;
	Sat, 17 Jul 2021 13:11:37 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 04E9081595
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d9cZ5jh2Oa1UGTNPJRzRUkadhgWBf4WdPlSwHigBe1A=;
	b=zp6PKsceJBWDzRBcIEIi+uYIxPmTR/woFgJcyDFFhK2M5wTsq+WDPxIxrXrDIlxr380sHs
	Zr7m9VNlNz28gV2Q0U3IZyUOnXtjhdY2nIlV2JVPQmWGlNhbaEIO6zPhIJQmw35kVZI0ZF
	hbj6l6L6WPb3H5NLKzTN1WMwpXMV63o=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 5/9] batctl: man: Use tbl groff preprocessor for tables
Date: Sat, 17 Jul 2021 13:01:25 +0200
Message-Id: <20210717110129.25539-6-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=d9cZ5jh2Oa1UGTNPJRzRUkadhgWBf4WdPlSwHigBe1A=;
	b=M9jl1pE/HDe1zhLJ+nMK4g0z3lseW2mpVeATYbPqY9c0gwjs4L/wh0AkG9p+xZuCWsyEfq
	wpWye/tDCI4oSw/JaOyI49z8Fo9usGPLlr+nI1ioU+GXVHd7K9k56B1JpDZbIsxX+8J2ye
	glc7l5wR5NuVqXRUATp4XCQeHipNewM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520275; a=rsa-sha256;
	cv=none;
	b=lgzF0uTduKzMv04ytO4PA5IrwaLijv0jXQiSFIZ0x2zZFfm208viz0GDE81U/jzWndBU75
	VoMaPFWAQSJnV5NgDNUKZmpCuEGi+SxKKd4wdwM0UtBBXZqJoGZNXuuoqD/TawsMTFjTBP
	ChewtWOmbwETLskc2EPUkwI2wn+vOT8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zp6PKsce;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CFRCK26ZHWLCRTCPGXA677HMJB4FBJEE
X-Message-ID-Hash: CFRCK26ZHWLCRTCPGXA677HMJB4FBJEE
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CFRCK26ZHWLCRTCPGXA677HMJB4FBJEE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Instead of emulating tables with manual identations, it is easier to just
use the groff standard preprocessor tbl to build a table and let it
automatically render.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 74 ++++++++++++++++++++++++++++------------------------
 1 file changed, 40 insertions(+), 34 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index 831a7e8..079cc0a 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -332,15 +332,17 @@ Retrieve traffic counters from batman-adv kernel mo=
dule. The output may vary dep
 into the kernel module.
 .br
 Each module subsystem has its own counters which are indicated by their =
prefixes:
-.RS 15
-mgmt - mesh protocol counters
-.RE
-.RS 17
-tt - translation table counters
-.RE
-.RS 7
+.TS
+tab (@);
+r lx.
+mgmt@T{
+mesh protocol counters
+T}
+tt@T{
+translation table counters
+T}
+.TE
 All counters without a prefix concern payload (pure user data) traffic.
-.RE
 .TP
 [\fBmeshif <netdev>\fP] \fBping\fP|\fBp\fP [\fB\-c count\fP][\fB\-i inte=
rval\fP][\fB\-t time\fP][\fB\-R\fP][\fB\-T\fP] \fBMAC_address\fP|\fBbat\-=
host_name\fP|\fBhost_name\fP|\fBIP_address\fP
 Layer 2 ping of a MAC address or bat\-host name.  batctl will try to fin=
d the bat\-host name if the given parameter was
@@ -368,33 +370,37 @@ are available: To only print packets that match the=
 compatibility number of batc
 option. If "\-n" is given batctl will not replace the MAC addresses with=
 bat\-host names in the output. To filter
 the shown packet types you can either use "\-p" (dump only specified pac=
ket types) or "\-x" (dump all packet types
 except specified). The following packet types are available:
-.RS 17
-1 - batman ogm packets
-.RE
-.RS 17
-2 - batman icmp packets
-.RE
-.RS 17
-4 - batman unicast packets
-.RE
-.RS 17
-8 - batman broadcast packets
-.RE
-.RS 16
-16 - batman unicast tvlv packets
-.RE
-.RS 16
-32 - batman fragmented packets
-.RE
-.RS 16
-64 - batman tt / roaming packets
-.RE
-.RS 15
-128 - non batman packets
-.RE
-.RS 7
+
+.TS
+tab (@);
+r lx.
+1@T{
+batman ogm packets
+T}
+2@T{
+batman icmp packets
+T}
+4@T{
+batman unicast packets
+T}
+8@T{
+batman broadcast packets
+T}
+16@T{
+batman unicast tvlv packets
+T}
+32@T{
+batman fragmented packets
+T}
+64@T{
+batman tt / roaming packets
+T}
+128@T{
+non batman packets
+T}
+.TE
 Example: batctl td <interface> \-p 129 \-> only display batman ogm packe=
ts and non batman packets
-.RE
+
 .TP
 \fBbisect_iv\fP [\fB\-l MAC\fP][\fB\-t MAC\fP][\fB\-r MAC\fP][\fB\-s min=
\fP [\fB\- max\fP]][\fB\-o MAC\fP][\fB\-n\fP] \fBlogfile1\fP [\fBlogfile2=
\fP ... \fBlogfileN\fP]
 Analyses the B.A.T.M.A.N. IV logfiles to build a small internal database=
 of all sent sequence numbers and routing table
--=20
2.30.2

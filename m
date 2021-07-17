Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEB73CC2BB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3EDBC815FE;
	Sat, 17 Jul 2021 13:11:18 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6C66681242
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ijs/x6PIBwAhr3iItB7fjFtORAZZG8QfsotEiM0Ladw=;
	b=OeO5HzBQU0MVTAk+/Ev19ql5dxmCivuaLwcEB8hy97dc9iJbcAFpwPuQHHKBmeKHGXldfs
	QjwD2xAKPF8k999dy0y8tJLa5uuP5uDwHzXQfQ/Rp1CLpehxufg/u0RoHL45r+PJYakDxL
	M5QqfPP86wr8enactCUJtqD3beaeclI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 2/9] batctl: man: Move commands to own section
Date: Sat, 17 Jul 2021 13:01:22 +0200
Message-Id: <20210717110129.25539-3-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ijs/x6PIBwAhr3iItB7fjFtORAZZG8QfsotEiM0Ladw=;
	b=RaQWGoMnnitSaIQpcCr5ffwCZURt7X8MohsYg4xdMDIIVolWPuI/4+yUPqnOr2fmcEAcol
	SR5Lg55QvU1gOyo5/92vB82fxwif32M7gIqQ3dlA/shMNXQVh/qbW0nMyNlu0i0dE8QOHQ
	KXfkeolVibQ73mcb85Cik3sXGi72PMY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520274; a=rsa-sha256;
	cv=none;
	b=2WfmEKTaUypi8oWrV8IpltqSNW38Iy3mjRzqP7NZO12C/FtfzGK3eKbTVigJCP8g7Uz/bi
	CZa5vG/ZJIS7LMs2lsvxlF3g4aEQSz7irgp4RaCbutb7I3JmCV8kIwu02/M5yBm6qSPuxz
	6moVsbdYyziIR6+5e5wxoSuGia4lus0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=OeO5HzBQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: L2UKSCAF3MIZ6R7LMDPLIAA4DRIJ2BHT
X-Message-ID-Hash: L2UKSCAF3MIZ6R7LMDPLIAA4DRIJ2BHT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/L2UKSCAF3MIZ6R7LMDPLIAA4DRIJ2BHT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The commands were implemented as paragraph with specific style in the
options section. But it should actually be a complete new section because
it is not really related to the options at all.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index a820e6e..58656eb 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -41,19 +41,16 @@ functionality to the normal \fBping\fP(1), \fBtracero=
ute\fP(1), \fBtcpdump\fP(1)
 behaviour or using the B.A.T.M.A.N. advanced protocol. For similar reaso=
ns, \fBthroughputmeter\fP, a command to test network
 performances, is also included.
=20
-.PP
-.PP
 .SH OPTIONS
-.TP
-.I \fBoptions:
 \-m     specify mesh interface (default 'bat0')
 .br
 \-h     print general batctl help
 .br
 \-v     print batctl version and batman-adv version (if the module is lo=
aded)
 .br
-.TP
-.I \fBcommands:
+
+.SH COMMANDS
+
 .IP "[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP [\fB-M\fP] [\fBadd=
\fP|\fBdel iface(s)\fP]"
 If no parameter is given or the first parameter is neither "add" nor "de=
l" the current interface settings are displayed.
 In order to add or delete interfaces specify "add" or "del" as first arg=
ument and append the interface names you wish to
--=20
2.30.2

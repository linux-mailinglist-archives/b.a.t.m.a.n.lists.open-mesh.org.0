Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CD3797F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 21:50:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 335C483EEF;
	Mon, 10 May 2021 21:50:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 621BF83EDC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 21:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620676200;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jZk7V835FW6AbnHAPQoJw5mjFPNSdqwArmJnahpjTYk=;
	b=d9HTzEppBqx4FVYTdtDchakwZA3ZqTBEmihtAX5jVItxnVe+PSYkH7zlwdJ9GZx2TW+6rO
	CMNdm2seCrVbVPxmJuvFSv2sCM/ihBNKfTluWBqZu4gKlUpPN7MPuXzYdk+cJqEESi6VQC
	/BraQp7TRWG4biO+B7cxybWF4/MYvqk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 1/6] batctl: Consume genl ACKs after setting reads
Date: Mon, 10 May 2021 21:49:40 +0200
Message-Id: <20210510194945.103735-2-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510194945.103735-1-sven@narfation.org>
References: <20210510194945.103735-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620676201; a=rsa-sha256;
	cv=none;
	b=HVGT4KJa/rbLDf9flFf36Af//E2j4Ap3CZ0SZbOB9mgGaMH0dVi9daUCwwMwPXNCx1H6rh
	cSnZMbNsyXXKFFqLOuiEemx0T+3BBFyW3cjPVOl4g1LZNJGEJQuqaPGdc/sQsrrOiR2BKF
	URJT+2ZyTZBdCpZGGHkDyxThYUEoXDA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=d9HTzEpp;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620676201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jZk7V835FW6AbnHAPQoJw5mjFPNSdqwArmJnahpjTYk=;
	b=eDA07NTNHCo1BZ6q4qbESYSt67XnH42xEm3sEexcyfshcNW11OydqfBNcBm1GTjgKALzzr
	XqX7RVrhAuH7tVbcCtGj+1XXOzJWsAjVL3PLckk1EDD2hzjpc4Y1GsPwk/fCe96Wdr5GzA
	wgxW86rEtfqTJJIKrCcIyxT4BZkfX2Y=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HIIHWWTYEPW4ZUJQ6MTKCGXNMFU5HW6I
X-Message-ID-Hash: HIIHWWTYEPW4ZUJQ6MTKCGXNMFU5HW6I
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HIIHWWTYEPW4ZUJQ6MTKCGXNMFU5HW6I/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The kernel is sending an ACK after an successful read request via the
batadv genl socket. This ack must be consumed manually after the actual
message was processed. Otherwise, the next user of the socket can get
confused by the unexpected ACK in the socket queue.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 sys.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sys.c b/sys.c
index 6dd8c10..f1dc275 100644
--- a/sys.c
+++ b/sys.c
@@ -107,7 +107,13 @@ int sys_simple_nlquery(struct state *state, enum bat=
adv_nl_commands nl_cmd,
 	nl_send_auto_complete(state->sock, msg);
 	nlmsg_free(msg);
=20
-	nl_recvmsgs(state->sock, state->cb);
+	if (callback) {
+		ret =3D nl_recvmsgs(state->sock, state->cb);
+		if (ret < 0)
+			return ret;
+	}
+
+	nl_wait_for_ack(state->sock);
=20
 	return result;
 }
--=20
2.30.2

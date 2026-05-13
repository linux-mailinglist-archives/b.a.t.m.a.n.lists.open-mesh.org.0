Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNm6CGoiBGoZEwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:04:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F49B52E62C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:04:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36E4E85D27
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:04:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778655849;
 b=hPcW6QiRUh1grqDmJonKHt9EYgVe4HwlvrqWH9jkTlygxZy5zegZYrFk160E/WrU8fuRQ
 bs89iHWqxb0cASPUqJ6RYz8KS0k8JnFaM4d2lRY5+VZJwSPmF/B238ZRTznIiH3g0IUSE0k
 GluqNhOzacYOQcMpPvuQascK1U0iiXY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778655849; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=EzT634+yFmw1dli6oT1X6fkjTPS0kQmK3o0aapNtdhU=;
 b=iFZ6wq6BgdvhP4r7nfJIjNZW7Fd123hb4ZGDk/1Vz2sVz+xhw1Bn11Yuk4gKC/voepxc6
 RskH2Lo/WcD9+qzQpExiYlVfZBHC22nnQ514a+dO3ifpKmumqDUqiGDE//2Iq7tp7wVIHZO
 dULTBC0D7pQGyQmXb2gQKohxIznAPiE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id D6807823C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 13 May 2026 09:01:45 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778655710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EzT634+yFmw1dli6oT1X6fkjTPS0kQmK3o0aapNtdhU=;
	b=dHm1sdztMGFVhAv0HM7TG9VKIKAg+H1COcCHr5MeDPwtCNHBERJYTJqk8uSshCOVcfKZNU
	UwtLJJqEk1tKea5wdRCKO3+aB40fVnDfMPcCtkOeDkjtnaOb74hTYyTKDRbPwZY8+zhN5i
	TtdLDe5dPbCblDLWf+puH5zpEUbaWtQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=phq2qi3t;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778655710;
	b=jvzELfCc2RIT03LkCcz8CrLrShO8yOMyL1iAZEfDNOs2ZL+GlLsXyoBpVxEwaKY8p7Fp3J
	i6sji2UF1AIvcdeonEzauQUuFgUXoqW6QfChTA51FT0aR/B3pw8j2kFvVUDE5wOB+fTdtJ
	NViUAbqW0VQ3c1FPtoN3MNn/cvOpdcI=
Received: by dvalin.narfation.org (Postfix) id 2D54121977;
	Wed, 13 May 2026 07:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778655705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EzT634+yFmw1dli6oT1X6fkjTPS0kQmK3o0aapNtdhU=;
	b=phq2qi3t6sBV0/8NfXuhzNACThnXGGygeCgzipSdfMqOcRDYhpREoFBb0eylxXwqwGpcQa
	JGq9iIteXfx3GOLDbxglj0SMHCE49evQ3gXsthcGJQg36fejZgFU8cluiuoPOX7RMnhR1U
	PhrFcU8LdqoDQoM4/FUCeSJSciuvtzQ=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 13 May 2026 09:01:35 +0200
Subject: [PATCH batadv v2 2/5] batman-adv: tp_meter: avoid use of uninit
 sender vars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-yuantan098-bugfixes-v2-2-863e9caa2a57@narfation.org>
References: <20260513-yuantan098-bugfixes-v2-0-863e9caa2a57@narfation.org>
In-Reply-To: <20260513-yuantan098-bugfixes-v2-0-863e9caa2a57@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1959; i=sven@narfation.org;
 h=from:subject:message-id; bh=2AKDp0y15/++Pqna87fu4JjwAJuZ73GnTSlKV52IXaQ=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFksiueXbwpbVpfnnddgqr2UwUOa41DVB5vTKWpVv91/K
 n7zu3uwo5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARr8MM/yNW/OW1+nBEwqow
 euIZS1vuTw6vJy87v8Q0eOXMf8/+BGcz/DO7oqS7QX2heXBjzb/MJE8BqaIA3/iMM3MEmB7PbbW
 s4QEA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: AJBPHP3JLNI7VH2V7KUAXFGLQU37EL6A
X-Message-ID-Hash: AJBPHP3JLNI7VH2V7KUAXFGLQU37EL6A
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AJBPHP3JLNI7VH2V7KUAXFGLQU37EL6A/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 8F49B52E62C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,narfation.org,kernel.org,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:mid,narfation.org:dkim,lzu.edu.cn:email]
X-Rspamd-Action: no action

batadv_tp_recv_ack() and batadv_tp_stop() are only valid for tp_vars in the
BATADV_TP_SENDER role. When called with a BATADV_TP_RECEIVER role, it
proceeds to read sender-only members that were never initialized, leading
to undefined behavior.

This can be triggered when a node that is currently acting as a receiver in
an ongoing tp_meter session receives a malicious ACK packet.

Guard against this by checking tp_vars->role immediately after the
lookup and bailing out if it is not BATADV_TP_SENDER, before any of
those members are accessed.

Cc: stable@kernel.org
Fixes: 33a3bb4a3345 ("batman-adv: throughput meter implementation")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/tp_meter.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/tp_meter.c b/net/batman-adv/tp_meter.c
index ca6c3f63..a3593d10 100644
--- a/net/batman-adv/tp_meter.c
+++ b/net/batman-adv/tp_meter.c
@@ -664,6 +664,9 @@ static void batadv_tp_recv_ack(struct batadv_priv *bat_priv,
 	if (unlikely(!tp_vars))
 		return;
 
+	if (unlikely(tp_vars->role != BATADV_TP_SENDER))
+		goto out;
+
 	if (unlikely(atomic_read(&tp_vars->sending) == 0))
 		goto out;
 
@@ -1101,12 +1104,16 @@ void batadv_tp_stop(struct batadv_priv *bat_priv, const u8 *dst,
 	if (!tp_vars) {
 		batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
 			   "Meter: trying to interrupt an already over connection\n");
-		goto out;
+		goto out_put_orig_node;
 	}
 
+	if (unlikely(tp_vars->role != BATADV_TP_SENDER))
+		goto out_put_tp_vars;
+
 	batadv_tp_sender_shutdown(tp_vars, return_value);
+out_put_tp_vars:
 	batadv_tp_vars_put(tp_vars);
-out:
+out_put_orig_node:
 	batadv_orig_node_put(orig_node);
 }
 

-- 
2.47.3


Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h0O7LWlKTWoDxwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:50:17 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B1E71EBDD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:50:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yLARw9vQ;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4AD858476F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:50:17 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450217;
 b=eyFqDy3GRP7T7COI16D18J19NNfuq0RHiLBxiVRIuYwULMBigcnVmaOSDF96pOeOFtOOo
 aekwpWO8pibx1ZBeqKxGkCk57JhhHj4TxQpmQHYjo8rpZQRv6Cwqo3RT+choeERXF4Z4zQQ
 iJD4WnUXh9RW26zqngBYxUus+3AecLU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450217; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=R/m2Fu+PzPapBpQMXdsNVCT1g6T5F2+ETQQBhtXVBWc=;
 b=t1Pqxnpg4zYvq42jIdnKCk+0LfJzlTq4SxrRbTyb7fUIlCDe9bTRbfaE4xaGBMyK1diTB
 94M/ruV7Jln6Ydh+3H8zX3YmGep7zEkLzNJGZBc9q6b3l5SZDnFlA/n0s/FucJe7i9/oDF9
 Ur0HsaOj+gNdTLOw0R34sBzIdlAw/24=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 69C8882726
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:46:57 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450022;
	b=o/vjJ9HG0fM79f3HnQPbZeotIh9RXRIhNfLNj5QdEAK+JKqtDgDFYNN8xk3Ky5GO/UIrV/
	rifg6aEM/dIGCP1EatZWP94rJOB9PkTzd2dYJe6INwMhG+QsSlht01qYK75Br1wBOwi9iv
	+F5XMfWHrRPqEYCXWsypuowbfsXa8P0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=R/m2Fu+PzPapBpQMXdsNVCT1g6T5F2+ETQQBhtXVBWc=;
	b=a6bmvPh+Ki78ExLdnCn8uDLsD82++FQ3ViYWozy0ZE2Wu+49APqPErsYANOI5yG6lRZldx
	A7V5wPGblZ3ytP90VCAY3mKfBWZCZpPdHBbrk+s+bDQQnp3FS8xd0FybTAAJwScxd/cdKH
	h7FfSRJnNW45adEya3NXemhVPQ10cLA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yLARw9vQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id BB04C2059F;
	Tue, 07 Jul 2026 18:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R/m2Fu+PzPapBpQMXdsNVCT1g6T5F2+ETQQBhtXVBWc=;
	b=yLARw9vQ/c/6hgMloBiRzHzUHxBVw9E0oxX/Nm0e+gPCNXBk66IFMoUuALZHvw1//3DkZ8
	9E61fNyjJSftnPdzbSjzn2jUfk1X7J+RevI4dpo31nWtNKAp4sqSUj+7o8WeyGESPyWWm9
	EbgRvZ++xSiw8sheILFq5tvwBw0JNog=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:44 +0200
Subject: [PATCH 02/11] batctl: icmp_helper: return proper errno on syscall
 failures
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-2-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2477; i=sven@narfation.org;
 h=from:subject:message-id; bh=6DPRe/ecas4af+Lgq9KGqW3/t/HvYhdJg/5nwbUrKf0=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+nlPN3m/2e3JL6ufEdfVi7a+1+lJTX+Y8VVm9Q/djX
 57CsidhHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJGDIz/K8yd02fZXKhy1/i
 r2GpQvHSt209X8WfXfveezvo4o4PpREM/5Rm3bn54OY1753qD2eWPEnyU/x7z3BDUZM9k6KsXXW
 YED8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 2QXQQ5MKFRWRUGJPX5HYYDSOME7I533F
X-Message-ID-Hash: 2QXQQ5MKFRWRUGJPX5HYYDSOME7I533F
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2QXQQ5MKFRWRUGJPX5HYYDSOME7I533F/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62B1E71EBDD

icmp_interface_send(), icmp_interface_read() and icmp_interface_filter()
return the raw syscall results. On failure this is -1 while the callers
interpret negative values as negative errno codes: ping and traceroute
print strerror(-res) and thus always report "Operation not permitted" no
matter why the send, receive or filter setup actually failed (for example
ENETDOWN when the interface goes down mid-ping or ENOMEM when attaching the
socket filter). The other error paths of these functions already return
proper negative errno values.

Convert the syscall failures to -errno before returning them.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 icmp_helper.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/icmp_helper.c b/icmp_helper.c
index 15bae9a..65a2005 100644
--- a/icmp_helper.c
+++ b/icmp_helper.c
@@ -154,7 +154,7 @@ static int icmp_interface_filter(int sock, int uid)
 
 	if (setsockopt(sock, SOL_SOCKET, SO_ATTACH_FILTER, &filter,
 		       sizeof(filter)))
-		return -1;
+		return -errno;
 
 	return 0;
 }
@@ -348,6 +348,7 @@ static int icmp_interface_send(struct batadv_icmp_header *icmp_packet,
 {
 	struct ether_header header;
 	struct iovec vector[2];
+	ssize_t ret;
 
 	header.ether_type = htons(ETH_P_BATMAN);
 	memcpy(header.ether_shost, iface->mac, ETH_ALEN);
@@ -358,7 +359,11 @@ static int icmp_interface_send(struct batadv_icmp_header *icmp_packet,
 	vector[1].iov_base = icmp_packet;
 	vector[1].iov_len  = packet_len;
 
-	return (int)writev(iface->sock, vector, 2);
+	ret = writev(iface->sock, vector, 2);
+	if (ret < 0)
+		return -errno;
+
+	return (int)ret;
 }
 
 int icmp_interface_write(struct state *state,
@@ -494,9 +499,12 @@ ssize_t icmp_interface_read(struct batadv_icmp_header *icmp_packet, size_t len,
 	max_sock = icmp_interface_preselect(&read_sockets);
 
 	res = select(max_sock, &read_sockets, NULL, NULL, tv);
-	/* timeout, or < 0 error */
-	if (res <= 0)
-		return res;
+	if (res < 0)
+		return -errno;
+
+	/* timeout */
+	if (res == 0)
+		return 0;
 
 	read_sock = icmp_interface_get_read_sock(&read_sockets, &iface);
 	if (read_sock < 0)
@@ -509,7 +517,7 @@ ssize_t icmp_interface_read(struct batadv_icmp_header *icmp_packet, size_t len,
 
 	read_len = readv(read_sock, vector, 2);
 	if (read_len < 0)
-		return read_len;
+		return -errno;
 
 	if (read_len < ETH_HLEN)
 		goto retry;

-- 
2.47.3


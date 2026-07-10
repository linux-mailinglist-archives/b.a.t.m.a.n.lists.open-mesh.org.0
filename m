Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f+9DOAZUUWrICQMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:20:22 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8592073E1C1
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:20:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YP0QizeG;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6219883540
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jul 2026 22:20:22 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783714822;
 b=K/4AySc3SzwBBjAPMuQVnSo59OcC6jDnF2vqO4gvngSbYW6/8tOGrxr/p176XjTS7nxMJ
 SRNVj5I9h97iub2JtnA0eMYVgWJqGGXsZrFfhvsP0xFYcEwZSwMCSxLv8bshNZMzeWjYgwG
 0qR95tSY1pNmO9BPiquPsWbP4rSHvdM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783714822; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aM47CtHpF9NsdqAvAoGPQbP0IgygXroyR3Qq1oGk4MQ=;
 b=Zps3ellRVs8U9MeAYxSZUQLI9FT6eJaPsVwiE861nVFyrM6N9yxX0vsA8Og+ekXocg/h2
 r9oPl6PPSUlBWh6h3krZdK9t/nLMvbPxVVka86h+KW74DSWXwzgFp9QLyMaO7Y+zZ8OATuW
 uX8Cbzr53islxs7kgv9MXUihVz7TH4E=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id DA2C18103E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jul 2026 22:20:08 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783714808;
	b=osOrsWXjY3TXz1GA7jcOdl/xcb6aoiOBlDqihFOzurzJh1wuntMOOOlIJz8qwSYPJw9DL9
	6+3rJsqHpZabYbc2mZte06NEHzyZk0AaOCjoacjTnbtktCKKt501C8ATW2gcyQNop4TeM5
	GoboHBNyf0YNcnjHbHnZrogtdwvRe5Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783714808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=aM47CtHpF9NsdqAvAoGPQbP0IgygXroyR3Qq1oGk4MQ=;
	b=eOulPhKAsrDLkAFktenyxxax0wBO0CVCPrJlWGoyQuY8iLKRsadGHq6zKyrjJIa6qt23j2
	GdrxxXqruyqR0oabPqJPqJxecHwe11T/0MSN/lQAHrHFmxtDRE4lWmj72ow9sUt2scd9oj
	2xvgyiftcHNyVCy65xBkAYlkI49/GdU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=YP0QizeG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 3522220536;
	Fri, 10 Jul 2026 20:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783714808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aM47CtHpF9NsdqAvAoGPQbP0IgygXroyR3Qq1oGk4MQ=;
	b=YP0QizeGLi+zce2k/Iahto5/yYRjDRYyLdlhXXb7G6MKqQGdDqYpNDYtiG8oZGU+fUPVx3
	/jExrqJ8qqCDLnaagjVgp+ozU9etDf8BgIkHzI5hK2uMsIJmszvWgCAgV1PD3vyq3rT+c4
	QDOp9sXElqi6muaLOQt3PtX91N9r3X4=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 10 Jul 2026 22:19:58 +0200
Subject: [PATCH batadv] batman-adv: annotate functions which may cow
 reallocate the skbuff
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-realloc-kernel-doc-v1-1-3a45842b3a13@narfation.org>
X-B4-Tracking: v=1; b=H4sIAO1TUWoC/yWMywrCMBBFf6XM2sA0C9v4K+Iij1sdDalMahFK/
 92ou3sunLNRhQoqnbqNFKtUmUuD/tBRvPlyhZHUmCzbIw89G4XPeY7mAS3IJrU5DpNzyXEY2VI
 Tn4pJ3r/omYJffFrp8v/rK9wRl2+R9v0DAGql/n4AAAA=
X-Change-ID: 20260710-realloc-kernel-doc-87f99d90b802
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3668; i=sven@narfation.org;
 h=from:subject:message-id; bh=gJSyf/lH7n05Sp7hxP+irhdmdGMIhUuqPuhUNesbwSE=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFmBwR8ZtWc+dP8194v8ggOBXtnvM+bci9nCLB8W3+zWc
 aF36uSmjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE3goyMuyrmT/zsYUDw3Pf
 96qnd+fdOLPoxTmVL80nmc49V695JDyRkeGEfpinzN8PVycYNMzQD7/munvu6TnTVn099XJu34a
 O0lh+AA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZVC636KUFLDUV3HU4ZX3FQREOU42WVUI
X-Message-ID-Hash: ZVC636KUFLDUV3HU4ZX3FQREOU42WVUI
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZVC636KUFLDUV3HU4ZX3FQREOU42WVUI/>
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
X-Rspamd-Queue-Id: 8592073E1C1

When a function is called which reallocated the skbuff, it is necessary to
reacquire the pointers into the skb data. Otherwise they might cause an
use-after-free.

But is hard to identify such case when it is not clear that helpers are
actually using skb-reallocating functions.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/mesh-interface.c |  5 +++++
 net/batman-adv/multicast_forw.c | 10 ++++++++++
 net/batman-adv/routing.c        |  5 +++++
 3 files changed, 20 insertions(+)

diff --git a/net/batman-adv/mesh-interface.c b/net/batman-adv/mesh-interface.c
index 20582fe0..f1bfe2a5 100644
--- a/net/batman-adv/mesh-interface.c
+++ b/net/batman-adv/mesh-interface.c
@@ -57,6 +57,11 @@
  * @skb: packet buffer which should be modified
  * @len: number of bytes to add
  *
+ * Warning: This function may reallocate the skb data buffer via
+ * skb_cow_head(). Any pointer into the skb data (e.g. obtained
+ * from skb->data or eth_hdr()) before this call must be considered
+ * invalid afterwards and has to be reacquired.
+ *
  * Return: 0 on success or negative error number in case of failure
  */
 int batadv_skb_head_push(struct sk_buff *skb, unsigned int len)
diff --git a/net/batman-adv/multicast_forw.c b/net/batman-adv/multicast_forw.c
index d8374ef5..ccd4ae15 100644
--- a/net/batman-adv/multicast_forw.c
+++ b/net/batman-adv/multicast_forw.c
@@ -1080,6 +1080,11 @@ unsigned int batadv_mcast_forw_packet_hdrlen(unsigned int num_dests)
  * Tries to expand an skb's headroom so that its head to tail is 1298
  * bytes (minimum IPv6 MTU + vlan ethernet header size) large.
  *
+ * Warning: This function may reallocate the skb data buffer via
+ * skb_cow() / skb_linearize(). Any pointer into the skb data (e.g.
+ * obtained from skb->data or eth_hdr()) before this call must be
+ * considered invalid afterwards and has to be reacquired.
+ *
  * Return: -EINVAL if the given skb's length is too large or -ENOMEM on memory
  * allocation failure. Otherwise, on success, zero is returned.
  */
@@ -1123,6 +1128,11 @@ static int batadv_mcast_forw_expand_head(struct batadv_priv *bat_priv,
  * that signaled interest in it, that is either via the translation table or the
  * according want-all flags, is attached accordingly.
  *
+ * Warning: This function may reallocate the skb data buffer via
+ * batadv_mcast_forw_expand_head(). Any pointer into the skb data (e.g.
+ * obtained from skb->data or eth_hdr()) before this call must be
+ * considered invalid afterwards and has to be reacquired.
+ *
  * Return: true on success, false otherwise.
  */
 bool batadv_mcast_forw_push(struct batadv_priv *bat_priv, struct sk_buff *skb,
diff --git a/net/batman-adv/routing.c b/net/batman-adv/routing.c
index cd290a7b..5193e370 100644
--- a/net/batman-adv/routing.c
+++ b/net/batman-adv/routing.c
@@ -172,6 +172,11 @@ bool batadv_window_protected(struct batadv_priv *bat_priv, s32 seq_num_diff,
  * @hard_iface: incoming hard interface
  * @header_len: minimal header length of packet type
  *
+ * Warning: This function may reallocate the skb data buffer via
+ * skb_cow() / skb_linearize(). Any pointer into the skb data (e.g.
+ * obtained from skb->data or eth_hdr()) before this call must be
+ * considered invalid afterwards and has to be reacquired.
+ *
  * Return: true when management preconditions are met, false otherwise
  */
 bool batadv_check_management_packet(struct sk_buff *skb,

---
base-commit: e8d6ecd5b27bf4ab6dfef96e01cd0057065ed396
change-id: 20260710-realloc-kernel-doc-87f99d90b802

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


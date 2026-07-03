Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ovo/DHL/R2p6iwAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 20:29:06 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AC841704EFF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 20:29:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=akI+W9ta;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 698A684003
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 20:29:05 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783103345;
 b=F954iN6c8Q8c8ezUpLqRfs4fsOzSwOpZtFZ3UeJpG45nLAJkdtopeFLF9h2ZOID1yoMDq
 pdURkBLdfI5K0kMCti5YrXoO2GEN9zk+hoD9N3ngpBHIzYwmirGt0TeNEqq90/EGciUo8m/
 HFBu1daxG/oiFAcCKVNr61eT1NhaLvc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783103345; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xbF65oUllXW1riljpzq16hr3bK/nnU32KPuIa/pGRrc=;
 b=0hT3FCdTdUvXHl5p14LioxPk9VygI/o3C5kUEhKObMtNLG0NsXqa9D3GpIsBYKzJtG5Cg
 KobL4vwTcU0Gl5P9uYAMIQWlSuiM7B3aYa4kEVfKZKCNI6lY5IGPimRydbAoNkZqMDrSMcK
 EPn3oxIi0dK/jYvI2rp9Q7N+oL3TFWM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 861D8815BB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 03 Jul 2026 20:28:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783103329;
	b=oIjVoH01vG16ewcuTbq0K+UdTUKHphvBhpoacIGqL8xT1p9r/4E7+zKAslzHdUD0/eMB9k
	nifTEQEqTkemFTSJIuYaC2NM2NOBE6k/haWbihHPbx6MMqtus2O8E31tmF0wWLaDI84/S3
	8PyyxAwpq4sN38JiPkTaMQ9QwEAE1Fc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783103329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=xbF65oUllXW1riljpzq16hr3bK/nnU32KPuIa/pGRrc=;
	b=btwEPnJaLjlDoactzJSCIXnOOfEh0p7JLgJCy7MU/yOwTk2yB1rrBpsV6Ib82uqzVshEKF
	ayWtNSD8XurNUeJvSAT5Pn1+qyrrCJRYaFzC2K6jhwcsAss3NRpbD93kLYd6TWV2bpOvmB
	5REfjpttxxdWVbBf+Uoe+9gWGH7GU04=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=akI+W9ta;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 798AF1FEF7;
	Fri, 03 Jul 2026 18:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783103318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xbF65oUllXW1riljpzq16hr3bK/nnU32KPuIa/pGRrc=;
	b=akI+W9taHgHeoABvHohRXdX9c4jqYAyAYmZsYvWfMOO/3ureTvT8UibY7vxPHo9BOPdSS5
	/AfLoTbPN5a5iooTX98R+7RHxvdW0e8mZp0MtaIYHovZZquOT2a7wBjOX2SaPbg04EDGA6
	qAvFIRnscQHhUPmGUX6cv8K9QBGjq58=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 03 Jul 2026 20:28:31 +0200
Subject: [PATCH batadv] batman-adv: frag: free unfragmentable packet
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-frag-tx-always-consume-v1-1-ee5e5f0d1d10@narfation.org>
X-B4-Tracking: v=1; b=H4sIAE7/R2oC/yWMQQ6CMBAAv0L27CalhBr9ivGwLQuu0WK6BTGEv
 1P1OJPMrKCchBXO1QqJZ1EZY4H6UEG4URwYpSsM1lhnjqbBPtGAeUF6vOmjGMao05OxCa0x1jt
 /qh2U+JW4l+U3voCnTN0M17/Xyd855O8Vtm0HaOLQQYIAAAA=
X-Change-ID: 20260703-frag-tx-always-consume-3c5002b6b916
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1368; i=sven@narfation.org;
 h=from:subject:message-id; bh=twrs7QxdLJzSE2S2mWzoV/XuLU1XMaG5aQKcW+zj2DY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnu//23lT8/OMHwgYfLF8/Np5vMjGwnL7hvcqVZf9Wd5
 PUX1GPPdJSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAm4u7ByPDkiAHDSa27ibuF
 L0/nrjDzVz51M+XDQvEv5RW3myZF/CpkZHhh+Ui49Icm3xqDJv5b8rOVO7naNsub3GPJWytYvOH
 VXT4A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: JCQ27QBTABU6WOUA5N4O4INARC4RBOTP
X-Message-ID-Hash: JCQ27QBTABU6WOUA5N4O4INARC4RBOTP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JCQ27QBTABU6WOUA5N4O4INARC4RBOTP/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC841704EFF

The caller of batadv_frag_send_packet() assume that the skb provided to the
function are always consumed. But the pre-check for an empty payload or the
zero fragment size returned an error without any further actions.

A failed pre-check must use the same error handling code as the rest of the
function.

Fixes: db56e4ecf5c2 ("batman-adv: Fragment and send skbs larger than mtu")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/fragmentation.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/fragmentation.c b/net/batman-adv/fragmentation.c
index e2c74ae6..e9d2bbc4 100644
--- a/net/batman-adv/fragmentation.c
+++ b/net/batman-adv/fragmentation.c
@@ -524,8 +524,10 @@ int batadv_frag_send_packet(struct sk_buff *skb,
 	mtu = min_t(unsigned int, mtu, BATADV_FRAG_MAX_FRAG_SIZE);
 	max_fragment_size = mtu - header_size;
 
-	if (skb->len == 0 || max_fragment_size == 0)
-		return -EINVAL;
+	if (skb->len == 0 || max_fragment_size == 0) {
+		ret = -EAGAIN;
+		goto free_skb;
+	}
 
 	num_fragments = (skb->len - 1) / max_fragment_size + 1;
 	max_fragment_size = (skb->len - 1) / num_fragments + 1;

---
base-commit: 22b12d005035f37f898e5bf80480719fe1ef4fba
change-id: 20260703-frag-tx-always-consume-3c5002b6b916

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


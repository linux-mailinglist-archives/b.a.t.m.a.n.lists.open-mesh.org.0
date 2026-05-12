Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CmoNN2HA2r46wEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 22:04:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A89528EE4
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 22:04:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF10E85C62
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 May 2026 22:04:44 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778616284;
 b=mXIy42GSgHyVOTn09/sIzgIuTngwQQtMUnEKJfADsgTCL9AjaYb+tXrxwae3TSunf5Lqw
 +5IhKnh7fkxql3ILkbGYxoYeniCcbaeSECZSQXQw1N0zGACDh9z+A7KOTWVQykt1Ht/ncbK
 SIURozYIgf9wY9FpV4ksrKXArZ+PGH4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778616284; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6RwlLk1wTX6OMId4/4fMMBHMOP9MIwQ67na8rT/dJXE=;
 b=4FfFTj6x5vQ6/We8hlGB6FR8sxksh1kBv/K02ODB5afeMq4ej8ZniM/KHQuAnU9fpqwcV
 I2uQWyvi2tjAX+uZooMAGGrcCvEUUpLfEj9LTA58FpW7owqra8z3eQ0qHWXhLAMpZwXJ5eC
 fD6l8C0PP5dEZUkr+u2hWZCE7H3Jpt4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1125984889
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 12 May 2026 22:04:03 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778616243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=6RwlLk1wTX6OMId4/4fMMBHMOP9MIwQ67na8rT/dJXE=;
	b=e3yDJi9+oJgR3huIPh92Sl1y42YM5BYzx4MK+gOgTH55ORyOeyTOThASfGDqOONP6hHuWj
	5i8vzD6eEekak7WZt0TOkGpCTbPgUDRRgtHYtreXqzP8qeoMBfNnc13zKWgjOJUIVh1e6w
	VHkG9sV3GGNKwt4TqEboQgCjUFJvwik=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=DhzpvpzH;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778616243;
	b=lYB43GpHmGGFW0bgANL8Bmu8Cptjn1/yl40ccDrCjQAemAdO7VBQ1UMgpHlSL/893LJMWH
	5wLQqt5vRJ7XonlCIEcf9Nrw526a5NFNmPls3XDGPi1ZkdW1sw6RFvD8kbDFo6QJwxX2by
	GLpBsju5gOK9/OLRSi8SSponburYPFA=
Received: by dvalin.narfation.org (Postfix) id 6D11321617;
	Tue, 12 May 2026 20:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778616241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6RwlLk1wTX6OMId4/4fMMBHMOP9MIwQ67na8rT/dJXE=;
	b=DhzpvpzH4PdDI5pmYbaGs1ZGACjOgjFXY9blEN0rdk3lXoAkBCMJi0tHnOEA5XSyaGvviJ
	u2gZIak8AJhtlucjy1EPA/RblZAoB4dpGziVs4gHR4zQ60Z3iuww+6bGO/baSEvu9kwVsZ
	aLJurj/bRiqHut10JqOzvyKWgc1AzD4=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 12 May 2026 22:03:53 +0200
Subject: [PATCH batadv] batman-adv: use atomic_xchg() for gw.reselect check
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-gw-reselect-xchg-v1-1-4df2344724c4@narfation.org>
X-B4-Tracking: v=1; b=H4sIAKiHA2oC/yWMwQrCQAwFf6W8s4E00or+injYbuM2IlU2tRZK/
 91VjzMws8I1mzpO1Yqss7k9xgL1rkIcwpiUrC8MYWm5qYXSm7K63jVOtMQhUeCDtM2RVfaMkj2
 zXm35Lc/owhT6GZe/91d3K933h237AGMFi558AAAA
X-Change-ID: 20260512-gw-reselect-xchg-a0726590e230
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1124; i=sven@narfation.org;
 h=from:subject:message-id; bh=j515MeDFf2NIBwl9aM7ftavTLyQmJid2ce/WZYbBrvo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnM7etm7mEonsJh/eNvjLWo0UefyvrJ0yZvZErwcDh6e
 Nf05CbmjlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBELk9h+B/BFyug72CQ+vHp
 vlTpy1wHeLapPbo3f26g/JzvmY7zWnwZ/vupPeZYFRDxPV5wUgyH/Pq+RClj++9HfyT6zJRakJ0
 txQgA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 5FDEXFZP2FVHQT4FEXFTS2IQOB6XBMCR
X-Message-ID-Hash: 5FDEXFZP2FVHQT4FEXFTS2IQOB6XBMCR
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5FDEXFZP2FVHQT4FEXFTS2IQOB6XBMCR/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 70A89528EE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

batadv_gw_election() only needs to test whether gw.reselect was set and
clear it afterwards. Replace the batadv_atomic_dec_not_zero()
[atomic_add_unless(..., -1, 0)] call with atomic_xchg(..., 0) to simplify
the logic and make the intent more explicit.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/gateway_client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_client.c
index a4ab3d44..0fb05469 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -211,7 +211,7 @@ void batadv_gw_election(struct batadv_priv *bat_priv)
 
 	curr_gw = batadv_gw_get_selected_gw_node(bat_priv);
 
-	if (!batadv_atomic_dec_not_zero(&bat_priv->gw.reselect) && curr_gw)
+	if (atomic_xchg(&bat_priv->gw.reselect, 0) == 0 && curr_gw)
 		goto out;
 
 	/* if gw.reselect is set to 1 it means that a previous call to

---
base-commit: f3fe50814354e157a6740c818c9ba293ff7c2214
change-id: 20260512-gw-reselect-xchg-a0726590e230

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


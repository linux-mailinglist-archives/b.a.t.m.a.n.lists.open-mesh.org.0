Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKbcIxoDDGrrTgUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 08:28:42 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA4B57818B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 08:28:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 93543807CA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 08:28:41 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779172121;
 b=P+V5Yqc+NxUXxT1b8cvZRYeb22cj1iw6Eg4UHfHooLSbaWIP/v6xrkArRqoDN0xbD40i3
 x3LE/sWi+oPqfVcN3/lJA7JucMlR2Xcl0v5qNrj7ox0ZOM+mQNZmwThkV82r50xEdCVlDnY
 0Ufukuffx8COADV7dyAiffpuDGSqPOo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779172121; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4oUmOQzfvWA3g4UytduTUz1tKqJe8hRi16k6VnNRkps=;
 b=K+GqZagZni2MYfnxz+4FL6OzfrgSlIDjCUENlTOej1Z0UPhsgIRkBXmQ2fKNi+jE5NLJG
 jKXn6b7Xgkt5qVcfBjNuMQpneK0BHjPlY+7SKHhqwJ7YSUjhs35RODAR4FgpR6f33oz3m6+
 6uBSE2r66RafLM9wdMlHPsXVqHniZkU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 00F5E8031D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 08:28:06 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779172097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=4oUmOQzfvWA3g4UytduTUz1tKqJe8hRi16k6VnNRkps=;
	b=f26YvctEjk3RFxN2awgoMACelB0Wyhvmuouz8TRPOaSj9d4hDNdiepGFyZTMc6HfX8Q8/x
	k69+lHhB1Bn+lPZ+LwNTONMNLcHZj7lmzOiTyBGUHLuKexFnSGsMmKeL5RUFygWTySiBAG
	u+/R1wZav5ndkfmKA1S51joFos90fvw=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779172097;
	b=o7DDi6vJBPNhcNCIy3Zi7Sy+rLeBiAR8/0TvSIC5ORhI+xhlJ2GBNtMBKgmYDWD7PZpn07
	fauqR4ETUIX2x56M6RoVZAGyWa9mBQ6p9i4KWuJozPeQqRDfSfVuqnqGat7nmPGAIXz4QZ
	ZMOnT6k0z69CjNzrBdUyEMclVhdNggc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=CDb6IALB;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 60FAC1FE24;
	Tue, 19 May 2026 06:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779172085;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4oUmOQzfvWA3g4UytduTUz1tKqJe8hRi16k6VnNRkps=;
	b=CDb6IALBgz0LcWLRClcVp8sXsHb+kWcFmK7i2l+BUhy6gFbezb6JycpVAQw2iA5f0Ypoi9
	oZpaW0FHmfBTCyxg0/8zSc0PexgMVlFCkT7GjIhIXkW6IKnbbNi6ENLUf4e6boqSr1w4HV
	DnaoEXcY1qOlPInuKaC8sIh6gAyLXiA=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 19 May 2026 08:27:58 +0200
Subject: [PATCH batadv v2] batman-adv: mcast: fix use-after-free in
 orig_node RCU release
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260519-mcast-rcu-list-free-v2-1-363dfdc9ad29@narfation.org>
X-B4-Tracking: v=1; b=H4sIAO0CDGoC/32OwQ6CMBBEf4Xs2Zq2wQY9+R+Gw1K2UKNgtqXRk
 P67Be/eZiazb3aFQOwpwKVagSn54OepGH2owI44DSR8XzxoqY08qVo8LYYo2C7i4YtwTCSaWqo
 OtTXm3EC5fDE5/96pN+gwYp+g/eVh6e5k44bcmmNhzPzZ55Pa+3+XkhJKSNLS6dohGnWdkB3G8
 vVx5gHanPMXmyI3sNQAAAA=
X-Change-ID: 20260514-mcast-rcu-list-free-8401ba2c6698
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: =?utf-8?q?Linus_L=C3=BCssing?= <linus.luessing@c0d3.blue>,
 Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2012; i=sven@narfation.org;
 h=from:subject:message-id; bh=OPPTIDU/oKD4LhYY7VZ9ugVM8pBCFYddEI72uM1WFFw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk8TB8eaVaXGh6Z85xPMfnjB2/DPdoO3d9OGyy9ej/5Z
 HUT18HZHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJ3GRl+J9+9k7TZrmHb6On
 fRNXlf2wamuxybd9uz4ZCpeH7Vims9GCkaFB+1+1et/2A78W341qXn7qx4InB75xCjAYiExjWnv
 s6hNuAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: JGBE3IKPOFCTOHHGDWKN6O474TW3HRHU
X-Message-ID-Hash: JGBE3IKPOFCTOHHGDWKN6O474TW3HRHU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JGBE3IKPOFCTOHHGDWKN6O474TW3HRHU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,narfation.org:email,narfation.org:mid,narfation.org:dkim];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 4DA4B57818B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

batadv_mcast_purge_orig() removes entries from RCU-protected hlists but
does not wait for an RCU grace period before returning. Concurrent RCU
readers may still accesses references to those entries at the point of
removal. RCU-protected readers trying to operate on entries like
orig->mcast_want_all_ipv6_node will then access already freed memory.

Fix this by moving batadv_mcast_purge_orig() to batadv_orig_node_release(),
just before the call_rcu() invocation. This ensures RCU readers that were
active at purge time have drained before the orig_node memory is reclaimed.

Fixes: 1c090349e2f6 ("batman-adv: Add IPv4 link-local/IPv6-ll-all-nodes multicast support")
Acked-by: Linus Lüssing <linus.luessing@c0d3.blue>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
See
https://sashiko.dev/#/patchset/05bdee6e85c3514822f98afa8fb75826b3928dd0.1778671969.git.ruijieli51%40gmail.com
---
Changes in v2:
- remove RFC prefix
- add trailers
- Link to v1: https://patch.msgid.link/20260514-mcast-rcu-list-free-v1-1-0e20f24faa61@narfation.org
---
 net/batman-adv/originator.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index b3468cca..ad4921b6 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -835,8 +835,6 @@ static void batadv_orig_node_free_rcu(struct rcu_head *rcu)
 
 	orig_node = container_of(rcu, struct batadv_orig_node, rcu);
 
-	batadv_mcast_purge_orig(orig_node);
-
 	batadv_frag_purge_orig(orig_node, NULL);
 
 	kfree(orig_node->tt_buff);
@@ -887,6 +885,8 @@ void batadv_orig_node_release(struct kref *ref)
 	}
 	spin_unlock_bh(&orig_node->vlan_list_lock);
 
+	batadv_mcast_purge_orig(orig_node);
+
 	call_rcu(&orig_node->rcu, batadv_orig_node_free_rcu);
 }
 

---
base-commit: ff182fc0c666754e3f35f7b63c9ccf0dff239e52
change-id: 20260514-mcast-rcu-list-free-8401ba2c6698

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


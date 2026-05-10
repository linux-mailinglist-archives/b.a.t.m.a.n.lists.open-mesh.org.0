Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WP9RAUlRAGoaGQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:35:05 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C7D5035CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:35:04 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 79B4385C39
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:35:04 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778405704;
 b=clGA9T0iL8EOv64GHKIuoYZQ5OV+HbP7QqPmK8Xoo+tzsRwEXgEJXctzrGBp0QnzbSHe+
 8XcTtPhI4aViBQlmi+LElwM9C1Weh/Op8N3qzV+zJgeKuLbiAtKiygLdBmX207RpBMI0bm3
 xVpqeBOmPUaX7l+AC0iqQ+MAhKNmW+g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778405704; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WLhk9mPtgUznOBujqxO5/lTTQY2M1ZIhc3olR24toWk=;
 b=hkcToatrNNEgMJnbwlFcTAZEmVX3rMykBECvWESXfHMSsP9NbgTNwWCI9jqU0Eb0Kzd/K
 Ym5hRduvC7oOkT9wnDbcxEufjlCI68rJP9qxZlMlOONh3t3vUyc8rZNE1DaFgjCVtSlvUDh
 q+1HTUImO9D0g7nga5VYTxW02LOMGFs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 7F7B6857F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 11:31:07 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778405477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=WLhk9mPtgUznOBujqxO5/lTTQY2M1ZIhc3olR24toWk=;
	b=PaE+5b+x+Jh3b9VLSNxKErFJFtzbYbN6jYajIVwYlo2N8OsPqxUon1KYHkSIYgPKhn1knw
	9EUUidQAL28yjgAF14yeVPUnlkC1TLQuxNJZXSyfYknR9EEuHjn+V66WYf6F00Z2UotBoW
	GcPYXERydX7lEilUjGM5avOLnROOjiY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=joTMbsXf;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778405477;
	b=qrWo7O5r53XpCrRB920Q3vyVAoclmoeenKzkAxwlGYWzSD8yIYKaWmuHVcS1qa0zmy/CiS
	JVp2XGeByvxwy0NP3HQy1Ww9W5+GMW5w8juqyfmS5OGZnLcAti8Jh/tmCKHSXRntQ18g9X
	ydIrSv3kCNBUHF6+DSklCSTvQMIFaJE=
Received: by dvalin.narfation.org (Postfix) id 9DECD201FE;
	Sun, 10 May 2026 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778405465;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WLhk9mPtgUznOBujqxO5/lTTQY2M1ZIhc3olR24toWk=;
	b=joTMbsXf1sYjAS43MnfLv5A9IVAg95j5ZtBbXZQkMuboo6/uhilRzGQ7xQ30gfdGYATUd/
	pqAzLPYZWXHmZ7tO+lFm8IHtTxwDFAEjyhIEMq2TCTeV6uaAB1qAQcIrgDKFV17dNzgkR3
	2Z2CgIhaZtq+NpvdU4bEcbU1QAGoXYc=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v3 0/7] batman-adv: follow up fixes
Date: Sun, 10 May 2026 11:30:56 +0200
Message-Id: <20260510-fixes-followup-v3-0-1079a93bc964@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFBQAGoC/3WOyw7CIBBFf6VhLYZHn678D+OClqHFNKUBipqm/
 y7FjdG4vJNzz50VObAaHDplK7IQtNNmioEfMtQNYuoBaxkzYoSVpCAcK/0Ah5UZR3NfZkzKnDS
 srZQqChRLs4VExM4FtcILGdD1fXdLe4PO77adHLTzxj7TcqCJ/zcSKCY455Szqm5oLfl5ElYJH
 389GtungcA+FeWPgkVFB5wJJmuZS/Gt2LbtBSB9X5ANAQAA
X-Change-ID: 20260503-fixes-followup-064092b7ff55
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2385; i=sven@narfation.org;
 h=from:subject:message-id; bh=VNnIf5PyekhuHlOA4yTLm+JhNbezkzwRaCmbAMDKkas=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkMAcE5L2YfeplQ5PhZ+2HM7HO5N4LOVa5hCZ9yrJi/o
 F17pt+5jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBEblYw/E+82Rw75/SdQ/Hl
 E5c8DufKWvlVzjZJQyHvG+OvTo4Ws0cMf0XsDq/Ywm587glnwLPCBWnJgixaLocU5e/E9Vs6uVa
 UcAIA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IH567XVENKFQSGGAJN7RNWA5ZGWPL4CY
X-Message-ID-Hash: IH567XVENKFQSGGAJN7RNWA5ZGWPL4CY
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IH567XVENKFQSGGAJN7RNWA5ZGWPL4CY/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: A7C7D5035CE
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,sashiko.dev:url];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

While reviewing the fixes submitted to batman-adv in the recent weeks,
further problems in similar or adjecent code was identified. This was either
noticed in the manual review or reported by sashiko.dev.

Especially in the TT code, you have the global and the local translation
table. But when a bug was fixed, often only one of the two codepaths was
fixed. It was now tried to sync the TVLV preparation code between to of
them - not style wise but fixes wise. Besides the hardening, it will also
make the code less confusing.

The BLA and TP fixes are just some reference counting fixes - either
reference leak fixes or missing reference handling.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v3:
- drop applied tp_meter + bla fixes (old patches 1-5)
- add fix for the potential tp_meter receiver leak
- Link to v2: https://patch.msgid.link/20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org

Changes in v2:
- keep initial num_vlan for TVLVs to avoid CONFIG_UBSAN_BOUNDS confusion
- add patch to handle backbone_gw ref leak in batadv_bla_add_claim
- add patch to switch last_changeset_len to unsigned type
- add patch to avoid interaction with bonding code when checking for
  temporary loops in batadv_iv_ogm_process_per_outif()
- also switch vlan_entries in batadv_tt_prepare_tvlv_local_data() to int
- clarify batadv_bla_purge_claims() kref_get_unless_zero comment
- drop netdev from To/Cc
- Link to v1: https://patch.msgid.link/20260503-fixes-followup-v1-0-4313278918d3@narfation.org

---
Sven Eckelmann (7):
      batman-adv: tt: fix negative tt_buff_len
      batman-adv: tt: fix negative last_changeset_len
      batman-adv: tt: reject oversized local TVLV buffers
      batman-adv: tt: fix TOCTOU race for reported vlans
      batman-adv: tt: avoid empty VLAN responses
      batman-adv: tt: prevent TVLV entry number overflow
      batman-adv: tp_meter: fix tp_vars reference leak in receiver shutdown

 net/batman-adv/tp_meter.c          | 13 +++++++--
 net/batman-adv/translation-table.c | 55 +++++++++++++++++++++++++++++++-------
 net/batman-adv/types.h             |  7 +++--
 3 files changed, 61 insertions(+), 14 deletions(-)
---
base-commit: 05abe1217c5104b3514ef1945dacf511b012b921
change-id: 20260503-fixes-followup-064092b7ff55

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


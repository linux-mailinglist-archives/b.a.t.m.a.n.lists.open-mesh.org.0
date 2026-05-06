Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDXgJl+k+2mvegMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:28:15 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 531CB4E02BF
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:28:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AD300846F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 22:28:14 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778099294;
 b=hkZo2ySodBZLXc+PFOGGu1shzLJLkLhtxj1JYzcS7IJ/RQk/35wZ1HS+Jq2t52wEWaN1y
 5DHJWWDUWxM9BcyiqtJ6jpQQXou8HgPvnD1HAsUWKRg/d9Eljh2YWkoTvJeHjb1J1O9sopl
 7XeXj4J+jOiIzWmmf9D3cj5vjqKIk0g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778099294; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JtH+1gaBp7r1iu55Vt/3MBQzlOwokMddmqWibFzTEFc=;
 b=rSfQWiVu44//cVBhauB2kFj9JHhBt4Fe08yOnFppNGR+fTdY5HTpv+RiexoWbMhTPo+ri
 idK65r2n8n/LVKrpY6C1XNhWQMicTbKJL4bgsRxTszdEz7vw0RMpb8hJqGSeKuuNlWvSRxu
 H0geAhoHB6/FZjVkcMPyOAvah9n2e6g=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 825D4817F6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 22:22:23 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778098943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JtH+1gaBp7r1iu55Vt/3MBQzlOwokMddmqWibFzTEFc=;
	b=3bYmVpYSDbzxr84hGdLxDusdxAYE8a//05J4R3N8wVyz1jsxyL0ui/XDUWB6fHnW1HfuS4
	o0vtffEsD3fjkmNKznMl0n34EF40Znv3RfltYoFhO7eO+Gv56rtlgbjNtJmh+jT2guTetW
	3jI7Sqzz37J/P12IAQ8/pKzogXNH/f8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=iclgX4T5;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778098943;
	b=M/exqRNFqclugMSvSRPKZDgqlrXfB7SqjhZzTnEO6r+cxMqGp3L7gMM3iwCfKkDRyPSFK3
	Bb1Tc9DUUYLz4P9akGIh02ssfe2sk2TnktQn+E+TsCZrG08Gjvp8NJnC37nI4PIvpBR1ca
	U5B1jgmy/fVyopA4anmN7OGuS9F4pB4=
Received: by dvalin.narfation.org (Postfix) id 3F9DF20D39;
	Wed, 06 May 2026 20:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778098943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JtH+1gaBp7r1iu55Vt/3MBQzlOwokMddmqWibFzTEFc=;
	b=iclgX4T5FC39VBDHqPu5iQqEu50ygRjCvZ/g4TcgnHTTyRtBJSiSH6I9YyfvCYDeSvftCi
	4gXH6aT3mVAu3BnCTwPmvOjnmrLvpR0gETUMnXRDTPL9pEIdvjPQAHkGA1qd+pKwgpBKaG
	Tvo4omABHCkGcLJZ1pO6fffBPbhTQPs=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 06 May 2026 22:20:55 +0200
Subject: [PATCH batadv v2 08/11] batman-adv: tt: reject oversized local
 TVLV buffers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-fixes-followup-v2-8-ce32a2d8d4da@narfation.org>
References: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
In-Reply-To: <20260506-fixes-followup-v2-0-ce32a2d8d4da@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Ao Zhou <n05ec@lzu.edu.cn>, Haoze Xie <royenheart@gmail.com>,
 Jiexun Wang <wangjiexun2025@gmail.com>, Juefei Pu <tomapufckgml@gmail.com>,
 Luxing Yin <tr0jan@lzu.edu.cn>, Ren Wei <n05ec@lzu.edu.cn>,
 Ruide Cao <caoruide123@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
 Yifan Wu <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789; i=sven@narfation.org;
 h=from:subject:message-id; bh=r6v8uIhTpWTnQCIF3XCU6173jTWOBZQ1VRKmTt4uW2o=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJm/Fx0s2iJwTVn6g8aikpr+pcH/b2ZsDG3Xmp+fbynJX
 ZaVfEG0o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjCRzbqMDO/nLA7pdpk8+981
 EY7ot8F/rB2zn91XvixTUhKRcExDNJqRYfOyY1sfW/Stkl6unexdfLFw3ZX+B3dfZU+zSTmckXP
 vKg8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: 6JUEA6TBHHVCBMWHVBM3R5RU76MXGBUF
X-Message-ID-Hash: 6JUEA6TBHHVCBMWHVBM3R5RU76MXGBUF
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6JUEA6TBHHVCBMWHVBM3R5RU76MXGBUF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 531CB4E02BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lzu.edu.cn,gmail.com,narfation.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:dkim,narfation.org:mid,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

The commit 6043a632dd06 ("batman-adv: reject oversized global TT response
buffers") added a check to ensure that a global return buffer size can be
stored in an u16. The same buffer handling also exists for the local data
buffer but was not touched.

A similar check should be also be in place for the local TVLV buffer. It
doesn't have the similar attack surface because it is only generated from
locally discovered MAC addresses but the dynamic nature could still cause
temporarily to large buffers.

Fixes: 21a57f6e7a3b ("batman-adv: make the TT CRC logic VLAN specific")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index d39332ea..e65bd3ea 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -917,12 +917,12 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 {
 	struct batadv_tvlv_tt_vlan_data *tt_vlan;
 	struct batadv_meshif_vlan *vlan;
+	size_t change_offset;
 	u16 num_vlan = 0;
 	u16 vlan_entries = 0;
 	u16 total_entries = 0;
 	u16 tvlv_len;
 	u8 *tt_change_ptr;
-	int change_offset;
 
 	spin_lock_bh(&bat_priv->meshif_vlan_list_lock);
 	hlist_for_each_entry(vlan, &bat_priv->meshif_vlan_list, list) {
@@ -940,8 +940,10 @@ batadv_tt_prepare_tvlv_local_data(struct batadv_priv *bat_priv,
 	if (*tt_len < 0)
 		*tt_len = batadv_tt_len(total_entries);
 
-	tvlv_len = *tt_len;
-	tvlv_len += change_offset;
+	if (check_add_overflow(*tt_len, change_offset, &tvlv_len)) {
+		tvlv_len = 0;
+		goto out;
+	}
 
 	*tt_data = kmalloc(tvlv_len, GFP_ATOMIC);
 	if (!*tt_data) {

-- 
2.47.3


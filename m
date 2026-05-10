Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDhxF45QAGoaGQEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:31:58 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D005035A0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:31:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E5FF85B3A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 10 May 2026 11:31:57 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778405517;
 b=znab9ya5PuyX39fyIQSmK0eEpih+QnfE4y8PLaCPtM3WbtKFN1mjq0FhUlVMHWjbwuqWz
 i1FqT9teelWZIE2XbVTT7GjeSytKH0g4dMZ/5BBDmsBo8D2QoT/S9ESQtDQldUFnCZ3cImc
 NO8mMko1LhOhK+Ma+2YvbwUvqi6f9Ng=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778405517; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ZiUpIzufh4m1riy1mCJl1DVSTkdtr8UYCRZGd4Mu8a0=;
 b=MztlpmWrCRy6scpQPwxaLqltXSALcRWiXKWDSAI/9PkWaIpXGJGl56kcvLN8zj9/Xw5Wr
 TmWL+K6ToNKu9dWnO3WThFy/Hi5eJQuMlyp1w09X4jpzN/EP9aG+W6EEATrxmGdWAQJ00UC
 UfjDkSkNl3kP/EH3RTjrN3dMAyH9qhk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 8AE2484508
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2026 11:31:09 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778405474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZiUpIzufh4m1riy1mCJl1DVSTkdtr8UYCRZGd4Mu8a0=;
	b=YFu+cwOlIZZdxRZrZmdO0dw4bQ0PJaY2lpPI6bU8tj2hzz1UERnJBNInLP3o0IzGD/OyqH
	XaGhGgRdhQKi+XORmPpPC+OyWk3KWciuFEDgoOsdbP0JnpLwVVDvBToZJNKpHACELaAh1w
	73tCP9jexaCbRG9rOznCRxT9MriZ/DE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cR6AkPQT;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778405474;
	b=GyIY2RanlwhbqpuI6Pl/mrix2killZOMMX1eKCDbJv8dEFPxOdkfAwT21+fZCuFU+7pBNA
	lt8LYYJl5ORSD4p4/MkKTTKD97hNG2qZ65rU45LpOr/K6JF659S3/5nTXVMfRYc0EZDLtu
	e4JXpS5q21mrxM7aRHlm20pdBc8wPu0=
Received: by dvalin.narfation.org (Postfix) id DD91421617;
	Sun, 10 May 2026 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778405469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZiUpIzufh4m1riy1mCJl1DVSTkdtr8UYCRZGd4Mu8a0=;
	b=cR6AkPQT01aYGrIyOkFJ3VUp1UMuaPSr2mN/paBmNVc2RfFkkSWNlz0UUPKflCEcPge/DL
	CxCt5BwUIHiCHNVrs5lgfSnTn9nlajllzw2almbj9a1ON4ou7D/NsptA/lROHREH1623c2
	Uk9Wy1IZRROoC7Wz3IRa8EzU+6B/wew=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 10 May 2026 11:30:57 +0200
Subject: [PATCH batadv v3 1/7] batman-adv: tt: fix negative tt_buff_len
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260510-fixes-followup-v3-1-1079a93bc964@narfation.org>
References: <20260510-fixes-followup-v3-0-1079a93bc964@narfation.org>
In-Reply-To: <20260510-fixes-followup-v3-0-1079a93bc964@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1349; i=sven@narfation.org;
 h=from:subject:message-id; bh=+GD8drVYnA3x/+zOKkKBcyOk2oa0GLZhKZ0yTsCpYOc=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkMAcGfa/2OxBc2lX+vnqXsvKDVdw5jxMMJaqpxcYvfJ
 vEKxt3sKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEzk2HGGv/LpK3uVE1+w9Gis
 3fBLwyZ/woRySZfSWTvlFT6d4VvGcJCRYdJlQWftkCU/fs9dd2hHyDG+vC7nIw0CXRzr43qlvZe
 4cAAA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: PL5YL6MYQ4K36RS44FDEVM7FCZBK2DMT
X-Message-ID-Hash: PL5YL6MYQ4K36RS44FDEVM7FCZBK2DMT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PL5YL6MYQ4K36RS44FDEVM7FCZBK2DMT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 12D005035A0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Action: no action

batadv_orig_node::tt_buff_len was declared as s16, but the field is never
intended to hold a negative value. When a value greater than 32767 is
assigned, it wraps to a negative signed integer.

In batadv_send_other_tt_response(), tt_buff_len is temporarily widened to
s32. The incorrectly negative s16 value propagates into the s32, causing
batadv_tt_prepare_tvlv_global_data() to allocate a full sized buffer but
populates only a small portion of it with the collected changeset. All
remaining bits are kept uninitialized.

Using an u16 avoids this type confusion and ensures that no (negative) sign
extension is performed in batadv_send_other_tt_response().

Fixes: cea194d90b11 ("batman-adv: improved client announcement mechanism")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index daa06f42..0f3814b4 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -452,7 +452,7 @@ struct batadv_orig_node {
 	 * @tt_buff_len: length of the last tt changeset this node received
 	 *  from the orig node
 	 */
-	s16 tt_buff_len;
+	u16 tt_buff_len;
 
 	/** @tt_buff_lock: lock that protects tt_buff and tt_buff_len */
 	spinlock_t tt_buff_lock;

-- 
2.47.3


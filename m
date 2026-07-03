Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9GllFkcbSGqTmQAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 22:27:51 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB57057BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 22:27:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=c5IhhBmy;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF8BE84016
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 03 Jul 2026 22:27:50 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783110470;
 b=NIO45Jo1oOjo3p0P0mgAqvXX912MkM+fFlwh0Q3drNv1hpoquALaas4ILYUinIG79ILcY
 uq9sxUdbLUd02QKZcOZvftXxy1tYdMpLelJf6p+PIZ+Z9lca5hTrrcdtstriL/u2sIIrQBD
 jog2xxfA9nXWrDNipuVSDXynybO0aQs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783110470; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9G4Yqng/rzEV+qy4XKVmEZR4lInhel0qHAza1yprqFM=;
 b=D3HpQS/E3OGEWrAQCGTzMSCz/sMKrb0mwPEXKIaE4rvAl68sNm8jeVJMMBaYkgqlWUSeE
 JmmRrb4Lk1W1bbjOy6U0wUV0TiOLDoC9z3aufhUlXbLJQVTHgT79LSjlulrSf80FdO0kb/q
 oCXmKb2cCC3a18UxM5MUH6psu6Z6tXY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 825868197A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 03 Jul 2026 22:27:22 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783110452;
	b=dpAS6gSOTL3CUa93qczbyuC4OUTijrZKrWCZT9NJ008Ya8+4JK1AJPJh/Ze33KmamY3b99
	39jEHqhBDtVSBgYKIWCyTZvysFWxHvC8foF8aBcXimaIFKqF9cJ7CFNbQWRLivGvhLtCU+
	t0EwkTJjGkcyswzY0ZyTJz1jzreNxQw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783110452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=9G4Yqng/rzEV+qy4XKVmEZR4lInhel0qHAza1yprqFM=;
	b=pnot2+eLXGNg4+GmRTWKkOtBmVXJMB2wL/T5Us+MH8sL929mGFfU/QAgTz2ZxigiZNq1K6
	o4K7TekmPdKVcPlHIiuCyAMNw1QktnaUE0+gbHR4X7QKlbL5Arzcv/JDe0ODqBxBvSxJnU
	BaZ+79pAUkOp8Lg4YlPDTDq/H0jhxPE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=c5IhhBmy;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 8EDD41FE5D;
	Fri, 03 Jul 2026 20:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783110441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9G4Yqng/rzEV+qy4XKVmEZR4lInhel0qHAza1yprqFM=;
	b=c5IhhBmyZQDT5wWpPuEDnilXUbMBKVnNpsTtE0Hoze+ekIcwETJUjTRqR9vYvDfnp84dv6
	XAVy2sIYaAUi23AIq03FP7PJus+jRAHvGZmgdWQI0Ue+SsuMUffhqmXdSP/TaeewCe8cPP
	+Brlbar03ptQg6SqtSdw7hyCZYjnUV0=
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 03 Jul 2026 22:27:13 +0200
Subject: [PATCH batadv] batman-adv: tt: prevent TVLV OOB check overflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20260703-tt-tvlv-handler-len-overflow-v1-1-ed3509ab9d43@narfation.org>
X-B4-Tracking: v=1; b=H4sIACAbSGoC/yWMQQ7CMAwEv1L5jKUQCqV8peKQNi4YRQlyTKhU9
 e8EOM7uaFbIJEwZLs0KQoUzp1hhv2tgurt4I2RfGayxJ9OZA6qillCwnj6QYKCIqZDMIb3x7I9
 t11fV9hZq4ik08/LLDzA6db7A9b/n1/igSb9t2LYP8BU6h4gAAAA=
X-Change-ID: 20260703-tt-tvlv-handler-len-overflow-8d5479026292
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333; i=sven@narfation.org;
 h=from:subject:message-id; bh=8G8CJvZmLLcIvF1/FtPyhA4LpRlJJuXOwqgvnDVBveY=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFke0opznd6nJN8p9t9Yd8Ti/Y4Ji/m9Zq27+2R7XNQK6
 ZraxAdHOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQAT2e/PyHBIPJWDMf2DgeIO
 4RAVZ5WdewWlrRO+1D+8eyVqw7OyNbMYGT7d8tRaZaVw1efZ83I14wO8VusmHan0SPXg5drAXp0
 txgAA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: CJOPDBQHWV7CRE5RBSYFYWQVMIXL44Y5
X-Message-ID-Hash: CJOPDBQHWV7CRE5RBSYFYWQVMIXL44Y5
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CJOPDBQHWV7CRE5RBSYFYWQVMIXL44Y5/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1BB57057BA

A TT unicast TVLV contains the number of VLANs stored in it. This number is
an u16 and gets multiplied by the size of the struct
batadv_tvlv_tt_vlan_data (8 bytes). The size can therefore overflow the u16
used to store the tt_vlan_len. All additional safety checks to prevent
out-of-bounds access of the TVLV buffer are invalid due to this overflow.

Using size_t prevents this overflow and ensures that the safety checks
compare against the actual buffer requirements.

Fixes: 21a57f6e7a3b ("batman-adv: make the TT CRC logic VLAN specific")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/translation-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/translation-table.c b/net/batman-adv/translation-table.c
index 6a132e23..3b70e9d7 100644
--- a/net/batman-adv/translation-table.c
+++ b/net/batman-adv/translation-table.c
@@ -4352,7 +4352,7 @@ static int batadv_tt_tvlv_unicast_handler_v1(struct batadv_priv *bat_priv,
 {
 	struct batadv_tvlv_tt_data *tt_data;
 	u16 tt_num_entries;
-	u16 tt_vlan_len;
+	size_t tt_vlan_len;
 	char tt_flag;
 	bool ret;
 

---
base-commit: 22b12d005035f37f898e5bf80480719fe1ef4fba
change-id: 20260703-tt-tvlv-handler-len-overflow-8d5479026292

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


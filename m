Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IZN7EduxRmorbwsAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 20:45:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F56FC443
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 20:45:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MVmbFTTq;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9F8D0842B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Jul 2026 20:45:46 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783017946;
 b=kw+obG771098xaDGBXsDwUGL9QB8jBP9Lmy9k/XUkY2F5aOBWyaVRZn6GuIrJZqLsOxG8
 B8HPURjLQsgZ80pGXZThRF/b4EqqmK/XWPTpJXGmlPpSc9NBdkT1j/ayEUMgKVFHtQwOS0W
 ahN1nqvwT66GCeyQv007KRejbUGveHs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783017946; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=GLtdp4Ui7GO4S6opahig0QrWatlh0LfDj/NAOM4rx8s=;
 b=PVv/tpPgCuwoimTTpyM0HkD6l9gtSzszlFI7BA+dfT/nkugippfEsh0+pw805jWKonzf5
 HXZse2OZEAoRnuqLuXooCixVFIV0u/HecrhmBDdyI1TYq/u0EfzF3zDAPi7ArnwNSBwlj+T
 7nMYGJDak4DG9pgYNzSQNRBWguhIKUA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id B45C481EAC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Jul 2026 20:45:28 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783017928;
	b=iQpk7SpeJM8jCur4aaqBJTwu9vsQVXAih+JcjUT39oduQGxBjRQSuBeUFS6JZlJI8csQ1+
	aJnZBUJVyrWALYmrgcA1Sw8DjQroLDG7MIGI7APHBBC5sL9oPRIWgMWC6FLbRWhzD/qR6/
	ThuF/GMuTMtZrhm1PjxAyz1pBn8yD94=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783017928;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=GLtdp4Ui7GO4S6opahig0QrWatlh0LfDj/NAOM4rx8s=;
	b=uiHtHeu+2p5wBNVTHUq4/VIHIoK3eHUi/m1f+oR27KplYrWvx1WTMNE0hrSjHn/9qlMMRY
	8C9CnRIagPOVyALQ3hAmTGtSYYw9TjTMBqB4/dYL6o2e/A8B1/evtRSrpQ7D5jUPqjOFlz
	XMje47QmurisT+JHUCdov2G6bZL+JKY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MVmbFTTq;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A4FAB2026A;
	Thu, 02 Jul 2026 18:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783017927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GLtdp4Ui7GO4S6opahig0QrWatlh0LfDj/NAOM4rx8s=;
	b=MVmbFTTq/ti8GxteNarIN2MA2y4hJWZ4G/j+UUQMm5Ow/1ZnZ01O3HMpkP9aHIjO+LvCex
	fVRqQ6NW213TyTZH5HADK+ugve0dxobgcNwMPr24FCZJ2LmElRvojtiyPj+mBK4LWUOciC
	L8lGcFfQtZcMrkgnyzTSr+jQW0Hv/z0=
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 02 Jul 2026 20:45:24 +0200
Subject: [PATCH batadv] batman-adv: fix VLAN priority offset
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-vlan-prio-v1-1-08b6d38db672@narfation.org>
X-B4-Tracking: v=1; b=H4sIAMOxRmoC/yWMzQqDMBAGX0W+cwMx1h98ldLDmmzaLSVKYoMgv
 nvTepxhmB2Jo3DCWO2InCXJHArUlwr2SeHBSlxhGG063Wuj8puCWqLMqu3d1Te+HjpLKP0S2cv
 2f90w0Uou43769JlebNffCMfxBQaF+h91AAAA
X-Change-ID: 20260702-vlan-prio-57d4f3f186ca
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1316; i=sven@narfation.org;
 h=from:subject:message-id; bh=F1ch2gqeZ+V3d3SJS8U11EerOwwBR+LAUqFGfLdmxtk=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFluG48eymSoP+8fd+XrjXv5vBmP3OP8vr+9JxTy6FW6i
 ELgvVnpHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJWDAzMnz/PbO9vMJso9WD
 vDIRhrXrZ+b+u/9ifcySfYECgak9xk0M/wOP/eGYuL/2za6JdSKGmp9q1ufcPH9uhyTvIU2/uKT
 Mv1wA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: ZQTKHBNGWFTHPNA52FTHQGA4TDJVTJMS
X-Message-ID-Hash: ZQTKHBNGWFTHPNA52FTHQGA4TDJVTJMS
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZQTKHBNGWFTHPNA52FTHQGA4TDJVTJMS/>
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,narfation.org:email,narfation.org:mid,narfation.org:from_mime,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC4F56FC443

The batadv_skb_set_priority() receives an SKB with the inner ethernet
header at position "offset". When it tries to extract the IPv4 and IPv6
header, it needs to skip the ethernet header to get access to the IP
header.

But for VLAN header, it performs the access with the struct vlan_ethhdr.
This struct contains both both the ethernet header and the VLAN header. It
is therefore incorrect to skip over the whole vlan_ethhdr size to get
access to the vlan_ethhdr.

Fixes: eb7643628a60 ("batman-adv: set skb priority according to content")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 net/batman-adv/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/main.c b/net/batman-adv/main.c
index 23abe04b..4dc4df3a 100644
--- a/net/batman-adv/main.c
+++ b/net/batman-adv/main.c
@@ -380,7 +380,7 @@ void batadv_skb_set_priority(struct sk_buff *skb, int offset)
 
 	switch (ethhdr->h_proto) {
 	case htons(ETH_P_8021Q):
-		vhdr = skb_header_pointer(skb, offset + sizeof(*vhdr),
+		vhdr = skb_header_pointer(skb, offset,
 					  sizeof(*vhdr), &vhdr_tmp);
 		if (!vhdr)
 			return;

---
base-commit: 9bd026856d0c9680390b1a1a42ae0fd44532c3d4
change-id: 20260702-vlan-prio-57d4f3f186ca

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


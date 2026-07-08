Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gu+WFMCsTmrbSAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EF01D72A0F3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UTZIDW0j;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B15F7852E5
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 08 Jul 2026 22:02:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783540927;
 b=NTJ7xoecTUZ7RPTCig3MDIDw9pTAGiOadkXMnNCZ3XvvKXl5+EQs62VIXpKXjO/8xoFP1
 hVDBUNbXnYJtR2osaVZoP0MW4B0vLu8THwRPshrZdQbhuMLL3r75n/SlpQcSTTK97Ct/dpN
 8FT6h1JMFdOjH1DtChhlv7tg9G3FXzY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783540927; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JGCx6F4+Ay2OqECGuNQLkxJfy0M1oW7cmEg7w2YJK6o=;
 b=DQkHU6stgQG/qn7jxb6sPjuRTJ5H95c4nfAQseyHZvwFfcnKPnigtUKRcPKBGhUJCtWPp
 HNaszVMdslv7OObiC6+K7MBuwwRxrh0KgyKkfxot3T1oT9R6JYF3gLeBPLudJ0cY6vIDoQv
 Zl4B56L5+RvG8aI836lFeehZ2LwTnZk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 38C7C8315F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 08 Jul 2026 22:00:28 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783540828;
	b=XmCaVKnhHWUDb1blmYEgkFYVFM9EfMO9DS1mr705D3qJuHV82sL+pdZyCslR3N3PtVdKNv
	mjq20dFPW/n9YKYeUKK8ApGzOuacwib72RZaLUP8Sx1TthhAOEPnoJGJaqyI9JAMQ9KSGa
	vpqPx012QQZ9PEikrpoAHykWdTMiy0Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783540828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=JGCx6F4+Ay2OqECGuNQLkxJfy0M1oW7cmEg7w2YJK6o=;
	b=YB1/XMJuuv9xg3O0jUBrMc1QuhHMfwPKPk6zeVi2nNN9+pKBSVWRNxvGkie1NLous1Q4tf
	7EnxXb8JgaChnozRwyFRn4i8ohpofiL72mL4lOk9Z4cYQYZ/pTluYXHu4RMPAkD4Hmakbw
	LOdK2eWWDOxlSk5L0T4vVHaeud+8wxA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UTZIDW0j;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id E74BD20536;
	Wed, 08 Jul 2026 20:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783540828;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JGCx6F4+Ay2OqECGuNQLkxJfy0M1oW7cmEg7w2YJK6o=;
	b=UTZIDW0jUII7kD1ItEgPa1ph/Yf/im0onBDQP3trxfwmZp50XtmdR0LSZUfxBV8H8ETBnE
	RCmVtMVTOq+XWEigG1Yyv2I1LR3DoPgNhb1d+dT9QtLUpOznyNtwcwHipxdGe0e1zhGXaU
	oNq2ncFrsP/pVcv6K9gxkarl9EZrOqU=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jul 2026 22:00:10 +0200
Subject: [PATCH 04/12] batctl: netlink: report dump errors signalled in the
 NLMSG_DONE message
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-bugfixes-netlink-v1-4-8ce03e37f17b@narfation.org>
References: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
In-Reply-To: <20260708-bugfixes-netlink-v1-0-8ce03e37f17b@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=941; i=sven@narfation.org;
 h=from:subject:message-id; bh=MdY8JlyTRIfQ3AnO6+z+wpbxAj+dNC7JWS5OMMwGu7w=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFl+azx8Tvt6z2P9IL9WITLXTeSB73bFqIYlOlbadQqX3
 8dKPoroKGVhEONikBVTZNlzJf/8Zva38p+nfTwKM4eVCWQIAxenAEykXJiRYfaGA1PnsnRmzPU6
 snraqa2xqcsnt5pcDWFrvatXJMOfIMjwP3Py5bwDzDMfFj/tKww0FY3///l2VmeS20ul4N1aJdp
 KbAA=
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: H2WPFNECHKYULL6Y62S7R4WZUTMSYBTZ
X-Message-ID-Hash: H2WPFNECHKYULL6Y62S7R4WZUTMSYBTZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/H2WPFNECHKYULL6Y62S7R4WZUTMSYBTZ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF01D72A0F3

When a dump is terminated with a non-zero error code in its NLMSG_DONE
message, "Error received" is printed but it is missed to update the global
error state (last_err). netlink_print_common() therefore returns 0 and the
command exits EXIT_SUCCESS despite the error just printed.

Fixes: 854835788001 ("batctl: Move routing_algo specific code it command source file")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 netlink.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/netlink.c b/netlink.c
index dd0275e..e8b41cf 100644
--- a/netlink.c
+++ b/netlink.c
@@ -316,8 +316,10 @@ int netlink_stop_callback(struct nl_msg *msg, void *arg __maybe_unused)
 	struct nlmsghdr *nlh = nlmsg_hdr(msg);
 	int *error = nlmsg_data(nlh);
 
-	if (*error)
+	if (*error) {
 		fprintf(stderr, "Error received: %s\n", strerror(-*error));
+		last_err = *error;
+	}
 
 	return NL_STOP;
 }

-- 
2.47.3


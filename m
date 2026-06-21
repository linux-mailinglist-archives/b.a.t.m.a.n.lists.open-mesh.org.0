Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yHDXCuj4N2p1WQcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:56 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B38086AB202
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=n+1RCflT;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 806A081893
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 21 Jun 2026 16:44:55 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782053095;
 b=mOAcRalSdTiZNjLV0HbkUUzsOZmE0DglGBjU8ts+HBdD8JQFZcoGcB8WYz3AxxNfibtRb
 zB4xgM+81YilTyT94YyLuzqEhbus0b7yWZiNT8/WLExrGHO1QXir8snOVwXDnePuvXuHeae
 aUH9VViXHVMdaRFFlVsYYqBndu1PfIk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782053095; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vjO5f7y6X+k16iZm4/oL6c3CG6qIp0X2mkxhB3/UrxA=;
 b=BE6nNF9OAkYAtCuyS0C5Oa+HomDFFwmuHPZX+TMZAPRNIVNoOYPog95v3wVp1ALwKZKvp
 tdm+Z3wZPZ+niWGL2BsEHFJmwM/wGA99xdzyAz8krNokfe0Ydt6MY7wADfx302EP2yMDDYc
 u2qg09QXXK+iNUC6b6wq71hoTuykiN0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id E48C3807A9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 21 Jun 2026 16:26:20 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782051980;
	b=EtHgQHcVvOAtGe4gHI+ww15WWzt8uvJvEIAXLSzlh3ppymEIOg0cIN3sjiCD848lhoLSin
	3aYp6HdLETKPEjEfNAaB/z8eE4FqsZXvdt3rsm5izzpSm8OoKm23rt147KhtURDktqRorN
	u2Hb4y+bw9rEBngpu3cEbvm4cvjsGCo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782051980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vjO5f7y6X+k16iZm4/oL6c3CG6qIp0X2mkxhB3/UrxA=;
	b=O7EbT3MatzuyIZ3J+tlX4XDkhGFTAQca+qQ33rFUyTcIk0FesCqaZ2Dkbv0yoqQ0lvUedX
	k4ARkF9xJdNBrT+UxQcSQfMxDnOH19cGH/b/dtnHnvjUhTaoG9HfHf3wqtU3qiQKUombF1
	zs7BfSsykY30ji1JMbIuL2rDgOCecZc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=n+1RCflT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id A3FEF20059;
	Sun, 21 Jun 2026 14:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782051980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vjO5f7y6X+k16iZm4/oL6c3CG6qIp0X2mkxhB3/UrxA=;
	b=n+1RCflT20QhdHL9yOUDNZlr+svPj7Ze21SPO16fE5ZHMnUcjZw44FgIYRE+IOuq2+XUpn
	91fTULrqh1E83KfZ3Ye7OxO7XvW4G+8KW294GZocjgWwZLIX/RFnYx41nzud0dvC+uY35u
	zLa2usPtVOFtL+e8grWdNsmQCk4i4XY=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 21 Jun 2026 16:24:17 +0200
Subject: [PATCH 27/28] batctl: bisect_iv: avoid out of bound access on
 short lines
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-bugfixes-v1-27-b09736288a4a@narfation.org>
References: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
In-Reply-To: <20260621-bugfixes-v1-0-b09736288a4a@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1131; i=sven@narfation.org;
 h=from:subject:message-id; bh=f3cAKIlE/46MAVlNA6CNXpGi9ULY+AtatnoG6FNx4y8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnmXzgmXd/8Pkt80UU7qw3NM8Nzr/oqX3rF+Orfq6jDu
 +4aJkv/7ihlYRDjYpAVU2TZcyX//Gb2t/Kfp308CjOHlQlkCAMXpwBMZFUOI0PfCYdJefPfCj3v
 sZg8I6fQ/Oe65O7C5WrGTt+OlETe2iLB8L/+Qc+NxWoHHcIr4xQKM/U2Xlv34/3s0pf/9qoazSn
 esYAJAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: PSF35FNXNVJBX7AEAQAE4FFGREXWZKFV
X-Message-ID-Hash: PSF35FNXNVJBX7AEAQAE4FFGREXWZKFV
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PSF35FNXNVJBX7AEAQAE4FFGREXWZKFV/>
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
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B38086AB202

The parse_log_file assumes that it can jump over the first 13 characters
without checking if the line is actually 13 bytes long. A short log line
would therefore cause a jump outside of the initialized buffer area.

To avoid this, ignore all files smaller than 14 bytes.

Fixes: ece05e1c4c1f ("[batctl] bisect (a tool to analyze logfiles) added")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 bisect_iv.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/bisect_iv.c b/bisect_iv.c
index 4420be9..6c3f5d6 100644
--- a/bisect_iv.c
+++ b/bisect_iv.c
@@ -501,10 +501,14 @@ static int parse_log_file(char *file_path)
 	}
 
 	while (fgets(line_buff, sizeof(line_buff), fd)) {
-		/* ignore the timestamp at the beginning of each line */
-		start_ptr = line_buff + 13;
 		line_count++;
 
+		/* ignore the timestamp at the beginning of each line */
+		if (strlen(line_buff) <= 13)
+			continue;
+
+		start_ptr = line_buff + 13;
+
 		if (strstr(start_ptr, "Received BATMAN packet via NB")) {
 			strtok_r(start_ptr, " ", &start_ptr_safe);
 			neigh = NULL;

-- 
2.47.3


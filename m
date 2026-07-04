Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SnM0EfzwSGqRvgAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:39:40 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C2C7076E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:39:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IA5QpeyL;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 78F1384110
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 04 Jul 2026 13:39:39 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783165179;
 b=Z+KX+ZjFK9pFuYIBdPy4o6J0NTKaQ0qiVAswX+nSQdUK/SIWeakw3MyPwS0cmU/zJEW5Z
 V6cm8TsPf4i8Xh+9w1uiXrIgaMU5eF1px5pv0uY/6ybI8zEmSOcLQ/catp/rn4FTF/fvR2o
 CUzSgXHtl/m2AjsMzU6DdH3lXhH1HQk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783165179; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dzYX6PuiZ/tc6m3J+K/1wMmZdSISipu9/Tmb5WI9Q2g=;
 b=AhkyN1GPn1kYx3fFQTmQcU3a3KX/Lbjp7254wiuoNkrhH/8A/kx9MSmhn35N08ZeIHJcp
 RSyluM9dMLZJkUQN0MQI8WfkYIA7ob5VCGo1IUvH+jjfBWj5UNLDokXuVBryb0N8pcZQjmv
 9D6Hoj1DdvBuCoC2M3BfJ1xhOSFXR+g=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 934B3811BF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 04 Jul 2026 13:39:21 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783165161;
	b=H/t9/ddzZfwaILzNQ4Im8znH+CcdB+1yK3Crm7c7xtDkLxlnTQb9uG1YjEt/cUSqQPgf3q
	A+62ZEAl/5Kh3zhelZP87xzdnwSnKbDcIZ8b1KOB//FkrTm4sZVgVOOVYkEUBTJ/wiabxf
	pwb0So1aGKPJJAy2U1fQPYnONyGey8c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783165161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=dzYX6PuiZ/tc6m3J+K/1wMmZdSISipu9/Tmb5WI9Q2g=;
	b=ddcRDzkRl95wzd3xdVq61KC5na0s2APypiXX+c0mmTS7C1rI8Voc7wo3e5fWdtNEA46ulD
	TqC2x2GH2WChNkmqyM9nZjQpC3FEOmio0667WXuiucJAjK50lxNJAz0Er8y1HL2TwFzNOi
	TsUZpkXyIbSeXrQtCVbv2/Q8uovgfP0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IA5QpeyL;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 12C1120378;
	Sat, 04 Jul 2026 11:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783165160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dzYX6PuiZ/tc6m3J+K/1wMmZdSISipu9/Tmb5WI9Q2g=;
	b=IA5QpeyLB9rWALBehl6sR9GIiBUXEt21uQ5mWAMnjG5UtrJN9pAREY81TdG9ieJ7ydyFnD
	X50b4sb+4217SsWXfqioJkN+JIEqhfW43DY9g7XolGOggA4tzln577Gjugy5Dnw19v2VmM
	t9YVlcrB+NL/a0FoeY+QWzf8QvuLkpE=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 04 Jul 2026 13:39:10 +0200
Subject: [PATCH] batctl: bat-hosts: free bat_host when hash_add fails
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260704-bugfixes-bat-hosts-v1-1-b85f191fa837@narfation.org>
X-B4-Tracking: v=1; b=H4sIAN3wSGoC/yXMQQqDQBBE0atIr20YJSrJVcSFPSm1XahMjyKId
 88kWT6oXxcZgsLolV0UcKjpuiQUeUZ+6pcRrO9kKl1Zu8Y9WPZx0BPG0keeVovGFepnVQjEy0A
 p3AJ+k9S13d+2ywwfv0903x+MDuTydgAAAA==
X-Change-ID: 20260704-bugfixes-bat-hosts-5e6951bebcbf
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1334; i=sven@narfation.org;
 h=from:subject:message-id; bh=Ub1SVMyUQ/JzWD/34eQQfn3D26WrxdlaCWy3DBhwO8w=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFkeHx40TO18bLFicUpC7OQDOvWhM18xexkXzmG9V1Zix
 3y9cdm9jlIWBjEuBlkxRZY9V/LPb2Z/K/952sejMHNYmUCGMHBxCsBE3JYz/OEUviDl3f755ok3
 h/5GW7q9ucDqzS9Z7Cl08vij47xfVmxm+GdrcVp+b9IsRuW/H1N4ZC5t38NaX7GiouXO+UsZfAu
 6FjMCAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: DWX6M5B75ZL3FDE5SBHIQFUV76NZ2UZ5
X-Message-ID-Hash: DWX6M5B75ZL3FDE5SBHIQFUV76NZ2UZ5
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DWX6M5B75ZL3FDE5SBHIQFUV76NZ2UZ5/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C7C2C7076E6

If the hash_add fails (OOM or duplicated entry), then the allocated
bat_host would leak. The user would also not be informed about this
problem.

Check the return value and handle the error to make this problem visible to
the user.

Fixes: c7c76f63c1f9 ("[batctl] integrating batman hash implementation / move bat-hosts stuff into an extra set of files")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 bat-hosts.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/bat-hosts.c b/bat-hosts.c
index 6ad8247..160d317 100644
--- a/bat-hosts.c
+++ b/bat-hosts.c
@@ -130,7 +130,14 @@ static void parse_hosts_file(struct hashtable_t **hash, const char path[], int r
 		strncpy(bat_host->name, name, HOST_NAME_MAX_LEN);
 		bat_host->name[HOST_NAME_MAX_LEN - 1] = '\0';
 
-		hash_add(*hash, bat_host);
+		if (hash_add(*hash, bat_host) < 0) {
+			if (read_opt & USE_BAT_HOSTS)
+				fprintf(stderr,
+					"Error - could not add bat host: %s\n",
+					name);
+			free(bat_host);
+			continue;
+		}
 
 		if ((*hash)->elements * 4 > (*hash)->size) {
 			swaphash = hash_resize((*hash), (*hash)->size * 2);

---
base-commit: e93995999e80513db80eba200ea682b5b15556af
change-id: 20260704-bugfixes-bat-hosts-5e6951bebcbf

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LwbxNshKTWoQxwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:52 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D58E71EC07
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="JhKs/gLT";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6BCE48466C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:51:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450312;
 b=Ej1Fs/afDspdxM2UZ/ofAjaHe8crOgzaOOzP/Rm0xLaF+AqBMmcuSjkLbNTmRzHpJbjKK
 7FvXuOREdTVZFInUvIfQqK3Ra7FP2hqAeBgoYrJ06ThxHSc9e/YzsqP3+tDr9GPYVMDju7+
 SQpHegClDOGBmQrFhyW8l05wWZSmAmU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450312; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o93JsEmA6kjPCBHab1eJvAj7A1yxTeamAT6/6n0YQ8w=;
 b=33bSKDkpJfzYeq0mxvHN2aA4TN/7ibVsjRI2Rvh3rrs3LQl7FVYl3Pe3dX93UBFCqM8xm
 1+CtHp3o/y/c2enLX3S/xHU3UPPA3d2Yee9QT1utcvkbbai3FjQ6C9TWib01eIwAlImIg4g
 zc0Nd/wipUOMTb8ZRMYWI2sMY7JEFDM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 2E268810E8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:47:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450026;
	b=Ljaah45XvXujyPEeAys/5yf6xtSJHcQUFsh5irxV4SE+ip9UYn43i0OWBZ4Fvlyi8jeuVO
	DZrZ2sh08DQGkRoOULdG7nJoNKnVji0pW+d59C7OlgjlNJIodHi2Ju6cPM0YtI8zR3yjlt
	GfN0VhnVXHsKBPl9M/xYRhcIYgJt1Vs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=o93JsEmA6kjPCBHab1eJvAj7A1yxTeamAT6/6n0YQ8w=;
	b=Qy1Er5gfg1Fe90sxiPqEdzK1li2R0XnsUNzqPnp+18+by5Im6S1vvYtpHLK3b0C/+X7Pmm
	a1NhJ8Yr4EYoM/FR3OW8+IvMbpjmtsl8+BeZWTTSivV5w8Uc3nsJUWRIxPHBm9Ia8d8Jrj
	CjzKUjdWhfIWau7gHwLyGclLX72odso=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="JhKs/gLT";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 9E973202D1;
	Tue, 07 Jul 2026 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o93JsEmA6kjPCBHab1eJvAj7A1yxTeamAT6/6n0YQ8w=;
	b=JhKs/gLTPaqFDW8r6xNl2cTKm1pqHAs1hexUzila0DTTYMm6WMV0rLiO7vcasLHE2V9n/Z
	qXvvus0Z01DCyvOFKa07MIz4iuVTPa3MSKrVdJnaaAdzSI4OMwHWKxO2QtgWkDE0PnTFhw
	1dMQAZQq9EOrBjHroB6FAubzEZNJaIE=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:48 +0200
Subject: [PATCH 06/11] batctl: ping: keep huge '-i' intervals from turning
 into a flood ping
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-6-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; i=sven@narfation.org;
 h=from:subject:message-id; bh=b9XZ8ZGKNlFeHZJL/A4Wbi1d1FI9NcqO2WoudaBjEYg=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+ntOWaC+8ysHgsDxDjHft7rV+32eKJ07UyTxyes7j7
 UvO31kX2FHKwiDGxSArpsiy50r++c3sb+U/T/t4FGYOKxPIEAYuTgGYCL8zI0PTHU9OyZOXPhy7
 dm5ewfH0W66bLsttXCLqvadnTt/0e1mHGRmee06r7E5rKWs8v/6KWZ5p5a7Y7GVuwscd1/v9vf/
 qXDYvAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: CPNSL6KZXSD57WRQ353YXOGMEHWR34XT
X-Message-ID-Hash: CPNSL6KZXSD57WRQ353YXOGMEHWR34XT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CPNSL6KZXSD57WRQ353YXOGMEHWR34XT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,lists.open-mesh.org:from_smtp,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D58E71EC07

strtod() happily accepts "inf" or values like 1e300 as ping interval.
Converting such a value to time_t for the nanosleep interval is undefined
behavior.

Clamp the interval to a well representable maximum before splitting it
into seconds and nanoseconds.

Fixes: 4ebe4fb7b08d ("batctl: ping: Add subsecond precision to ping interval")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 ping.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/ping.c b/ping.c
index fcb8d5e..c875c38 100644
--- a/ping.c
+++ b/ping.c
@@ -106,12 +106,14 @@ static int ping(struct state *state, int argc, char **argv)
 		case 'i':
 			errno = 0;
 			ping_interval = strtod(optarg, &endptr);
-			if (errno || *endptr != '\0') {
+			if (errno || *endptr != '\0' || endptr == optarg ||
+			    !isfinite(ping_interval) || ping_interval <= 0) {
 				fprintf(stderr, "Error - invalid ping interval '%s'\n", optarg);
 				goto out;
 			}
 
 			ping_interval = fmax(ping_interval, 0.001);
+			ping_interval = fmin(ping_interval, 1000000000.0);
 			fractional_part = modf(ping_interval, &integral_part);
 			loop_interval.tv_sec = (time_t)integral_part;
 			loop_interval.tv_nsec = (long)(fractional_part * 1000000000l);

-- 
2.47.3


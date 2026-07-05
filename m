Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HDrYCKBWSmoUBgEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 15:05:36 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B600B70A044
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 15:05:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZK+Bq7Is;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4E72384735
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 15:05:35 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783256735;
 b=YmHDdxIgpkuV1vAuvG79BktfLFtFlujQ9uKZY5tVAZzz1zd2tMjDogyVGorfRB8xrAODE
 HmQxcXOeSGYLTo1yOrtgGdO3p+lm53LgFolftC7DjDaTX0irt1Dkfe41PwsgsH3/kChDXWD
 xzsd4QEPiHwEcTdhGCW50I0F/6Nrzr4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783256735; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3G0VaCm97t8ScreyYjEd6Yu5aDs+KLddW89AKZGzjk8=;
 b=yOec4gUlNCIlBM9U5S+p4AQdcTeOAINyyYPahjn0+/A525GENMpigXaxJobzH4eTvFNHl
 Ebqa1yZ4iAFelBs0343D0jZlgH0O77VpU16XoeGdpxPpHiWYyr/gO3KA6ocUkuTkjQmvl+m
 LGK9RlxEpzJzFsLnZrXcPZWtA03ZEE8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id AB73980706
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 15:04:32 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783256677;
	b=4KPod8mkD1tW4prBivoDV5rFVkOU7uJjgoHyzJyDwukaTMDUESdrns3D8S+G5YfKB+yRYY
	glC5JSfRs3Dh/XiGJHnlCVBEIosLtL9G0EJwY7UwqwVVrAMmD6TUBGCb8Kcje4MRYm2Gf+
	8ZgfosQ31cCjPSxTrIsv53UdDhBk12g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783256677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3G0VaCm97t8ScreyYjEd6Yu5aDs+KLddW89AKZGzjk8=;
	b=C4VA7T19YdU9yvreb867dgIFXsvr25S/UmHcpD6nDvgpXnh4y242WFj2/E7CAmtSgfCafK
	XJk4raA+uSO55OusRWBOsTBoxhT6rU6oAxr9vBKhrhg3hg8UcINtttqF5xcWuAu8WzJQyU
	gUzxVeLc2YIHt8wJ0LxnIG1h/J+SXVg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZK+Bq7Is;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 48BE6203F3;
	Sun, 05 Jul 2026 13:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783256672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3G0VaCm97t8ScreyYjEd6Yu5aDs+KLddW89AKZGzjk8=;
	b=ZK+Bq7IsLCnEXYav7z3gBd4h0I8Wxnakn87LbnvvuuWSoHbeWVF7cF4NNcv6wZ8TmGjwv2
	n6PpqT9TYzVdA91FURlN+eX8dZ1EpmCwGyQCje5rzzbAkyx+z5jTDPFqsQUp54eVlG8v5M
	VBzulb/FviMPtj3KajIVI9QfWVeYXcs=
From: Sven Eckelmann <sven@narfation.org>
Date: Sun, 05 Jul 2026 15:04:26 +0200
Subject: [PATCH 1/2] batctl: interface: report rtnl query failures
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260705-bugfixes-interface-v1-1-64743906b3d4@narfation.org>
References: <20260705-bugfixes-interface-v1-0-64743906b3d4@narfation.org>
In-Reply-To: <20260705-bugfixes-interface-v1-0-64743906b3d4@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1138; i=sven@narfation.org;
 h=from:subject:message-id; bh=kmGiGEF/Cp/rvcVtRzSFNEbCnzbOUl7hXhnPfM0msBo=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFleYVEfzC58usGwz399YMqK2m2GB95fXVkseHfvj7fWT
 hlJ9gv+dZSyMIhxMciKKbLsuZJ/fjP7W/nP0z4ehZnDygQyhIGLUwAmsnkuI8PUMy7pUyrSmr4Y
 zWW4w24Wrcq11OHPrIO/rVepccU+PyzOyDBjOvvf3SxHpTnYXqyre6dqe7b6yZew4ymvhZhdcm2
 OPGMGAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: NOTIQDUUYDDV6KVFLMUDJJIM4GM2AJAC
X-Message-ID-Hash: NOTIQDUUYDDV6KVFLMUDJJIM4GM2AJAC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NOTIQDUUYDDV6KVFLMUDJJIM4GM2AJAC/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B600B70A044

print_interfaces() ignores the query_rtnl_link() result. When the rtnl
socket setup or the dump request fails, batctl interface prints nothing and
exits with EXIT_SUCCESS. This is indistinguishable from a
meshif without any slave interfaces.

Check the result and fail with an error message instead.

Fixes: 60e519bfeaa3 ("batctl: Use rtnl to query list of softif devices")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 interface.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/interface.c b/interface.c
index 7d3897c..c734eda 100644
--- a/interface.c
+++ b/interface.c
@@ -164,11 +164,17 @@ static int print_interfaces(struct state *state)
 	if (ret < 0)
 		return EXIT_FAILURE;
 
-	query_rtnl_link(state->mesh_ifindex, print_interfaces_rtnl_parse,
-			state);
+	ret = query_rtnl_link(state->mesh_ifindex, print_interfaces_rtnl_parse,
+			      state);
 
 	netlink_destroy(state);
 
+	if (ret < 0) {
+		fprintf(stderr, "Error - could not query interfaces: %s\n",
+			strerror(-ret));
+		return EXIT_FAILURE;
+	}
+
 	return EXIT_SUCCESS;
 }
 

-- 
2.47.3


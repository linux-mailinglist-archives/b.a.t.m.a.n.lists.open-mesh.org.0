Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6hpFAnRLTWowxwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:54:44 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A285471EC4D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:54:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=euenYNZT;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8026384C68
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Jul 2026 20:54:43 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783450483;
 b=MiYb58bMCzaVGlxJJwOY9jRNum2dk8sUaw7AgrTr62oFq6MbUxX1sO5gWc0QTczyiK4Li
 BqPwiFYFiybfOi7jCD+4OSjye9PlnpEecr3er3Im0swRw/9i2PBY1p9Lg5hq86I8SFNhB7r
 EeTtmqo7O1m8TxdIUeQtmZzeEzyUgso=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783450483; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b67R9gJcjRpDdIPTrRjQsBwHC1qxQ7H92ib4V7Yy0mc=;
 b=JrmS1J6QqEBVnicV6ZAHiuFHwBNEJZwu4jDWMGXvuaXWgDtYlLJgvEVOOpJLlaGfzvexc
 VV8SHp92GOTiAI7PTX45QhGC/Z1ifatJUqe6sZr3yRRZWRgRvhhoDspOiDcKd65aJwFuv29
 aczT8xENHQwuMVy0k29ZUt+d/23Qv8c=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 0CE13841D4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Jul 2026 20:47:14 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783450034;
	b=BzDfFhMIZAvbR/0dGDQ4zvkakKYFLuqdqmw2rmYhtxymtg3slt4J0fb/NE3xT3o5tCoJCX
	yESVidQjtMT5s9s9UqpL8kHwg32z3Yz5KE6cB4iRnIdifVGcaJdiIckUltwY13+wigYBGf
	eomTZZN5arzNDaHsQLSLH/egvdLyHSA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783450034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=b67R9gJcjRpDdIPTrRjQsBwHC1qxQ7H92ib4V7Yy0mc=;
	b=ad2DbxHjWHA+yxeVKlj7LtzL50mcm65n4rtkdMYklQm97WmiQiGnmW0AV9D5H7P6sPsPi3
	qz7694ZuCo5nhsVnUlH8/p8MDXNHP3fVq9rVNqqVWvjpJdS5GcUXSKxwb+jwgewGgtDZav
	gfNaqtJm3tJ4nOb1nkfKHdcu9cJrOMs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=euenYNZT;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 67E8D202D1;
	Tue, 07 Jul 2026 18:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783450033;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b67R9gJcjRpDdIPTrRjQsBwHC1qxQ7H92ib4V7Yy0mc=;
	b=euenYNZTrFELdoy4hlJHDTDYh7V27daRH1HiiKbbQsfKsObur6eeVG97Ql/IjzsOOZgbH6
	IjPp68Fl25hlE5921DpNfDjCbItrRIRmiR2lt0Aea+f+I+KUdmUtOHPqtwzKkqaEzlqkOR
	P/eWGzmnZGTMZOEEa/MZzgxrPvUpIbU=
From: Sven Eckelmann <sven@narfation.org>
Date: Tue, 07 Jul 2026 20:46:52 +0200
Subject: [PATCH 10/11] batctl: icmp_helper: fail send when the primary mac
 is unknown
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-bugfixes-icmp-v1-10-ee563a984acf@narfation.org>
References: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
In-Reply-To: <20260707-bugfixes-icmp-v1-0-ee563a984acf@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1578; i=sven@narfation.org;
 h=from:subject:message-id; bh=EiFH9JXJhwtNrkYd3Cr3YUJSVQn+D+YeBIr9rm9ZXg8=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFm+ntMuqPw6cS6bKTu5R/bfDDbDk8JxBRnTeL4vWSqne
 cj7wfa7HaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJTFjNyLD9njf3UpnVYbq1
 fEU/Nb5xWbBsfLBg+evJnf/8VN1iTN4zMlz6ONOrRbFeJplx27aAcvkUl+zS9EanLT3iTf7NHxO
 /MAIA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: I2ICXR7KKJK4ODPUH2SS7BZ3AZKH3WT4
X-Message-ID-Hash: I2ICXR7KKJK4ODPUH2SS7BZ3AZKH3WT4
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/I2ICXR7KKJK4ODPUH2SS7BZ3AZKH3WT4/>
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
X-Rspamd-Queue-Id: A285471EC4D

icmp_interface_update() calls get_primarymac_netlink() but discards its
return value. That helper only writes the output buffer on success; on
failure (netlink error, or BATADV_ATTR_HARD_ADDRESS missing from the
BATADV_CMD_GET_MESH_INFO reply) it returns a negative errno and leaves the
buffer untouched. primary_mac is a zero-initialised static and this is the
only place that ever writes it, so a failed query leaves it as
00:00:00:00:00:00. And address which the receiver cannot use to send a
reply.

Propagate the failure out of icmp_interface_update() and abort the send.

Fixes: 4bd751eed4dc ("batctl: Implement non-routing batadv_icmp in userspace")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 icmp_helper.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/icmp_helper.c b/icmp_helper.c
index 65a2005..52ac22d 100644
--- a/icmp_helper.c
+++ b/icmp_helper.c
@@ -337,9 +337,7 @@ static int icmp_interface_update(struct state *state)
 	/* remove old interfaces */
 	icmp_interface_sweep();
 
-	get_primarymac_netlink(state, primary_mac);
-
-	return 0;
+	return get_primarymac_netlink(state, primary_mac);
 }
 
 static int icmp_interface_send(struct batadv_icmp_header *icmp_packet,
@@ -391,7 +389,9 @@ int icmp_interface_write(struct state *state,
 	if (icmp_packet->msg_type != BATADV_ECHO_REQUEST)
 		return -EINVAL;
 
-	icmp_interface_update(state);
+	ret = icmp_interface_update(state);
+	if (ret < 0)
+		return ret;
 
 	if (list_empty(&interface_list))
 		return -EFAULT;

-- 
2.47.3


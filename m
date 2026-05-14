Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HN9FOCEBWqiXwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:16:32 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C57953F2A4
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:16:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D917385BDB
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 10:16:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778746589;
 b=1sGZt9c6N/I+4cnsRzRZMnOD413q/tUUCiAu8pCKtO6ozrT0MnbO+TaAVBhpcw2MgsCtH
 Pb+SsY3ViIwtdCnmuql66mzwdT9pbFNNLqMtywfYy96opYuA/RMIuv9bFTgrzU25U2tuyEo
 dtMkQqwZp5K7ngONY3ZywPqu3FGWCbc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778746589; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pM8xy5u94966f7bCyaRdKZOuaRQWEZ+6Am9ons7uYoM=;
 b=T/33Yc7mxqrk2lAhPar3vxD/Cf8fdZ7MFIZ4JID27yEpaa62+0vFQwh2BSqZODdsfVZxx
 fj81BOZkv3xAvLwwrzc7UlyrbTWhiU1YSB/UmU13rNGpq6yg5xer5UaW0B+wDdsGB440xGj
 yaEObSdS6Uk1mEq7uYhvs8I2JFqyTEA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net
 [52.175.55.52])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 79AFF802C9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2026 10:13:49 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778746442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pM8xy5u94966f7bCyaRdKZOuaRQWEZ+6Am9ons7uYoM=;
	b=JPFHxfHifTs+tfItzOHr7+PvVOXkdiLYX5eA92/UvnBme0VzoPR8MtKVjpeWP+QLNcHKhe
	R77Ji1Kjh1/NXHlTJT4EHU62tPmCrAyGJbbXcQRrIassmI+G+FHBUYNwAk9xLarCE5S8Hh
	uLlXsTfrLBlmWYxbvfpz8LeXFlwWZMo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of n05ec@lzu.edu.cn designates
 52.175.55.52 as permitted sender) smtp.mailfrom=n05ec@lzu.edu.cn
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778746442;
	b=FVtoBXouGuPvzvPia8DmcrRwELKaLlJthaSx8nSkK0v91j0IfJCoMaYa3LK+MUVZJ3BFIV
	Ls0wIFY3zl+h+c2TjB8yreclI2kI33ZeGBwijM4/888mAYrxqIfM995HuFpd/3bezSbiYf
	YMZx00/7M2AnOByA+eERRj5Ad71x4Gg=
Received: from enjou-Legion-Y7000P-2019.coin-barley.ts.net (unknown
 [172.23.56.36])
	by app1 (Coremail) with SMTP id ygmowACXusQphAVqgHYGAA--.7536S3;
	Thu, 14 May 2026 16:13:41 +0800 (CST)
From: Ren Wei <n05ec@lzu.edu.cn>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: marek.lindner@mailbox.org,
	sw@simonwunderlich.de,
	antonio@mandelbit.com,
	sven@narfation.org,
	yuantan098@gmail.com,
	yifanwucs@gmail.com,
	tomapufckgml@gmail.com,
	bird@lzu.edu.cn,
	ruijieli51@gmail.com,
	lzhanpeng2025@lzu.edu.cn,
	n05ec@lzu.edu.cn
Subject: [PATCH batadv 1/1] batman-adv: clear current gateway during teardown
Date: Thu, 14 May 2026 16:13:25 +0800
Message-ID: 
 <05bdee6e85c3514822f98afa8fb75826b3928dd0.1778671969.git.ruijieli51@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1778671969.git.ruijieli51@gmail.com>
References: <cover.1778671969.git.ruijieli51@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: ygmowACXusQphAVqgHYGAA--.7536S3
X-Coremail-Antispam: 1UD129KBjvJXoW7ury5tFWxCrW8Aw4UGw43Awb_yoW8Ar4fpr
	WfCryYka9rJw10kFs2yryrA34ayF4DGrW2qa4DAF4UJw1ktrWIyF9Yg34UZr45tan2grs0
	qFWqvFW7uw4UuFDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUB01xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVW7JVWDJwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1l84ACjcxK6I8E
	87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
	8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
	Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0xkIwI1lc7CjxVAa
	w2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY2
	0_Gr4l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8G
	jcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2I
	x0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK
	8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I
	0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUonmRUUUUU
X-CM-SenderInfo: zqqvvuo6o23hxhgxhubq/1tbiAQsHCWoFZ+8DaQAAsJ
X-MailFrom: n05ec@lzu.edu.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: 3WCMTFXZ2QTGSXFYL5OJKQCM2EF7J4GI
X-Message-ID-Hash: 3WCMTFXZ2QTGSXFYL5OJKQCM2EF7J4GI
X-Mailman-Approved-At: Thu, 14 May 2026 10:15:47 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3WCMTFXZ2QTGSXFYL5OJKQCM2EF7J4GI/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 8C57953F2A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	NEURAL_HAM(-0.00)[-0.987];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[lzu.edu.cn];
	FROM_NEQ_ENVFROM(0.00)[n05ec@lzu.edu.cn,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,gmail.com,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Action: no action

From: Ruijie Li <ruijieli51@gmail.com>

batadv_gw_node_free() removes the gateway list entries during mesh teardown,
but it does not clear the currently selected gateway. This leaves stale
gateway state behind across cleanup and can break a later mesh recreation.

Clear bat_priv->gw.curr_gw before walking the gateway list so the selected
gateway reference is dropped as part of teardown.

Fixes: 2265c1410864 ("batman-adv: gateway election code refactoring")
Cc: stable@kernel.org
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Signed-off-by: Ruijie Li <ruijieli51@gmail.com>
Signed-off-by: Zhanpeng Li <lzhanpeng2025@lzu.edu.cn>
Signed-off-by: Ren Wei <n05ec@lzu.edu.cn>
---
 net/batman-adv/gateway_client.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/batman-adv/gateway_client.c b/net/batman-adv/gateway_client.c
index 51e9c081a2a4..a9d0346e8332 100644
--- a/net/batman-adv/gateway_client.c
+++ b/net/batman-adv/gateway_client.c
@@ -478,10 +478,14 @@ void batadv_gw_node_delete(struct batadv_priv *bat_priv,
  */
 void batadv_gw_node_free(struct batadv_priv *bat_priv)
 {
+	struct batadv_gw_node *curr_gw;
 	struct batadv_gw_node *gw_node;
 	struct hlist_node *node_tmp;
 
 	spin_lock_bh(&bat_priv->gw.list_lock);
+	curr_gw = rcu_replace_pointer(bat_priv->gw.curr_gw, NULL, true);
+	batadv_gw_node_put(curr_gw);
+
 	hlist_for_each_entry_safe(gw_node, node_tmp,
 				  &bat_priv->gw.gateway_list, list) {
 		hlist_del_init_rcu(&gw_node->list);
-- 
2.34.1


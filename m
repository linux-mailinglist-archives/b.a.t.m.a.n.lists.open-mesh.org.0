Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIRRA0qhDWq10QUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:55:54 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF5D58D0D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:55:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F2BB583764
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 May 2026 13:55:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779278152;
 b=LyhKm0SxE9xPqOo3MGziwpQBvRTsWRMBfUpZBpWS4ZY7/oAf1k78SrsVi6IbuQKWWHB/T
 3mky+yxU8+VGeDNe0jSpLID3bU5CbSBjTPLDnuYagcSFB8OdNQrlMwRHvdraEG2mAMIhMyi
 +akSEPjwOUWNQdGpikuuVm8wh3Z6MjU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779278152; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kBVpzL3gTEZN4vwshQgSmyTaf4MxHfBg/Mn1OfHiuN4=;
 b=3Z370bpOSKsbpIAoQDs/5WbmdYLDU8OHdsOhXlPbsPibAocXLmXlfMJ7HCpkSm0DdJk9N
 qnWaUosKxgiebisqwMHxW+CIlhpDLguCGywJS+wnQ1NANZBzTWo+eFvRFJVj3rLn04ReFLK
 lmglwSnnXTJAyfs7mwe+ZyIqiog6tFg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A173580DF2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 May 2026 13:54:40 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779278080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=kBVpzL3gTEZN4vwshQgSmyTaf4MxHfBg/Mn1OfHiuN4=;
	b=GMwj5QIws6/U+IE1PoSy9VggHtHBu/AKeZuy+5iuohST/FH9GgX/ri44qNa5tDrWL4zMZw
	Ilqv+wJ1Jr/tITdsynqvSDKnbUQhQP4+N/6M7c59zWENgCHcJb4djDb2LOlZk1TAp+iBHi
	QB7I+wxHO2rzfEFKApIYTwboPUwBn0w=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779278080;
	b=VEQUmjN0at7Yov8fE3/qntcJ5wiiApnakfcFr9I87JZF521WpS2G3OxFyVhQ1nQLLS5ypJ
	Ser2wF54UGjmG5r21Ll8mS3AmpuPJlwuzHCX8q7jJmzhMbrjJZOWxvHNRsSOTZncXvSwkf
	zXDGuNZLU9/JF4wwRgq6ShvRxkQYpP8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=oTduTm6H;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779278080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kBVpzL3gTEZN4vwshQgSmyTaf4MxHfBg/Mn1OfHiuN4=;
	b=oTduTm6H2rHM9C4+OLp5M2x2/Q21EZfAtZi1FaDJNCIQHvVkmzdXnQTpsOoZp66Ul8f/Fs
	RwGaXYFG22/k5cjfdTGhnUBqCHhrtBMxEH61BfGMRgKEZL49l1ZOms6TtUc3un8HftaFnC
	cmV2L0oxMjFWOpqYSzCxRAsOUVkZInU2jyRaLOstdeBofLvuPj2fDJ6PyWoubaYoiHWvgk
	yHyVq8Peputs5VJT25EXPS1bKAnbrC4f5TtvrNv61Y65P4S/rzvBix/JyNuBWPi+68R9ux
	Un/9AQedxpzWHASpAzSpiCVpBn11aZLQe5sKHGmI2N6wRa6KuML+232Ow8bFgQ==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	stable@kernel.org,
	Yuan Tan <yuantan098@gmail.com>,
	Yifan Wu <yifanwucs@gmail.com>,
	Juefei Pu <tomapufckgml@gmail.com>,
	Xin Liu <bird@lzu.edu.cn>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 04/11] batman-adv: tvlv: reject oversized TVLV packets
Date: Wed, 20 May 2026 13:54:15 +0200
Message-ID: <20260520115422.53552-5-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260520115422.53552-1-sw@simonwunderlich.de>
References: <20260520115422.53552-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 7YGUAUIS7RG4K357ZRAONOCEVX3LPEIB
X-Message-ID-Hash: 7YGUAUIS7RG4K357ZRAONOCEVX3LPEIB
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7YGUAUIS7RG4K357ZRAONOCEVX3LPEIB/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lists.open-mesh.org,narfation.org,gmail.com,lzu.edu.cn,simonwunderlich.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,lzu.edu.cn:email];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: ABF5D58D0D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

batadv_tvlv_container_ogm_append() builds a TVLV packet section from
the tvlv.container_list. The total size of this section is computed by
batadv_tvlv_container_list_size(), which sums the sizes of all registered
containers.

The return type and accumulator in batadv_tvlv_container_list_size() were
u16. If the accumulated size exceeds U16_MAX, the value wraps around,
causing the subsequent allocation in batadv_tvlv_container_ogm_append()
to be undersized. The memcpy-style copy that follows would then write
beyond the end of the allocated buffer, corrupting kernel memory.

Fix this by widening the return type of batadv_tvlv_container_list_size()
to size_t. In batadv_tvlv_container_ogm_append(), check the computed length
against U16_MAX before proceeding, and bail out as if the allocation had
failed when the limit is exceeded.

Cc: stable@kernel.org
Fixes: ef26157747d4 ("batman-adv: tvlv - basic infrastructure")
Reported-by: Yuan Tan <yuantan098@gmail.com>
Reported-by: Yifan Wu <yifanwucs@gmail.com>
Reported-by: Juefei Pu <tomapufckgml@gmail.com>
Reported-by: Xin Liu <bird@lzu.edu.cn>
Reviewed-by: Yuan Tan <yuantan098@gmail.com>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/tvlv.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/net/batman-adv/tvlv.c b/net/batman-adv/tvlv.c
index 46ed61dbf0879..cc6ac580c6208 100644
--- a/net/batman-adv/tvlv.c
+++ b/net/batman-adv/tvlv.c
@@ -13,6 +13,7 @@
 #include <linux/gfp.h>
 #include <linux/if_ether.h>
 #include <linux/kref.h>
+#include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/lockdep.h>
 #include <linux/netdevice.h>
@@ -160,10 +161,10 @@ batadv_tvlv_container_get(struct batadv_priv *bat_priv, u8 type, u8 version)
  *
  * Return: size of all currently registered tvlv containers in bytes.
  */
-static u16 batadv_tvlv_container_list_size(struct batadv_priv *bat_priv)
+static size_t batadv_tvlv_container_list_size(struct batadv_priv *bat_priv)
 {
 	struct batadv_tvlv_container *tvlv;
-	u16 tvlv_len = 0;
+	size_t tvlv_len = 0;
 
 	lockdep_assert_held(&bat_priv->tvlv.container_list_lock);
 
@@ -316,13 +317,17 @@ int batadv_tvlv_container_ogm_append(struct batadv_priv *bat_priv,
 {
 	struct batadv_tvlv_container *tvlv;
 	struct batadv_tvlv_hdr *tvlv_hdr;
-	u16 tvlv_value_len;
+	size_t tvlv_value_len;
 	void *tvlv_value;
 	int tvlv_len_ret;
 	bool ret;
 
 	spin_lock_bh(&bat_priv->tvlv.container_list_lock);
 	tvlv_value_len = batadv_tvlv_container_list_size(bat_priv);
+	if (tvlv_value_len > U16_MAX) {
+		tvlv_len_ret = -E2BIG;
+		goto end;
+	}
 
 	ret = batadv_tvlv_realloc_packet_buff(packet_buff, packet_buff_len,
 					      packet_min_len, tvlv_value_len);
-- 
2.47.3


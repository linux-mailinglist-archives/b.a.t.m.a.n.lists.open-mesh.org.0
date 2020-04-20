Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A471B0113
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Apr 2020 07:39:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 13E478015B;
	Mon, 20 Apr 2020 07:39:17 +0200 (CEST)
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.10])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E029D800DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Apr 2020 07:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-Id; bh=kUCGUPR2szUSoGME4rVvT/WsGE7O02byhpRwaI4bLIc=; b=w
	Qh9JKDFyEEhmQgJvt5V8IbYGb7H3dmrUJqGNKaDZ6x/DSNc6+GpYwWY99MBsmmL2
	u8XmJ4P4qBbeeOkgHaH6f1kAqp/Rq3ow0psY9cY849WS7PfuQ1CwREXNhKVUzESk
	cQ+VxnESOallUcCKVMgiK64Rhv2d/7qUjOCcOcfNrs=
Received: from localhost.localdomain (unknown [61.129.42.58])
	by app1 (Coremail) with SMTP id XAUFCgCHH3cyNZ1e8HEWAA--.213S3;
	Mon, 20 Apr 2020 13:37:55 +0800 (CST)
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] batman-adv: Fix refcnt leak in batadv_v_ogm_process
Date: Mon, 20 Apr 2020 13:37:20 +0800
Message-Id: <1587361040-83099-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XAUFCgCHH3cyNZ1e8HEWAA--.213S3
X-Coremail-Antispam: 1UD129KBjvJXoW7uF4UWry5uFW5Kry8tr1fWFg_yoW8Xr48pr
	4rKryYkrs5K3WUWa9Yy3ySyF48AFs7Xr17GayYyF15ArZFq3sak3yFgryY9Fy8ZFZak3yk
	XF1vgFW3ZFyDGFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBj14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
	JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUAVWUtwAv7VC2z280aVAFwI0_Cr0_Gr
	1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I
	648v4I1lFIxGxcIEc7CjxVA2Y2ka0xkIwI1lc2xSY4AK67AK6r4rMxAIw28IcxkI7VAKI4
	8JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xv
	wVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjx
	v20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20E
	Y4v20xvaj40_Zr0_Wr1UMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
	AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUXTmhUUUUU=
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587361084;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=kUCGUPR2szUSoGME4rVvT/WsGE7O02byhpRwaI4bLIc=;
	b=zZGr5qt6Dsz/Ok/e3UArl6W30IMoDVLxvS4yPW4dhwHRT82xFXYzfAS/bZ1CzoMn1AGb4N
	gX9afLS71baZoJjMQSTeUH30l1xNk+dwhvUVqdB9wCx9hfYtqNYB6VA1R6+M1Sbboveyz8
	ZOqFh1gKANNL5qW7acGTBRDrgLM/P9c=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587361084; a=rsa-sha256;
	cv=none;
	b=rt3vAtkHgQ+1Q45BrpUOx8Bag+qcPjGaM/HAPdz03bdqiOQF1gjGRTo1gcahIW7JRn02kE
	nUHqYEuMEMhU0LWx/+XGS4w6WRh4VACpQYvcqGZHJ49sobavXeMzojvXf3rBri1Uc7CoHY
	msUz7lnfwbzsdj7qqTUXaBbya40Xe5c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=fudan.edu.cn header.s=dkim header.b=w Qh9JKD;
	spf=pass (diktynna.open-mesh.org: domain of xiyuyang19@fudan.edu.cn designates 202.120.224.10 as permitted sender) smtp.mailfrom=xiyuyang19@fudan.edu.cn
X-MailFrom: xiyuyang19@fudan.edu.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LO7D27Q32I56XHWP7IRKKHGWRVINF7RZ
X-Message-ID-Hash: LO7D27Q32I56XHWP7IRKKHGWRVINF7RZ
X-Mailman-Approved-At: Mon, 20 Apr 2020 05:39:15 +0200
CC: yuanxzhang@fudan.edu.cn, kjlu@umn.edu, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LO7D27Q32I56XHWP7IRKKHGWRVINF7RZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

batadv_v_ogm_process() invokes batadv_hardif_neigh_get(), which returns
a reference of the neighbor object to "hardif_neigh" with increased
refcount.

When batadv_v_ogm_process() returns, "hardif_neigh" becomes invalid, so
the refcount should be decreased to keep refcount balanced.

The reference counting issue happens in one exception handling paths of
batadv_v_ogm_process(). When batadv_v_ogm_orig_get() fails to get the
orig node and returns NULL, the refcnt increased by
batadv_hardif_neigh_get() is not decreased, causing a refcnt leak.

Fix this issue by jumping to "out" label when batadv_v_ogm_orig_get()
fails to get the orig node.

Fixes: 9323158ef9f4 ("batman-adv: OGMv2 - implement originators logic")
Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 net/batman-adv/bat_v_ogm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 969466218999..80b87b1f4e3a 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -893,7 +893,7 @@ static void batadv_v_ogm_process(const struct sk_buff *skb, int ogm_offset,
 
 	orig_node = batadv_v_ogm_orig_get(bat_priv, ogm_packet->orig);
 	if (!orig_node)
-		return;
+		goto out;
 
 	neigh_node = batadv_neigh_node_get_or_create(orig_node, if_incoming,
 						     ethhdr->h_source);
-- 
2.7.4

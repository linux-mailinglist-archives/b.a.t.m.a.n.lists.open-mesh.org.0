Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2D426F59C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 18 Sep 2020 08:03:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A0DC1803EF;
	Fri, 18 Sep 2020 08:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600409028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=WwtSSdhnu6ZpEwZmUWuY9vinaOMaxB2Yt4J9vpXO6RQ=;
	b=XHLdJmAwQseQEAOqfm+1fEev0KGN5Hp7pYk0U9eS2UHJ0vE/Z1RQuRRAcXizx+SUKgJWkX
	8G7AS5DR4nvVI1k6bf9q/Fd8oQDgTPRSSAN7exgegmNVvjmcuDnDLz8hzxZjeOIqLgYEes
	kEl54/fqok/E18PD9UrE6EIDSW3Cru0=
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] batman-adv: Fix orig node refcnt leak when creating neigh node
Date: Fri, 18 Sep 2020 11:03:19 +0800
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Approved-At: Fri, 18 Sep 2020 06:03:47 +0200
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F4FXFQO6DPVDRTUDO5T3VQCQ6JMWTETY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160040902762.1255.6053670722640713794@diktynna.open-mesh.org>
From: "Xiyu Yang via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: yuanxzhang@fudan.edu.cn, kjlu@umn.edu, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
Content-Type: multipart/mixed; boundary="===============1153955411439264482=="

--===============1153955411439264482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1153955411439264482==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.73])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A2C0E80024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 18 Sep 2020 05:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-Id; bh=ombxFY+WtHzRTIMahcPDgE9Yl8BvDDN9V7y66FFXn+M=; b=J
	gNgaRnLpT6kT6Q/wzRgKmdsAot0xgW/JCCHEsvyQU93c6Bc/loQ//oIwdkFIc6BY
	OshXylupO2b1G1Hgs3Q3/m8eUJ3p4D7OSy3h98G9o3mevzl7ESwTz7LCMYagQ/Sb
	8d0tTMPb4wD9d9FBGfMJK6lYmiGa0ABKxLro9ZePVI=
Received: from localhost.localdomain (unknown [10.162.140.61])
	by app2 (Coremail) with SMTP id XQUFCgCnbAiJI2Rfrd9VBQ--.17995S3;
	Fri, 18 Sep 2020 11:03:37 +0800 (CST)
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
Subject: [PATCH] batman-adv: Fix orig node refcnt leak when creating neigh node
Date: Fri, 18 Sep 2020 11:03:19 +0800
Message-Id: <1600398200-8198-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XQUFCgCnbAiJI2Rfrd9VBQ--.17995S3
X-Coremail-Antispam: 1UD129KBjvJXoW7WrWfCr1DuFW5Aw1DJF43Wrg_yoW8WFWDpw
	1fK3y5Cr95t3WkGFWkt34ruryUJa1qyr4jyrZ5u3WayryDX3savr4F9r4UCF1rJFWkWryj
	qr1093ZIvF1DCFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26rxl
	6s0DM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
	YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVCm-wCF04k20xvY0x0EwIxGrwCFx2
	IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v2
	6r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67
	AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IY
	s7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbHa0DUUUUU==
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600398232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=ombxFY+WtHzRTIMahcPDgE9Yl8BvDDN9V7y66FFXn+M=;
	b=esGz9XyFGsWplTUWIQP29WWont2ZKlZIili1315+sWsnYdAPra0vOEs/0LwFGfASIi/7fT
	Adcx3x8nUBthTVvc3vbmnZSSRJ3SNOvnGNoFyk4qzD///Xyg/FLdqpM5xRX4jLX5qtlKp/
	Q0hutsrC3kt0SIVg+vOXyxlT33idY5o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600398232; a=rsa-sha256;
	cv=none;
	b=3Jp+J+OZ1H65RRBpkrLep6OGwq6YOvcxO6XkU3Hz0L8Fw1SAVRHNDX8N1r9PXhGSRgmFcK
	9/sn1rdjlEiEA3CkIbHoKroy/TXBWIQ52re+b7BGsdzQLtliKImEMuIun8AKnYoQh7t39H
	NfoUHuQKWR8mXTRsgt5UYYwxVQWccS0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=fudan.edu.cn header.s=dkim header.b=J gNgaRn;
	spf=pass (diktynna.open-mesh.org: domain of xiyuyang19@fudan.edu.cn designates 202.120.224.73 as permitted sender) smtp.mailfrom=xiyuyang19@fudan.edu.cn
X-MailFrom: xiyuyang19@fudan.edu.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: F4FXFQO6DPVDRTUDO5T3VQCQ6JMWTETY
X-Message-ID-Hash: F4FXFQO6DPVDRTUDO5T3VQCQ6JMWTETY
X-Mailman-Approved-At: Fri, 18 Sep 2020 06:03:47 +0200
CC: yuanxzhang@fudan.edu.cn, kjlu@umn.edu, Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/F4FXFQO6DPVDRTUDO5T3VQCQ6JMWTETY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

batadv_neigh_node_create() is used to create a neigh node object, whose
fields will be initialized with the specific object. When a new
reference of the specific object is created during the initialization,
its refcount should be increased.

However, when "neigh_node" object initializes its orig_node field with
the "orig_node" object, the function forgets to hold the refcount of the
"orig_node", causing a potential refcount leak and use-after-free issue
for the reason that the object can be freed in other places.

Fix this issue by increasing the refcount of orig_node object during the
initialization and adding corresponding batadv_orig_node_put() in
batadv_neigh_node_release().

Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 net/batman-adv/originator.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/originator.c b/net/batman-adv/originator.c
index 805d8969bdfb..d6c2296f8e35 100644
--- a/net/batman-adv/originator.c
+++ b/net/batman-adv/originator.c
@@ -306,6 +306,8 @@ static void batadv_neigh_node_release(struct kref *ref)
 
 	batadv_hardif_put(neigh_node->if_incoming);
 
+	batadv_orig_node_put(neigh_node->orig_node);
+
 	kfree_rcu(neigh_node, rcu);
 }
 
@@ -685,6 +687,7 @@ batadv_neigh_node_create(struct batadv_orig_node *orig_node,
 	kref_get(&hard_iface->refcount);
 	ether_addr_copy(neigh_node->addr, neigh_addr);
 	neigh_node->if_incoming = hard_iface;
+	kref_get(&orig_node->refcount);
 	neigh_node->orig_node = orig_node;
 	neigh_node->last_seen = jiffies;
 
-- 
2.7.4

--===============1153955411439264482==--

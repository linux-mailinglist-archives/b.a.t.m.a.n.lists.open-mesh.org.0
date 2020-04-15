Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F149F1A9726
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2020 10:44:31 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 072718040D;
	Wed, 15 Apr 2020 10:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586940270;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=fS3b1NIsyApm/hjEIjG8kW/sZn6zLISiCVQczil8TAY=;
	b=WkWL9iyUGXdE0w8wyhuuPJTkFnpdBT9cz73LIjsTeNmZKD46iR2JAMBbZvLSm6NkYDf1Z0
	oXfgQV2p+5riSKTuS6Y2EwqBpDA3qM/CcffKtdq41/LTrvtZAEXH6T1b4o+SGI/jC9722A
	zv5uR75o5MEmtY0LuASNDwAHC9NjmFk=
To: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 15 Apr 2020 16:31:50 +0800
X-Mailman-Approved-At: Wed, 15 Apr 2020 10:44:27 +0200
MIME-Version: 1.0
Message-ID: <mailman.4.1586940268.26087.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Xiyu Yang via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>,
 yuanxzhang@fudan.edu.cn, kjlu@umn.edu
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============6385949079557610721=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============6385949079557610721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6385949079557610721==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <xiyuyang19@fudan.edu.cn>
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.73])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 25FCE80179
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 10:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-Id; bh=OdG4JenZYuQ6SubtD8jAKOkRVrIevOaSd9jsn2zjJrw=; b=M
	kExDy6LJS0gvKwy6z3k4oYyr9K/y9RITg0sWY43l/+MuwuQZ9qbq+Km088wIscOw
	kvNjgtWMkSbRJZpCf+o3nmCJxYrRxuK7fSspXLesjdbPFELovEQltkQLiENkKErv
	dEyDD/lqGqoaS7TPBr8DULO4RetQj+FbtzGSXjEL8o=
Received: from localhost.localdomain (unknown [120.229.255.108])
	by app2 (Coremail) with SMTP id XQUFCgCnr4P9xpZeiEtZAA--.61S3;
	Wed, 15 Apr 2020 16:34:08 +0800 (CST)
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
Cc: yuanxzhang@fudan.edu.cn,
	kjlu@umn.edu,
	Xiyu Yang <xiyuyang19@fudan.edu.cn>,
	Xin Tan <tanxin.ctf@gmail.com>
Subject: [PATCH] batman-adv: Fix refcnt leak in batadv_show_throughput_override
Date: Wed, 15 Apr 2020 16:31:50 +0800
Message-Id: <1586939510-69461-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XQUFCgCnr4P9xpZeiEtZAA--.61S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Zw43KF45Cw17Cr43WFy7trb_yoW8GrWfpr
	Wjkr13Kr4vgw1DGwn0y3s8Wa4rAF43XFyUGF4rZ3WrArs5J3sayrySyFyjkr1UAFyrKw12
	qF4avF98AFyDCFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9Y14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26rxl
	6s0DM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
	YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4
	AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE
	17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMI
	IF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq
	3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCT
	nIWIevJa73UjIFyTuYvjfUOlksUUUUU
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586939654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=OdG4JenZYuQ6SubtD8jAKOkRVrIevOaSd9jsn2zjJrw=;
	b=w+Lfue+uiH4lLn4fd9wKsSXo4wmBXgervYK7aka0IMFjz/ut6XKOQPvZuueB+QtHBrGyMX
	yB68GSZ7AM47QVDDu1NvGkh1ud8/jDtMOlNycnCZaAVup7yBBVJNlDlvuWwco1jOspRKc5
	vXGGk9mOccR4b7P32ZE+mV0aMRA9mCs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586939654; a=rsa-sha256;
	cv=none;
	b=MZutLlH3Eiu8wZjtUnOk3Bk7xTneqKxHXGOAqJqW3ZX80coLxqX5rXvtytH5MHRq5RJXV0
	k4kJmrQ512Dlreb9FydJodg/jxtlZ0Lh4RkUm5gjk0ikjYsSTR15vHvwgzSbxLiGcVG3bJ
	Ucc0ODEt62K6L62HINdpvyZ1dZ5gK9M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=fudan.edu.cn header.s=dkim header.b=M kExDy6;
	spf=pass (diktynna.open-mesh.org: domain of xiyuyang19@fudan.edu.cn designates 202.120.224.73 as permitted sender) smtp.mailfrom=xiyuyang19@fudan.edu.cn
X-Mailman-Approved-At: Wed, 15 Apr 2020 10:44:27 +0200

batadv_show_throughput_override() invokes batadv_hardif_get_by_netdev(),
which gets a batadv_hard_iface object from net_dev with increased refcnt
and its reference is assigned to a local pointer 'hard_iface'.

When batadv_show_throughput_override() returns, "hard_iface" becomes
invalid, so the refcount should be decreased to keep refcount balanced.

The issue happens in the normal path of
batadv_show_throughput_override(), which forgets to decrease the refcnt
increased by batadv_hardif_get_by_netdev() before the function returns,
causing a refcnt leak.

Fix this issue by calling batadv_hardif_put() before the
batadv_show_throughput_override() returns in the normal path.

Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 net/batman-adv/sysfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index 97736696d042..0f962dcd239e 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1190,6 +1190,7 @@ static ssize_t batadv_show_throughput_override(struct kobject *kobj,
 
 	tp_override = atomic_read(&hard_iface->bat_v.throughput_override);
 
+	batadv_hardif_put(hard_iface);
 	return sprintf(buff, "%u.%u MBit\n", tp_override / 10,
 		       tp_override % 10);
 }
-- 
2.7.4


--===============6385949079557610721==--

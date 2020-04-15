Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F25631A9727
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2020 10:44:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BAC7581028;
	Wed, 15 Apr 2020 10:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586940280;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=by6jp5w4F0whvfpQgAi5iE+mdh1JlvY+1sijwshD3oc=;
	b=tTiAkAvwWqE41RPXxkyeTqVOVtvfKTtjkL01xi5Q32FpsqtfHT2yl/08S9w2/eNka8NAbw
	Pot3qA91ehb0yv9QDs2uobt2l0vArNcjWpY2dkiY3hpeojvndYICqVfVbc5BofGTPhx5TI
	0+KOI4kScjIVJX8j6CmH9hkEwlrJfaw=
To: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 15 Apr 2020 16:35:21 +0800
X-Mailman-Approved-At: Wed, 15 Apr 2020 10:44:27 +0200
MIME-Version: 1.0
Message-ID: <mailman.5.1586940268.26087.b.a.t.m.a.n@lists.open-mesh.org>
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
Content-Type: multipart/mixed; boundary="===============4260852696637739812=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============4260852696637739812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4260852696637739812==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <xiyuyang19@fudan.edu.cn>
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.10])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4E3FA800A7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 10:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-Id; bh=VMnYF5TnPGxJ5+udwsvMtzst56MUMS4Z9fbliVTfT90=; b=2
	FKqfOEKFliU3EL8KOJeXvxfQOqrjpFqxPhPDoo2jGJS/0xvhDEBAimJJ/UAuS5ln
	4eQ12SqJkAT+Bq9tXbz/7Kd66NOiyS44jI7wg2KA58LWMXfKnEqUYOLyT0GhAqdU
	//LZpjElaZSp0LZp1rVFJRoa0tGHf+utMA5VAwkc9c=
Received: from localhost.localdomain (unknown [120.229.255.108])
	by app1 (Coremail) with SMTP id XAUFCgCXn_9nx5Ze5XtFAA--.16484S3;
	Wed, 15 Apr 2020 16:35:52 +0800 (CST)
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
Subject: [PATCH] batman-adv: Fix refcnt leak in batadv_store_throughput_override
Date: Wed, 15 Apr 2020 16:35:21 +0800
Message-Id: <1586939721-69731-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XAUFCgCXn_9nx5Ze5XtFAA--.16484S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Zw43KF45Cw17Cr4xtF4fKrg_yoW8GFWDpr
	WYkwnxGr4vg3WDG3Z8t345Wa15AFsrJFWUGFWrCr15urs3GwnYyryrtFyYgF1UAayrKw1v
	gF4avFZxAFyDCFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9K14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26rxl
	6s0DM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r106r15McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
	YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW8ZwCF04k20xvY0x0EwIxGrw
	CFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE
	14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2
	IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxK
	x2IYs7xG6Fyj6rWUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14
	v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUYmhFUUUUU
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586939756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:dkim-signature; bh=VMnYF5TnPGxJ5+udwsvMtzst56MUMS4Z9fbliVTfT90=;
	b=L6PzhGcCggW+hqnTVixPF18EOiKaT+WrVuRgJ/1h0PIAANhGfllANr3vY6JNZOecT2pU4a
	sHruPH9IdJNGUe5AH9eaoCFP7dzGtfvGRDA+1T+J1jI3xg8j9Uoa3K+ax50rzeQ41nc9RC
	MMOFSletLvjwRBoXyfuM3s5C/iFmd1M=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586939756; a=rsa-sha256;
	cv=none;
	b=rWc+U4WPXiFox0cFLYKC0iyEICs1UUgNNBtH9Y4qLa1OOhQOa83nrgrkvzekjPKcg5DT2q
	22zt/PnwRV/DMSni6EGDiQL15nyMpVAO9g+I6Rqo2bZ0GrY4lOvk5EdCitLLMha/L7i2CL
	dh6TDyi9cEglLgXYBdu2JSnssPUt+SQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=fudan.edu.cn header.s=dkim header.b=2 FKqfOE;
	spf=pass (diktynna.open-mesh.org: domain of xiyuyang19@fudan.edu.cn designates 202.120.224.10 as permitted sender) smtp.mailfrom=xiyuyang19@fudan.edu.cn
X-Mailman-Approved-At: Wed, 15 Apr 2020 10:44:27 +0200

batadv_show_throughput_override() invokes batadv_hardif_get_by_netdev(),
which gets a batadv_hard_iface object from net_dev with increased refcnt
and its reference is assigned to a local pointer 'hard_iface'.

When batadv_store_throughput_override() returns, "hard_iface" becomes
invalid, so the refcount should be decreased to keep refcount balanced.

The issue happens in one error path of
batadv_store_throughput_override(). When batadv_parse_throughput()
returns NULL, the refcnt increased by batadv_hardif_get_by_netdev() is
not decreased, causing a refcnt leak.

Fix this issue by jumping to "out" label when batadv_parse_throughput()
returns NULL.

Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 net/batman-adv/sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/sysfs.c b/net/batman-adv/sysfs.c
index c45962d8527b..97736696d042 100644
--- a/net/batman-adv/sysfs.c
+++ b/net/batman-adv/sysfs.c
@@ -1150,7 +1150,7 @@ static ssize_t batadv_store_throughput_override(struct kobject *kobj,
 	ret = batadv_parse_throughput(net_dev, buff, "throughput_override",
 				      &tp_override);
 	if (!ret)
-		return count;
+		goto out;
 
 	old_tp_override = atomic_read(&hard_iface->bat_v.throughput_override);
 	if (old_tp_override == tp_override)
-- 
2.7.4


--===============4260852696637739812==--

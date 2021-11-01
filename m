Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5CB441456
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  1 Nov 2021 08:47:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A80EA80BED;
	Mon,  1 Nov 2021 08:47:20 +0100 (CET)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 15345807E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  1 Nov 2021 05:01:18 +0100 (CET)
Received: by mail-pf1-x433.google.com with SMTP id h74so1177493pfe.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 Oct 2021 21:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j1zj81YWFTCZDWmrdom1kjokPFz9peyCsLfXqGwKeAM=;
        b=oEXgbZE9MHRoqaP8v3ANr6PRFNf293gF+YOPtvpe51oK0zkfO4HvXRp+/o3kEjQhfw
         QZV+/4H8kYbKEnoRBNn45OFYS9sAdhCClHzuOV3J7YXgAN+Z18pkVgCqCjRVE2v+SPMu
         cdiYvBzs8tdXVpvVbN/UaP/HPIPrY/apU4kGgyX2epjG0BstHdoAxNAM4V4iumXO+AUm
         /JJJhrUVhwSKa62zb/TejxjvYTBFkwi6r7rBWD5bVFAdVpZu3vPaZJzkjX3i/SYg7tPQ
         GR8iOV3KKGoJR9zS20atQ46TCZLj+K9DA+6S+l4Qa85eL10vrhLbKsFPbiKNG9imIlaa
         WYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j1zj81YWFTCZDWmrdom1kjokPFz9peyCsLfXqGwKeAM=;
        b=Td7k8RMaPDQFYubzTjhkaNRYkh0Z0zD78uCZLJs7SuhfURxf9X/K7S+AAD21278bJc
         g5equ2TXaj3kaaPJejcqu2i6h1CTp0zTRI1SnHgMermbfON/5WKG9od0oqGNgGuG5AY4
         IzmBE+/pXAW3sd6g4dHT+Gne1S40S/Vf0FB0MSVni90sw2V8OfHymNVuh/v91X+1Wkw+
         JqAeO20daEr6JKBU0xbJLIfw7IYQApdUUXcQhKI0FM9bUH+x4Nqgcm7NK4x0elyeZFUP
         u6rI48QQWG5Tl9GQwfPDFK4uiQOeOGsQj/27rRFLEmhQOkxf0GWgSthmvwNvuMkFIPBY
         iwDA==
X-Gm-Message-State: AOAM532b74IEuqvCIQO9w/9SeK6ddy8c/M/4JUax1UxAZULRYJvwZ+9L
	K+KFbAbyPYVeraMvJsM5/RU=
X-Google-Smtp-Source: ABdhPJx3viV9qB1TaG/SmbmbPFCaZuGtMQWOEaiqw5HZpi1nO9LoS6YyMIJVdscQCooQtte/iK3Haw==
X-Received: by 2002:a63:e216:: with SMTP id q22mr19590520pgh.3.1635739277100;
        Sun, 31 Oct 2021 21:01:17 -0700 (PDT)
Received: from localhost.localdomain ([94.177.118.117])
        by smtp.gmail.com with ESMTPSA id a20sm13387682pff.57.2021.10.31.21.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 21:01:16 -0700 (PDT)
From: Dongliang Mu <mudongliangabcd@gmail.com>
To: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH] net: batman-adv: fix warning in batadv_v_ogm_free
Date: Mon,  1 Nov 2021 12:01:02 +0800
Message-Id: <20211101040103.388646-1-mudongliangabcd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635739279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=j1zj81YWFTCZDWmrdom1kjokPFz9peyCsLfXqGwKeAM=;
	b=tDkPpj5AEYgFK+n6qjoACOlkudwpDXkMFFbYaRUewONEgq4noJvOL0JiG2yd3tJ/R0jAb4
	wZDowhZ+F/6u+Zgb/T92EORq3WEBeA6h2NKpQt60vaxHduENSqckqUj/oJz6h8qBPSVNUE
	kzyo3Cr/sznNjQL/or68UJ3Ph+GbNjs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=oEXgbZE9;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of mudongliangabcd@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mudongliangabcd@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635739279; a=rsa-sha256;
	cv=none;
	b=q90aRcWxdCDNf73T7THqQESPLWbUDReC1wgllMC1YyvX6U7aCeMem7bk3MsBo1rvJZ4qXI
	bHeT6ATXk/xFNchwKQ20yILThOHVfk+0DPhF6zx/SnejqBxxz7SvVGeLMZZkKxbEgeoU8Z
	htvNHdhzi4hrQqUj4+LMRU2U1syU1yc=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: mudongliangabcd@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6CX2J7N6PZXX376ACI2UYKTMS222CR3L
X-Message-ID-Hash: 6CX2J7N6PZXX376ACI2UYKTMS222CR3L
X-Mailman-Approved-At: Mon, 01 Nov 2021 07:47:18 +0100
CC: Dongliang Mu <mudongliangabcd@gmail.com>, Antonio Quartulli <antonio@open-mesh.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6CX2J7N6PZXX376ACI2UYKTMS222CR3L/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If batadv_v_ogm_init encounters a memory failure, the fields ogm_wq,
ogm_buff_mutex and etc. are not initialized. Then the control flow goes
to batadv_v_ogm_free due to the error handling code. As a result, the
API invocation "cancel_delayed_work_sync" and "mutex_lock" will cause
many issues. The crashing stack trace is as follows:

Call Trace:
 __cancel_work_timer+0x1c9/0x280 kernel/workqueue.c:3170
 batadv_v_ogm_free+0x1d/0x50 net/batman-adv/bat_v_ogm.c:1076
 batadv_mesh_free+0x35/0xa0 net/batman-adv/main.c:244
 batadv_mesh_init+0x22a/0x240 net/batman-adv/main.c:226
 batadv_softif_init_late+0x1ad/0x240 net/batman-adv/soft-interface.c:804
 register_netdevice+0x15d/0x810 net/core/dev.c:10229

Fixes: a8d23cbbf6c9 ("batman-adv: Avoid free/alloc race when handling OGM=
2 buffer")
Fixes: 0da0035942d4 ("batman-adv: OGMv2 - add basic infrastructure")
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
---
 net/batman-adv/bat_v_ogm.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 1d750f3cb2e4..2f3ecbcec58d 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -1044,6 +1044,13 @@ int batadv_v_ogm_init(struct batadv_priv *bat_priv=
)
 	unsigned char *ogm_buff;
 	u32 random_seqno;
=20
+	/* randomize initial seqno to avoid collision */
+	get_random_bytes(&random_seqno, sizeof(random_seqno));
+	atomic_set(&bat_priv->bat_v.ogm_seqno, random_seqno);
+	INIT_DELAYED_WORK(&bat_priv->bat_v.ogm_wq, batadv_v_ogm_send);
+
+	mutex_init(&bat_priv->bat_v.ogm_buff_mutex);
+
 	bat_priv->bat_v.ogm_buff_len =3D BATADV_OGM2_HLEN;
 	ogm_buff =3D kzalloc(bat_priv->bat_v.ogm_buff_len, GFP_ATOMIC);
 	if (!ogm_buff)
@@ -1057,13 +1064,6 @@ int batadv_v_ogm_init(struct batadv_priv *bat_priv=
)
 	ogm_packet->flags =3D BATADV_NO_FLAGS;
 	ogm_packet->throughput =3D htonl(BATADV_THROUGHPUT_MAX_VALUE);
=20
-	/* randomize initial seqno to avoid collision */
-	get_random_bytes(&random_seqno, sizeof(random_seqno));
-	atomic_set(&bat_priv->bat_v.ogm_seqno, random_seqno);
-	INIT_DELAYED_WORK(&bat_priv->bat_v.ogm_wq, batadv_v_ogm_send);
-
-	mutex_init(&bat_priv->bat_v.ogm_buff_mutex);
-
 	return 0;
 }
=20
--=20
2.25.1

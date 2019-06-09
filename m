Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 159803A4AC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 12:19:50 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id E211C81B10;
	Sun,  9 Jun 2019 12:19:44 +0200 (CEST)
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by open-mesh.org (Postfix) with ESMTPS id 9934E80559
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 12:19:41 +0200 (CEST)
Received: by mail-wr1-x442.google.com with SMTP id f9so6226576wre.12
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 09 Jun 2019 03:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=measite-de.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sWNktgib+NZMOE87hgdiLg2IFDO4afeYaZHiHo/bews=;
 b=hdVtp2PyxAckDIEHvaFpbW+KqSxnMIsC7gsGHQgTY4YbrLhJn+kP7uBXhKGozTVFfA
 VZvr5MWfLwOONTTn0L6d2HpuojkiE2Y0fnXxPkZ7nq6DNGuPhd1ML5TDTavztP+U+bMs
 zfvtQFGslAhXuRHBjVqgnDqJTgP18jgWPTQLF4IR0AQuYxgyp+R8xKP4fQSO6+ZPWWGc
 tsPHo1wGm77Y8CVAygsJU+TeRrz5WXC7BH0GcWv130Ia2ynLUju28sX4HUeFu8BjBEt+
 Aj8VhPsRlCN2E7Lq8hzEUYrL9F510nVzSNJQMjKGKRH39epeZ1VSGmHeuNoobgSPA0zd
 6R0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sWNktgib+NZMOE87hgdiLg2IFDO4afeYaZHiHo/bews=;
 b=aF3NXvuOXvSEj9sPsOpc98KZEcytRKGR8VNqqvrVMa4nl2iVDBnE36+K2IiXz2bupl
 S90C2gnG3qXxf/9+ItqZY/cQkSXxRT/1v0B26UVIWCeyOHN3S8yR4lSK57lZXs7LTWf9
 eTYAOfeL2FisYp9JMsCOF4me4OD0mhgARQ5f5sf0piSzyP+BE2E0y8SMVSknaznJXhOg
 FtCfQXLLsG7Nz/Yq3Ry266On2S9EkpR6FaGZPK0o37mniiHzQ+WoNkuH0sYg5sd2M91K
 muRtajcRc9lQKoShHEAf8yH2v+NVJlTXf8f1ZY2AhPeKo770fBa+cWNw4UErwYE6f6NM
 5VgQ==
X-Gm-Message-State: APjAAAVxWRG42nmxKvZhFY7ANnQwZmT81os++ZD/DbgNtdjEVFh2gSKC
 E1a6/71vY9Hnq3vVEMlTsFc+jAlSXQMedw==
X-Google-Smtp-Source: APXvYqx6AWId7uBh2caoc/YPgeVnQ/FZ7ObhYOZt28VgviqaxRVxk9sRsOUdmXDgoYBOdHZyshzSpg==
X-Received: by 2002:a5d:4cc3:: with SMTP id c3mr14255248wrt.259.1560075580942; 
 Sun, 09 Jun 2019 03:19:40 -0700 (PDT)
Received: from mactel.dhcp.home.measite.de (p4FCA28A2.dip0.t-ipconnect.de.
 [79.202.40.162])
 by smtp.gmail.com with ESMTPSA id u12sm6686371wrt.13.2019.06.09.03.19.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 03:19:40 -0700 (PDT)
From: =?UTF-8?q?Ren=C3=A9=20Treffer?= <treffer@measite.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
Date: Sun,  9 Jun 2019 12:19:22 +0200
Message-Id: <20190609101922.2366-1-treffer@measite.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

From: rtreffer <treffer@measite.de>

Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
estimated throughput. Setting a better estimate than the default 1MBit
makes these devices work well with BATMAN V.

Signed-off-by: René Treffer <treffer@measite.de>
---
 net/batman-adv/bat_v_elp.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/net/batman-adv/bat_v_elp.c b/net/batman-adv/bat_v_elp.c
index 2614a9ca..ce3b52f1 100644
--- a/net/batman-adv/bat_v_elp.c
+++ b/net/batman-adv/bat_v_elp.c
@@ -68,7 +68,7 @@ static u32 batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh)
 	struct ethtool_link_ksettings link_settings;
 	struct net_device *real_netdev;
 	struct station_info sinfo;
-	u32 throughput;
+	u32 throughput, rx, tx;
 	int ret;
 
 	/* if the user specified a customised value for this interface, then
@@ -107,10 +107,25 @@ static u32 batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh)
 		}
 		if (ret)
 			goto default_throughput;
-		if (!(sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT)))
-			goto default_throughput;
 
-		return sinfo.expected_throughput / 100;
+		if (sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT)) {
+			return sinfo.expected_throughput / 100;
+		}
+
+		// try to estimate en expected throughput based on reported rx/tx rates
+		// 1/3 of tx or 1/3 of the average of rx and tx, whichever is smaller
+		if (sinfo.filled & BIT(NL80211_STA_INFO_TX_BITRATE)) {
+			tx = cfg80211_calculate_bitrate(&sinfo.txrate);
+			if (sinfo.filled & BIT(NL80211_STA_INFO_RX_BITRATE)) {
+				rx = cfg80211_calculate_bitrate(&sinfo.rxrate);
+				if (rx < tx) {
+					return (rx + tx) / 6;
+				}
+			}
+			return tx / 3;
+		}
+
+		goto default_throughput;
 	}
 
 	/* if not a wifi interface, check if this device provides data via
-- 
2.20.1


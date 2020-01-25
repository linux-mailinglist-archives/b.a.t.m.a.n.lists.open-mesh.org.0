Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C27D14971D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 25 Jan 2020 19:17:30 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 62F52807FC;
	Sat, 25 Jan 2020 19:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579976245;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=C+5tOLm5YNKq/8J+fn74nRIfWlPgDPCKJoY+4U0CvkY=;
	b=oJ5SEndSIXzNJmHpPXwltvv6Zv82ewKNwlqaShJP5PO7kncIouPiEQHvO+vzUmxCOszxIP
	JnJ/Ol8xlnXVzR8TBqQsHUMOqDUhenEYSkOBX+tIVKxak6NR8EfX+IRzjqZBB5td6/gC+6
	7svkpz7ztBUP6egznjUCLJ1bGJfpKfk=
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 25 Jan 2020 13:07:45 -0500
MIME-Version: 1.0
Message-ID: <mailman.3.1579976243.12536.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Felix Kaechele <felix@kaechele.ca>
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
Content-Type: multipart/mixed; boundary="===============9134832732538258635=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============9134832732538258635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9134832732538258635==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <felix@kaechele.ca>
Received: from mail.kaechele.ca (apollo.kaechele.ca [54.39.219.105])
	by open-mesh.org (Postfix) with ESMTPS id 6183480025
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 25 Jan 2020 19:17:21 +0100 (CET)
Received: from authenticated-user (unknown [::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: felix@fetzig.org)
	by mail.kaechele.ca (Postfix) with ESMTPSA id DE838191D6D3;
	Sat, 25 Jan 2020 13:08:05 -0500 (EST)
From: Felix Kaechele <felix@kaechele.ca>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: compat: Fix build on RHEL 8.1 and clones
Date: Sat, 25 Jan 2020 13:07:45 -0500
Message-Id: <20200125180745.19517-1-felix@kaechele.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579976241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KY3D7PckLbE7AhPB679AVVjRDvOFQTKPLTXj/9T7Br0=;
	b=en7X/LK0ZyGRatUC5TJMWMC4AwCJVgiC6EvjI1yAMG3+uMy4IODW7H/y1yZzPVsEpm3tsr
	0AGqLaBwGv9z0+EjXbB1VDXA9hYtBaXoWd250LfECshrd9FHy9VjEGIvreIcO39xsz5Ocd
	UlJGi7IYcWEDFdnqXHYwbboxTNHXV7I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579976241; a=rsa-sha256;
	cv=none;
	b=kjXcdkuLN0jsw/nkCgOVJBdVVlOZdbREjNCBlnIbhlK+GaYHE9uVeEPo8HsH2wwsYL3kQr
	ucn9L8fkMuWprPce7h6lGWo/J+K8AQzZJxFQfAzQYVOlRf2gl2X93/lzeZEjd6YBe+TLG4
	VOs97sW9MxhtsIFitkQ09t6e7S5Pdcc=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=none;
	spf=pass (open-mesh.org: domain of felix@kaechele.ca designates 54.39.219.105 as permitted sender) smtp.mailfrom=felix@kaechele.ca

RHEL 8.1 backported some fixes from newer kernels so we need to treat it's 4.18
kernel as if it were a newer kernel in some cases.

Signed-off-by: Felix Kaechele <felix@kaechele.ca>
---
 compat-include/linux/igmp.h    | 2 +-
 compat-include/linux/uaccess.h | 2 +-
 compat-include/net/addrconf.h  | 2 +-
 compat.h                       | 6 ++++++
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/compat-include/linux/igmp.h b/compat-include/linux/igmp.h
index ecedc915..60606f05 100644
--- a/compat-include/linux/igmp.h
+++ b/compat-include/linux/igmp.h
@@ -17,7 +17,7 @@
 
 int ip_mc_check_igmp(struct sk_buff *skb);
 
-#elif LINUX_VERSION_CODE < KERNEL_VERSION(5, 1, 0)
+#elif LINUX_VERSION_CODE < KERNEL_VERSION(5, 1, 0) && !defined(RHEL_81)
 
 static inline int batadv_ip_mc_check_igmp(struct sk_buff *skb)
 {
diff --git a/compat-include/linux/uaccess.h b/compat-include/linux/uaccess.h
index e81ed805..5a337441 100644
--- a/compat-include/linux/uaccess.h
+++ b/compat-include/linux/uaccess.h
@@ -13,7 +13,7 @@
 #include <linux/version.h>
 #include_next <linux/uaccess.h>
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0)
+#if LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0) && !defined(RHEL_81)
 
 static inline int batadv_access_ok(int type, const void __user *p,
 				   unsigned long size)
diff --git a/compat-include/net/addrconf.h b/compat-include/net/addrconf.h
index b826ee95..5ab19043 100644
--- a/compat-include/net/addrconf.h
+++ b/compat-include/net/addrconf.h
@@ -17,7 +17,7 @@
 
 int ipv6_mc_check_mld(struct sk_buff *skb);
 
-#elif LINUX_VERSION_CODE < KERNEL_VERSION(5, 1, 0)
+#elif LINUX_VERSION_CODE < KERNEL_VERSION(5, 1, 0) && !defined(RHEL_81)
 
 static inline int batadv_ipv6_mc_check_mld(struct sk_buff *skb)
 {
diff --git a/compat.h b/compat.h
index 980fca9f..7f4a5ee4 100644
--- a/compat.h
+++ b/compat.h
@@ -44,6 +44,12 @@
 
 #endif /* < KERNEL_VERSION(4, 15, 0) */
 
+#ifdef RHEL_RELEASE_CODE
+# if RHEL_RELEASE_CODE >= RHEL_RELEASE_VERSION(8, 1)
+#  define RHEL_81
+# endif
+#endif /* RHEL_RELEASE_CODE */
+
 #endif /* __KERNEL__ */
 
 #endif /* _NET_BATMAN_ADV_COMPAT_H_ */
-- 
2.24.1


--===============9134832732538258635==--

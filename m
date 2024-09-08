Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D0B9709C9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 Sep 2024 22:46:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5449583F13
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  8 Sep 2024 22:46:56 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1725828416;
 b=NqfJuIDr62sEJVC+61JDV/sFkFBj6EAjKx8nmrrw2XBlySyP1Ow1w36KL39ocUhFeIy/S
 mLLhdXF9kUayaepnuiWZuNRs99fAByOjGjcSfzlSPt1qfMeDxpfsbVzeRzV1VFSp8WR5O+R
 677BUXyoulV8ghCt8c104VbrZddmx4U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1725828416; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wwBuwDvFy5pmHsYMskSUHnL+algtxOy1KMz/ZYNT+78=;
 b=HVM/cmWmfTdOO5Lgn8EJ3Gg33pLDa7qWSOBqVza24kkmtXBePG/eGoB2XuZjP5xRYOVMI
 EY8isvUkxY3p/NG5t/q24PdbVXZsKPIbBmbfzYMEaImpGb00vrQYxk4GHRzL7xWJWze87G/
 0oZUYK0Ab4GF+4oJDpeOwpei5PwnBCA=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 85D3F81C88
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  8 Sep 2024 22:46:05 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [PATCH] alfred: add more verbose error message
From: noahbpeterson1997@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 08 Sep 2024 20:46:05 -0000
Message-ID: <172582836553.965.8382120135752040068@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: Z3CR5ESW6UTLXYFUOBVVAMXTCWNJRCUU
X-Message-ID-Hash: Z3CR5ESW6UTLXYFUOBVVAMXTCWNJRCUU
X-MailFrom: noahbpeterson1997@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z3CR5ESW6UTLXYFUOBVVAMXTCWNJRCUU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

There is an issue with some Linux distributions (Raspian) where network interfaces are up and
active, but do not have the correct link-local address. This condition is now checked and
output to stderr to better help users troubleshoot this issue.

Signed-off-by: Noah Peterson noahbpeterson1997@gmail.com
---
netsock.c | 18 +++++++++++++++++-
1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/netsock.c b/netsock.c
index feed21d..04f95c7 100644
--- a/netsock.c
+++ b/netsock.c
@@ -322,7 +322,23 @@ static int netsock_open(struct globals *globals, struct interface *interface)
        enable_raw_bind_capability(0);
 
        if (bind(sock, (struct sockaddr *)&sin6, sizeof(sin6)) < 0) {
-               perror("can't bind");
+               if (errno == EADDRNOTAVAIL)
+                       fprintf(stderr, "can't bind to interface %s; "
+                               "expected ipv6 address not found: "
+                               "%02x%02x::%02x%02x:%02x%02x:%02x%02x:%02x%02x\n",
+                               interface->interface,
+                               (int)interface->address.ipv6.s6_addr[0],
+                               (int)interface->address.ipv6.s6_addr[1],
+                               (int)interface->address.ipv6.s6_addr[8],
+                               (int)interface->address.ipv6.s6_addr[9],
+                               (int)interface->address.ipv6.s6_addr[10],
+                               (int)interface->address.ipv6.s6_addr[11],
+                               (int)interface->address.ipv6.s6_addr[12],
+                               (int)interface->address.ipv6.s6_addr[13],
+                               (int)interface->address.ipv6.s6_addr[14],
+                               (int)interface->address.ipv6.s6_addr[15]);
+               else
+                       perror("can't bind");
                goto err;
        }

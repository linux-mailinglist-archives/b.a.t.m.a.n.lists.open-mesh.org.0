Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2D358A0E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Aug 2022 20:52:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7CF2383EB2;
	Thu,  4 Aug 2022 20:52:37 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83F4383EB2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Aug 2022 20:52:35 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 3/3] alfred: mismaching declarations of is_valid_ether_addr()
Date: Thu,  4 Aug 2022 20:52:12 +0200
Message-Id: <20220804185212.3074514-3-mareklindner@neomailbox.ch>
In-Reply-To: <20220804185212.3074514-1-mareklindner@neomailbox.ch>
References: <20220804185212.3074514-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1659639155; a=rsa-sha256;
	cv=none;
	b=W8QFEWMwf92vhzZqK/JejGXazBP1Os3PBmCiukr9YAcY7Gebw2vVhdmwQnQJ1hGX6+OT2k
	ydwjUxKd/YxeF8pjoc8sf0pBdTPKUis5dpahZ+ZD67+ozG9HRnl7mzEdLs9Lz4v4adL0Zp
	34C7wOGzaiI+AI/+VcvgelqsjRX21cA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1659639155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=37EblC0nWKXTYOQVCa6moOu7y6YVe4yTZZ/qjNydas8=;
	b=FsW2xQhRS11cdsjyqLX7SuQyhqnHA2VTUBXV+0S/mJ3K4uE6wSIt7N/c1Q91n4nqpZSFWc
	WZJf2bpLaHWDdGpgYukKNYXoSsIljp+hDmn1+3XY+959wGNPYcVV4z8X2ARbE1qbDEaGkK
	91oLf8S348ObCrhKkcItEhtB7e3S3jo=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HSKJW3NMZT7C4FSTJRYFI4N4SICM2UWS
X-Message-ID-Hash: HSKJW3NMZT7C4FSTJRYFI4N4SICM2UWS
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HSKJW3NMZT7C4FSTJRYFI4N4SICM2UWS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

util.c:57:34: warning: argument 1 of type =E2=80=98uint8_t[6]=E2=80=99
   {aka =E2=80=98unsigned char[6]=E2=80=99} with mismatched bound [-Warra=
y-parameter=3D]
   57 | bool is_valid_ether_addr(uint8_t addr[ETH_ALEN])
      |                          ~~~~~~~~^~~~~~~~~~~~~~
In file included from util.c:20:
alfred.h:231:35: note: previously declared as =E2=80=98uint8_t *=E2=80=99
  {aka =E2=80=98unsigned char *=E2=80=99}
  231 | bool is_valid_ether_addr(uint8_t *addr);
      |                          ~~~~~~~~~^~~~

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 alfred.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/alfred.h b/alfred.h
index 6fb57ce..97f0093 100644
--- a/alfred.h
+++ b/alfred.h
@@ -228,7 +228,7 @@ int time_diff(struct timespec *tv1, struct timespec *=
tv2,
 	      struct timespec *tvdiff);
 void time_random_seed(void);
 uint16_t get_random_id(void);
-bool is_valid_ether_addr(uint8_t *addr);
+bool is_valid_ether_addr(uint8_t addr[ETH_ALEN]);
 bool is_iface_disabled(char *iface);
 int ipv4_arp_request(struct interface *interface, const alfred_addr *add=
r,
 		     struct ether_addr *mac);
--=20
2.36.1

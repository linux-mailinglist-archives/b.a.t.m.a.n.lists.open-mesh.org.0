Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ABA59ABD6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 20 Aug 2022 08:55:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 20F8180218;
	Sat, 20 Aug 2022 08:55:08 +0200 (CEST)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1136B80218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 20 Aug 2022 05:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660965927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rCdaW8VW9KVhf4KlGQHWkOq32wI36GjplhXzdCZm9VA=;
	b=dlEoL5Ulw165BQWDDzXWLscla1pyww+5Zt8GgOGgXuv9BIc45sJPeISkiIyJSdrlOWZNXA
	MPkvNpoJGj2ZQTucSiuuWFdNZF8H4f0LgNeheMlCso85wYX4GhOuhZOcMHjJIevdTfs1Bw
	eLKfNZcLmJrCJRfUuNdOyTD65K22oL8=
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-370-OheWlbqyMcGw_Ih-ux2hSA-1; Fri, 19 Aug 2022 23:25:25 -0400
X-MC-Unique: OheWlbqyMcGw_Ih-ux2hSA-1
Received: by mail-pj1-f72.google.com with SMTP id kb4-20020a17090ae7c400b001f783657496so5822836pjb.6
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 19 Aug 2022 20:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=rCdaW8VW9KVhf4KlGQHWkOq32wI36GjplhXzdCZm9VA=;
        b=7x5vslkXa4sl9QBp/QHEIzdb2RDGB1iYoO5EpqkXutvuHEUih4Lfeo//HDqokXklfp
         drJrpiATwmwkzxFoXkSLR6YZYo9zB6bl9MMkLmGcLKU1yqsGU7qF/nW18PLpjiVZ90wU
         xin0gz3ipqZ6tHEYaRbDsJGKFACkUr4ujAy7pw/YJeWjSDwrLZl5VnNp7lqA3d1xLRmq
         xbtY4S59EW40Al3N/4V4jeGwzFmDTP62NXXH7vXwk3oiBi9AkTN9MDY5cpNVwTOfFU1z
         662T4dMjm8HRbmJlRjwoG9UQ/BD5UcTzxlG37WhT/lKQNsjvwZ1lRRAiOKUSMCxfxni1
         QJCA==
X-Gm-Message-State: ACgBeo08w+Neq6TqXUZql78xTkVYbqeJYVvWwl7XlWOBf3KiLa4W6bPY
	3vNtmNVDb9XoEbJSSFpf9l8dVSnDMcTpNdjvDL2M8DW3GSY4EX1OOHqXWhttxBMCtVvaOVXuUWW
	P4EPNapSy0ff5sRoHEOLnynmQZ9vO
X-Received: by 2002:a17:90b:4a0d:b0:1fa:c277:126e with SMTP id kk13-20020a17090b4a0d00b001fac277126emr13986426pjb.246.1660965925019;
        Fri, 19 Aug 2022 20:25:25 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7G9enq5xkrmpDkzKybaz2ssbk1855D5ew/T350m3OaXXLhX8q18+DZC61QPqCJPA5d+4HTmA==
X-Received: by 2002:a17:90b:4a0d:b0:1fa:c277:126e with SMTP id kk13-20020a17090b4a0d00b001fac277126emr13986406pjb.246.1660965924720;
        Fri, 19 Aug 2022 20:25:24 -0700 (PDT)
Received: from xps13.. ([240d:1a:c0d:9f00:4f2f:926a:23dd:8588])
        by smtp.gmail.com with ESMTPSA id l7-20020a170903120700b0016d692ff95esm3906400plh.133.2022.08.19.20.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 20:25:24 -0700 (PDT)
From: Shigeru Yoshida <syoshida@redhat.com>
To: mareklindner@neomailbox.ch,
	sw@simonwunderlich.de,
	a@unstable.cc,
	sven@narfation.org
Subject: [PATCH] batman-adv: Fix hang up with small MTU hard-interface
Date: Sat, 20 Aug 2022 12:25:16 +0900
Message-Id: <20220820032516.200446-1-syoshida@redhat.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="US-ASCII"; x-default=true
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1660965929; a=rsa-sha256;
	cv=none;
	b=q1ujplS9XuAtAYuqzmfp+FyispV8xi0ZOso0rFV7DeQx2U5OMq00VrK3pIeILXbpVBVNYA
	2zvx+gcs0NoAAuwj80v/zMYtHDmSU4bYG1YN4YeaelNBw06/o0ToaNowW2p1Xw4DPeV0qB
	+dnxhqZ26/Et+3xC3wKU+Mcwv9zFdww=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=dlEoL5Ul;
	spf=pass (diktynna.open-mesh.org: domain of syoshida@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=syoshida@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1660965929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=rCdaW8VW9KVhf4KlGQHWkOq32wI36GjplhXzdCZm9VA=;
	b=o380OeEbJV3l97mxC+TKEDSyDSH/5CDA1zmUgqeJecfbdX/DhKcEGv8G1aMkOAClMirzvI
	6d9bPGqKjk1ZvjLqRLo8NgX3SUm9cQDalWaFWdIka0eHAouoNBGWkLcIraU8NlEwkmYC6L
	57DDt0WQtkKpsy2lNH/R9Nvy1p4aJHs=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: syoshida@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: JZQWIB7UMUDBTYPAR4NYHPUJED6DFXPI
X-Message-ID-Hash: JZQWIB7UMUDBTYPAR4NYHPUJED6DFXPI
X-Mailman-Approved-At: Sat, 20 Aug 2022 06:55:06 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, Shigeru Yoshida <syoshida@redhat.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JZQWIB7UMUDBTYPAR4NYHPUJED6DFXPI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The system hangs up when batman-adv soft-interface is created on
hard-interface with small MTU.  For example, the following commands
create batman-adv soft-interface on dummy interface with zero MTU:

  # ip link add name dummy0 type dummy
  # ip link set mtu 0 dev dummy0
  # ip link set up dev dummy0
  # ip link add name bat0 type batadv
  # ip link set dev dummy0 master bat0

These commands cause the system hang up with the following messages:

  [   90.578925][ T6689] batman_adv: bat0: Adding interface: dummy0
  [   90.580884][ T6689] batman_adv: bat0: The MTU of interface dummy0 is=
 too small (0) to handle the transport of batman-adv packets. Packets goi=
ng over this interface will be fragmented on layer2 which could impact th=
e performance. Setting the MTU to 1560 would solve the problem.
  [   90.586264][ T6689] batman_adv: bat0: Interface activated: dummy0
  [   90.590061][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)
  [   90.595517][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)
  [   90.598499][ T6689] batman_adv: bat0: Forced to purge local tt entri=
es to fit new maximum fragment MTU (-320)

This patch fixes this issue by returning error when enabling
hard-interface with small MTU size.

Signed-off-by: Shigeru Yoshida <syoshida@redhat.com>
---
 net/batman-adv/hard-interface.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interf=
ace.c
index b8f8da7ee3de..dce5557800e9 100644
--- a/net/batman-adv/hard-interface.c
+++ b/net/batman-adv/hard-interface.c
@@ -700,6 +700,9 @@ int batadv_hardif_enable_interface(struct batadv_hard=
_iface *hard_iface,
 	int max_header_len =3D batadv_max_header_len();
 	int ret;
=20
+	if (hard_iface->net_dev->mtu < ETH_MIN_MTU + max_header_len)
+		return -EINVAL;
+
 	if (hard_iface->if_status !=3D BATADV_IF_NOT_IN_USE)
 		goto out;
=20
--=20
2.37.2

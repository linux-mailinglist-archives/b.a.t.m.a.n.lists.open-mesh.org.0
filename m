Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E53A83FCC51
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 31 Aug 2021 19:28:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BA1C580815;
	Tue, 31 Aug 2021 19:28:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4E37880815
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 31 Aug 2021 19:28:41 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Dynamic DHCP server assignment and spin-up on batman-adv mesh network
From: tanner.perkins@cnftech.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 31 Aug 2021 17:28:41 -0000
Message-ID: <20210831172841.1195.74688@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: XGCJ2Q3HZXTD7IVB35BK6PKTQFLSLEGZ
X-Message-ID-Hash: XGCJ2Q3HZXTD7IVB35BK6PKTQFLSLEGZ
X-MailFrom: tanner.perkins@cnftech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XGCJ2Q3HZXTD7IVB35BK6PKTQFLSLEGZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

If this is not the best place to ask questions regarding mesh networks utilizing the batman-adv kernel module, I apologies and please point me to where I need to be.

I'm looking to set up distributed mesh network using the batman-adv Linux kernel module. However, I don't want to have to statically assign IP addresses to all my nodes therefore my first thought was to use DHCP. The problem arises in my scenario that any node could come and go in the mesh network as they move in and out range of the network. Therefore manually allocating a single or even a few DHCP servers isn't realistic as that DHCP server may drop out of the network at anytime. Is there a dynamic way to reassign the DHCP server based on the nodes still within the network when the previous DHCP server drops from the network?

Thanks,
-tdev

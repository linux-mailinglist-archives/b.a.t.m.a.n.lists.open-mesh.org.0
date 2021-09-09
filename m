Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E946D405DE0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Sep 2021 22:09:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5882E810E3;
	Thu,  9 Sep 2021 22:09:41 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 15ACE8107A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  9 Sep 2021 22:09:39 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Bonding Alternating
From: brian.edmisten@viasat.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 09 Sep 2021 20:09:39 -0000
Message-ID: <20210909200939.1153.2026@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: RA75NXQ4IZERVCKKHBAPWIZTHDTLQ6UB
X-Message-ID-Hash: RA75NXQ4IZERVCKKHBAPWIZTHDTLQ6UB
X-MailFrom: brian.edmisten@viasat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RA75NXQ4IZERVCKKHBAPWIZTHDTLQ6UB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Before Adding radios to my setup I connected to computers with three NICs each.  I added all three interfaces to the mesh interface bat0 on each.  I then run iperf across it and all the traffic seems to go on one interface.  I run iperf3 with -p 4 so there are multiple streams.  Changing it to bonding does not seem to change the behavior.
batctl o - shows all three interfaces
batctl n - shows three interfaces -This I thought seemed odd as its one neighbor across three links
batctl tg - shows all clients Via one address

If anyone can point me at what to look at next or what might be wrong would help.

I am using BATMAN_V version 2019.4 in kernel 5.4.68.

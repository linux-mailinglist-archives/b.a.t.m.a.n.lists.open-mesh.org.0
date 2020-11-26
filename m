Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAA02C51BA
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 26 Nov 2020 11:01:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2BFA080DE8;
	Thu, 26 Nov 2020 11:01:48 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4254080172
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 26 Nov 2020 11:01:46 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [RFC PATCH] batman-adv: Reserve needed_headroom for fragments
From: mephisto@mephis.to
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 26 Nov 2020 10:01:46 -0000
Message-ID: <20201126100146.1051.90640@diktynna.open-mesh.org>
In-Reply-To: <16FAA2FE-92FA-421E-9134-27AECE426F55@exaring.de>
References: <16FAA2FE-92FA-421E-9134-27AECE426F55@exaring.de>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: ULSPR3AU73MDHYKVX33EDBIO2ON7SOBY
X-Message-ID-Hash: ULSPR3AU73MDHYKVX33EDBIO2ON7SOBY
X-MailFrom: mephisto@mephis.to
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ULSPR3AU73MDHYKVX33EDBIO2ON7SOBY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

We currently observe that issue on our experimental VX-over-Wireguard Gateway, too. 

However, we had observed a similar performance hit about 2y ago  when introducing vxlan as layer below batman for wired mesh which might be related. We ignored it since debugging sessions were not conclusive for me as I'm no Kernelhacker and because it only applied to specific scenarios and vlan still outperformed the VPN connection.. still one similarity is that our debugging sessions also pointed to batman fragmentation that occured in conjunction with VXLan. Running pure batman over wire ran magnitudes faster.. Might be the same thing.

https://github.com/freifunk-gluon/gluon/issues/1315

In our current experimental setup when running vxlan over wireguard that performance hit hurts everyone..

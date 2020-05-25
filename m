Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C9F1E08E1
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 10:35:15 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 791C5806C8;
	Mon, 25 May 2020 10:35:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B48D4806C8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 10:35:12 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Network stops passing traffic randomly
From: smartwires@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Mon, 25 May 2020 08:35:12 -0000
Message-ID: <20200525083512.832.13419@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: PZK7RS5CACYDJIW4SH7R6UF7BIQI5OYR
X-Message-ID-Hash: PZK7RS5CACYDJIW4SH7R6UF7BIQI5OYR
X-MailFrom: smartwires@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PZK7RS5CACYDJIW4SH7R6UF7BIQI5OYR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I have been battling a weird problem recently, I have this problem occurring on two (2) separate networks, one with 2 nodes and the other with 3 nodes. What happens is the network is fine and all of a sudden the clients can not reach the Internet, This what I have observed. on both Openwrt 19.07, 18.07. A reboot of the gateway corrects the problem. 
1. Gateway is up and running and able the reach the internet.
2. batctl o show the neighbor/s
3. batctl ping [MAC] fails

root@Main-GW:~# batctl o
[B.A.T.M.A.N. adv openwrt-2018.1-5, MainIF/MAC: mesh0/e8:5b:b7:00:10:73 (bat0/22:55:4d:3e:5f:8f BATMAN_IV)]
   Originator        last-seen (#/255) Nexthop           [outgoingIF]
 * e8:5b:b7:00:10:6b    0.880s   (255) e8:5b:b7:00:10:6b [     mesh0]
root@Main-GW:~# batctl ping e8:5b:b7:00:10:6b
PING e8:5b:b7:00:10:6b (e8:5b:b7:00:10:6b) 20(48) bytes of data
Reply from host e8:5b:b7:00:10:6b timed out
Reply from host e8:5b:b7:00:10:6b timed out
Reply from host e8:5b:b7:00:10:6b timed out
Reply from host e8:5b:b7:00:10:6b timed out

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AE89744C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Aug 2019 10:01:07 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 3C90A8164A;
	Wed, 21 Aug 2019 10:01:01 +0200 (CEST)
Received: from forward102p.mail.yandex.net (forward102p.mail.yandex.net
 [77.88.28.102]) by open-mesh.org (Postfix) with ESMTPS id 1648E80626
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Aug 2019 10:00:57 +0200 (CEST)
Received: from mxback16g.mail.yandex.net (mxback16g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:316])
 by forward102p.mail.yandex.net (Yandex) with ESMTP id D19981D40D0B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Aug 2019 11:00:55 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback16g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id iMBWsCjvnO-0sSu8Llh;
 Wed, 21 Aug 2019 11:00:54 +0300
Received: by myt2-a7d7570d35ff.qloud-c.yandex.net with HTTP;
 Wed, 21 Aug 2019 11:00:54 +0300
From: =?utf-8?B?RW1pbiBTYXZhxZ8=?= <emin.savas@gohm.com.tr>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Using two interfaces to increase bandwidth with bonding
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Wed, 21 Aug 2019 11:00:54 +0300
Message-Id: <368701566374454@myt2-a7d7570d35ff.qloud-c.yandex.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
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

Greetings,
 
I want to ask about bonding feature. For example considering the following configuration;
 
PC0 ---> eth [100 mbits/s]                -----------------------------            eth [100 mbits/s]           <--- PC1
     |----> wifi_5ghz [110 mbits/s]       -----------------------------            wifi_5ghz [110 mbits/s]  <----|
 
 
       if the two interfaces(eth, wifi5ghz) are on the batman if I enable the bonding feature on both ends,
is it possible to see a bandwidth more than 100 mbits/s ?
 
 
Thanks in advance.

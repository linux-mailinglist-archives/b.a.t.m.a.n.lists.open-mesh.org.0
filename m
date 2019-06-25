Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D35526A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 25 Jun 2019 10:29:23 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D843181B7B;
	Tue, 25 Jun 2019 10:29:20 +0200 (CEST)
Received: from mail26.lwspanel.com (mail26.lwspanel.com [91.216.107.40])
 by open-mesh.org (Postfix) with ESMTPS id 63F6A8041A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Jun 2019 10:21:43 +0200 (CEST)
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 by filter2.mynetwork.local (Postfix) with ESMTP id E3BD2123B6C7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Jun 2019 10:21:42 +0200 (CEST)
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 by filter1.mynetwork.local (Postfix) with ESMTP id 1F963123B530
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Jun 2019 10:21:41 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail26.lwspanel.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=ALL_TRUSTED,BAYES_05
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Virus: No
X-Spam-Virus-Status: No
X-Envelope-From: <faycel.benhajkhalifa@eisox.com>
Received: from mail26.lwspanel.com (localhost.localdomain [127.0.0.1])
 (Authenticated sender: faycel.benhajkhalifa@eisox.com)
 by mail26.lwspanel.com (Postfix) with ESMTPSA id 17754123B8A3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 25 Jun 2019 10:21:40 +0200 (CEST)
Received: from v/BYOiJcLDziyAl79qSUCUKOF524933Y by mail26.lwspanel.com
 with HTTP (HTTP/1.1 POST); Tue, 25 Jun 2019 10:21:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 25 Jun 2019 10:21:40 +0200
From: faycel.benhajkhalifa@eisox.com
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Problem with routing table
Message-ID: <22df3eaaaf123e7eb767ec7c0959cbfd@eisox.com>
X-Sender: faycel.benhajkhalifa@eisox.com
User-Agent: Roundcube Webmail/1.3.9
X-Mailman-Approved-At: Tue, 25 Jun 2019 10:29:17 +0200
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

Hello
I have a problem with setting up the routing table
the use case
I have 4 node with batman batctl 2018.1 [batman-adv: 2018.1] on openwrt 
18.06.1
2 nodes that serve the internet (connected directly with cable)
when a node that shares the internet is dead the other node can't ping 
the internet  unless the dead node no longer exists in its database 
neighbors (it does not appear in the results of batctl o and batctl n ) 
on average it takes a little more than 200 s to reconnect to the 
internet.
my questions are:
   Is it possible to update the routing table faster?
   Does it have anything to do with 200s to detect that a node and dead ?
thank you
cordially
faycel bhk

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4447242A1A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 Oct 2021 12:03:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4701F809BE;
	Tue, 12 Oct 2021 12:03:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B8236807ED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 12 Oct 2021 12:03:35 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: can B.A.T.M.A.N. force a path through the network?
From: giorgi.flavio.at@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 12 Oct 2021 10:03:35 -0000
Message-ID: <20211012100335.1201.63878@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: HUA6HZO4BD74VSEK35B4YOMT5S4XEI4U
X-Message-ID-Hash: HUA6HZO4BD74VSEK35B4YOMT5S4XEI4U
X-MailFrom: giorgi.flavio.at@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HUA6HZO4BD74VSEK35B4YOMT5S4XEI4U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi, I'm currently using B.A.T.M.A.N. to link 4 raspberry pi.
I set up the network and it works correctly, the devices see each other and they can communicate.
The problem is that I need to force the packets to follow a specified path through the network.
For example, I need that a packet from device 1, goes through device 2 then 3, and finally 4.
Since the protocol works at layer 2 it is not possible to change the IP routing tables. 
So my question is, is it possible to do something like this using B.A.T.M.A.N.?

Thank you in advance.
Best regards.
Flavio

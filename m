Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B62B9BD7DFD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Oct 2025 09:26:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8A870853A7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 Oct 2025 09:26:25 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1760426785;
 b=fCufmPXIQhyL/YnvAdv0CugnfRYkJdSpIDX6pOSUbdSDHM4saSc2mXuBraR8hRKgPHUSu
 OlFFhW+N8jCziWafxly/vLQBXR5lciCTXM3dfhq/x6d98IEwir3fxe6ImdDd+l2XVDq9C7C
 8DK+ebiw7xPUihhQ3YAcom7QZeNSn20=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1760426785; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3i2KDMc+s1CJgDhvqXCWfqM/APqyptMs4c2dfrtzl5I=;
 b=LuYAd+rGOV7Q3myxPO0jMham+b4fuQEYzWQovyPcMZMkIlsJPRrOQ/hAMn7FZ514nJwwJ
 HZ0pmeJ/RByFJ/SJwt4Nj9Y3+4rYGWeFabY5/ODVs5JxoM42E2bA1kWIRVqbVectfeptWie
 qJ1PLgUt6QWjNT0ADhT3nxMEE25ibF0=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C6AC381D6F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Oct 2025 23:37:32 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Gateway shut down detection takes too time from other nodes
From: mbiglari4@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Mon, 13 Oct 2025 21:37:32 -0000
Message-ID: <176039145278.1493.3258424615578163774@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: mbiglari4@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation
Message-ID-Hash: 5QIIDOSJHFYQWFZWT3HIYMMNEQ2DPDL3
X-Message-ID-Hash: 5QIIDOSJHFYQWFZWT3HIYMMNEQ2DPDL3
X-Mailman-Approved-At: Tue, 14 Oct 2025 09:25:43 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5QIIDOSJHFYQWFZWT3HIYMMNEQ2DPDL3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Dear readers,

I have implemented a Mesh network with Wifi nodes on 802.11s and BATMAN adv. My mobile nodes are mesh nodes, and I am using 802.11s to create a mesh network. Within this network, some nodes act as servers and others as clients. Suppose one of the nodes is selected as a gateway by the clients. The problem is that when this gateway node powers off, the other nodes do not immediately detect this change, and it takes a long time for them to recognize and switch to a new server as the gateway.

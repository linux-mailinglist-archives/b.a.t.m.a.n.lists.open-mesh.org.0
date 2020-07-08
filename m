Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE7F218A51
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jul 2020 16:44:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 29FEC8067B;
	Wed,  8 Jul 2020 16:44:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D82BF80356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Jul 2020 16:44:07 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Batman_V Originator Loop Issue
From: lavincent15@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 08 Jul 2020 14:44:07 -0000
Message-ID: <20200708144407.1176.97484@diktynna.open-mesh.org>
In-Reply-To: <5716273.fDpRzsxG9E@prime>
References: <5716273.fDpRzsxG9E@prime>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: W4FQAA7B3XDVQY7UVAZNXPPWKT3ENZQ6
X-Message-ID-Hash: W4FQAA7B3XDVQY7UVAZNXPPWKT3ENZQ6
X-MailFrom: lavincent15@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W4FQAA7B3XDVQY7UVAZNXPPWKT3ENZQ6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

"can you please describe which nodes are connected to the LAN and which are
not? You say "one is connected to LAN" and the others are "operating as an"

00:30:1a:4e:b8:26 is the only node that is connected via eth0 to my LAN. All three nodes are running mesh point and AP on mesh0 and wlan0 respectively.

"If multiple nodes are connected and bridged to the same LAN, bridge loop
avoidance should be enabled - you have that in your config, but you could
double check with "batctl bl" and then "batctl bbt"/"batctl
cl" (please post
these tables if you think this could be connected).
You could also try disabling distributed arp table and multicast mode, just to
make sure this is not shooting us in the foot here. Those optimizations are
not really needed for such a small network."

I see. Since I only have one node connected to LAN via eth0, I do not need bla. I just tried disabling multicast, bla, and arp table. So far so good! It's working. Thank you so much for the help!

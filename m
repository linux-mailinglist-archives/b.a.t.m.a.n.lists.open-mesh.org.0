Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE5D2AD813
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 10 Nov 2020 14:54:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A6B0080726;
	Tue, 10 Nov 2020 14:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1605016466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=OPnqxvtB8YTD3cDwPrDtdzmu1W0SSs7UVUXlLVfwdj8=;
	b=ItHulGlWmMvlGCE/EJdyaF2VKM5aRSiGxNWEsNfFWc1Ce/kcjNaA1ATSJsqShub8ry64pd
	Y3orXglMGTuObD2+FJC8/tfTcjjY6jYXKeZYvFvSk04fVES8Ta7aEYJnsO+qVJIg0abmwm
	KgnFOAFQ0hz9V4vjEg8rfvVzbbaXxMQ=
Subject: Eth backhaul on mt7621 routers
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 10 Nov 2020 13:54:24 -0000
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AGXUW6NJYM5W7E7Z4LGMZKLII4IKQQY4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <160501646534.1287.9726291643076315458@diktynna.open-mesh.org>
From: "haas--- via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: haas@yahoo.com
Content-Type: multipart/mixed; boundary="===============9024134320331671531=="

--===============9024134320331671531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9024134320331671531==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 20056802AA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 10 Nov 2020 14:54:24 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Eth backhaul on mt7621 routers
From: haas@yahoo.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 10 Nov 2020 13:54:24 -0000
Message-ID: <20201110135424.1209.48828@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: AGXUW6NJYM5W7E7Z4LGMZKLII4IKQQY4
X-Message-ID-Hash: AGXUW6NJYM5W7E7Z4LGMZKLII4IKQQY4
X-MailFrom: haas@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AGXUW6NJYM5W7E7Z4LGMZKLII4IKQQY4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,
I've got BATMAN eth backhaul working on various qualcomm routers, but I've run into a problem on mt7621-based routers. Is this a known issue? I'm using the "master" of openwrt, which is kernel 5.4 at the moment.

Please see my post here describing the problem:
https://forum.openwrt.org/t/br-lan-not-working-on-mt7621-in-master-with-batman/77316

What's strange is that traffic flows fine over the eth backhaul between the two nodes, but only if it originates on the nodes themselves. Interfaces bridged to the bat0 interface can not send traffic over the eth backhaul. They do so just fine when bat0 is sending the traffic over a wireless mesh instead.

And there are even odder features such as arps getting through fine, and pings succeeding just after an arp packet, etc. See the forum thread for details please.

Any help would be greatly appreciated. I'm not sure how to debug this further.
--===============9024134320331671531==--

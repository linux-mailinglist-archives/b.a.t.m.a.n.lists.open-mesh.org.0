Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE4D26110C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Sep 2020 14:04:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 08627805E7;
	Tue,  8 Sep 2020 14:04:28 +0200 (CEST)
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5A7FF8026E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Sep 2020 14:04:25 +0200 (CEST)
Received: by mail-vs1-xe36.google.com with SMTP id x203so8813742vsc.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 08 Sep 2020 05:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kayhan.name.tr; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=7WZUoI1JXs4Es8QKhkWzYPflPMGkfhlJlUWB0F7xtcg=;
        b=BsYLyo1DCmZXsS9jzFpsaqFjU1fuzFqfWoKDMSH3N3IshU5uzoEcI2vbMOIBJQ4amp
         RhuV3fg/hPD0r0tJsX5P8VfB24fLlm6sXJdIrSaouNkfWTrZnmB4YOTlvpum7AG+D4i/
         mtK32bfH5yv4XGb1zxtSSCO599dyXGkFnOn+YoFVI6UdlCX/QDyjyrSsCArC5/D8DsNa
         h+3Vc9SAkP42rfMz6tppsw9oI1vGs/Cevg+KjCDxPwbPSi7A/BcQ1VC0HQOeVLef06IX
         dKUNYGsHoTA6uy+y49iIpxT8u0SP7SocODtp7giGkymnQjgsf6kGz6bFNdoDsMRleMr9
         dTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7WZUoI1JXs4Es8QKhkWzYPflPMGkfhlJlUWB0F7xtcg=;
        b=msFBQGFS40Hq2NUOS/joosX2vYLoNtb/jq46meuHoyGwbEGGsbVOwYPZXGQpWu+fO+
         KsBWLhPlQfephN7/MxuswwkPzuFvyEHOGWMlD5+gEh8c4oD1uJdnZh5++FGtZ24SF700
         zX67E89WgcI30Uotw5CKrYqUX0kzsC5HJBhyVK1TLXtfJGBPlrwxwPHvplCI7CrStulI
         /HDqHAnpk9FgWt2P7PLov0YL0HTfG/sVx7nxGLVnpBf3NDw8yPpmX5ygC5lIZRmkXH0D
         IHGWwCDEqkD657u+c/8h7BVrxubQ+nLFYwHLiFNJ6hwwYfUQk2Zh5bPF2oQfNrCWnquI
         HbgQ==
X-Gm-Message-State: AOAM533Po2wGSvmPN4SO1Eg+rOnL2/FDZhx3GLrnASkFUTXH9ITIffyw
	kuQNGMGrWhee1CQkxGAYWgMj1pTfQB2S/+hA7VY9i9IyF6vMyvwU
X-Google-Smtp-Source: ABdhPJw2pJXVKgkaMlYyxAXgUA6YpuFZvryfgDgfhaS5sl9jhmYQ6Ggip96KZrNjXxcewhgvLGXXnInwK4h8W8nDhmY=
X-Received: by 2002:a67:ecd0:: with SMTP id i16mr13885323vsp.85.1599566663512;
 Tue, 08 Sep 2020 05:04:23 -0700 (PDT)
MIME-Version: 1.0
From: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Date: Tue, 8 Sep 2020 15:04:11 +0300
Message-ID: <CANKYHpe825qzeW9g7HbrHcacsO36x0=W_nRBCGKy_UfybvL7gw@mail.gmail.com>
Subject: alfred/batman issue
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599566665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=7WZUoI1JXs4Es8QKhkWzYPflPMGkfhlJlUWB0F7xtcg=;
	b=rAvn/jtgp0xx8PwbFW2lQOxmG5PSM9O/QqremLbsojzGj1DfMTMUq3OP7jZ3aQrA/AvGFI
	5O6NztqWDjH7Y7sDtPtnmZxmLLbl92ivUsIhxIOBjwoPKtUCowLY8mqVsOBd+GV+Svhl8d
	sRbC+zZ57iPEM4au3Ga+q8yMg6P3qn8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599566665; a=rsa-sha256;
	cv=none;
	b=X3X5LEw6QciWIOlzxRMjVxuUVtcrPlrJab171NniIaggVVpozkBleb0otNI8fkV7O/ehqQ
	QEBBCZsE6HSu1/j04hRbq/QBdmV0mKBr7/XZtBsV7/BTnwyYQ1GvWIcXPN2IfT9xbIqSf6
	qEjDEDkZ6GmA8+h9bdQx0mb0+xObut0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kayhan.name.tr header.s=google header.b=BsYLyo1D;
	spf=pass (diktynna.open-mesh.org: domain of oguzhan@kayhan.name.tr designates 2607:f8b0:4864:20::e36 as permitted sender) smtp.mailfrom=oguzhan@kayhan.name.tr
Message-ID-Hash: FWSGWLZWROS6S46FTUELRJTGPMZ3NVNU
X-Message-ID-Hash: FWSGWLZWROS6S46FTUELRJTGPMZ3NVNU
X-MailFrom: oguzhan@kayhan.name.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FWSGWLZWROS6S46FTUELRJTGPMZ3NVNU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

  Hello
I have two questions which most of you may find very novice.


I set up a batman mesh network between 3 nodes..all running
B.A.T.M.A.N. adv openwrt-2018.4-0 on batman V protocol.
And also installed alfred which version 2016.5


node-1 ( 00:30:1a:4e:aa:20 ) connection
  IF             Neighbor              last-seen
00:30:1a:4e:aa:23    0.190s (       15.8) [     wlan0]
00:30:1a:4e:aa:1d    0.050s (        8.9) [     wlan0]

node-2 ( 00:30:1a:4e:aa:23 ) connection
IF             Neighbor              last-seen
00:30:1a:4e:aa:1d    0.420s (       22.7) [     wlan0]
00:30:1a:4e:aa:20    0.520s (       15.8) [     wlan0]

node-3 ( 00:30:1a:4e:aa:1d )connection
IF             Neighbor              last-seen
00:30:1a:4e:aa:20    0.500s (        9.0) [     wlan0]
00:30:1a:4e:aa:23    0.180s (       22.6) [     wlan0]

No clients connected to any of the nodes. Only one of them (node 1)
is connected  br-wan port to my internal gateway. And all others are
reachable via this node (node1)

alfred output does not show any neighborhood on this case..
alfred config is ;
config 'alfred' 'alfred'
        option interface 'br-wan'
        option mode 'master'
        option batmanif 'bat0'
        option start_vis '1'
        option run_facters '1'


node-1
digraph {
        subgraph "cluster_00:30:1a:4e:aa:20" {
                "00:30:1a:4e:aa:20"
        }
        "00:30:1a:4e:aa:20" -> "6c:4b:90:61:e3:d6" [label="TT"]
        "00:30:1a:4e:aa:20" -> "02:b9:87:a6:4f:66" [label="TT"]
        "00:30:1a:4e:aa:20" -> "28:d2:44:68:bd:1b" [label="TT"]
        "00:30:1a:4e:aa:20" -> "90:6c:ac:51:b9:dc" [label="TT"]
        "00:30:1a:4e:aa:20" -> "34:29:8f:74:59:c9" [label="TT"]
        "00:30:1a:4e:aa:20" -> "50:7b:9d:56:43:08" [label="TT"]
        "00:30:1a:4e:aa:20" -> "00:30:1a:4e:aa:21" [label="TT"]
        "00:30:1a:4e:aa:20" -> "02:b9:87:a6:4f:66" [label="TT"]
        "00:30:1a:4e:aa:20" -> "00:25:36:c1:13:3a" [label="TT"]
        "00:30:1a:4e:aa:20" -> "00:24:9b:53:55:62" [label="TT"


node-2
digraph {
        subgraph "cluster_00:30:1a:4e:aa:23" {
                "00:30:1a:4e:aa:23"
        }
        "00:30:1a:4e:aa:23" -> "32:21:1f:29:72:04" [label="TT"]
        "00:30:1a:4e:aa:23" -> "00:30:1a:4e:aa:24" [label="TT"]
        "00:30:1a:4e:aa:23" -> "32:21:1f:29:72:04" [label="TT"]
}

node-3

digraph {
        subgraph "cluster_00:30:1a:4e:aa:1d" {
                "00:30:1a:4e:aa:1d"
        }
        "00:30:1a:4e:aa:1d" -> "3a:ed:c5:16:bb:e6" [label="TT"]
        "00:30:1a:4e:aa:1d" -> "00:30:1a:4e:aa:1e" [label="TT"]
        "00:30:1a:4e:aa:1d" -> "3a:ed:c5:16:bb:e6" [label="TT"]
}


Even after adding an ethernet client to node 2..
the output replaced as
digraph {
        subgraph "cluster_00:30:1a:4e:aa:23" {
                "00:30:1a:4e:aa:23"
        }
        "00:30:1a:4e:aa:23" -> "32:21:1f:29:72:04" [label="TT"]
        "00:30:1a:4e:aa:23" -> "00:30:1a:4e:aa:24" [label="TT"]
        "00:30:1a:4e:aa:23" -> "32:21:1f:29:72:04" [label="TT"]
        "00:30:1a:4e:aa:23" -> "00:24:9b:53:55:62" [label="TT"]
This client traffic is normally passing from eth port of the node-2 to
node-3 via wifi, and then node 1 via wifi and then eth of node-1 to
internet.

but didnt see an update on other nodes even node 1 has all the traffic
carrying to the new added client.
Is it something expected? Or am I missing something?

By the way.. on batctl tg output.. the client appears on the list
  Client             VID Flags Last ttvn     Via        ttvn  (CRC       )
 * 32:21:1f:29:72:04    0 [....] (  1) 00:30:1a:4e:aa:23 (  2) (0x3e5717a8)
 * 3a:ed:c5:16:bb:e6   -1 [....] (  1) 00:30:1a:4e:aa:1d (  1) (0x10f0fbd0)
 * 00:30:1a:4e:aa:1e   -1 [....] (  1) 00:30:1a:4e:aa:1d (  1) (0x10f0fbd0)
 * 3a:ed:c5:16:bb:e6    0 [....] (  1) 00:30:1a:4e:aa:1d (  1) (0x2eef010b)
 * 00:30:1a:4e:aa:24   -1 [....] (  1) 00:30:1a:4e:aa:23 (  2) (0xcfe8055b)
 * 32:21:1f:29:72:04   -1 [....] (  1) 00:30:1a:4e:aa:23 (  2) (0xcfe8055b)
 * 00:24:9b:53:55:62   -1 [....] (  2) 00:30:1a:4e:aa:23 (  2) (0xcfe8055b)


Second question is valid only after I see the neighborhood information correct..
Which tool can I use on openwrt to visualize this relation between
nodes.Any ready tools for luci?

Regards

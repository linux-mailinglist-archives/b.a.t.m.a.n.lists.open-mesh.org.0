Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F5383FA58
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jan 2024 23:29:35 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D626283FE9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Jan 2024 23:29:34 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1706480974;
 b=tmeBH7mIIlOYhZchVmLYUeIQbIAod6JxsgvEuAZCXoJy6P6HoExnq3iB7x4RdjTf/fuKu
 RHq4PhryiPl3IBKEHNbEWxRYcQ/ND8xpA/bdArcL+1AWT+XBf0uWlBlC/sNWdO6HfELx2JM
 7IJT2EE7DOU7bid4JErELdX94NiACVU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1706480974; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=3pFoEkY2tZAvZ9E2zFhqEIyqMZppJAPv78sfolzTWQM=;
 b=hf1UB05Wr139TeWZCzs75Q36oVUtjMdSorQ9jLMKnbqdiAofNQK+2RqB1zDNABgZJL5Zf
 +Wa/jG2ZCxjGMnSeQ74p36mto6eN10srJW69ypFKGlEUo2E6XrpCYwOtIfCjQPT4mqT+fOK
 QkGgLejQFcCbhm8i+f6hXyQ/FCYQj8E=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2474681236
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Jan 2024 23:29:00 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Problem starting A.L.F.R.E.D on batman-adv?
From: doug.fajardo@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 28 Jan 2024 22:29:00 -0000
Message-ID: <170648094014.1056.17522976996217024998@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: YGJRO2CCK7ITJAV3MWI43MVCLBPNWLPE
X-Message-ID-Hash: YGJRO2CCK7ITJAV3MWI43MVCLBPNWLPE
X-MailFrom: doug.fajardo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YGJRO2CCK7ITJAV3MWI43MVCLBPNWLPE/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I cant seem to get A.L.F.R.E.D. to start:
doug@dougwork:~/sdshome/alfred$ sudo alfred -b bat0
Can't start server: interface missing

batman-adv module is from the Unix kernel distribution (Alfred was added thru the apt package manager, identified as version  2022.0-1  ( I also tried downloading and compiling; no warnings or errors compiling, I saw identical symptoms).
The batman-adv network seems to be working properly. It correctly sees two other nodes.
Can anyone point out what I am missing ?

Thanks!
*** Doug  
OS is Ubuntu  bookworm, with latest patches as of today (1/28/2023)
doug@dougwork: uname -a
Linux dougwork 6.5.0-15-generic #15~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Fri Jan 12 18:54:30 UTC 2 x86_64 x86_64 x86_64 GNU/Linux

doug@dougwork: sudo batctl n
[B.A.T.M.A.N. adv 2023.1, MainIF/MAC: enp6s0/5c:62:8b:ea:33:b8 (bat0/6e:d4:b2:77:d1:85 BATMAN_IV)]
IF             Neighbor              last-seen
       enp6s0     d8:3a:dd:4d:35:c4    0.192s
       enp6s0     dc:a6:32:0b:49:35    0.392s

doug@dougwork: ifconfig  enp6s0
enp6s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 5c:62:8b:ea:33:b8  txqueuelen 1000  (Ethernet)
        RX packets 85660  bytes 5364556 (5.3 MB)
        RX errors 0  dropped 4109  overruns 0  frame 0
        TX packets 75996  bytes 104561707 (104.5 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

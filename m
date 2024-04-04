Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD008981CE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Apr 2024 09:00:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 848B681F1F
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  4 Apr 2024 09:00:34 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1712214034;
 b=c56qlDzqyTOclt6urWr0Grf3Oxj8HoarbLWHpz7j64m67hKtpH3E1+ne10EuOgDKoZP75
 7zzNgHMGHUI/FB1SMl0ntaSCOvvmcIV4Wj6JCaYIftIxBv8uTFh8B6QiU821nuw9Av8Ixr8
 /DvKAPLK5BLS1nrKHweyBiUZRxT13Hc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1712214034; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=icbA98KMxAnaMcxNB6J/AD2eJofdkgxLQ+IvYhcSFts=;
 b=bksbyLDT/uiCDJdY2OE2cWSuUV2cg5ex+1pk2LBKuGvn7X3nDaCkwNFdD/rL9S54ugToN
 P3Ya1M9Lb60tosM21sZbbRxH287rvKfYG3w54+k+kNualM6C+n7i0NZ+c4eKYQg4XR85id1
 whNaGL940BHdrE5JkKLzeE+3NhjXzUc=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C1056800F1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Apr 2024 09:00:08 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: About Throughput in BATMAN_V
From: berkay.demirci@protonmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 04 Apr 2024 07:00:08 -0000
Message-ID: <171221400877.1066.8144265750602425260@diktynna.open-mesh.org>
In-Reply-To: <30040596.43St1lv6Oq@rousseau>
References: <30040596.43St1lv6Oq@rousseau>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: REMGFQEVMQM5GTAS4MGNBPDL3ZNX2W44
X-Message-ID-Hash: REMGFQEVMQM5GTAS4MGNBPDL3ZNX2W44
X-MailFrom: berkay.demirci@protonmail.com
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/REMGFQEVMQM5GTAS4MGNBPDL3ZNX2W44/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

We have two modems for each node and in one of them, expected throughput should be about 6 Mb/s for example, and in the other one it should be about 30 Mb/s. By using iperf and also throughput meter I can see that it's the case. But when they are added to batman with batctl if add, after typing batctl o, I see that the throughput values in both interfaces are 10000 instead. 

I looked at the interfaces with ethtool and the speed is 10000 Mb/s there for both too which is how batman must be measuring the throughput but this isn't good because it doesn't reflect the actual speed. If we use throughput override, it's fine at first but one of the modems has a shorter range so in our test where two nodes move away from each other, actual throughput gets decreased due to losses but batman still chooses the same interface due to the overriden value.

Basically I would prefer batman being able to change measured throughput dynamically.

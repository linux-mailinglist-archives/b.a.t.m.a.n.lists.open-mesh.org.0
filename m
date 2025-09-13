Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 345ACB56055
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Sep 2025 12:53:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6B118451E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Sep 2025 12:53:15 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1757760795;
 b=oyxQgNnHJ/bbECOi8GTIg5A4YxKtYIFnzXyNPgOI3E1AnRokDikp6Tbd1nV6iV6OdRT0C
 UFeHp1SHsTKihCZfi/9vI680FElDqqhPhkGQdTftLkHJ/nSylwCaWFIGBYwu2ZO78UpmG4a
 IRjM1mg06skk7ogT0skyhAMvZU3ljfo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1757760795; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Zvm6G1UraUwHtSsLso3ZF1fuaJnSLzV3Xdng8E2n4rU=;
 b=wmbLLzYoYImtmCLkDyGmbPfS4bTF+qfS6F6nmrDXVFCCgTW7kOWDTvOTUFu4zcQAgzPJg
 +YtjsU/l0PybSz/SoFH8uPabrmrkro75gFdKn8wFTsHJ6khJmativoL0TDdt0oyR84g7eag
 D9cEFmdrhdtWpbEw6MEs1FuWo/styqY=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3D158829A2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Sep 2025 12:53:06 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Mobile Ad-Hoc use-case where each node may be Client and Gateway
From: martinvdberg@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 13 Sep 2025 10:53:06 -0000
Message-ID: <175776078622.1495.8426151955000236578@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: OYFWWIPB5FCIPHDGMLZGXTVHHBKEFDUM
X-Message-ID-Hash: OYFWWIPB5FCIPHDGMLZGXTVHHBKEFDUM
X-MailFrom: martinvdberg@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OYFWWIPB5FCIPHDGMLZGXTVHHBKEFDUM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I’m researching whether the following use case can be implemented with B.A.T.M.A.N., and I’d appreciate any guidance on how to achieve it.

Use case:

- A Wi-Fi mesh network consisting of multiple OpenWRT devices.
- Each device is mobile, meaning nodes can join or leave the mesh at any time.
- Any node may have its own internet connection and if so, share it with the mesh by acting as a gateway (gw_mode=Gateway).
- Each node should automatically choose the best available internet route—either through the mesh (as a gw_mode=Client) or via its own internet access.

My main concern is whether a node can simultaneously act as both a gateway and a client. Is this possible, and if so, how can it be configured?

Thanks in advance!

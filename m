Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 98022A47E6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 Sep 2019 08:38:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 868D881FEF;
	Sun,  1 Sep 2019 08:38:29 +0200 (CEST)
Received: from gourmet8.spamgourmet.com (gourmet.spamgourmet.com
 [216.75.62.102]) by open-mesh.org (Postfix) with ESMTPS id 07F9280851
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Aug 2019 21:33:14 +0200 (CEST)
Received: from spamgourmet by gourmet7.spamgourmet.com with local (Exim 4.80)
 (envelope-from <batman.mexon@spamgourmet.com>) id 1i497Y-0005bm-FJ
 for b.a.t.m.a.n@lists.open-mesh.org; Sat, 31 Aug 2019 19:33:12 +0000
Received: from exon.name ([209.97.141.204])
 by gourmet7.spamgourmet.com with esmtps
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <batman.mexon@spamgourmet.com>) id 1i497Y-0005bW-4i
 for b.a.t.m.a.n@lists.open-mesh.org; Sat, 31 Aug 2019 19:33:12 +0000
Received: from [IPv6:2003:fb:ef05:dd91:e00d:15c3:19f:72e]
 (p200300FBEF05DD91E00D15C3019F072E.dip0.t-ipconnect.de
 [IPv6:2003:fb:ef05:dd91:e00d:15c3:19f:72e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mat)
 by exon.name (Postfix) with ESMTPSA id 730303F85B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 31 Aug 2019 20:33:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=exon.name; s=mail;
 t=1567279990; bh=u1xOA81cctXfrzOsWH3KFREwxmo+kkRjilJ9W8FxWUg=;
 h=To:From:Subject:Date:From;
 b=wNVC12yLNPu1J3Q1pJ254dMCmVCpuMbx/7hPImczFY2L0uvxxpbGIJadoYelos3/O
 5/kwj2KchEa04+FwKvYixBrW0K+Y0a8dipFatiNoX3VBs4qoKg3R2p3mSsjOcv/J2k
 c8znr57F9HyRcNK0RbFWyORQZ4XvbETxieqHnvtEJEvwzFC3sFzmaHEalkOXjPJreY
 VRF7NZ4MWbOHOboQvfwuQhKL3Ul/ar518w7ijwKibxD0Tc9CcA4N/Oa55dSM4EPRko
 EnJ5Qxt83BOavEW4DQ/y+UsATkJgcrGtG9Sts0pLPrL1UVpv41kup+Ewq/rUc5IttP
 0QkBApO8JeaAw==
To: b.a.t.m.a.n@lists.open-mesh.org
From: batman.mexon@spamgourmet.com
Subject: How to give stable MAC address to batman-adv device?
Message-ID: <3af7c293-5b8c-535c-2049-eef51b36da81@exon.name>
Date: Sat, 31 Aug 2019 21:33:09 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Sun, 01 Sep 2019 08:38:25 +0200
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

Hi,

I'm trying to use batman-adv to fix wifi signal problems with a few
Raspberry Pis.  So far it's more-or-less working.  I'm using dnsmasq on
the main gateway node to serve IP addresses over DHCP.

One problem I have is that the bat0 device has a different MAC address
each time it starts.  My Raspbery Pis reboot each day on a cron job and
each time they get a new MAC.  This causes dnsmasq to give them a new IP
address.  This causes problems talking to other nodes with outdated DNS
caches, as well as being irritating when I try to use ssh and it thinks
the nodes are "impersonating" each other.

Is there a way to force batman-adv to use a stable MAC address?

Thanks,
Matthew Exon


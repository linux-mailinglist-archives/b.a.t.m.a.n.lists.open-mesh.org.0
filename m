Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E455DDEE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 20 Oct 2019 16:35:29 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 27E528078D;
	Sun, 20 Oct 2019 16:35:22 +0200 (CEST)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by open-mesh.org (Postfix) with ESMTPS id 0BBB280037
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 20 Oct 2019 16:35:19 +0200 (CEST)
Received: by mail-oi1-x22b.google.com with SMTP id d140so4675296oib.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 20 Oct 2019 07:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n1sWpf9gQ6pNoh46jDR8LCSzWjAgf/3/gRCA6BHfrKI=;
 b=O/eTsbn0HH4qot8X2XHbUpN4k5UL2AJd/q0/dqCN64y4FevFBbsFROPBRy7uRqzdx3
 D2LFjJZve02p1wdKjEPOK9hWEJ5B1so3H5qaEsUbcO3i9RLiPvI7iIv9mtIpMng2yLW/
 34xDHm/0fXZbZIbTkwyzjRBP37AOmQDdYq8he5LP1BAnBRuAtb3pRhHNFoxlsaxeih5z
 CPA5SuDF2wDPBUqbQmbahBEpF6ZMMb/IgyMa9eH2g0UQOWtZ3RkH32l68rFtozewfkXe
 uyYU4b5Z1H2ZvrypULrEVI3+MQtHDvDVqa18x1J8P39owOpJtwwcJd7zJ/Jlg/EmX4Vb
 mxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n1sWpf9gQ6pNoh46jDR8LCSzWjAgf/3/gRCA6BHfrKI=;
 b=Y0IkFT6VvS6d8bGe/a+CBtaiW0Ci/aAa3MJYbGvvfDFRHvYTCl9mNBz9xedVOI1UVj
 kbnFOJG3Br8S1OMpy28hc366efrSK7movJ5z0+yPPJDCIcigjmb9vRE+Zpuohm2qs3kv
 JCcypw5aL2PZDsvZkt3Qw4ofzjHC6K0dXje0EDuGXGIxkqEpiD86VPW6tTKHw3KWnrII
 cBrCmg4/d0tTP53AqoKsIM3RQnz5LYUvUjL6nlskOvAJRhrtLfPTOAgoZaGJHDupRXtx
 cga4/CH3ClgUprTWGFdns+O2g0yqIXWsAjUukbIFNdVrh/VzoNe92cKtO4z9l2FCpUA7
 wolQ==
X-Gm-Message-State: APjAAAXyl0RXmqdvkxIpD8iHbK9OlPaZS1+btn7N3wgBQpEaiRExHxLh
 iokh1VJpPRHe+zNGnBrYnU5gpMfbtxg3B66a4RzVBV2bsCM=
X-Google-Smtp-Source: APXvYqx/lQ4rPdl0q9L5pY86JXSWYDrtQkR3MmO8EOH1lcC7q3UbFS1389V3CkPIvrgX0vEFSVzUnxeq9sQcqHwkUMw=
X-Received: by 2002:aca:40b:: with SMTP id 11mr15049572oie.59.1571582116801;
 Sun, 20 Oct 2019 07:35:16 -0700 (PDT)
MIME-Version: 1.0
From: dan <dandenson@gmail.com>
Date: Sun, 20 Oct 2019 08:35:03 -0600
Message-ID: <CAA_JP8VXv-oRtvh4XLi_208_q7bqcRqbJw-CLi1GFLBAF=sLRg@mail.gmail.com>
Subject: Batman-adv behind bridge to wireless?
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1571582119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=n1sWpf9gQ6pNoh46jDR8LCSzWjAgf/3/gRCA6BHfrKI=;
 b=D6Ml4ZK77bW6DGvUbxuF38ifhRCFBVgq1W7uNE5BFp4Ds9jGSfwGcjX3iIjEwzjqP0lKvy
 Vv2G1EWwh98IGJfyn6banqFKMwo2uTAs2kwhkJkdEeJshYL/KAGEj/qKO+hScp45RZHa4n
 Fmg4gqEFH7Sdy9DZ0R0G6v8B+pBoKTM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1571582119; a=rsa-sha256; cv=none;
 b=cO3vUzaFHoqWEZtdVzY8RYMTyn1gdddRoZXnBii/rI3ujhKo8Qg5EF3okEXZSIN6oBERc2
 uWme93llXllnQW4vc08N4UVLDY3gJDHK6oZjIBw5i0myQX9gpUxOUEyeRDh9jK4tRtuNLU
 dyN5NcuG/2KmAhLHym3EfqmuBYRwWlc=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=O/eTsbn0;
 spf=pass (open-mesh.org: domain of dandenson@gmail.com designates
 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=dandenson@gmail.com
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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

I'm considering a certain deployment model here and wanted to get some
expert input.

The design would be
-batman-adv router (could be raspberry pi, or pcengines, etc)
-1,2,3 etc complete radio devices doing 802.11s or dynamic WDS etc
with that radio interface bridged to an ethernet port connected to the
batman-adv router.

This might be called 'radio on a stick'.

an example might be

2 mikrotik omnitik ac devices on different channels, each with their
5Ghz radio configured as ap-bridge with dynamic WDS, those WDS
interfaces would be bridged with horizon (to eliminate loops) and 1
ethernet interface w/o horizon.  Those interfaces would connect to the
batman-adv router.

mikrotik has an hwmp based mesh, but it's primitive and I don't want
nodes responding to other nodes in that mesh, I want batman-adv magic
in the mix.  I might utilize this interface but with a 1 hop limit so
it works a lot like a horizon bridge without using horizon.

this design appears as ptp links plugged into a switch and has no
opportunity for loops.  Each batman-adv router can broadcast and each
other batman-adv will receive that through the bridge because it
doesn't have horizon set, but the A and C devices that are 'bridged'
by B can't because those interfaces share horizon on B, or the hop
limit depending on the interface used.  I'm thinking that solves any
issues batman-adv might have with putting the 'switch/hub' of sorts in
the middle.

One thing I'm trying to solve here is the classic single radio mesh
issue of halves bandwidth, as well as having link health in the mix
without taking an interface offline.  I'd rather have 2% packet loss
on an interface that have 100% packet loss.

additionally, this is for a hybrid mesh design where there is a ~50
node mesh with 2-3 backhauls to a mesh entry point on a tower, and
then likely a 'midspan' link or two with high capacity radios to
reduce hop count.

finally, this allows me to use off-the-shelf devices with pole mounts
etc for this while running the batman-adv router on the ground in an
appropriate container.  A raspberry pi4 would be a great router for
this and I could use VLANs up the feed ethernet link.

Thoughts?

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id E716B650AC
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 11 Jul 2019 05:44:29 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7799981621;
	Thu, 11 Jul 2019 05:44:23 +0200 (CEST)
Received: from mail-yw1-xc29.google.com (mail-yw1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 by open-mesh.org (Postfix) with ESMTPS id 218A880F49
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 11 Jul 2019 05:44:20 +0200 (CEST)
Received: by mail-yw1-xc29.google.com with SMTP id m16so1537970ywh.12
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Jul 2019 20:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rPdGlQRWso0fLFIg9VJvO8vYTtVsI4jCjAXm57aLuXI=;
 b=hFLwZG0Y8Hf8nWhumUo9dQg9It7FbAlWkvG5OTPZdqkaI2GGxuTNAof9wtwj5oFx1F
 SHVlTMF/Q8R+rZjkD7MDi6KwMVLt20/KXFppi4imRY9mIxzca5ngS+KJhOCQOx3paFGp
 ddGu+C1iazSzywo6fysgW69Pc1MYQpZ9fHyp7JjX/w32s8kFsPhL7m/IwCNsStVt8mUt
 cndJc7Ae3yHBX+eOlBRFEzmqH8xyFva8p4hZpwWV5+PQwM0XP8m+V1z7P1hUFSer+BE0
 2XRQyygdmFAG0d0u5pDH34xnbC3hiMiDSWrdtc+gXOGFzMcftYgsWZfVJPUR7eXPnUv6
 oVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rPdGlQRWso0fLFIg9VJvO8vYTtVsI4jCjAXm57aLuXI=;
 b=CGKy82NSIC+pQOACTSJjs4uCcCwdkXFjiVIrwOIRH69Hii/HPe5hgB2mfPskOm5c8P
 Ib9eACJkme+D1GZMCaznZkvGGycG6UuuZwQzuE/KYh68NXOBJqapEYgp871L5c8Qee9E
 vTFRq5S++adPpmNuAbZjgPUMsOUDopRUbr2GMux9+oHLNYiQkbcQWX7evYCCSN9UD3KI
 jxECRzcHOOe32YIKXsHePn9MNtC2mjIAuVLBWF5wq9+Htiv6pbAmBQrYyValUqGqzcaI
 2d4/ICVhhgzNlEvQyw9rG10KaONNaPmK0Qwkdd+tPvDIu7bWbs27UgBfSi3WEyecvysD
 NbsQ==
X-Gm-Message-State: APjAAAXX65V4J4g06iZqJiUWyX6o+58dKo4eE1IkrbCDPC2Q1jfUAOjk
 91NNaqIImzVDk18DYiHjJ+XGbM8wSGnnaz2aQ+nyud4C
X-Google-Smtp-Source: APXvYqyNFxnFqLQtx8oqJZ4nq7BNeMQJQBgjyTAZGvH/edf4YYn/xy6FARSsgWQm9csdyllk0iLn/CP+qSB3QpQgeaM=
X-Received: by 2002:a81:6d8a:: with SMTP id i132mr650487ywc.304.1562816658548; 
 Wed, 10 Jul 2019 20:44:18 -0700 (PDT)
MIME-Version: 1.0
From: Ricardo Cerrato <kurschev@gmail.com>
Date: Wed, 10 Jul 2019 22:44:07 -0500
Message-ID: <CAH-WULkD2g8KvzWT0=CxcvF5ja54p3qW_OZukM52gtoTkQXb_w@mail.gmail.com>
Subject: How to run batman-adv on interfaces in AP / Station mode?
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
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

Hello all!

I recently configured a mesh with two nodes running Debian and
batman-adv and two wireless adapters TP-LINK TL-WN422G configured in
IBSS mode, and to allow non-mesh clients (like my cellphone) to use
the mesh I had to use another wireless adapter (same TL-WN422G)
configured in AP mode and bridged to the mesh interface (bat0).
Recently I found in the FAQ:

"Can batman-adv run on interfaces in AP / Station / etc mode ?
Q: Can BATMAN advanced run on interfaces in AP / Station mode?
A: Yes, because batman-adv doesn't know anything about stuff below the
ethernet interface. So you could also use it over layer 2 ethernet
tunnels, wifi ap, wifi sta, wifi adhoc, ethernet or even write a
virtual interface which prints everything on paper and scans the paper
on the remote machine (but you should be fast or increase the ogm
interval)."

I guess it is possible use the same adapter as AP and mesh client..
I my tests I found the AP mode and IBSS modes are mutually exclusive,
but I didn't find examples on how to create a mesh without IBSS...

Could you provide and example of configuration or some information
about how to do this?

I would like to create a mesh and allow non-mesh clients (like any
mobile) to connect and use a messenger service that will run over that
mesh and it would be great if every node of the mesh (using one
TL-WN422G adapter) can be also an AP for any client.

The adapters have the following supported modes and combinations:

Supported interface modes:
 * IBSS
 * managed
 * AP
 * AP/VLAN
 * monitor
 * mesh point
 * P2P-client
 * P2P-GO
 * outside context of a BSS

valid interface combinations:
 * #{ managed, P2P-client } <= 2, #{ AP, mesh point, P2P-GO } <= 2,
   total <= 2, #channels <= 1

I'm using Debian Stretch on the nodes

Thanks in advance!

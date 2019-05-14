Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC7F1C401
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 May 2019 09:39:18 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 18A3D81672;
	Tue, 14 May 2019 09:39:08 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 1C47A802FA
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 May 2019 09:39:05 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557819544; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=Yg7NKY4eyBFPeyPJE94KcAcAh2LVsjCd7t2r3uqokRM=; 
 b=MMsLmuMdjxpk3EslwEIsdtEDlOIREEHOvIEJMH5BqXczyGU8rXCFeKNyot/j+78nt8B6K5
 X5ZMqc7FZeEn11tG4jPsAmx9jxvWwPBkKX5kqkg9pW7MRpxw6pLq/tfHxc7A6bq3ZoLIUb
 xvBk7FZZycXPDNTMp/wAFC8AL08E9gCGmccQVuIsvkaP9Hv0hzQ5m5ExqEyYhWcIXM9SWq
 Yu9m004SxFlBHbfWco2vcPIfNsmN1tg1CTJfhzbX6GRtQyLuATRV8KkyOxJy3oALQgi5tw
 TKD1k1DRiVEHAq1VDZouQqSvxd/XT7gLFTGyCDBfuPgP0tEUJaBssyK62sbSeQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 0/3] batman-adv: broadcast flooding improvements
Date: Tue, 14 May 2019 09:38:56 +0200
Message-Id: <20190514073859.2053-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557819544; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=Yg7NKY4eyBFPeyPJE94KcAcAh2LVsjCd7t2r3uqokRM=;
 b=MufDsyWyTtB1HVzLpaH+fsH9xmqb/CiaJv4JBPBOp9l99FvRSxQ6bmtiC5Ww51OYje9nDk
 PI1JHfO7MYbZ8vSTvt56Tu5aprUqmrHx+zSb4EGGRJIfUW2BS8/5WKisOxw5b/9VSXcrKV
 c9Dy+cXxr0lhWlfKIBL65mGcnuHTIPl9fDPq74n1rPD8J8+eveXfV7wvxSa1AQ8aTGZmCT
 g7Ztui8UgkSoRMmzho9ZSdzyrBsyD55uG40X2vwwsv+qr0kqE+8ZVgQimExmRenlbBm5xc
 EA9YuVc6nXtqOMNcF0umNpndYy3FHopk+7FlrWzP9vtjCx0dTm9Dw/DeL0+2cQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557819544; a=rsa-sha256; cv=none;
 b=dVhiqajDimVwgjciY+UjS/M06CP285jHGc/wSZ0DRhQtX3UH7HjtWoEPAZvKFnuYGci0JR
 4TsnWEUSG+foWyS9t1cnu07zjVC9p/w0B1Fd3/vL9GGCITs0YRoLGAUr0SdOhtEAf/2s57
 pjBhBEiTxTmXLH9XqYG/PRMFnEb/XgArSV4vZQjDKo+/LYc9KP9LvnDUTBStuwwiianBfQ
 zM3j4MSdMieTUb0Mykk9LVCN/nr4LG26MOymjT1c5s4gSr5jNhnXI45vxnSOjuxp5eVITR
 Aud80QICHV+H6Czcrw2grvF0xWKz/u/kJKWTf/T5AfvdF/wrfb9hzUrLVG3zAQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
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

This patchset adds two improvements for the broadcast flooding
algorithm:

The first patch refactors/reorders the broadcast packet queueing.
Before a broadcast packet was always queued. Now the queueing decision
is performed on a per interface basis. Also the first broadcast is always
transmitted immediately, without queueing now to increase performance.

Furthermore this restructuring prepares for the next two patches:

Patches 2 and 3 introduce a broadcast-packet-to-unicast mechanism.
Similar to the multicast-to-unicast feature of the multicast back-end a
broadcast packet is split into multiple unicast transmissions. The major
difference here, for the broadcast flooding, is that it is performed on
a per-hop instead of the initial originator node basis.

This should improve throughput and reliability in densely populated
receiver scenarios, where the multicast back-end is not able to operate
(the multicast back-end is more targeted at sparsely populated receiver
scenarios so far).

Regards, Linus


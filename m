Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C9B1C488
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 14 May 2019 10:19:43 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 95A46816FF;
	Tue, 14 May 2019 10:19:39 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 412E080340
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 14 May 2019 10:19:37 +0200 (CEST)
Date: Tue, 14 May 2019 10:19:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557821977; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=yg9WwstVdvxgdBJ070ccumS0CD84EdqlRjipKbnCLS8=;
 b=IcIEU32zQLibJsV8oJk4r9zyAWv9vqqkuv23jWyodNQXrNQSjBC6bt4RkJ57nNDTzYj/3O
 HUYmsMZRnLEWzy1WcxR8bExB/x56DTByt6eKb7qBqFH4VEMW5n0Yq/OZYC+UEjP0WiXsdb
 c1VQZhGQUuZVBnDI7dmYeacS1izP9g5rvG2MRuMYXCslDLKiB3i8WNVW0E/LE/NwYvtPcZ
 MiHWDZBXbF9mEJxiIeBsC7MG1shX+KO7ncvnf2FM4Yk10LFComAW7e6gMt3jW/wiW79+03
 gqiCWGGeTACOmT+urg63HZ7ssp8AAfUTUUbzIjxHJ7MgvwBXczElfbzdUbQuIA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Message-ID: <20190514081933.GA1602@otheros>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
 <3693433.LtgH54LjNc@bentobox> <3691280.TvIfeD7Em7@rousseau>
 <1895475.8kFdyZb9vl@bentobox> <20190507151723.GB1493@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190507151723.GB1493@otheros>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557821977; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=yg9WwstVdvxgdBJ070ccumS0CD84EdqlRjipKbnCLS8=;
 b=ZgMQ8knF5yHKqDc48nb4AouGc36ORvMn3QMhlps2d19XCXm0HFqtAHpJqsx44eH4Vcs5V4
 otfYLiw6rBw75CWpSj9q8w83rf8YQ32Co7cm4vfzW8urOw1ULgX5oPFi/90FfA+zDSlsD+
 FSVIiz8EBMDZCPdlMxCO90ukxADcr/pdj+OR3fKvv2kpEbkDiPTAWkVBKR6FO71P8KZ8E4
 6sgmLsXnKO7E2tdoTIvgDqd84+0BxcR7QuBvAMy8xihUkwQwZaV3J98/ZKO28VJXyac5cX
 KiAokILkVdbkJyCLLZhi2pclfnPxVRAZrO4CPdLBZR2rv5ftdnCPdrD1jaBJBw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557821977; a=rsa-sha256; cv=none;
 b=dybx73980yAyTyrtdjPkDEmJ9f0eGq8XowwuptOApTB6vMtno7NgbBruDJkALkrRjjv+Js
 0x406RbzAZbTWoRNwK8Fcdjcyxi3CrStZc0vnIq1wyk/OOGLLcsYCVJxEnSwE2+5L2hyWg
 rS2LLTQSNbaO4vHZ2mbmoVogeCNi8OJqVpw9jngVxdn54m8Avu/MMQKmby6/fwiTkQJGd/
 yUsyVK2iKk6gnfQtZzGbTgnbhEmZquBKYKXBnlFhzXJC72cln+cgXA74Qnc2kMLqc2/p/9
 nssxOBGrYc2uXkxZI9YRtai+fihsjJnL07G5FzeBVFMqta3Dgr/A3gdRMcxG2w==
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

On Tue, May 07, 2019 at 05:17:23PM +0200, Linus Lüssing wrote:
> Maybe more importantly even before the bcast_packet->seqno is
> increased. It could become an issue if a node were increasing it's
> seqno quickly without other nodes noticing the new seqnos.
> Broadcast packets we actually let through might then be received
> with a seqno outside of the seqno window on the receiving nodes.

Hm, what do others think about this? If I'm not mistaken then we
currently have three places to consider, which would be affected
by high packet rate multicast:

1) Sender, batadv_forw_packet_alloc() in batadv_add_bcast_packet_to_list():
   -> BATADV_BCAST_QUEUE_LEN = 256

2) Receiver, batadv_test_bit() in batadv_recv_bcast_packet():
   -> BATADV_TQ_LOCAL_WINDOW_SIZE = 64 -> duplicate detection

3) Receiver, batadv_window_protected() in batadv_recv_bcast_packet():
   -> BATADV_EXPECTED_SEQNO_RANGE = 65536


I did some rough estimations with a 5Mbit/s multicast stream
(typical bitrate of a 720p video), quantified to 1250 byte
packets on a piece of paper. It seems ok-ish for the three cases
above, but also seems to get in a range I would start feeling
uncomfortable.

Dropping early via noflood instead of dropping later on the
hard-interfaces via BPF would avoid taking up queueing space and
sequence numbers.

(And I think the queueing onto the kworker also creates quite a
bit of load. At least something like that was my experience on
a Raspberry Pi One with a USB wifi dongle which used a driver
that queued everything onto the kworker, the kworker was
always very busy and never made it above 10-15MBit/s if I remember
correctly [1].)


[1]: https://wikidevi.com/wiki/TP-LINK_TL-WDN4200

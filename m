Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B09316678
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 17:17:33 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7417C81620;
	Tue,  7 May 2019 17:17:29 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 7701D80638
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 17:17:26 +0200 (CEST)
Date: Tue, 7 May 2019 17:17:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557242246; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=0h1odlNTIl0DgE25HkrqLH3M3gA4Zhcb1JLoKiQLM8k=;
 b=ZJo+7OLK/ud3PWG+CvsdrZNA4fp5rwpnNTJGLOSFiG0O968dyZ810Rv2uf03U/kmZd1Y/K
 uff5s1eRU8O1xb12duhpvygmv9/6Ey2IjAaaV1YeJOGYQOIziEBsDMWLZEX6pMQ4wak0+7
 ZGdTnkFVMtsT1IXS6MYdMkLzH0MaNSpjkJKWuZKSBt+6jeSA5KRb3yqNheWeSJzzult155
 Jb6CrofI8MM4+aXdz5H7fnjG3rBF8GNV8OXUA5HLjLRLCbvcKijG9o3UZO9Ev62Jqe+mmR
 B1Q0eOvLeUEnRC76vF5LuAixeQacwoIeIbKq9t9akaL+GXzzzg2iSXDJTNXyyw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Message-ID: <20190507151723.GB1493@otheros>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
 <3693433.LtgH54LjNc@bentobox> <3691280.TvIfeD7Em7@rousseau>
 <1895475.8kFdyZb9vl@bentobox>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1895475.8kFdyZb9vl@bentobox>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557242246; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=0h1odlNTIl0DgE25HkrqLH3M3gA4Zhcb1JLoKiQLM8k=;
 b=B3EKhdDrcC2qbg2p48OP4bBxWBHqb2fQVLlldIeWJmPKxi5F1UmKd7MLZCsxg7x2yxfNId
 qdSHSrkMBvwZMbiiRNMnnVe3AYx6Td7ucQW9frUldcKFLXz4iOI+wnD7a+XysACR0bd1EG
 vzhDcelrTkyYt2QJVfhykd6LFr0pDul+1K0/MzgaNZzbTf4wm1b3L6hYLo4/S/BX1uFPHX
 dGvELQnlklxpbHaetCjXsu83cEWIgovOxsT/GEkkt0SL/BoUdxKTrUJTJurMMwCnumwEHf
 uF+FOmWzmz+/HM6C5gEvckUXNZDAXF539u74WOlBDIPoocZpF4n9kYkTt8GVRA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557242246; a=rsa-sha256; cv=none;
 b=OvQA+/2rDk7Irpflw5a+bXT1qj5UINbYPU075vaSKbFPxvUvS+7exFUiDzTXy5+gTGmM4M
 ostBPpqyL1BjVC9Wv6TSJ54wcpQHfVguyL9eKSsvLC641nNfq/h0duNhE/HA8JUPOZqTyF
 FnrRY8tHi5eEDRLmKg3nDlsvIdWphaTlVAbPihO8lAUYbTyP6QesFoIkUNCbpRTJJVDkQi
 vGd8CbbB0UHtUgvz55mQtTgIR1UDyi4u4vBLIqc92I+UmxnSHivUyaHH2c4hx0AT2K3xJX
 M8q/AG8sxFIclBR04/6nc7Kch5e2+BQ3BcwGkOqHEtYK6PjaxWzwFv46AdiPIw==
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Tue, May 07, 2019 at 10:21:40AM +0200, Sven Eckelmann wrote:
> On Tuesday, 7 May 2019 10:00:18 CEST Marek Lindner wrote:
> [...]
> > > I still don't see why this has to be implemented in batman-adv and not as an
> > > external filter (tc-ebpf or something like that).
> > 
> > As I understand the use-case (Linus correct me if I am wrong): The mark is 
> > supposed to drop packets that couldn't be $optimized by one of the various 
> > batman-adv payload traffic optimizations. From outside of batman-adv it would be 
> > difficult to tell if a broadcast / multicast packet was optimized (think: served 
> > via DAT cache, sent as unicast, etc) or not.
> 
> It should be easy to see in tc whether a packet is transmitted as unicast or 
> broadcast. It is just a bit check in the destination mac. So it would end up 
> as a filter somewheere in the hardif tx path which first checks following 
> before rejecting a packet:
> 
> * is it a multicast/broadcast destination address?
> 
>   - maybe this part isn't even necessary - at least the mcast2unicast stuff 
>     uses batadv_send_skb_unicast 
> 
> * is it a batman-adv packet?
> * is is a batman-adv compat 15 broadcast packet?
> * does it have the noflood mark?
> 
> This would even allow some fancy stuff like rate limiting or per hardif 
> behavior. With the problem that there is no package yet which does this in 
> gluon.

Ah, that's an interesting idea. So basically filtering on the
hardif instead of in batman-adv via some custom compiled BPF
filters. So basically similar to writing a small program like the
gluon-radv-filterd with a BPF_* parser?

https://github.com/freifunk-gluon/gluon/blob/master/package/gluon-radv-filterd/src/gluon-radv-filterd.c#L223

> Or am I missing something essential here which is also done in the 
> batadv_interface_tx path?

Hm, I guess functionally this would be mostly equivalent. Maybe
except a bit of performance due to our custom queueing
infrastructure. Not sure how much performance it would cost on our
small MIPS devices if a client were sending a few MBit/s of UDP
multicast through our batadv_add_bcast_packet_to_list()
infrastructure.

The noflood-mark would drop the packet early on in batadv_interface_tx(),
before any queueing or copying happens.

Maybe more importantly even before the bcast_packet->seqno is
increased. It could become an issue if a node were increasing it's
seqno quickly without other nodes noticing the new seqnos.
Broadcast packets we actually let through might then be received
with a seqno outside of the seqno window on the receiving nodes.

> And why would we see see stuff which as served via DAT? This is usually not 
> transmitted on the hardif ports.

I guess Marek ment it the other way round (see his "or not" at the
end of his sentence).

Regards, Linus

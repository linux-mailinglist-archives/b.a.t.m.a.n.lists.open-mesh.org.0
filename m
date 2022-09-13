Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FCF5B71A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 13 Sep 2022 16:50:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 840CE8008B;
	Tue, 13 Sep 2022 16:50:22 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B53B78032E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Sep 2022 16:50:18 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 988883EEF9;
	Tue, 13 Sep 2022 16:50:16 +0200 (CEST)
Date: Tue, 13 Sep 2022 16:50:14 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Stig Venaas <stig@venaas.com>
Subject: Re: [pim] draft-ietf-6lo-multicast-registration-08 replacing MLD
Message-ID: <YyCYpuaBWSRnXvS/@sellars>
References: <CAHANBtLwT5gjApRSh79RwVFMsiEmD_R78RSeSxeR1pznpfTdKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAHANBtLwT5gjApRSh79RwVFMsiEmD_R78RSeSxeR1pznpfTdKQ@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1663080619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Gi5oJuROyxAQOEJDCnl9An93unmqmVFJOo3Wbxwlrts=;
	b=Cru4nFVsMinwKBtfgBIUMjjsv8OmbuenIxS8vE9+GZgDN2OlEt73Z0/akSRCbhEbBVEVBr
	NjG36E93lAg3Mhco8kEXDRYHzEjRacE0TmQhB0GBLk6KqjYS0NDwVXoDakXVJs10KGwNCw
	qk4UN6HXCZAExIsI4ZKAE0geZFK9Lv0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1663080619; a=rsa-sha256;
	cv=none;
	b=sUu7lHC9hLDnV2P8Y6Pf7yB2ebvlWzO3LNNfZggH5dmUZOwbqHvt5EPTHeuZnyu9Qaal53
	WgOeZcjYNljRL3kw8ME8QVr0TwB4zN7272/PiJdLKY/NbiXMrZmhr+TIC8JSa7QB1bYEyN
	rCk/KPvqx2/gr89WN/6aZyWi7omkvpc=
Message-ID-Hash: ORIB2QOIE3KTRDVHF23WQ6MO2QEB3A5D
X-Message-ID-Hash: ORIB2QOIE3KTRDVHF23WQ6MO2QEB3A5D
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: 6lo@ietf.org, draft-ietf-6lo-multicast-registration@ietf.org, pim@ietf.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ORIB2QOIE3KTRDVHF23WQ6MO2QEB3A5D/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Aug 08, 2022 at 10:21:05AM -0700, Stig Venaas wrote:
> Hi 6lo and draft authors
> 
> I have some concerns about this draft replacing MLD for group registration.
> 
> Having 2 different protocols for the same thing can be problematic.
> Hosts or routers may need to support both protocols. Is it clear which
> one should be used in different environments? Is there a chance that
> both may be used at the same time in a network? In particular, is
> there a chance that a router may need to simultaneously support both
> protocols on an L3 interface? In that case it must be considered how
> the two protocols interoperate.
> 
> Also, we have been pushing the use of SSM in the IETF for a very long
> time, but this draft only supports ASM since only a group address is
> provided.
> 
> It would be good to have some more info on the need to replace MLD. I
> understand there are concerns about packet loss, limited resources
> etc.
> 
> Regards,
> Stig

Hi,

Is there some good overview and/or presentation of this alternative
concept available somewhere? The introduction of
draft-ietf-6lo-multicast-registration-08 as is is a bit difficult
to start with as its introduction references a lot of other, fairly
new RFCs (which generally is fine for me, avoids duplication;
just not that easy to start with as a first read :D ).

I'm very interested in this topic as we too are experiencing
several drawbacks with the current MLD approach in our layer 2
mesh networks based on B.A.T.M.A.N. Advanced [0]. Typically people
use 802.11 based WiFi routers with fixed line power with batman-adv.
At least for larger installations. While if I understand correctly this
new RFC is focusing on off-grid LoRaWAN based mesh nodes, right? Might
be interesting to check if for these two different radio technologies
we face similar issues, but also if we might have differing requirements.
To avoid that we would need a third protocol later...

---

batman-adv currently makes use of MLD snooping [1]. The four main
issues we are/were facing:

1) MLD overhead is high with default intervals for the
   mesh network sizes we are working with (> 1000 mesh nodes and
   > 2000 client devices)
2) MLD is too slow and unreliable with default intervals for
   a lossy, dynamic mesh network.
   -> we can't fix both 1) + 2) by tuning MLD querier parameters
3) MLD querier selection is not robust enough in a dynamic
   mesh network, lowest MAC addrdess for the querier is a
   bad criteria, we don't want a barely connected node with
   high packet loss at the edge of the wifi mesh network to take
   over such an essential roll; actually we don't want any
   mesh node to take over a central role, batman-adv was designed
   to work as a fully decentral mesh of equal nodes without any reliabilities
4) IGMPv2/MLDv1 Report suppression [2]; RFC4541 ("Considerations
   for Internet Group Management Protocol (IGMP)
   and Multicast Listener Discovery (MLD) Snooping Switches"
   is not feasible solution/workaround for us always forwarding all
   multicast traffic to the querier would lead to congestion

On the other hand power consumption of MLD as noted in the draft is
not a big issue for us right now, though it might be related to 1).

The workaround for our four issues we came up with is to split the layer 2
broadcast domain per mesh node with layer 2 filtering of MLD [3].
So regarding MLD it is now behaving more like a layer 3 mesh network,
where each WiFi router / mesh node is its own querier for its local
Wifi clients. And between the mesh nodes we exchange listener state
through the batman-adv protocol, sort of like a one-way proxy,
as its more efficient for us right now. The downside is that it is
one-way right now, so each batman-adv node will have the listener
state which is enough for us right now to ensure that within the layer 2
broadcast domain multicast works fine. However a remote batman-adv
node won't translate it back to MLD, so layer 3 multicast routers
won't be informed. Also its ASM only at the moment.

But I would celebrate it if we could just get rid of these workarounds
by simply having a more robust, more decentral but also less costly
MLDv3 (and especially no more MLDv1).

---

I'll also be at the Wireless Battlemesh [4] in Rome, Italy, with several
other batman-adv developers next week and we will be talking about mesh
networks the whole week. Feel free to stop by if you can, it's
an awesome event :-). Or would anybody be interested to exchange our
experiences with MLD in mesh networks remotely during that week? I
could put an official slot on the Battlemesh schedule, if people would
be interested.

Regards, Linus


[0]: https://www.open-mesh.org/projects/batman-adv/wiki
[1]: https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations
[2]: https://www.open-mesh.org/projects/batman-adv/wiki/Multicast-optimizations-report-suppresion
[3]: https://gluon.readthedocs.io/en/latest/package/gluon-mesh-batman-adv.html#multicast-architecture
[4]: https://www.battlemesh.org/

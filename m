Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 039DD3BFC7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jun 2019 01:14:28 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 888CE82712;
	Tue, 11 Jun 2019 01:14:21 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id AD0E880A39
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 Jun 2019 01:14:16 +0200 (CEST)
Date: Tue, 11 Jun 2019 01:14:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560208456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tk1MpfIJYL6pWBqnCejF7IgBKhsBYZcjmeoPKdvj6+k=;
 b=aWRiXyyKd8d35gpjjeUKAKAFjSdQSXWDokkBG/GQZIhY1m1TNZr+RERXdFroXlEI5u8Kt6
 vFw1rGfLLdKIvBtO7TCzywSx3njVntqCwkwT6D19Yqn3elJ5V9kz/oyozw4j4kLAjUZQj8
 PtZIfHMpLqR44YzsvybUuSy9TgrDRj9cyMabvWuV+SrPBRRFaNjF8jiR5CMlnes+3BnNG6
 QtMia3ktGwn3fzYcH4E5i1NRHkXrvAqNbW2R7luwWieimt9ey4CC8B0DbHVwyO+hIKO/OK
 gl7iwv7SBKi5cQO9RIDBuNbWU+Aa10ciiXTyub5eBeJ4G5FcACrOHQAZbX9kcQ==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v4 1/2] batman-adv: mcast: detect, distribute and
 maintain multicast router presence
Message-ID: <20190610231414.GA10498@otheros>
References: <20190610004535.13725-1-linus.luessing@c0d3.blue>
 <20190610004535.13725-2-linus.luessing@c0d3.blue>
 <1984348.Q8u5oXqQmF@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1984348.Q8u5oXqQmF@sven-edge>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560208456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tk1MpfIJYL6pWBqnCejF7IgBKhsBYZcjmeoPKdvj6+k=;
 b=C4dtGRJQCj4y+p/EzIA8JT62p2Aw07oset6FAhdNxGHjdLbDg/QFu40kU36PwDnYBI7oLS
 vWraU+uTBFkEjP5bwiAVmJQn840XtH6EgHsEDfuHoEyp8SdYBtFLaJucG4y7B9G7nd2H4Q
 EuhSGPdVrmRBzV0ebI9Z5Y+0YOMyWZGMdaRbLv61vBFBYnR0RNyaei0MrZsobaKtzxLSki
 uWIRFHy80LZyiVDHpxWPlGY54p9y1tDSTOd19RcOfv/WmW93hfdYJbUkpYv0nZxJKwKnqg
 +yzbAz2DSCjJXskCNKRSqpaIc7jXnhhP9sB8U0bc9CG+BJUt3CKrrQO3pUTq6Q==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560208456; a=rsa-sha256; cv=none;
 b=Q2v9ucq6rgi7h4FyqbLiBzbNOhtXY+Zk3oCt56E0fWkjEPc2yEhnrEusf1OHg+TNmQNadq
 fWAOpkHVbTWWtccagcUKY3RYXwK3CP/dJyxaHef0BNBEJVErVJ9Pl7TUVmZ1Qi11Bxi5Yn
 umJ/miPARtsjzdM6FPaF2+IGwSv//iyt0fr4TOrpzbDm6otvokYJoG2gTRKhHmQLUKihq9
 qvXsgxr253JafOlQQ4dd/GQVa0rdr9/N+Y1VfkzHQgO2YXgEkAS/vfED2v6rZYk9vfivpk
 bmInGKQ4ATI1gx12BcrGZmeQI/Ye9eb0vr3iujrYxOjMWGf0xIRqYkCtlJU27A==
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

On Mon, Jun 10, 2019 at 09:24:26AM +0200, Sven Eckelmann wrote:
> On Monday, 10 June 2019 02:45:34 CEST Linus Lüssing wrote:
> > @@ -107,12 +107,20 @@ enum batadv_icmp_packettype {
> >   * @BATADV_MCAST_WANT_ALL_UNSNOOPABLES: we want all packets destined for
> >   *  224.0.0.0/24 or ff02::1
> >   * @BATADV_MCAST_WANT_ALL_IPV4: we want all IPv4 multicast packets
> > + *  (both link-local and routeable ones)
> >   * @BATADV_MCAST_WANT_ALL_IPV6: we want all IPv6 multicast packets
> > + *  (both link-local and routable ones)
> > + * @BATADV_MCAST_WANT_NO_RTR4: we have no IPv4 multicast router and therefore
> > + * only need routeable IPv4 multicast packets we signed up for explicitly
> > + * @BATADV_MCAST_WANT_NO_RTR6: we have no IPv6 multicast router and therefore
> > + * only need routeable IPv6 multicast packets we signed up for explicitly
> >   */
> >  enum batadv_mcast_flags {
> >         BATADV_MCAST_WANT_ALL_UNSNOOPABLES      = 1UL << 0,
> >         BATADV_MCAST_WANT_ALL_IPV4              = 1UL << 1,
> >         BATADV_MCAST_WANT_ALL_IPV6              = 1UL << 2,
> > +       BATADV_MCAST_WANT_NO_RTR4               = 1UL << 3,
> > +       BATADV_MCAST_WANT_NO_RTR6               = 1UL << 4,
> >  };
> 
> I wonder what a good interpretation of 0x1f would be (all bits set). The code 
> doesn't seem to be able to handle this but an interpretation would be:
> 
> * get all unsnoopable
> * get all link-local but not rtr

Good question. Currently code-wise it's neither of those and
the BATADV_MCAST_WANT_ALL_IPV{4,6} is authoritative. So if those
are set then you'd get all IPv4/IPv6 multicast traffic regardless
of the other flags.

> * get all unsnoopable

That one does not make so much sense to me. That should be
covered by only setting BATADV_MCAST_WANT_ALL_UNSNOOPABLES and
would currently contradict the purpose of BATADV_MCAST_WANT_ALL_IPV{4,6},
wouldn't it?

> * get all link-local but not rtr

That could be another way to interpret it. It's an option we
currently do not have, the option to receive all IPv6 link-local but
not routeable IPv6 multicast traffic.

I'm currently unsure when we would need that. Are you suggesting
to interpret it that way, just in case we might need it some day?

Note that this would also be a "soft compatibility break". So old
nodes would still interpret 0x1f the same way as 0x07, meaning
they would send all multicast traffic to nodes announcing either
0x1f or 0x07. It'd be a "soft break" because it wouldn't cause
packet loss, old nodes would just overestimate.

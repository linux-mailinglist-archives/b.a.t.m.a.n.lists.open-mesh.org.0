Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 480543C020
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jun 2019 01:46:07 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 4CB3182717;
	Tue, 11 Jun 2019 01:46:01 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id B83A680170
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 Jun 2019 01:45:58 +0200 (CEST)
Date: Tue, 11 Jun 2019 01:45:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560210358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OYP7wVtp3o/APfXFq6zky/XvCQaeoy2Avwq/FraOkUk=;
 b=e1olUn+ZOg8T+SRT5Wwj/+BNiZ1iPcsdyEDjf8REa4KZRpBimVjAMNP72j0bLUAuYXB+zv
 fRRY7KwgXB5ji+d1t9MSnxlFLot6vOaY+ioQ4Xud8pVw14U2G0mUUkoj/bD7jevh6OeX7I
 oVEldjiwU9jBUZEEx+WVgRxMlLlnxDp+itOp+SIoskZpZ6S7bLn4AevfgYB0KiVXeafEwZ
 HlicVCrK8eu0u/C/IC54D9DwLV4oDxrdmnQEjEWNCPCpbHYaepjOGAyzEHnnNFNRUwP76y
 6wcCTh7us6q1tMe8QElY5LIQqIrCjvmwcwl3n/is90liS4kGczE97gX+MZnP/A==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v4 1/2] batman-adv: mcast: detect, distribute and
 maintain multicast router presence
Message-ID: <20190610234557.GB10498@otheros>
References: <20190610004535.13725-1-linus.luessing@c0d3.blue>
 <20190610004535.13725-2-linus.luessing@c0d3.blue>
 <1984348.Q8u5oXqQmF@sven-edge> <20190610231414.GA10498@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190610231414.GA10498@otheros>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560210358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OYP7wVtp3o/APfXFq6zky/XvCQaeoy2Avwq/FraOkUk=;
 b=ZjyEYYUCNhdZQGIWk4JRt+kpy6F5wDX5h3hCRAWiMTG53Cz8/LnOfyZCrMyfjJt2StxoDQ
 4neI0csxGsIINWAIhjE+5MZ00OU1KI0i+txokPgfnkUqCwW3AEG6Oof1m7iaaG0vyimDgV
 QgUEs+7LDzKMabr0/l97exg/yca6XhXW4SbdjpH1MHjgm0GJ/FR4wpPze375J6dj1J8RlQ
 yI0ta2QTqfJ5vh1CKxAILbRfGEbjWJoppshabFgGhFzxzT7j3iLHARLIidsyiCEmTKuBci
 sLvTj/p47j92UcOGmqSnwA3M19vtYatlwNcZGqHtGBOsJ9MNRPo48WtL1XZouA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560210358; a=rsa-sha256; cv=none;
 b=YQN7R639fY9dk8c43jCBR7jMmeseP1dWEewB2Fvdb3+6Ipsb2Q/2dAI2dzNO1LT3MpUdF2
 oisEIRohLHg3XG3K0oc1NWywbuQ2F2eNcJ4Cu41aR5DBUB/Y3B/wN9RGcali4iJG1NJ5ai
 voafLf68Z5+p01GL1Wl37ZH53zFGyl1r4u2HNPosnmDLvRoI75CFMSe5WZMZAUEHL+eQVD
 O1tcTANxojxQzQwveFiKb9MZStvHm67R/hXQ0KyGZAQiDiwudW7j3KxMpg2v7DUWH9Tu83
 hYkZyJYqNIZMJfhxcgloV2oJcke55QrIqsJtRWyJ/K3ylkCuxO7Uial+vC6eDQ==
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

On Tue, Jun 11, 2019 at 01:14:14AM +0200, Linus Lüssing wrote:
> On Mon, Jun 10, 2019 at 09:24:26AM +0200, Sven Eckelmann wrote:
> > On Monday, 10 June 2019 02:45:34 CEST Linus Lüssing wrote:
> > > @@ -107,12 +107,20 @@ enum batadv_icmp_packettype {
> > >   * @BATADV_MCAST_WANT_ALL_UNSNOOPABLES: we want all packets destined for
> > >   *  224.0.0.0/24 or ff02::1
> > >   * @BATADV_MCAST_WANT_ALL_IPV4: we want all IPv4 multicast packets
> > > + *  (both link-local and routeable ones)
> > >   * @BATADV_MCAST_WANT_ALL_IPV6: we want all IPv6 multicast packets
> > > + *  (both link-local and routable ones)
> > > + * @BATADV_MCAST_WANT_NO_RTR4: we have no IPv4 multicast router and therefore
> > > + * only need routeable IPv4 multicast packets we signed up for explicitly
> > > + * @BATADV_MCAST_WANT_NO_RTR6: we have no IPv6 multicast router and therefore
> > > + * only need routeable IPv6 multicast packets we signed up for explicitly
> > >   */
> > >  enum batadv_mcast_flags {
> > >         BATADV_MCAST_WANT_ALL_UNSNOOPABLES      = 1UL << 0,
> > >         BATADV_MCAST_WANT_ALL_IPV4              = 1UL << 1,
> > >         BATADV_MCAST_WANT_ALL_IPV6              = 1UL << 2,
> > > +       BATADV_MCAST_WANT_NO_RTR4               = 1UL << 3,
> > > +       BATADV_MCAST_WANT_NO_RTR6               = 1UL << 4,
> > >  };
> > 
> > I wonder what a good interpretation of 0x1f would be (all bits set). The code 
> > doesn't seem to be able to handle this but an interpretation would be:
> > 
> > * get all unsnoopable
> > * get all link-local but not rtr

Hrm, in hindsight I would have prefered a much cleaner, more clear
and more flexible flag set like:

enum batadv_mcast_flags {
	BATADV_MCAST_WANT_ALL_LL4	= 1UL << 0,
	BATADV_MCAST_WANT_ALL_LL6	= 1UL << 1,
	BATADV_MCAST_WANT_ALL_RTR4	= 1UL << 2,
	BATADV_MCAST_WANT_ALL_RTR6	= 1UL << 3,
}

The IPv4 unsnoopable case would have been equivalent to
BATADV_MCAST_WANT_ALL_LL4. And for the IPv6 unsnoopable case,
which is just the ff02::1 address which does not get any MLD
reports, we could have injected a TT entry for 33:33:00:00:00:01
instead (or just always flooding ff02::1).

Well, I guess that's too late now.

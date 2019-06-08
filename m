Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F94C39D3C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  8 Jun 2019 13:27:17 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 787D3815F1;
	Sat,  8 Jun 2019 13:27:09 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id B83BC80688
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  8 Jun 2019 13:27:04 +0200 (CEST)
Date: Sat, 8 Jun 2019 13:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1559993224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iy9m8JZHZQwnXmtCWq+GNOSeZqVjJSw252XHZfah+JU=;
 b=rZzsoo9jIOEFdDciqeWSZxpedkQNI6qteA4aW3Vr/PX8Mk///3DH9KYwDe1vdLeWy9p/MA
 0JQz6B0SCzHPyW+IKgA/TaCsPKVIy0yfXBmGqcFx29FrR3GdP2cpPgaskYVo2UOE4GgOGL
 CqDYzeXRSxKDj6nX7VhmUcwzZrJIBu9ZIum+qLLYk0I06+9R7/uM7l5pbDwNbIghEAYEpN
 duNm2Qh/zd/XL6Xn97LCsv3cM2xIPDj50ByKiMF7SvfV3MX+2dBzaGXkzc9SR6rBN4nWf5
 790pcCOv87fqydPAUxUi3kqw0hJ3rp0FQai9uykDyjmgbzgx0ZnK3QgvxWSKpA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v3 1/2] batman-adv: mcast: detect, distribute and
 maintain multicast router presence
Message-ID: <20190608112656.GA2503@otheros>
References: <20190526164829.4247-1-linus.luessing@c0d3.blue>
 <20190526164829.4247-2-linus.luessing@c0d3.blue>
 <3461137.lo7lFcuFkP@bentobox>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3461137.lo7lFcuFkP@bentobox>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1559993224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iy9m8JZHZQwnXmtCWq+GNOSeZqVjJSw252XHZfah+JU=;
 b=Wr4HNozsdK+d4SwQVw3V5iZlhIlAoY6N9zcTkWMq+ITydPwW7VzmT7NVymofObMOlo6ozX
 rC9M00FH2rWHWfmIXJxG4dzs+ZFmLaHySk1gFfTPOM3pxey3jAp23pQNfYbTyiS5D2vdQ9
 9/dcVbW/k5FUOXWphP7+SrgDPJ3mm47HNkKckTG82SrKVck8tiZcO/YBDj0hx5548ziwRl
 t0tvDwD6cDypZQIny12thZFCoxxvIk2Nuz5j1SqwmI9U4asDeGj7mFccFyDEcPjxXLLj8v
 GoJqhOpqzg4xWFXrqQnd5cApyZE0XHj56sPQ3ZVEPF8Q8DMfk5MXv8i0Yv1UlA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1559993224; a=rsa-sha256; cv=none;
 b=iDF1vrWPaESqHBUVq3O4FjYY3tIVW48iV3KIMydZv6+2cShZ/n6Pu1MzJEH5xYpPMqSPrr
 EUQ0WtZCCCPHtwdMyq+XUYQ3mpTGadtuQsCUoiocPFPmtUSDoDXs608v99KRsoAYiJO8k3
 pBr3gLwmdvBRsyxO5eaDv6xsShi6yKCukIrg0M4x7AaJETehqBnubby+f5WG0fHAi1yCin
 cvTcQOalAp/ElmNz6fEOyEFKiz32hOoM7O8YydGoiqRnksx5uwil4Wc9cc5iQ0GGiDu4On
 oYnHXeTgKu1ZLMUf7Eq4F/6HFL2fhjxzqX5PCT2g+sB66Mn28fnrhbQMoBmtRQ==
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Thu, Jun 06, 2019 at 05:48:32PM +0200, Sven Eckelmann wrote:
> On Sunday, 26 May 2019 18:48:28 CEST Linus Lüssing wrote:
> > If a multicast router is detected then this is signalized via the new
> > BATADV_MCAST_WANT_ALL_RTR4 and BATADV_MCAST_WANT_ALL_RTR6
> > multicast tvlv flags (which are sent flipped over the wire for backwards
> > compatibility - so that old nodes will always have them "set").
> [...]
> > @@ -691,7 +868,12 @@ batadv_mcast_mla_flags_update(struct batadv_priv 
> *bat_priv,
> >         batadv_mcast_bridge_log(bat_priv, flags);
> >         batadv_mcast_flags_log(bat_priv, flags->tvlv_flags);
> >  
> > +       /* toggle WANT_ALL_RTR flags as they are sent flipped on the
> > +        * wire for backwards compatibility
> > +        */
> >         mcast_data.flags = flags->tvlv_flags;
> > +       mcast_data.flags ^= BATADV_MCAST_WANT_ALL_RTR4;
> > +       mcast_data.flags ^= BATADV_MCAST_WANT_ALL_RTR6;
> >         memset(mcast_data.reserved, 0, sizeof(mcast_data.reserved));
> 
> Ehrm, this sounds like it is a good way to confuse people. Have a packet field 
> which is called BATADV_MCAST_WANT_ALL_RTR4 but it actually means that it 
> doesn't have BATADV_MCAST_WANT_ALL_RTR4. So maybe we should call this 
> differently in batadv_packet.h's enum batadv_mcast_flags. 
> BATADV_MCAST_WANT_ALL_RTR4 -> BATADV_MCAST_WANT_NO_RTR4? And then switch the 
> logic in batadv_mcast_mla_rtr_flags_softif_get_ipv*, 
> batadv_mcast_mla_rtr_flags_bridge_get, batadv_mcast_mla_rtr_flags_bridge_get, 
> batadv_mcast_mla_softif_get_ipv*, ....
> 
> Or is it really necessary to have this enabled for older nodes?

No, I can swap that. Then we'd just need to make sure we really
and correctly swap the logic every else (which I initially wanted
to avoid, to be able to reuse as much code unmodified as possible as used
by the WANT_ALL_IPV{4,6} flags).

But you are right, when looking at things on the wire (through
Wireshark/tcpdump etc.) it might be confusing for the user to have the
bit flipped. I'll give the WANT_NO_RTR{4,6} a try to so we can
compare.

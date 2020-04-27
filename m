Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC5E1BAB04
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 19:19:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 08A8080E19;
	Mon, 27 Apr 2020 19:19:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588007952;
 b=dYbKA19aa1N9Hm1y+Oxv+UZjWu5CtHuLQQ9sk62Vo8R+cqR1rfZdpo1pYVCh5RDuWUNCo
 s0oyJq/5UVWFpXUsTdS+XnP2rmaW5ktIyvTO6+RUDYpMjWfhDtIlX7CXBQekJQyw/1Mvpsj
 FwShOVfJHs1Kqqpvy2oBVR2/yHHULFY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588007952; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2sPEz6T5BUMrJ97PHNm6fItWtvJnY6t6C6Cwczj5iz4=;
 b=K8R8I3+g4Yy/Yy438e+7qUtRCCeP1+BnYqXDgujs/3s9hZQiFPWP7YgF3rqsJQ/oHja6V
 NfOffXCt+ssE7nCBhhYcNtj6V0+REfreiJEI+nXOxnIprBsMAAmejn9IPnJ3j7KAa3MSlN0
 oMxJ60jXodkcS53mgbbY10QKsDnIXo0=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass header.from=narfation.org
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org; arc=pass; dmarc=pass header.from=narfation.org
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 58D4980043
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 19:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1588007950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2sPEz6T5BUMrJ97PHNm6fItWtvJnY6t6C6Cwczj5iz4=;
	b=ni1sw8o0fuZxDuwZo0ukWd/FoHDbZ0kdrOWELVy/d86auGELsNVYDhH4Aj1JddnBNPSBnx
	WJFfF3wPAzvRbYGLBUaH/7/9PRRoKvFVNoZ8pJ7Km3iiZT4OQOIsjf7o9iHPRPmJpHEAZ8
	FcK+FgsoqI+sZKDYKZpy9VFXWdbL/0E=
From: Sven Eckelmann <sven@narfation.org>
To: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Subject: Re: configuration issue
Date: Mon, 27 Apr 2020 19:19:00 +0200
Message-ID: <5962426.I90Fg3i1QP@bentobox>
In-Reply-To: <CANKYHpe_cG=dKv5z4tecjb24U_P2ipWoQPownNCxKySU_FozQw@mail.gmail.com>
References: <CANKYHpeiWj7w2KEnkEfjUHWKfbhEAj7kMVE5hL5xv6O_1ZVFwg@mail.gmail.com> <1684592.5WYlJ4OYfx@bentobox> <CANKYHpe_cG=dKv5z4tecjb24U_P2ipWoQPownNCxKySU_FozQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart17857616.P6YaZa0Rg7"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588007950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=2sPEz6T5BUMrJ97PHNm6fItWtvJnY6t6C6Cwczj5iz4=;
	b=doViuYbUNRAJyN3pu2KjXJR/3cIfPFubYob5VURPJIa/2LFoJzOf2KO4fJnR7SI+R4FPrZ
	1/p9TKRauTdu3tcnpxSUNmChHgC95EYyW0u7+GzhfE1gCb9w2zRVWyqh2fAmLaEvn/5DcP
	Pj01n8HjoEjyDwivX491mrDm3AOJsbg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588007950; a=rsa-sha256;
	cv=none;
	b=2KqoflFwmpSkxOgQWpPcq44bqpejoL1Yg58kp8tts5MtQYR2IOD/ZZCNqUKshfkKke1L93
	z7Zy2kjGPhQg0/5gESBWEbOAM6mFJIRfT5jC7ZGVw9CtrzsX14kR7bkHr7wkuTBmG2/P+z
	GTuB1yPuRghwTvAxTJG3qdb9L0hd/FQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ni1sw8o0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: LTZI45UBLLKJHIF5VTRO3HDDBJ7TZPP7
X-Message-ID-Hash: LTZI45UBLLKJHIF5VTRO3HDDBJ7TZPP7
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LTZI45UBLLKJHIF5VTRO3HDDBJ7TZPP7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart17857616.P6YaZa0Rg7
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 27 April 2020 18:35:29 CEST Oguzhan Kayhan wrote:
[...]
> *I 'm running Gateworks Newport as controller board. And updated from their
> repository Thats the version they had..Actually I tried updating the feeds
> to the latest version but, It threw error on compiling..So , didnt waste
> too much time and stick on the 2017.4 version.But if needed, I will try to
> update versions also.*

Please write them and ask them to adjust their repositories to actually ship 
OpenWrt 18.06 with the up-to-date feeds. We don't support 2017.4 anymore and 
will not provide patch backports for 2017.4-0 from openwrt-routing. But we
have a lot of stable backport patches in 2018.1-11. And 2018.1-11 build likes 
a charm when the main OpenWrt repository is actually an 18.06.

And to me, it looks like Gateworks 18.0x is not even based on OpenWrt 18.06 
but on something which was forked 7 months (1287 commits) before the release 
of 18.06.0 - and we are currently at OpenWrt 18.06.8 on the old stable branch 
and 19.07.2 on the current stable branch.

You don't even have the "newest" (up to 28 month old) security fixes in 
gateworks 18.0x - and there are quite at some security and stability patches 
which you should get integrated.

> > [...]
> > > config wifi-iface
> > >         option device 'radio0'
> > >         option ifname 'mesh0'
> > >         option network 'mesh'
> > >         option mode 'adhoc'
> > >         option ssid 'mesh'
> > >         option bssid '02:CA:FE:CA:CA:40'
> > >         option mcast_rate '18000'
> > [...]
> >
> > Please think about switching to meshpoint without forwarding.
> 
> 
> *I'd be glad if you give more detail what you mean.*

The example configuration was given below. What more details do you need? You 
already noticed yourself that it doesn't support IBSS/adhoc.

> 
> >
> >     config wifi-iface 'wmesh'
> >         option device 'radio0'
> >         option ifname 'mesh0'
> >         option network 'bat0_hardif_mesh0'
> >         option mode 'mesh'
> >         option mesh_id 'mesh'
> >         option mesh_fwding '0'
> >         option mesh_ttl '1'
> >         option 'mcast_rate' '18000'
> >
> > At least in my experience, the IBSS support in the device firmware is
> either
> > not there or starting to rot.
> >
> 
> 
> 
> *That might be the problem.On 802.11ac card, iw phy gives supported
> interface modes as;managed, AP, AP/VLAN,monitor, Meshpoint      but 802.11n
> gives IBSS,managed, AP, AP/VLAN,monitor, Meshpoint, p2p-client, p2p-go
> modes..*
> *So.. does it shows 802.11ac doesnt support batman?

Hu? batman-adv is not IBSS. It can run on all kind of interface types. But it 
makes more sense to run it on meshpoint without forwarding (mesh_fwding 0) or 
IBSS/adhoc.

> or is there any other
> ways to try besides ad-hoc mode? Both cards are DoodleLabs*

Use a meshpoint interface without forwarding. As shown in the example 
configuration in my first mail.


[...]
> > A device just cannot be in a bridge and in batadv at the same time. Just
> not
> > possible because the bridge would steal all the ethernet packets before
> > batman-adv would receive them. So it is not even allowed to have two
> masters
> > (batadv interface and a bridge) for a single interface (wlan0, eth0, ...).
> >
> 
> *So, what is the correct way to do that then..*
> *Any examples for this scenario?*

Don't try to add the ethernet in both bridge and batman-adv as slave. Doesn't 
work - so I cannot give you an example.

If you want to still transport stuff over ethernet which is also used to 
bridge to some other interface, try macvlan or vlan's on top of the ethernet 
interface. The macvlan will create a new ethernet interface which just uses a 
different mac address. A vlan interface on top of the ethernet will just but a 
vlan header between the ethernet header and the next layer. So I am guessing 
you want to first try macvlan (requires kmod-macvlan):

    config interface 'bat0_hardif_wlan'
            option mtu '1532'
            option proto 'batadv'
            option mesh 'bat0'

    config interface 'lan'
            option type 'bridge'
            option ifname 'eth2 eth0 bat0'
            option proto 'static'

    config device 'veth0'
            option name 'veth0'
            option type 'macvlan'
            option ifname 'eth0'

    config interface 'bat0_hardif_eth0'
            option mtu '1532'
            option proto 'batadv'
            option mesh 'bat0'
            option ifname 'veth0'

Or if it is no problem to use VLANs (here 123):

    config interface 'bat0_hardif_wlan'
            option mtu '1532'
            option proto 'batadv'
            option mesh 'bat0'

    config interface 'lan'
            option type 'bridge'
            option ifname 'eth2 eth0 bat0'
            option proto 'static'

    config interface 'bat0_hardif_eth0'
            option mtu '1532'
            option proto 'batadv'
            option mesh 'bat0'
            option ifname 'eth0.123'

Kind regards,
	Sven

--nextPart17857616.P6YaZa0Rg7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6nFAQACgkQXYcKB8Em
e0a4YQ//WfdQSc4gE2Aso1LPF3M1gzeFx84WYqUBlJLgY354T3OmEUWXgAL2LuYl
G3vTrWU+WmZfMH5AeWi21TETEQ+DlcytOxvU24jOIbujUwWKKWurFcWkQuiXm7Mr
5x+DA/ThRoCjW2UfXBEct3wyVO+q4ExYzK9j65iTAH/0qULvHOVlRQkUT+3Nx/bM
WASMkHZdL2o6KKdbyMiEc926emI3KDseBo0fgJtWoSyCYUDMI8T4974RFy4t33HG
FQ4s4X5u22rtLo/7I8j7SzQ8JfWOOyAWgOwO7lGWKU+RHBLkq+1pmJkTwj31yzDo
DcxstsVqdcWn5MgI01CnZr2KxEOSEC5zO0h05vjPRh3hOL3VFb5luQn29oLLbp3m
CsBkOzVxMRM1vvyUFUKpEt7C+TkTYd+w+E5oPLs4H4mmx0sV3ItSfhH3Fam9TYl4
WrVhVcNgtwp6RQSFQSd4BgM7wdnybkA9/DkyvXfQUkO26/uHZf6qFv1pXiSWXV0K
jtORnRapALkbYNOWeFLlH4U0Yl1MxvQakAoyEUoppuIIW+JAq/P5sKv1D6eo2+vg
WrR9iolsbSnY+qeVvcHSCHAKZUhGh3VVDPE2HXak0MGJZ+wBOEYBMKsDM0uC7uw0
0GClWW0QYAnLrBRtanteMyFlC3421B2TUXbOkVunA7taxgll2BM=
=uwO8
-----END PGP SIGNATURE-----

--nextPart17857616.P6YaZa0Rg7--



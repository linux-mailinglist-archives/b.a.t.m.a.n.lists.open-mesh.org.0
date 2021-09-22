Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A640B4142F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Sep 2021 09:55:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7FDE9825D1;
	Wed, 22 Sep 2021 09:55:31 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D3E5380BED
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 22 Sep 2021 09:55:28 +0200 (CEST)
Received: from prime.localnet (p200300c5970fA2C00138D9447709bc2F.dip0.t-ipconnect.de [IPv6:2003:c5:970f:a2c0:138:d944:7709:bc2f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 8B6B5FC4CC;
	Wed, 22 Sep 2021 09:55:28 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Wed, 22 Sep 2021 09:55:27 +0200
Message-ID: <2193349.8FveGl8YFJ@prime>
In-Reply-To: <da01e7af03f44c5c90f2cad227721ce9@viasat.com>
References: <8679334.VDzE56WMh6@prime> <4948508.lctyQggAPn@prime> <da01e7af03f44c5c90f2cad227721ce9@viasat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7559278.rs9lvfys0G"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1632297328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pz4hb+IwHwsU2MhjGzfHAvQAUfbX5RLx1Ts/2C7A4dA=;
	b=n67flM7kdrbcWjsBlByW63UDiBqMU8m91R8T0xZS3kEgE9rw4LCAsjFjol9TQ1I48swjoa
	0R+cx2RTLf1pOFbe2e/yBQs6R/Rn4S9sWNSIHcyyZ4hR7gvThq9WfcTrugHXDe/i32We/s
	Ni8dQBPMjX2RBlt/zlSge+ouBxeYXL8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1632297328; a=rsa-sha256;
	cv=none;
	b=ITYAVlwtNyoSeASBroxdRdH92Bq6REnbtiHVSH+OVEjIUKnFsGXcXIM86v4ZAOoxBCKpLi
	d/DPFlPxYa1hNSzia5Kdz6u/MFQ5UuK8gqHfEASnNCpaKRlsl50GGbHD41ryVaTEQ2+jte
	kAzHVwpBxwcHcL9HUjI6Yc02EryPQ0U=
Message-ID-Hash: VOFZJO3VXYMXPAES4SFNPEUHCHLSM3VG
X-Message-ID-Hash: VOFZJO3VXYMXPAES4SFNPEUHCHLSM3VG
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VOFZJO3VXYMXPAES4SFNPEUHCHLSM3VG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart7559278.rs9lvfys0G
Content-Type: multipart/mixed; boundary="nextPart14841412.HVZRtOvPqr"; protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Simon Wunderlich <sw@simonwunderlich.de>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>, "Edmisten, Brian" <Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating
Date: Wed, 22 Sep 2021 09:55:27 +0200
Message-ID: <2193349.8FveGl8YFJ@prime>
In-Reply-To: <da01e7af03f44c5c90f2cad227721ce9@viasat.com>
References: <8679334.VDzE56WMh6@prime> <4948508.lctyQggAPn@prime> <da01e7af03f44c5c90f2cad227721ce9@viasat.com>

This is a multi-part message in MIME format.

--nextPart14841412.HVZRtOvPqr
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

please see inline:

On Tuesday, September 21, 2021 5:41:07 PM CEST Edmisten, Brian wrote:
> Simon,
> 
> The current scenario we are working with we have two different radio systems
> that already provide a layer 2 mesh network each.  To the user they look
> like two Ethernet interfaces one for one wave form and one for the other.
> BATMAN so far is making it more stable in that the convergence of the
> network is much faster.  There is an opportunity for 3 different radio
> systems, but the third vendor is unconfirmed.  There was an ask to try to
> increase bandwidth if the nodes were known to be close together.  We were
> trying out BATMAN's bonding features as using it could simplify our setup
> and reduce some of the overhead we are getting with the layers or software
> we are currently using.

Thank you for elaborating! Are these radios providing the same throughput? One 
thing I noted when doing tests back then is that the slower link will slow 
down the combined link, since it is sending packets in a round robin fashion. 
In other words, with two links, if the slow link has half the throughput of 
the fast link, you will not have any benefit.

> 
> When you say one hop, do you mean one BATMAN hop or something else?  If it
> makes a difference my testing was direct but I think the radios will
> actually look like there is a switch between the nodes.

Whether there is a switch or not doesn't matter to BATMAN. By one hop I meant 
they are directly connected via Layer 2, there is no intermediate BATMAN hop 
acting as a relay.

Since you will be using Ethernet links and not WiFi links, BATMAN will not be 
able to detect that you are actually using radio links, since its only 
checking kernel internal structures (whether the device uses cfg80211 or 
wext). I'm adding a patch to generally treat interfaces like wireless 
interfaces from a routing perspective, this could also make a difference for 
your VM tests.

> 
> Thank you for looking in to this for me.  BATMAN is doing great for our
> first use case.

Great to hear :)

Good luck using it and thank you for your feedback!

Cheers,
      Simon

> 
> Thank you,
> Brian Edmisten
> 
> -----Original Message-----
> From: Simon Wunderlich [mailto:sw@simonwunderlich.de]
> Sent: Tuesday, September 21, 2021 7:16 AM
> To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
> <Brian.Edmisten@viasat.com>
> Subject: Re: Bonding Alternating
> 
> Hi Brian,
> 
> I've checked it out and can confirm your issues. The bonding code as
> currently implemented is trying to use a different router from each routing
> table towards the same originator[1]. However, with 1-hop Ethernet links
> those routers are always the same in all the routing tables. With WiFi that
> would be a bit different (I've commented out the WiFi penalty check), but
> even then it only alternates between two of the three interfaces.
> 
> At this point I don't have a straight forward fix for this. Will you use
> three Ethernet devices in your later deployment, or will those be WiFi
> interfaces?
> Also, would it be useful for you to consider bonding/teams interfaces of the
> Linux kernel to bond the link, and give that to batman-adv?
> 
> Cheers,
>        Simon
> 
> [1]
> https://www.open-mesh.org/projects/batman-adv/wiki/Network-wide-multi-link-o
> ptimization
> 
> On Wednesday, September 15, 2021 4:58:58 PM CEST Edmisten, Brian wrote:
> > Simon,
> > 
> > Thank you. I appreciate you looking at this.
> > 
> > Regards,
> > Brian Edmisten
> > 
> > -----Original Message-----
> > From: Simon Wunderlich [mailto:sw@simonwunderlich.de]
> > Sent: Wednesday, September 15, 2021 12:26 AM
> > To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
> > <Brian.Edmisten@viasat.com>
> > Subject: Re: Bonding Alternating
> > 
> > Hi Brian,
> > 
> > hmm, I see. I will try to set up this scenario over the next few days
> > and let you know. I haven't used bonding for quite a while now, but I
> > also don't think that we had changes in the code which would break it.
> > 
> > Anyway, will test and let you know.
> > 
> > Cheers,
> > 
> >       Simon
> > 
> > On Tuesday, September 14, 2021 6:57:37 PM CEST Edmisten, Brian wrote:
> > > Simon,
> > > 
> > > I did check again.  batctl bonding responds with enabled.
> > > 
> > > Cheers,
> > > Brian Edmisten


--nextPart14841412.HVZRtOvPqr
Content-Disposition: attachment; filename="0001-batman-adv-apply-WiFi-penalty-on-all-interfaces.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="utf-8"; name="0001-batman-adv-apply-WiFi-penalty-on-all-interfaces.patch"

From ef45b1f2462ee40843b7607c5342eae4f1595772 Mon Sep 17 00:00:00 2001
From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Wed, 22 Sep 2021 09:51:11 +0200
Subject: [PATCH] batman-adv: apply WiFi penalty on all interfaces

Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/bat_iv_ogm.c | 3 +--
 net/batman-adv/bat_v_ogm.c  | 4 +---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index f94f538f..95b045c3 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -1159,8 +1159,7 @@ static bool batadv_iv_ogm_calc_tq(struct batadv_orig_node *orig_node,
 	 * interfaces and other half duplex devices suffer from throughput
 	 * drops as they can't send and receive at the same time.
 	 */
-	if (if_outgoing && if_incoming == if_outgoing &&
-	    batadv_is_wifi_hardif(if_outgoing))
+	if (if_outgoing && if_incoming == if_outgoing)
 		tq_iface_hop_penalty = batadv_hop_penalty(tq_iface_hop_penalty,
 							  bat_priv);
 
diff --git a/net/batman-adv/bat_v_ogm.c b/net/batman-adv/bat_v_ogm.c
index 1d750f3c..17c50e82 100644
--- a/net/batman-adv/bat_v_ogm.c
+++ b/net/batman-adv/bat_v_ogm.c
@@ -492,9 +492,7 @@ static u32 batadv_v_forward_penalty(struct batadv_priv *bat_priv,
 	 * due to the store & forward characteristics of WIFI.
 	 * Very low throughput values are the exception.
 	 */
-	if (throughput > 10 &&
-	    if_incoming == if_outgoing &&
-	    !(if_incoming->bat_v.flags & BATADV_FULL_DUPLEX))
+	if (throughput > 10 && if_incoming == if_outgoing)
 		return throughput / 2;
 
 	/* hop penalty of 255 equals 100% */
-- 
2.30.2


--nextPart14841412.HVZRtOvPqr--

--nextPart7559278.rs9lvfys0G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmFK4W8ACgkQoSvjmEKS
nqH/jRAAnhvX0+3tzJIY6OhVUW2LNQ2xFefic2xe3pEv4j0sTvoFhWWYNSH1xnZb
ekDPBybsYxsLufAYVGKfAS3C2rnPul5YHnzKD/+jiEa7IeKsGBrYqhyYLpmQjTx8
ell9zTlu9BTBZe7lqm0TVs5QD3P/istv3JSP5LcuLxIxfJ+hQ5Edm7NT4jJ0nPhH
lbmywgCTQTXFxr9U8bllzz1eR8AQUOIejcjlVXrmwb1mteLc98v2McP7M+mUjY6x
JNH/aZ+6Iz6tzlCl97Ve1MqnBwv22snfgXJENenZwdH7APW2U6KIClzCFKNhilnD
xuVb4HMXa7J41UHYocbLHFoAzQHO003ojMHis5oguZqIZ0CqewB1OAXGn0BbH6ok
AWYOgllNoTvXqYUDsKHxuh2f+4bT49Zh6ao3e8Ki8ipTbKLudw3eUkOhxzIer0pX
SIw05ywZf8ugLkC0RjHWpA5GujouxjsLf7hheKhNHBPTOJWSnAyjzn32mCMZX4PV
yfSE06Dz/And9sIVvZwCDABerzVFsksLFB5gXfM7opeDL5wCicdU1N7Q2NdNAk44
xkp10U2BHWwxdWY6AuAhyhe8lpJAQB33EwLxC5XWPoEXuiNy18ThoKyTgE6dxmrP
wshglyUyy9z72Obs0smwXQFdM0j7w9HLiRSaj0xbceTwAbvq63g=
=9hSm
-----END PGP SIGNATURE-----

--nextPart7559278.rs9lvfys0G--



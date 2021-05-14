Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD1C38088C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 13:35:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C92A83EDC;
	Fri, 14 May 2021 13:35:38 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C508280024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 13:35:35 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EAB103E8F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 13:35:34 +0200 (CEST)
Date: Fri, 14 May 2021 13:35:32 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH v2] batman-adv: bcast: queue per interface, if needed
Message-ID: <20210514113532.GF2222@otheros>
References: <20210427184527.9889-1-linus.luessing@c0d3.blue>
 <3148825.KiqjeL1upR@sven-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3148825.KiqjeL1upR@sven-desktop>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620992135; a=rsa-sha256;
	cv=none;
	b=vVMRdl1nFIB56Ej3PIzzBm3xFdmoODQeTG97sZEpdZfNDGyQptZIe0a2KfYiaTt48ZrJLJ
	ZiPIcnyhCxHL7i5YDaDHult9yn19lsI1GUiuVnmBgsMBIevmeqJF67tpqpKQC4uuyAjS8s
	ad+5E3FdjrZtqbi6lH7xZpNR0TpcXKo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620992135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dvN3Ua2JV6QAy8gYpZ3kB1rJSWW4N+xFkp801hNa4EQ=;
	b=lQ86J6vmOVtFGrA+X85TfIKD7IhBoKFt2f4UGXJg6+gx9gtfsisnOMpWChQXvMrIs5AAz1
	nSV01pHeKiI1ZrN2VUOy8LbfX1s1h6Xge45fGBIqlNZcDuupts/i6JETRSU/SnOWQtlYdD
	ObFHNikFAOHRGUGNmRd+9FWnQdiFZ4c=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AFRMRZ5TMBN4MNYAFQZMRWL3M5SB7DC5
X-Message-ID-Hash: AFRMRZ5TMBN4MNYAFQZMRWL3M5SB7DC5
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AFRMRZ5TMBN4MNYAFQZMRWL3M5SB7DC5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, May 14, 2021 at 10:28:53AM +0200, Sven Eckelmann wrote:
> On Tuesday, 27 April 2021 20:45:27 CEST Linus L=C3=BCssing wrote:
> > - * The skb is not consumed, so the caller should make sure that the
> > - * skb is freed.
> > + * This call clones the given skb, hence the caller needs to take in=
to
> > + * account that the data segment of the original skb might not be
> > + * modifiable anymore.
>=20
> But none of your callers is now taking care of it because you've remove=
d all=20
> skb_copy's. All you do is to clone the control data and give it to the=20
> underlying layers. And they may write freely to the data. Thus breaking=
=20
> parallel (and under some circumstances sequential) running code which o=
perates=20
> on the skbs.

Hi Sven,

Thanks for looking at it so far. I'm not quite sure if the
skb_copy() is needed though. Because there is a new skb_cow(). Let
me explain my thoughts:


We have two cases: A) Packet originating from ourself, via
batadv_interface_tx(). Or B) received+forwarded from a neighbor
node via batadv_recv_bcast_packet().

For case A), self generated:

When we send the packet multiple times, for each rebroadcast or
interface we will push the ethernet header and write the ether-src,
ether-dest and ether protocol in  batadv_send_skb_packet(). Before that
batadv_send_skb_packet() calls batadv_skb_head_push() which calls
skb_cow_head(). So the ethernet header should be modifiable safely then,
even if it is an skb clone.

For case B), received/forwarded:

Rebroadcasts same as in A), but additionally after rebroadcasting
with potential requeuing in batadv_recv_bcast_packet() via
batadv_forw_bcast_packet() we will also call
batadv_interface_rx() and strip the batman header. Betweeen these
calls there is the following though:

batadv_forw_bcast_packet(skb, ...)
-> __batadv_forw_bcast_packet(skb, ...);
   ...
   skb_cow(skb, 0)

So the original skb will have been made uncloned/writeable again
via the skb_cow() before being handed to batadv_interface_rx().

Let me know if I'm missing something.

Regards, Linus

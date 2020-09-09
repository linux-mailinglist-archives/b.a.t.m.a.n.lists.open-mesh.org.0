Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9C6263081
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 17:28:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2EB15807F1;
	Wed,  9 Sep 2020 17:27:59 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 19CC280272
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 17:27:57 +0200 (CEST)
Date: Wed, 9 Sep 2020 17:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599665276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MlE6HMah1Qq0v8DxMqsfhjY7ky80rxKd2Itp/1S1jFc=;
	b=PxveKSa5/ggJAn4dk62W/anEcXcol0NS+I8MtNADKSVhhicanLKdiwDjmfAB4oI0Zc0IL/
	w2HCI/x9JlF4IYw1zzFkAeyMaL2OC/wDKayqSyT37JhGrLiZr9oc1yehuXpWYkVBFaEohq
	Ipp0t12mW14RnXMFCvizdYSAotbrB58EanWsy47jQSWzXeOdw+fb4rivcznOk7Y+W7SjAH
	m2U+U8Vo8onv3pzVxp7RQsOFcIXRwrVZ0xF3WDlLmPl4+3c+flH0rwVeJ2SbN7YN0VJSBc
	Fvb0D+soVWym3FU2D2od20B8GievYsnk55o/vq8m0WunvqXv4+h2QfOJ6gw/Yg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH maint v2 4/4] batman-adv: mcast: fix duplicate mcast
 packets from BLA backbone to mesh
Message-ID: <20200909152756.GD2391@otheros>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue>
 <20200904182803.8428-5-linus.luessing@c0d3.blue>
 <3191833.Be6Uz4tNrB@prime>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3191833.Be6Uz4tNrB@prime>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599665277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MlE6HMah1Qq0v8DxMqsfhjY7ky80rxKd2Itp/1S1jFc=;
	b=r51r+6L97P1o/pxFMr/mCHTugTdzQ/gWA+fvrRiY7SOYq/BKNxKXnCda63B6xDGYoVXslW
	4zzEzFMBxLIfZpfRzCKHxUBnFGC+zHZa9psqaLTaIKAe59EH5O+xH267t21+A0uwTztLlE
	E6p9kKDgJxwDQk2PqGNZz1Yp+z2In8A=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599665277; a=rsa-sha256;
	cv=none;
	b=jp7MBbgFokZaG+bW/QQpxCpsVTPp1awLvL21N19ao6Y88hNHt8OpXj8OKQeHJXWVlLJ/Ri
	w+vs5YzrhR86cA7L8XpSRmIU261I1PRyNoKGTz5iclYQj8JIwAIu1cj/5fBRxlxHESmZta
	GuI6iLA/YFScxdjV99WdnyzeoKifMvM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=PxveKSa5;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 5XNXTQ7X5BEMJSDINW2JDTIGCAMZWOKM
X-Message-ID-Hash: 5XNXTQ7X5BEMJSDINW2JDTIGCAMZWOKM
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5XNXTQ7X5BEMJSDINW2JDTIGCAMZWOKM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Sep 09, 2020 at 02:15:51PM +0200, Simon Wunderlich wrote:
> On Friday, September 4, 2020 8:28:03 PM CEST Linus L=C3=BCssing wrote:
> > @@ -1626,7 +1626,8 @@ bool batadv_bla_check_bcast_duplist(struct bata=
dv_priv
> > *bat_priv, if (entry->crc !=3D crc)
> >                         continue;
> >=20
> > -               if (batadv_compare_eth(entry->orig, bcast_packet->ori=
g))
> > +               if (!is_zero_ether_addr(entry->orig) &&
> > +                   batadv_compare_eth(entry->orig, orig))
> >                         continue;
> >=20
> >                 /* this entry seems to match: same crc, not too old,
>=20
> Shouldn't this check also be skipped if the orig parameter is a zero ma=
c=20
> address? i.e.:
>=20
> if (!is_zero_ether_addr(orig)) {
> 	if (!is_zero_ether_addr(entry->orig) && batadv_compare_eth(entry->orig=
,=20
> orig))
> 		continue;
> }

Would be redundant. If entry->orig is non-zero and
the compare_eth() says they are equal, then orig must also be
non-zero.

I initially wanted to leave the code as unchanged as possible for
net / maint. Should I do the restructuring to enhance readability, with
the bool in this patch or in additional patch for net-next?

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B6263020
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 17:04:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 14C2B807D0;
	Wed,  9 Sep 2020 17:04:01 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9F8F180024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 17:03:58 +0200 (CEST)
Date: Wed, 9 Sep 2020 17:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599663838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tnTdxo3uWtqLmyM1eBmJT9XIeOSCvoiO8dUTt4ZOBNo=;
	b=jkCie+8Vy1k723EoosgPvuB+6Z1QhFbyanTOb7Ig47Fr9PW70Nsxn6+xiv71HEigtyxeG9
	pMm2fk38cxpx5n6z/GOM6CHcG6TqAPj9HOWOY6xn46a/KtVJe25G+Sbq3CYbD9aO3eU7Di
	CLXsxC9KOhqcG54SpSB5+OlJwmOr45VhXj/zLVt31VjhSJbzD1ROVg40WEaAMOe5GQUkdy
	m4/5qvAg+sTYbHnBcXLTCVYORRcQ4FXHYwosjMCb+RJApWvxK98gT9vTpBK8ybAOO2RZ+H
	oBiC6/hgqr8Va7bEKf8VAay5XXs6AJmiPaMKoGpav2V70pjYY51HSWtTGOS5vg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast
 packets in BLA backbone from mesh
Message-ID: <20200909150358.GC2391@otheros>
References: <20200904182803.8428-1-linus.luessing@c0d3.blue>
 <20200904182803.8428-4-linus.luessing@c0d3.blue>
 <2973088.WcO1NEu1zB@prime>
 <20200909145357.GB2391@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200909145357.GB2391@otheros>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599663838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tnTdxo3uWtqLmyM1eBmJT9XIeOSCvoiO8dUTt4ZOBNo=;
	b=JIgBKRO856t7lrcLzoN0bGM2ECji7ymlflptm4GmHILE+DLwSbhUg4Hhc3OtVCE1ty3Np6
	QbcVX+8tBXrDQnUGm/cyIRRZ8ue8W150ND2cvSIKMqYZDBKhbAqi28yLR60IQueJcQ9ZxN
	PcmC5OZFZ3szM6d5+O+SsKrW95uA9vs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599663838; a=rsa-sha256;
	cv=none;
	b=PR3Fva0ZRPt+/2DODxR4+dM7CMy4ECAzL3vl+pDwo1dhQhIN3uHr0YkAjZEkn5mO7u9f4j
	KYZyJFpIfnprweMXD2fVJlMkqq9OmTaflhti5vPpDTKy9pdq+09RYOwuMgVHcXGr1kvgHT
	x/AzlS8RKg/6FEPuCg6w9uU6aPu6nSM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=jkCie+8V;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NBUUCQC4BGMVIUBJT2QF3A4HS7ZHOGFC
X-Message-ID-Hash: NBUUCQC4BGMVIUBJT2QF3A4HS7ZHOGFC
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NBUUCQC4BGMVIUBJT2QF3A4HS7ZHOGFC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Sep 09, 2020 at 04:53:57PM +0200, Linus L=C3=BCssing wrote:
> So the only solution I could think of for now is
> excluding DHCPv6 from multicast feature in TX of the originator...
> (in batadv_mcast_forw_mode_check_ipv6(), adding excludes for
> ff02::1:2 and ff05::1:3).

And there is also no way for a random node in the mesh to figure out
if two or more other nodes share the same LAN via BLA, right?

That would have been the other option, to avoid sending a
multicast-in-unicast packet via the multicast feature to multiple
such nodes in the first place.

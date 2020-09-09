Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9765263725
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  9 Sep 2020 22:14:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9F99E802CA;
	Wed,  9 Sep 2020 22:14:29 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B827380013
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  9 Sep 2020 22:14:26 +0200 (CEST)
Date: Wed, 9 Sep 2020 22:14:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1599682466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v9NeDTkBJ8xao0ZPF48XE/7FscUtyOun+iQT0AB3Uro=;
	b=fUUQ07wqD3wvmQ8MzVNXsnedxcVEXFyvxauBwjBMhoRa1B07TuCgjXKPJwSRnyjugn7WmC
	S+ni9jrZmtSqr6GtgoI+8Sif6WMkB5kOp8Vh3jObCX++4nOsoGO/1WFcbfYy29KQXMjvxG
	4R/2KxsuAGouEfg2mSaCIsPFy8sIvOZ+GpJRMPTXvHZOcP7HWai6iSf4KREZ8BziZPTSRc
	HIAi+GigjWf0HHG1GuL9tGl+Ci4/6CMxZhq4Q0eKoEB37I74oiU51OIVvz2i4oEjSnrSjZ
	XBRZOHiG/EMecnQzOQ4pJvsHSSGpIUsG3ZXnVtv60YLnPB/f4XiLASChDY01Aw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH maint v2 3/4] batman-adv: mcast: fix duplicate mcast
 packets in BLA backbone from mesh
Message-ID: <20200909201424.GE2391@otheros>
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
	s=20121; t=1599682466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=v9NeDTkBJ8xao0ZPF48XE/7FscUtyOun+iQT0AB3Uro=;
	b=z3UoZ0eHmpddf+DO9ccVmeXDDXlV5BfuTtXUgjiQnVcFTpf0AQMJVMEIl4eksMUl3dQ3Yj
	AZM3MTqX7bykBMJhxhwRb8XYaMqgdkGl6j9vpgSdOPu7HgZCs+LzVlyfN3JaqkoeJZS7MU
	yFNsWR2hLBeKVXe38WgRHTFd5f86Kuc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599682466; a=rsa-sha256;
	cv=none;
	b=VJaoqTBaaRyPSrXeE3WawGL6Ibx7ObAv8GNFgBww1Sy9VQTB6wLoD5Jtzsj/UP4WvtsFh7
	S2gh39gnk1iWwCqG822uVlz61t6PofBrQsZUmL8+KOaLow8R7F7V/bwpUbesSA6yXj8dY8
	2zV9mRFTzk8L3he8+E2Cf3WM2psuEgM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=fUUQ07wq;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2LAIRKK6FDHB5QEWMHO4XOIMUADAWO75
X-Message-ID-Hash: 2LAIRKK6FDHB5QEWMHO4XOIMUADAWO75
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2LAIRKK6FDHB5QEWMHO4XOIMUADAWO75/>
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

Ah, wait, we could distinguish them. Just noticed that the gateway
feature uses a unicast 4 address header, while the multicast
feature uses a simple, 3 address unicast header.

That should work. But might look a bit hacky. And would disallow
using a 4 address header from the multicast feature in the future.

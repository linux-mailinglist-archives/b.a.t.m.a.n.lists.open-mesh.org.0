Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6307EC10A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 12:00:55 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CE1BF83D41
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Nov 2023 12:00:54 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1700046054;
 b=ANFDsRx3WDxNLBJnoqMGrNMWSxeZZFQheYq0l0Kfsd1h0tk2jAKhaVVB3xtOd2Vub94LB
 GIUrlycryBD3xXQy6OOOEdQrfoypRFme9tqnoSPk6WaybKDQciaT7WXjZxRUa7NeScDPH+Z
 XkswH3a+fc7/qlND3zt8vLlI83YWR0U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1700046054; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=d5R3QYRM9jTMwaXNSt9rW+fx0bRCwQ7+F7Ia4t0bRUI=;
 b=0gbwTNQYiOhPcwckck2CI58dR4yFjOEiHqx77VgSv240elGywHoUG7t+y5g1a0U6GJAOA
 TX+S6KRSVRJSGz6T3LOCACUFCvlCMupx4KDxmpP/NeWo2acf3h4goP8HOaTvUpn8wEI2U7Q
 kN0L6dGBriJy/PagMd6qwY2sUiDDrfQ=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8A44E81A56
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Nov 2023 12:00:26 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1700046026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=d5R3QYRM9jTMwaXNSt9rW+fx0bRCwQ7+F7Ia4t0bRUI=;
	b=WIY0qfIX6eOAgJxPs6/7r2F4wF2QXgZJFAwMMWubOFsb5q1JtxknEAnmYPbSyU+b44yLmi
	nEXqDjVQqsQt/bZLET0euwar6pKEf8OcBgRfFLEJJer7H7LLngdfUcxGu9WvJawj1uK/Mh
	8yJWoRNnuONrxbCYThnnHm4Jh8MnZQU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ZiP7MmJO;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1700046026; a=rsa-sha256;
	cv=none;
	b=DJJjVbf8HHKSY71vpPU2pMHEy7BoTQMhqkfnZ1GZIYbSGa75K/ZWTDFbhdxDa6nv1YOszM
	OV3LUtzjBexRSL3AFW1DNz4loUTBnxU7jeiKQ7n8eoG0RMkFDxSFzITLxPd/4hnDj1cj2h
	TckGzI8/4jDuZGJCx711j5E5DoMLqIU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1700046025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d5R3QYRM9jTMwaXNSt9rW+fx0bRCwQ7+F7Ia4t0bRUI=;
	b=ZiP7MmJOW10UjrOTCDyeYElIRJ2hkpv9cQzLGOFIvNuu0lr9A8IRUujmHpDr9jA9Gt/O9+
	VqlwxHVuV6AfF9Kh1OwTQHCzskE7s4FP6QKg8t9rDEJUjgf7OqJbPqafQWO12PmDh16Xrb
	8P8wOj5FMPmyYk1LqZ89pZkx1juI224=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: 
 Re: [PATCH v7 0/3] Implementation of a Stateless Multicast Packet Type
Date: Wed, 15 Nov 2023 12:00:23 +0100
Message-ID: <38641010.J2Yia2DhmK@ripper>
In-Reply-To: <20230907010910.22427-1-linus.luessing@c0d3.blue>
References: <20230907010910.22427-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Message-ID-Hash: 547VQIFCLFLDECL3NHADKI3PFEWGN7YS
X-Message-ID-Hash: 547VQIFCLFLDECL3NHADKI3PFEWGN7YS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/547VQIFCLFLDECL3NHADKI3PFEWGN7YS/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thursday, 7 September 2023 03:09:07 CET Linus L=FCssing wrote:
[...]
> Changelog v7:
> * PATCH 1/3:
>   * rebased to current main/master branch (resolved net/multicast/routing=
=2Eh)
>   * renamed batadv_mcast_forw_orig_to_neigh() to
>     batadv_orig_to_router() and moved it to originator.c, for
>     reuse in fragmentation.c
>   * added a SKB_LINEAR_ASSERT() to batadv_mcast_forw_packet()
>   * adjusted batadv_mcast_forw_scrub_dests():
>     added a new macro that updates two dest pointers
>     to avoid confusion due to two different updating methods,
>     removed goto's and a little reordering
> * PATCH 2/3:
>   * added SKB_LINEAR_ASSERT() to batadv_mcast_forw_scrape()
> * PATCH 3/3:
>   * simplified batadv_mcast_forw_shrink_pack_dests():
>     moved parts to new sub function batadv_mcast_forw_shrink_fill(),
>     removed keeping track of filler over the whole function
>     (might be slower, as we might check+skip the same zero
>      MAC entry multiple times, for each slot, but a lot easier
>      to read - and we don't prioritize performance with this
>      patchset yet)

Merged. But I think the wireshark implementation is still missing.

Kind regards,
	Sven



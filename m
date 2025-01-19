Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A895DA16046
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 06:06:32 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5103F8425D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 06:06:32 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737263192;
 b=eIr6Oe/hJcgZ3Tj4hly/KOLdCDSS63PCPe7wieHR+LtVi4fWzKjQhU2/ROuGuZqAWYIto
 mD6ghdotbmTisrzV35z1F7OnsmanxTrVCluwBdYDVpR3EEtUWW9/SBxBW99F9N4YBeWJg3I
 yzqut9ZHJqK5uK8ZR75qmhvaBnh+IJI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737263192; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Q8NeeeTgiSmbB0ozuckjie4iJ6NoXU9/WfadnvSGnnE=;
 b=1H21hTFiFOJZtlwU3/8hDOikcckIxNUNzosK3a0UKTyPwhmTOmFRro+S4aFzNnirJQvvZ
 N9jb7u18h3GhqKb74DWH1Q/rXWq+4e69vgGVlXaRS/aVPLVSCXXCkXpI5TsR/OvHiQv18Mi
 RVd5Rhtk15AQqFTnT6vIT3wX1uaObzA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 343D981071
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2025 06:05:49 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737263149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q8NeeeTgiSmbB0ozuckjie4iJ6NoXU9/WfadnvSGnnE=;
	b=w/hIlhYhVErW7GuNj67JO2Jrwr0pBaLBUgy7Y4mWphWY/awXGr7V9gaGjU+9M3bqbulfUT
	CEIgqkmIoi8e4nn3ZWBwDATZ95S83Fbs4fe5FHljNGNp6fhKZL2iYYxloq4b3m4bZp+FA7
	vCBfDOhyGpwW/QsacnoSrTJzIvB3hIA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737263149; a=rsa-sha256;
	cv=none;
	b=l/ncxbIOkKxe9Ux9mjlpJtCmO3Y6eOViu47OlKb5tpRj4Yuip5cVWJAkhqmp1/DjCKPMDk
	CQ9HYoL1ybR2UXNAYXlTHOjUynCbrH+aOpP8QxtC+V6or8WTuhqKQ+0/fwHjW8S8T2aspo
	b3VD1eYnlRaWQZYCIdFu+zfvQxc4AiY=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3C96954C376;
	Sun, 19 Jan 2025 06:05:46 +0100 (CET)
Date: Sun, 19 Jan 2025 06:05:45 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Marek Lindner <marek.lindner@mailbox.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org,
	=?utf-8?B?UmVuw6k=?= Treffer <treffer@measite.de>,
	Andrew Strohman <andrew@andrewstrohman.com>
Subject: Re: [PATCH RFC] batman-adv: BATMAN V: use/prefer 11s airtime link
 metric
Message-ID: <Z4yIKYsFvLyGpmjt@sellars>
References: <20250118003528.6843-1-linus.luessing@c0d3.blue>
 <CAA8ajJnqXBuUmBzAHVjyEchD2CU9E7SmqJXXvy0V7QAQF9536A@mail.gmail.com>
 <6131569.pqZb4hCDXM@rousseau>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6131569.pqZb4hCDXM@rousseau>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: RRGHDFSGTKMROUVFMVQWZKSDQVNBAW6E
X-Message-ID-Hash: RRGHDFSGTKMROUVFMVQWZKSDQVNBAW6E
X-MailFrom: linus.luessing@c0d3.blue
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RRGHDFSGTKMROUVFMVQWZKSDQVNBAW6E/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Jan 18, 2025 at 05:59:56AM +0100, Marek Lindner wrote:
> FYI, expected throughput and also 802.11 throughput estimation are taking 
> congestion into account.

Are they? At least in minstrel_ht_get_tp_avg() I don't see it:
https://elixir.bootlin.com/linux/v6.12.6/source/net/mac80211/rc80211_minstrel_ht.c#L500

And minstrel_ht_get_expected_throughput() uses
minstrel_ht_get_tp_avg():
https://elixir.bootlin.com/linux/v6.12.6/source/net/mac80211/rc80211_minstrel_ht.c#L1987

Seems to me like it uses the transmission duration of the chosen
WLAN bitrate, multiplies it with the average transmission success
probability on this rate there. And then also factors in aggregation and
cuts off the thing between 10%-90% of chosen rate.

(Also, for a rate control algorithm I think factoring in congestion
would only make sense if the RC algo were also factoring in the size
of the packet to transmit? That is smaller packets have a higher
tolerance to channel congestion. But in the debgufs rc_stats table
I don't see any column per packet size (ranges) either.
I think Minstrel assumes that congestion does not make a difference for
which rate to choose for the sake of simplicity?)

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC92359CFE
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Apr 2021 13:16:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 46FC680D22;
	Fri,  9 Apr 2021 13:16:41 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 72C7C80623
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Apr 2021 13:16:38 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A658B3E885;
	Fri,  9 Apr 2021 13:16:36 +0200 (CEST)
Date: Fri, 9 Apr 2021 13:16:34 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Problems with Multiple Interfaces
Message-ID: <20210409111634.GI2742@otheros>
References: <20210408055629.1234.95039@diktynna.open-mesh.org>
 <3542676.qYy7ulQ77K@prime>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3542676.qYy7ulQ77K@prime>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 116.203.183.178) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617966998; a=rsa-sha256;
	cv=none;
	b=MYQQ8EQguuNG77X0yP/ZENzdEMyahxiUcX+qggv563lISMVz4drHe+TB3qV4E9cvjDKBfM
	3XTDtF6w1oIoL3vztLWBCI8WfhAn4JIqzVSs8OyiwFa4Zyy4ByTlBx1ZfbBV1BS4RGv2PK
	i0a/fV8ZprGukkhEHNTOeJWmsf5xiyc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617966998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Y+loJdPgunkkLyHEYkSFZ93GmGHM2F9fl+2mo5dmtB4=;
	b=ehQ/MF1IHqvd7Ouxu/8vJvaHSmPfXLnSeXMfvT13Yl53reTFKkEPaAELSDJzetVfo/0eyu
	l95h9oVN0nSKrCcVi9h2ro2b+oVbcqp2ZOZ1xGICn1Zu3lbltZuaVGLRk8fxSFMD586ong
	J0HCmbvXQ6pO1206Iwng3j4OfvrIKpg=
Message-ID-Hash: 5TCQI6EDP4D5XOMIIZCX6BJOY5KZJA57
X-Message-ID-Hash: 5TCQI6EDP4D5XOMIIZCX6BJOY5KZJA57
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: joe@careyhome.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5TCQI6EDP4D5XOMIIZCX6BJOY5KZJA57/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Apr 09, 2021 at 12:17:36PM +0200, Simon Wunderlich wrote:
> On Thursday, April 8, 2021 7:56:29 AM CEST joe@careyhome.org wrote:
> > Hi Everybody,
> > 
> > I'm running BATMAN v 2019.2 with ath10k on OpenWRT.  The particular router
> > I'm using has two interfaces, 2.4 GHz and 5GHz.  With each router using
> > single interface (e.g. 2.4 GHz), it works fine.  When I add a second
> > interface (e.g. 5GHz), it sometimes hangs.

One more note: ath10k firmware refuses to provide an expected
throughput for the wifi link.

The fallback to an estimate which uses the raw tx bitrate was
added not that long ago in batman-adv v2020.0:

https://www.open-mesh.org/news/95

I'm wondering if you might have very low throughput values in
batman-adv and if that might lead to issues with interface
alternating.

Also, would be interesting to know if you have the same issues
when using BATMAN IV, which mainly uses a packetloss based metric.

Regards, Linus

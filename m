Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 708A62747D9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Sep 2020 19:55:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 51AA0807D0;
	Tue, 22 Sep 2020 19:55:23 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D13EA80092
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Sep 2020 19:55:20 +0200 (CEST)
Date: Tue, 22 Sep 2020 19:55:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600797320;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WAT+1Bo7DvbvxFHYUbGR9cD0AOeb3oC01HODpW8Xb6A=;
	b=TLH6Fo6N2Za+3cD+15QuafRAkWk1liFkrXfyRYyOW+pMMGuaZcKk6Dp87xpRdwtgnVt3fJ
	qUKOHmPhFMnT6IGE4Rp4jaci5CQ2gj7PuWdtd+wWovffdk0SjbdZxjuJbzPBvFwn0eKK5c
	fsyKQfsaGzU1rmrHayQmkepxiyY47kuxIUiI74zs8JEwpzNvGRKuVMS3fXjJ8O4/HqTSJy
	bOIKoP6/l0uGYeFK5gi6/uPCPwwifdOxKNGUiFjFBXlrOTJ5apNC29T8cv7EZYGS/lmpFh
	SNvqSqcnbb5mDlIfgBQWYYzbuvID+DGchz/fN/6o8cPYIwpMrWUX+VKS0bukzQ==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH net-next v2 06/16] net: bridge: mcast: rename br_ip's u
 member to dst
Message-ID: <20200922175519.GB10212@otheros>
References: <20200922073027.1196992-1-razor@blackwall.org>
 <20200922073027.1196992-7-razor@blackwall.org>
 <20200922175119.GA10212@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200922175119.GA10212@otheros>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600797320;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WAT+1Bo7DvbvxFHYUbGR9cD0AOeb3oC01HODpW8Xb6A=;
	b=yzcR17AlTN2NVGmT2xs1oCxzHOaLycnt8IqYzMlXjFvbqxE7IFXi3Vz/E/6M5m3bdzyO0E
	Ds2OpHxjcpS9cJHjRWlDp1OTHKM/4sRBXNWmsZv0JsN5XNAHcLrgWh96Ii835+ntvXlkpU
	O84OCvKOR0PYoifjaCYfvXWv5msEebA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600797320; a=rsa-sha256;
	cv=none;
	b=LQORSwKyBHTCqUneHOtGxDpM+RlEiHhlcAxCmbSog4el+cOQcfXdd16QWDcYLGvi8apq41
	S1NknrRCyBelv2lWnglYm/E+u/QLxHGEX/gUZ5cFt7r01yaLad3tqApWg5q9Xkp1ZSuhoy
	VWdNLDjm833gpWurOPo5tHAP2vqIPWo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=TLH6Fo6N;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: TORY4ELIL4F5VKT3ZHBGLDUJX5OK5LV5
X-Message-ID-Hash: TORY4ELIL4F5VKT3ZHBGLDUJX5OK5LV5
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, roopa@nvidia.com, davem@davemloft.net, bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TORY4ELIL4F5VKT3ZHBGLDUJX5OK5LV5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Sep 22, 2020 at 07:51:19PM +0200, Linus L=C3=BCssing wrote:
> I don't see a "src" in br_ip in net-next/master at the moment. Or
> is that supposed to be added with your IGMPv3 implementation in
> the future?

Ah, sorry, found the according patch (*) it in my other inbox.
Nevermind.

(*): [PATCH net-next v2 04/16] net: bridge: add src field to br_ip=20
https://patchwork.ozlabs.org/project/netdev/patch/20200922073027.1196992-=
5-razor@blackwall.org/

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A51A0258526
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Sep 2020 03:32:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 80FF2805F8;
	Tue,  1 Sep 2020 03:32:20 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5BA3980024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Sep 2020 03:32:18 +0200 (CEST)
Date: Tue, 1 Sep 2020 03:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1598923938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RgXFNrPM3RYHDCL19NX6obMVU+Snv0XTlB0h1BfiIAQ=;
	b=hR875/8LOKLvB/Q3aKyM/lkFkN01ykHGGNxSQ0Ets7gCVpZrvOVnFRcQ2etYquXtVG5YuF
	H3omv6kN43T3DV5gsrR4G5Kc2/Im4eZmHLW+IKFt/CEfqm6Hb3Fi5e2bAh+jyRUw32hsyi
	zusCLFoacdt04X9NK0IF/DSF98Gdux1Vqsx/McAJdCXx3ufaZlk4L5Kyq62wfRkHqKAulV
	CzH+ciy94vKeHr3w1HMpeve/fFSujRFRcXlKvmFhjK/EzuI+aY5fyJVS/VrKe1RGZz8dRV
	9PzIDIMuNCyw6s8U9zxg6ib+1l/vCHY8I+z5vaLMUzOpNbp3mj3FPIbx70waow==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH maint 1/4] batman-adv: mcast/TT: fix wrongly dropped or
 rerouted packets
Message-ID: <20200901013217.GA2835@otheros>
References: <20200901012606.7620-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200901012606.7620-1-linus.luessing@c0d3.blue>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598923938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RgXFNrPM3RYHDCL19NX6obMVU+Snv0XTlB0h1BfiIAQ=;
	b=Gtm6CPrdUs4kmtvmh6KqRznM6XZmjDAM2cmkxQc2kUC/UB5k4ja/XzwBn5WxSBbpa6tJJl
	KoAN/dGZf4iDgVzLNsxOSn0Po+5lAbbYxUGdQbsvEVS3jNz50SzQvj+5JQFVfUjHnT3KTs
	KWwFy06MIOwjAMLe2zSUwmhftsnOCng=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598923938; a=rsa-sha256;
	cv=none;
	b=kGT5QMUrMiQ4yab5wu5hsFMqoBPMphy2N8kE29CByz3v8jOMB3vM/HQAQ4F8FA+CX//lTR
	nxpXJJoZRHyTosbIqaCxTI6aHQpxw2obqs/aBDSlghAhayjenNYlawZnEgRxpiLo929Bem
	hGbl3AUhVteq/N3eRJo9AzXQqoSLUTg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=hR875/8L;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: WEDNWDFIJP5PZBXCRIWMGMI3VBUS4UJG
X-Message-ID-Hash: WEDNWDFIJP5PZBXCRIWMGMI3VBUS4UJG
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WEDNWDFIJP5PZBXCRIWMGMI3VBUS4UJG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Argh, forgot the "Fixes:" lines for all four patches... Need to
get some sleep now though, so will need to do that tomorrow
(unless someone beats me to it - I wouldn't mind :-) ).

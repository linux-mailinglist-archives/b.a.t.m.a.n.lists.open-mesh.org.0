Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 031035FEB5E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 Oct 2022 11:13:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6AF6281A8B;
	Fri, 14 Oct 2022 11:13:08 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4C5458079E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 Oct 2022 11:13:04 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1665738784; a=rsa-sha256;
	cv=none;
	b=bi8QjkcM7P3tq1EIQug3Cge78YcQG3l0s6SuiWTsSXmum+mXPcrjhewDFmt13J2eyrlKTH
	fNOq8/QuTIR3MgfHSPi3Fz0Irh2d+Ydf3CMQh30BMrzriUDscyXO3dol7hsv7HWO3VOBqS
	VRatrndvPlUyCl0wVncpmb2Z7znNltc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1665738784;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M9F4K88p2I3diMCnHIK+koI4fHfJXBoazcWUIzUPZw0=;
	b=uGzuzRj6KKKAkO0WVNxm3IMDvX/NYBRxZ9I65JY81EnCQ2qL3e5W/rPocB/oYCLOgUQY6n
	Kz5BST6BpkP5U3mqTRmGXsVY2TUi5ZBqovMBzlqVtTqeCtxbjhG+kkN7fKM+meAbiGmWi3
	1hudvS4p+yIN9AmyicdW+VHd6WystO0=
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org, colinconnoly <colinconnoly@protonmail.com>
Subject: Re: Setting up a network
Date: Fri, 14 Oct 2022 11:12:35 +0200
Message-ID: <2863759.e9J7NaK4W3@voltaire>
In-Reply-To: <YZWsIncflVzGz7YEypQoc3ZI_TgJAX1ImjtvQIYV9uQ5WV-hH7Wle-Ptv13MeMD17Oc4gl1d5DgVy7mPAD6Pihnqzpr0vvdSdQ6Io0UxsLU=@protonmail.com>
References: <166569740414.1271.17407115359212984217@diktynna.open-mesh.org> <YZWsIncflVzGz7YEypQoc3ZI_TgJAX1ImjtvQIYV9uQ5WV-hH7Wle-Ptv13MeMD17Oc4gl1d5DgVy7mPAD6Pihnqzpr0vvdSdQ6Io0UxsLU=@protonmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: A3WOCGIQUJVYSYLFDC3HLJUSFW3KXTCN
X-Message-ID-Hash: A3WOCGIQUJVYSYLFDC3HLJUSFW3KXTCN
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/A3WOCGIQUJVYSYLFDC3HLJUSFW3KXTCN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Colin,

> I saw your program(s) mentioned in an article regarding some of the
> technical responses to the blackout in Egypt. It seems really cool and I
> was trying to figure out where to start! I'm not super technically advanced
> but can pick up stuff relatively quickly. Where/what would you recommend I
> study to try and figure out how to set up a mesh network?

since you are at the very beginning, it might make sense to get your hands on 
one of the popular mesh Linux distributions for routers, such as:

- Gluon: https://gluon.readthedocs.io/en/latest/
- LibreMesh: https://libremesh.org/

When searching for compatible hardware, please refer to the distributions 
websites. They typically maintain lists of supported hardware.

This saves you from having to deal with WiFi driver problems, firmware 
compilation & mesh configuration and countless pitfalls.

Any question you may have about specifics of those distributions you better ask 
in the respective forums / chat groups / mailing list.

Cheers,
Marek



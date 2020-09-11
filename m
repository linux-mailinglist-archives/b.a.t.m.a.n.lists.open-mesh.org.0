Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEB8265F68
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 14:20:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A9C388040A;
	Fri, 11 Sep 2020 14:20:15 +0200 (CEST)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 20AC3802CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 14:20:13 +0200 (CEST)
Received: by mail-oi1-x22b.google.com with SMTP id t76so9224803oif.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 05:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T5l8nQCAcB6u3LcIKI8jSL5n1svdARHdP7qXOq0rlrQ=;
        b=GRU/ffMl0AI00hKCYGGnMN6cf3ghsqP96L+Uc7OvHmzCXGAZu/3FSBNJ8wTd3loV/h
         MObqACObu0Cm/zZGWHfmc0kU1H4WWoGB+OZdoFhkaEHIgp1oMfCDOi6Wr+pMLKLQ//Yy
         HexQbgo3vxGWmJDCsQIv7wCioDELjTstr41h6VS8UxRnsr0PvdxNpK9lAGl+23WS+XoC
         m3T6cLJIxSuySthlZIgeWssz443SdLbxPoyaSyW3bi0PDSa+r6ca5eB9ZRdKCoFW7uUs
         077U7EMSNWQWXN9TuCK/4cJtN1zHzRxZbbanHXJ8iS3brV5orht+Y2/TSRL/DmV85f1h
         /sGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T5l8nQCAcB6u3LcIKI8jSL5n1svdARHdP7qXOq0rlrQ=;
        b=IR7pt8qMTrYVpaeJZW+MHx1/oivMimopTRcCUyzliMAFGOmU000ui+dP3Ay73G5N1X
         YRdWovnnm6H6W8T+wEGggECM8et+fkCZTuaL2mlcXi3ScQ3eXIpuHQdns6VVBLXw+m92
         LdgJm/TCz3WyLGy/drarTPSmfdeizi9/tkVDGAV/SDcx7+RnDeCAA9QBkIWj5ph12cZB
         jdxNC7+ED49PV4rUyTLXmnBlJ3SbEhaZB4KKir3W5wpXZ8x1tZxkI4FtZp6pt4OtHs4/
         opIN9mWN2z92uwtwhp7JnA757Hg0dRZc+le1aJsq7dAHs7rYK+bH+gVDg0giwGMzOfYI
         aqRA==
X-Gm-Message-State: AOAM533U0X7+1LvGPFq2EHVVQKVCsjzDgX4+E6YHVMRMmqlex+RVlRSw
	7cIMtuXkTtGpp9gM07eKAbbv4MR8zfzl13jgdEHgF3Xed0liqQ==
X-Google-Smtp-Source: ABdhPJx6RF52yIdsxVOzvWC8MjJbvQ33cDAYnpjbtPsgqRoa25mpcfxngpeg836x91ovIGZF6gl3b65XZCYt8ZdeOew=
X-Received: by 2002:a05:6808:6cf:: with SMTP id m15mr1057960oih.178.1599826810355;
 Fri, 11 Sep 2020 05:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
 <2850909.jKhAPPOaAE@ripper>
In-Reply-To: <2850909.jKhAPPOaAE@ripper>
From: Alessandro Bolletta <abolletta@netter.io>
Date: Fri, 11 Sep 2020 14:19:59 +0200
Message-ID: <CADJ1cUSum9bHHBZB3gKdXukoqqDxk_f2nO38YKEDjvyHs0=qXA@mail.gmail.com>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599826813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=T5l8nQCAcB6u3LcIKI8jSL5n1svdARHdP7qXOq0rlrQ=;
	b=HZLoBhDdmSFiEvTCZssYqik/TrDjrr/Rhg/jlgCJD3hty35rbVK3nB+dy8cM1hrCfbGbyy
	lOkkaOEMXSrvw2VfD37BDF0XKnLn1nMvxmkGPLnOh0QRFYyadxbmx9hfj9y1tXeNxhwQYo
	nv8Sc3WfpLfFP7HRlNOIcVTaNKeAYxo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599826813; a=rsa-sha256;
	cv=none;
	b=thZXKnxVxMhWLqKUC2yCIxNVwR2kdB8dboigMbs0sRvnX74yVbZ/zoV2qIwjvu0DGnx3lT
	vHffdn2UnG+3+5StNeOiU/zx1143aa4rTGY6lWLP0CV+LWMx3Nmiq4HDc2z9O0A1v7v2Z7
	27k6LTrMeAtuDp3u4o8OyT5kOdoq9+Q=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=GRU/ffMl;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: 6F2F4MQMCLEHVIGYHLYHYRSBQGHKGJQA
X-Message-ID-Hash: 6F2F4MQMCLEHVIGYHLYHYRSBQGHKGJQA
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6F2F4MQMCLEHVIGYHLYHYRSBQGHKGJQA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

So you mean that it is not feasible to create a (single) linux network
interface that let me send traffic on the batman-adv network in an
untagged or tagged way, though the same interface I mean?

Il giorno ven 11 set 2020 alle ore 14:01 Sven Eckelmann
<sven@narfation.org> ha scritto:
>
> On Friday, 11 September 2020 12:48:52 CEST Alessandro Bolletta wrote:
> > if I pass tagged ethernet traffic inside a bat0 interface (without
> > creating an alias that uses the linux vlan stack for transparent
> > tagging), is this being allowed by batman-adv?
>
> Not since batman-adv was made VLAN aware.
>
> Kind regards,
>         Sven

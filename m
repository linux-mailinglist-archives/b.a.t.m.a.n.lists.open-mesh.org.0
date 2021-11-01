Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C2F441522
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  1 Nov 2021 09:13:15 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7D980825C2;
	Mon,  1 Nov 2021 09:13:14 +0100 (CET)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2350380A81
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  1 Nov 2021 09:11:45 +0100 (CET)
Received: by mail-ed1-x52a.google.com with SMTP id f4so3395590edx.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Nov 2021 01:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yb6wWrUbG7viwzKLb+1mNEqFRnMxKsiQ/RoGbQMQPPI=;
        b=Hq1x1YFpGyGQ2qsQwEZSRbX0ksnJwrTlqtAZcHnn1WlTd32QEqTUbbVAHLPPyY7Fhp
         /9QJDDovb7J5tyqpJC8iWD155fi7hThKAVDza+/Ky7TR3g/RlygG2toNMowubwmbW6TX
         kRuxF750VZsT2y3PbEJlkmGtbWMY5JOowZaXIb9MKjpN0D9PPDCgwcLiE1ev7zUiKMuS
         azkpLpbrvZe8mk+eBMD0d+HGCesTTqJVcn7xlld83YcFK+nT2O1yXDHScY0rbF4GiKgm
         TpriSTwLu69Pa5dT074fOkYgiE2aGtGYqs8TEsO9lvktAH1tePN0uh0JrS4uO4HW0rtz
         NFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yb6wWrUbG7viwzKLb+1mNEqFRnMxKsiQ/RoGbQMQPPI=;
        b=wPv3ecyR0yku+IiQAaKEwAckxrgfsDkciimX5rJKI/kOrrRDC8Dg2Mh4jrJzj4J7Mo
         xjYSfeTH07mV/FWsOM9IA8f5EbTuzwfK2md21Qw9HJm0JqjU2of0nLxIKxEl7d/crvWt
         FIQJczoVOt8yvFVMlWgwbpLZR48/wBewXf1E6rBbuW5ZZ8tztSRmYfDXrEF/FP7nikaM
         I1a47b/dtaFFVW+rDd3nzXmUUQBsZrmxjS4QvcjYK6ULIskUyeZv2GH1HNBISlxak46I
         yo4U/WciyIJDoBu0WmW9idCZTVQ1hAisKTEbA0+61xWeIRIcv3kjuKdC6Z/t3zHl17+/
         bNWw==
X-Gm-Message-State: AOAM530Of1pCTQXrn0VfwVz7CXbSqXS4Uw8TNDe8UGb5HRGSRcynjUi9
	Qv8L9xn05dxK5t5xG3MW83f4xjJaF7zSwKshAvc=
X-Google-Smtp-Source: ABdhPJwNhVh/tYLsqn4p6XyUPSYAYem5Kg5yeGGvbKvzWmOHpDpy6n7G8yoBWYI7//3lGluZv9dqDNflYGBTN/aC65k=
X-Received: by 2002:a17:906:6dd2:: with SMTP id j18mr34607249ejt.468.1635754304577;
 Mon, 01 Nov 2021 01:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211101040103.388646-1-mudongliangabcd@gmail.com> <3170956.dbteMgFBTL@ripper>
In-Reply-To: <3170956.dbteMgFBTL@ripper>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Mon, 1 Nov 2021 16:11:18 +0800
Message-ID: <CAD-N9QUFFchS=rWjy1GN14CKM+9NXE0C4tnR7zS3h-jZR_T9wA@mail.gmail.com>
Subject: Re: [PATCH] net: batman-adv: fix warning in batadv_v_ogm_free
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1635754305;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Yb6wWrUbG7viwzKLb+1mNEqFRnMxKsiQ/RoGbQMQPPI=;
	b=vTQni7EPwUHw4eG5Zz5Y9dYRiDHS33vpxwkVm0U5iBxGHwX1MUkisRvaLzsdWDt+Hwdlyo
	jM87OpmCXBE5rRrBjFLSo+DFyP/ddVIefrg8QlT5lbpUSmlbK+9HKlHqkcOoaYQUWfKexE
	TFvMpzDeSiXXzlq2NwTs+LhS+3aarZg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Hq1x1YFp;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of mudongliangabcd@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=mudongliangabcd@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1635754305; a=rsa-sha256;
	cv=none;
	b=zK9jA142r7W/5FeXuJHCJJKXp3Ho3VUpxpUV1tZcBp7qtgo/rJwkUyVgnkfBETEl/lmu03
	lfEwvl9Bvvd4n65zOv80eH3aR55+tTeJFPtBTgAOWihrxm8EdJz5hb/WsC/8Uqh5Ox8Qpr
	oCduPZk/B5qpLJNaq1Cazt63KZkqxWc=
X-MailFrom: mudongliangabcd@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: OIEOMHSK7RJKUJBD24NADAOSYFG5TDV4
X-Message-ID-Hash: OIEOMHSK7RJKUJBD24NADAOSYFG5TDV4
X-Mailman-Approved-At: Mon, 01 Nov 2021 08:13:12 +0100
CC: Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Antonio Quartulli <antonio@open-mesh.com>, b.a.t.m.a.n@lists.open-mesh.org, "open list:NETWORKING [GENERAL]" <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OIEOMHSK7RJKUJBD24NADAOSYFG5TDV4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Nov 1, 2021 at 3:46 PM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Monday, 1 November 2021 05:01:02 CET Dongliang Mu wrote:
> > Call Trace:
> >  __cancel_work_timer+0x1c9/0x280 kernel/workqueue.c:3170
> >  batadv_v_ogm_free+0x1d/0x50 net/batman-adv/bat_v_ogm.c:1076
> >  batadv_mesh_free+0x35/0xa0 net/batman-adv/main.c:244
> >  batadv_mesh_init+0x22a/0x240 net/batman-adv/main.c:226
> >  batadv_softif_init_late+0x1ad/0x240 net/batman-adv/soft-interface.c:804
> >  register_netdevice+0x15d/0x810 net/core/dev.c:10229
>
> This is definitely not a backtrace of the current code and its error handling.
> Please check the current code [1] and explain the situation against this
> version.

Yes, you're right. The error handling code in the upstream is not
prone to this bug.

My local syzkaller instance is fuzzing on 5.14-rc5


>
> Kind regards,
>         Sven
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/batman-adv/main.c?id=ae0393500e3b0139210749d52d22b29002c20e16#n237

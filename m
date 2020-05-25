Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8312E1E0A49
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 11:23:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5D9B081938;
	Mon, 25 May 2020 11:23:18 +0200 (CEST)
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 18D2680246
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 11:23:16 +0200 (CEST)
Received: by mail-io1-xd32.google.com with SMTP id c16so18031228iol.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 02:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=0mQ3PV1ytF96RabrJYaNj6vOov9omX5BYOPkNFMbhog=;
        b=mdW9qghzOohY8nq2eUHpeuEfJgPDbzlLM/MXDzf25bPwQNnmS173qj5pZlr38OCaAJ
         8yFSCVONMXY2rx+ScZxki1nl5f8+Dl13+Eqkop2Dgu78yeRn1sD5jEFSm0kxkjiua+vQ
         8xmlKtmMUuSVkNu8O3+kHMscsDFmRs5gXwqSCYLIj3gSxCia2aILZ8SVDPg5jThSGBpb
         Ja+QNHbLHdyMK6ZXvMq0gwFyqr6RkvQBIRQSadqsONxESR4oB/0DDV0WdJtyXgng1VRD
         rXKRwRtf5w/AD8OYZ5gbBOZXD8t0vtqjgnQG7V/S2WPc3Byxq+oq8HsFIN7KXqRWjL1V
         rA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0mQ3PV1ytF96RabrJYaNj6vOov9omX5BYOPkNFMbhog=;
        b=KQmwc2WtoxktvjSGapaiWS/SSBt5tHdwCs5Hzjgs684o+x2aoqFqN96HYJsVVo2oJX
         rvR2gXkKTonFY4t/QTPSSQdQs0OpPYme/x12pS3h171lGsS2+cfME1Qp+wnmXcYQVUl1
         fAQNUDBMp8fxPmDjcktStdFVXsolVtx5ofTPoU4Y7z3yRDGBet4jDkdzVVIm0Xf9VtCl
         VnRt3uPLLaLzfjhanpm4j4FfEFx+3dZJ1Pd5b3FU71q18iSbRoACZ3eYDSvXPU7omeD2
         J2BhIl62xqkBNb5v4UuSlRyHWIe7ZGzzoBNUD8o3s084ziTiE7WN0bdBjJKrEzjUaTHt
         TiZQ==
X-Gm-Message-State: AOAM5318K/uoLr5Xoj3HoGGZPgn8JCdP1XoyLMGX62eGla+lKQEO+H94
	XewD134PxqdiMJk7ASl4ZHY0IkalmrJhD5ujLIckq6Yk
X-Google-Smtp-Source: ABdhPJx06rt74L0iJXj2w9SyN4+qtCAE6bCWzl2fnIdBrPGor5Aw1fuImt90A4FcPbMDvvmODIG2s011GCKpgxyOzfM=
X-Received: by 2002:a05:6602:2fcb:: with SMTP id v11mr8142065iow.121.1590398594475;
 Mon, 25 May 2020 02:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <2164745.TYCVdmGlQZ@sven-edge> <CAOVt3fG9AbAEMP+uKLy8Hsnub6=hAJG2Ekg3vrC__AqVJAdZHw@mail.gmail.com>
 <2955852.fglFOeEuJB@rousseau>
In-Reply-To: <2955852.fglFOeEuJB@rousseau>
From: Alexey Ermakov <axel101@gmail.com>
Date: Mon, 25 May 2020 12:23:02 +0300
Message-ID: <CAOVt3fHtkqfsx8MZYT3gvymTexC_Et+pCuNvHH95X07gC2bVSQ@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590398596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0mQ3PV1ytF96RabrJYaNj6vOov9omX5BYOPkNFMbhog=;
	b=vE2/vzxreEcX3at4mZBc7gO47eAmsn5WTjSMUSesSpMxfjnw5DTmV9/gbXaLHV+h3Enqlr
	Fii3QCqlmSbvnsp6yz+NsAygPF/xObBBfHIcPW23TNyKzjtejBsiRen4/oHcUGtrBQ+IaH
	+B10fvYbipoMn9JQVAf36YYbyq+mFk4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590398596; a=rsa-sha256;
	cv=none;
	b=r3vB7b8oNdvjV3ShC3sa+hxrVfIBXvZ+4j912Go8ms2LYBXEMNgT4aZellOFWgNPGAW2Hy
	/4+U/WjdjN9Am3iVomdExazWqkNSsSyiyEg9Ou/qe8nkzRKu7KyOT/ecMg6bIkK2Gn5ieR
	YH4KLMJ62tTCCUDOwdRqvuQ3F/qgVWY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=mdW9qghz;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: LX7YGDF4GYRVJTQP3YKTV7WEOJ7YXRT7
X-Message-ID-Hash: LX7YGDF4GYRVJTQP3YKTV7WEOJ7YXRT7
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LX7YGDF4GYRVJTQP3YKTV7WEOJ7YXRT7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> Before we go to the next setup, can you confirm that your virtual setup works
> as expected once the throughput is not set to 0.1 MBit/s ?

If I don't set throughput manually virtual model works as expected as
well as real nodes with real channels and speed.

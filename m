Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CB22E265E5A
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 12:49:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9D11880795;
	Fri, 11 Sep 2020 12:49:07 +0200 (CEST)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B2F4A80639
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 12:49:04 +0200 (CEST)
Received: by mail-oi1-x22b.google.com with SMTP id 185so8999933oie.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 03:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=FEf2FINp8ah1D2QEtVdnVabOxvWxNtH0+llhVgvI09U=;
        b=1uXRrs0a77hIsY0GUhKI8sQRHVUWOguOkFmvuMCQngRczjo+DTxgDJemjBIdVMRkfd
         lrrlTknmER1mtufO7GJm8z+JypwFtL/AKBrDWRAWkWWrf0Sk4SPcJBgNuR4NLe5XrZ8A
         ap4ze44BEW351Ghc6DuNK70kFk0AtwMwrQ+x0DlqwQa/b8lGp50PalqfwvDy0pJDkpWG
         U/G9jWzGz9JnffZcbMcJ1LUPDturpJEZMuUdtqSWnLGOjz4SnfTxlMiSckfDxG7Z2nNo
         P8rA6JVZRCJfaLBnFt5QGRk0wRIoLKjWQcQiI3kSSysMq8nFY/D4v+8FGCBbxsUFxE06
         x7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FEf2FINp8ah1D2QEtVdnVabOxvWxNtH0+llhVgvI09U=;
        b=Th3Y+DScpg5aAhG12W1MUz8Ia1aSSpYNSv8cyurmKocvw+wJC8SQGxSph295QnwMpP
         95NddygFqH2ZkI9ttQUlnsTroZUIopbIEiSy4n+j7dmI4zg/nJEp5As+Rw9uEtZsutr6
         GQI9BP/HoEuf/z7syCzn32k/5rEtWyUeqBJ1szMWaZ5r7JdJXFYwezBpKOMlFQhEnGch
         pMokDfyDzQAXAYvfxAMotfIIKN5qLc3OyVho0MYQzyXrmPQbuW437jvpuxMwGernVqZA
         PjBpJrm7ig3duHTXqEFn9c3lSaJ+MubHtBHIKLMFHxKkQiNZRrf6kqAJ0Zm4vjlKadUb
         iBsA==
X-Gm-Message-State: AOAM533ye5/OWn8scKQgVG+z4H988ePO/aNiLL/p8pCyPXLhYvMjWdAQ
	e2p52vsVJ9pUlpM73Z554dwTBulY5x/fUFWbJ06rR84JDETUyg==
X-Google-Smtp-Source: ABdhPJxpFYwIMPWgcYgFsIdpDxkwI8wxTvoMK1S1xR0Tz04SN07h8IVat+Qhd9H29ewHJ9VooBSNPYh3GZqT24PnLnY=
X-Received: by 2002:a05:6808:6cf:: with SMTP id m15mr877351oih.178.1599821343086;
 Fri, 11 Sep 2020 03:49:03 -0700 (PDT)
MIME-Version: 1.0
From: Alessandro Bolletta <abolletta@netter.io>
Date: Fri, 11 Sep 2020 12:48:52 +0200
Message-ID: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
Subject: Passing VID-aware ethernet frames on plain batX interfaces
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599821344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=FEf2FINp8ah1D2QEtVdnVabOxvWxNtH0+llhVgvI09U=;
	b=O3oxEP+DsnxBWTenUrk3FAycXplrQmwfW3XweLeWg5F69x9anoYlkMDWa9WHsP+w+UGFMr
	ooXtEAoyNTJ6KCEBGfIZlIX8MiCFHpB/LiAnwERh4gKhrCx+BDpcarBZbAZlH+XxIeOO3m
	ibCLePVizYoHOqBhzYwhBtDVpGeN+hA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599821344; a=rsa-sha256;
	cv=none;
	b=CQFZQwwHPzqh5INSjf6IhRCeOOZAV2Qmfa2cit+WaLQZhe1/EZawqj47g4RiJWhOhLrV7J
	+Sj5088yAmsM0CbSMPAT56C0sM5w4EAmdvfdaZDkCYfI/W4UkQKgun3WFadIQoq3NrhEQ1
	uO2HaAp1t/tuzAvqraIoJA0QG1Js4Qg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=1uXRrs0a;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: QTVGUBBW2AYC2MXLTWHFNUWUHHZEC4ZB
X-Message-ID-Hash: QTVGUBBW2AYC2MXLTWHFNUWUHHZEC4ZB
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QTVGUBBW2AYC2MXLTWHFNUWUHHZEC4ZB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

if I pass tagged ethernet traffic inside a bat0 interface (without
creating an alias that uses the linux vlan stack for transparent
tagging), is this being allowed by batman-adv?

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E7B30935C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 30 Jan 2021 10:28:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8778A8264A;
	Sat, 30 Jan 2021 10:28:54 +0100 (CET)
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9C25D803B2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Jan 2021 10:26:03 +0100 (CET)
Received: by mail-il1-x12b.google.com with SMTP id g7so9683693iln.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Jan 2021 01:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NamMvLlB6BgOwHxPmmttTaw4EOejEW8EkCQj48q0b48=;
        b=ZfEi5Thtw+gFdszZpBuQB2ovx5cO5gTaJtB77T9ZcfVIox6E5bstMSwM0OcjxXC0oX
         ndztHmqJpKve3pJt3vwIc2WmX2e5keloBa7Ht4TNC/6ZS5vCCwpoPvNUANtXVxpHUoJm
         7Nl00C780GUzSWzG1/GfMC7FqXtAtDyrcoKXYQyEEXvT2znxuXGvsYi33B+tERMCaL4F
         A7n2bSboYi6v8oiVgQXWWgjd9evHl2o2SxbbVgYZ3mazdRlwm8uHq05pWQrL5oj98PQq
         fT+3E5IIwiuI2xatVFTNCzC3R0rN8zQ7Mmej0yi56OpYlKF2M1tHA/JNk463DWfW0d0g
         M/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NamMvLlB6BgOwHxPmmttTaw4EOejEW8EkCQj48q0b48=;
        b=NPg5VfHsuU+I1UsX3+oAEpcp02MvpDGPKItZ44ymxMelK6E2k319KF1BGaPZb8F/8b
         ki8xY4d4yH20yrh90MTF2ESgLZr61tRcIBG81XI7boPKIr8sMutD3Ay4q5DJSWKlCKSr
         NiGTlfPtjsOY9dOMwqKPPZcs4VCgYQxluxAPpxTBvxDFrJNjHHGpeIwfTa3j7PTfVwZ9
         2zqvolPCpz+vuekUHLUMSluebzBKgMd63mDmLgKtSGW8rcSfjhRBCEzsOHtgMsLaOF4a
         xSgra4smO4zwGRY+JnXkV4grF/3QWlHh75+i4XNTmnQ6HWW4Bw8/5ZhJrQKWMCKVsfJN
         DtDQ==
X-Gm-Message-State: AOAM533K/FaAkiQp7yjyBe7kHk6oWsQOYzmcOVfGI2vU+/m0ZKyaQZGG
	1apfqaZ79lIs+QuYY26cVQzDE3CD81+2mNl/g9h/eC50uZA7zAEl
X-Google-Smtp-Source: ABdhPJxRzzkXDb8dvMkKkRAlwsfa/b3EXBWaGVtmtD0Xh+ioBSEIusEkBKEpLu0zMoSxqeviHg4edc5SRyg/uERIGyM=
X-Received: by 2002:a05:6e02:20ee:: with SMTP id q14mr6371694ilv.259.1611998761886;
 Sat, 30 Jan 2021 01:26:01 -0800 (PST)
MIME-Version: 1.0
From: Moullick Mehra <dedamamoge@gmail.com>
Date: Sat, 30 Jan 2021 14:55:51 +0530
Message-ID: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com>
Subject: batman-adv related query
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1611998763; a=rsa-sha256;
	cv=none;
	b=ni+BfeKvuksiPjs8Q1wOIZpmdeQc3xtqQxiZuxVGI5dDZFaz7gb7Tfw9+p6YLjMa6wJ8w5
	Ost1gqVa8oZdVUA2Nb19HUFwEsxNhRJEj2T9k2IUfh74N2F4TWq7exLSxG0aEoEZwAzmEN
	Jb345vgjaK41XZ/HJkEUndbCGOO+9Yg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=ZfEi5Tht;
	spf=pass (diktynna.open-mesh.org: domain of dedamamoge@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=dedamamoge@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1611998763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=NamMvLlB6BgOwHxPmmttTaw4EOejEW8EkCQj48q0b48=;
	b=EyosK+Q6Ag3tGZlQteBNVvzqnWxjfnuRKWgKFBH1GEFsJ+m55ZNeHMCAmkq0f5i5K8LXUO
	GUA50XIfU+loCTtTijw84ppF8/Pb5WvrgBqWQHBeo5bZ1sv9sH6em8RyZjpHh7dByuvv6p
	NgtIibbWd+eYvI9T5eWAsTqePJ9LRaw=
X-MailFrom: dedamamoge@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: NUUW2RQ3DD72HX2OQVV3ZVF5M6LPS3LB
X-Message-ID-Hash: NUUW2RQ3DD72HX2OQVV3ZVF5M6LPS3LB
X-Mailman-Approved-At: Sat, 30 Jan 2021 09:28:53 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NUUW2RQ3DD72HX2OQVV3ZVF5M6LPS3LB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,
                        I have been using BATMAN-ADV for a while now.
Just had a question. Is there any way to add a nonce value to the
packet header? The reason being that I want to add an authentication
mechanism where the firewall permits only selected headers that have
this nonce. Hope this makes sense.

Thanks and Regards
Moullick Mehra

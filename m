Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D4528A827
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Oct 2020 18:01:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D566E809E1;
	Sun, 11 Oct 2020 18:01:24 +0200 (CEST)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5D670800DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 18:01:21 +0200 (CEST)
Received: by mail-wm1-x32a.google.com with SMTP id 13so14860595wmf.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 09:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LEwD3mIr/1KYBHs99SygadO83zWydo57S1Ak+pZsrTU=;
        b=SbQaJtfbXtS9OT1lUBPuclHDksSAe4xMoT0CLsi9MfzOBZHnXitEvr/gF42fqPdyyX
         i9pQ9QdM5cfbWaC/HChnlEaeMvGp8a3gmY2r2pZf/rGn0fpdLXvzYGDBGiUiCLu9VF9Q
         KjdPJA7YH4/IOiDARA38JF7xTNaumE/X6u6QLly3iMxN15wggVwBYvdZ5qsLRRF0zZRf
         szKu8wYze57ojud55cZkl3FX5pnmbxRUt7ojt/ePhKosP6unpQrPyKgzZ61sogC+TB8V
         eu7HxASiAmzHcqauIZ05jWfPvfidfLhdnRNJ9DdSxiV1o0XF+IleJZaIRk5Urn8gVPm0
         4rSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LEwD3mIr/1KYBHs99SygadO83zWydo57S1Ak+pZsrTU=;
        b=MQ69PGIMe88pd4vSEYssqMTEEy/ib4ELPjTfH/npY+TyKxPLQC+aUeqMMQST4ITUsD
         WOG5WtCIHHvlwtXxyjryCJj8mt3Wgtrtn55UXTy1LU0K415pm2n/pWD+l6xxcxvL1hRo
         6e7jE1GAqRNfi3jyZt2559cm1VxbE81n/QsPUjf7Exj9oRnD26lrTD6QyKBQK+6qmE5p
         Bx2GLgXucccjMDiB6EDu+8OgPh2yNHM4yIVTm0PODNYsU9XoYVFZkg6xyzTDN340zv/1
         T/+Zd/1EwFzsOeU+xloOBQlb82wEOExziAtSZ3b/eztEu1kIv8fsI9bspHq4ndhGaA55
         lGNA==
X-Gm-Message-State: AOAM532Iv/oPp2q81SrzTaCgVLhkCJEASV1imQwDTTc/WSlzaujXga6/
	S1nGmhsbSXCIkSHIp1lisK1ur6F4EyRhXcDTMqJ0NgbvkPEc3w==
X-Google-Smtp-Source: ABdhPJzG0hvVvfHGMW3rSKOT0EovW63AXDm1vE5u386/RQ3XOLIt+NK/P1K9icbqBtfifCgHeB3hiGNvflsgPo010Rs=
X-Received: by 2002:a1c:9a10:: with SMTP id c16mr6780914wme.96.1602432080765;
 Sun, 11 Oct 2020 09:01:20 -0700 (PDT)
MIME-Version: 1.0
From: James Bowery <jabowery@gmail.com>
Date: Sun, 11 Oct 2020 11:00:44 -0500
Message-ID: <CAN=DHyZbA+DBrmk=HWmG5Ur1iOy2tfJR5L+thaSq1V8+j4n2tg@mail.gmail.com>
Subject: 802.11ah mesh?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602432081; a=rsa-sha256;
	cv=none;
	b=jE77M9uB4SPPKVqsvZoqMYSAukxaJ7E9zcpmpM1/VSpxWAA3jg/EVaqmbURlQ5YbUscoWT
	GzQMeW+xOcRclfrDCZqCQSthUvYqFq5oj3OPO5MFQHpakw3BikPUfvQjAvjYWx9Wp0ks97
	BtAGcaeKfVgo1jQde5uZy+UETuQG0Js=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=SbQaJtfb;
	spf=pass (diktynna.open-mesh.org: domain of jabowery@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=jabowery@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602432081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=LEwD3mIr/1KYBHs99SygadO83zWydo57S1Ak+pZsrTU=;
	b=EYsEGxccJmo4iwGD9JuKgQDzyiD/IRiuTNjRI64EmADf1dETGaqPSsyGf/SbxjzGKU/6eN
	i2DvmYnb/meCa61UJxgeaR5aXw6YTbCQ1jAyhcI2QqVtIJQG1VYXPw6tYogDncoJGCt6Aa
	8ddYu1nUZ3ZGLzbQ63e/zcV19QuxmMQ=
Message-ID-Hash: DIGB5H5WY3L7EJTJ5NM7IIDXEU7ZRB5F
X-Message-ID-Hash: DIGB5H5WY3L7EJTJ5NM7IIDXEU7ZRB5F
X-MailFrom: jabowery@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DIGB5H5WY3L7EJTJ5NM7IIDXEU7ZRB5F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I've purchased a couple of 802.11ah evaluation kits: SX-NEWAH-EVK-US.
Is anyone interested in working on a 900MHz mesh running on this IoT
standard?

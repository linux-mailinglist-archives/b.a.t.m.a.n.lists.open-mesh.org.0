Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDF531AAB8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Feb 2021 11:14:34 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B7DA480C86;
	Sat, 13 Feb 2021 11:14:32 +0100 (CET)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0378C8039E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Feb 2021 11:07:22 +0100 (CET)
Received: by mail-ed1-x52c.google.com with SMTP id df22so2762926edb.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Feb 2021 02:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NAYDrsuUM6B2sLq5jYKlzJfhLn+BvaZl2UVuZMJxLpw=;
        b=VVHYpB0ti/HMHK4xJ7mMGTvMyGbTvXGd2ccHqpLQkiTFmcpgUT0JTw16Kpv93UPuQi
         tHz/5AIbdKLL0EnyMxpbpwQAjPBCuPIZvtIskYSL5Y0QZZpPQG8FQZwcP5QLkbyHlLsJ
         Zl4KOlVy4Xb6cZbgCfpgCKqUACHmpQ3zavMqX2fcwTfSqaQ+ym1ji1Us+DCM2uDsnnAx
         NydB6phBNTkCAl+mq/cA4k2tGMWn4C/W3LxRIE3fMrjMIe/Ye+85aHPFQ9K+G6OY+2zz
         +mQs5g/TaXrwievyoUPij9h0FYwOpG/fJcjZ+++McDlPu8FzUNF0F149HocdiAqhg5Gd
         UTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NAYDrsuUM6B2sLq5jYKlzJfhLn+BvaZl2UVuZMJxLpw=;
        b=IO7VgRanijQb6+xwgoKGCkvejpeKAnTNnL+FRXrJyxkKNmYxIn80ACDPI6X8pP1Snq
         GjDVoBRzMtTGZg5dMhrddwA3tc1n02tZvd7mBy4BIpVsv26zwRsrYPG3NtzHfJdz3dW/
         2mguYWa0+bmMcaqXtXuMhuIScnhPdiA+o6uM+Jv1jvlijbw7EGZnqQQxHPvHp1AsapGk
         aFL/bFApmKGqY5+ZgLXO8U6PoyjvTXezKMVEVUFHhIfymL3w+5sqFwvlJdkvijYKMXG2
         x7j8YtaV620/CvOsxtr3rO2VWt4UPH68y9nWn/gTh+ftDhUU2SNMKi3hX4oJCS8EQziM
         tv7g==
X-Gm-Message-State: AOAM531rQxlnaGEAZRRzA/aiJsmFVfDK9TvUB3Wzi7xRMmToDaNSG2bM
	VlfJYUkC/82E2bdZrh+0UBv9jN0CEV9IoETD+whILvG55NAbKA==
X-Google-Smtp-Source: ABdhPJyX6w1l4nhPUO2QZXwWAT9IaF5o2aggthI1B5DbWaxjv70MrE+eLiRk75yVAH4I/J3gQhxOUXici3GAzkC9iHc=
X-Received: by 2002:a05:6402:10c8:: with SMTP id p8mr7011877edu.144.1613210842397;
 Sat, 13 Feb 2021 02:07:22 -0800 (PST)
MIME-Version: 1.0
From: Tushar Malpani <tusharmalpani20@gmail.com>
Date: Sat, 13 Feb 2021 15:37:11 +0530
Message-ID: <CAHw+5zrk5DoMWY8KG6W=JPxkC+WhLzOKnWm-zry195Cke1GyBg@mail.gmail.com>
Subject: A few questions on BATMAN Adv design choice and it's comparison to
 Babel routing protocol .
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=VVHYpB0t;
	spf=pass (diktynna.open-mesh.org: domain of tusharmalpani20@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=tusharmalpani20@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1613210843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=NAYDrsuUM6B2sLq5jYKlzJfhLn+BvaZl2UVuZMJxLpw=;
	b=s2rtDAOkIbdeyeRZ0G+hsfiFno4Gew6x3i2kendtZrzDGE/3m24zIuU4KxYaB5+JTtjYeo
	yrsqPrbJtPlWp4zjGz/9CaaFFe5GVQf/JKnlpZlaYaOtZQYmJS291+wARO1CWjvT4oywby
	ogoN5OJ6QldDjIT3gqDtGl0nrVy73Lg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1613210843; a=rsa-sha256;
	cv=none;
	b=4N3D0SnE7hMjvlOroFKUJlUfGd/M+gTV+rIDSluE8Z1KCqVjljykBn05144opsvoXaxN3T
	gX/EFLWY7s7vibmaOtBbInpoIck3ViLWzUgjYnBdjVIo9jnuJh6pEhMLVbI7S+Nq3vbrUu
	TOneXkv5/IjxvntViELgcxhm2SjVrqg=
X-MailFrom: tusharmalpani20@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: GUWNARJLXHV3K3UMNEEEX52UPU7T7D3U
X-Message-ID-Hash: GUWNARJLXHV3K3UMNEEEX52UPU7T7D3U
X-Mailman-Approved-At: Sat, 13 Feb 2021 10:14:30 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GUWNARJLXHV3K3UMNEEEX52UPU7T7D3U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Just a few questions regarding BATMAN Routing protocol.

What is the difference between BATMAN Adv and babel routing protocols.
Why use one over the other and why does babel scales over a thousand
nodes whereas BATMAN Adv has trouble doing that?

And more of a general question about the design choice of BATMAN Adv,
Why go layer 2?(I read the article where present in open-mesh but
still it isn't very clear to main. What advantages do we have going
layer 2 ?)

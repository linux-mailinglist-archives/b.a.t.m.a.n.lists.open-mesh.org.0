Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF61A25B2AC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Sep 2020 19:07:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7CBF8805EB;
	Wed,  2 Sep 2020 19:07:39 +0200 (CEST)
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 81E5080288
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Sep 2020 17:09:01 +0200 (CEST)
Received: by mail-io1-xd2f.google.com with SMTP id g14so6153336iom.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 02 Sep 2020 08:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=48VAOcFEZrbXceL2DOgwTkjkGd1lKooXrqVm3Ux2rlY=;
        b=rGNxAm4Vs+IjkOtFoqs9YlVq9hBMQCtlz0R3qImEsvmbcGuKL7AyCHOJMNyYYkB+3Q
         Jm8OE/TKOamubAV+fcQYwlIIsmblZuyB7WeUX1VkgLPWg67+4NjprKQJu+1HkTR+aYxQ
         8v8DMsqL0Rbi2L9k3WgLidYc7Uk8JJsMNQoU85rE2azAVYUsaO6Bz5emiacftP7/iLid
         18/ev3ef6aO43F4Ew2vBhlxCzDIRuizPYZ9uGFyS/nSVvISo6AFpW64WcKTILH43EULP
         ig8awTj6FblxL1v/oBn8vQGy+L/SVpmIFgXSF0VvHIG/lWH0rNb6SCBQFEoLYk+Su8tW
         daMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=48VAOcFEZrbXceL2DOgwTkjkGd1lKooXrqVm3Ux2rlY=;
        b=g3iWdAQILGE+HIrTIiGmbCU7XqnNpZIeVM0XuCHPu7cZRgqioNgxJBTGFo3/BsD73E
         I60tOrvu2Ec6T4b8dll4lQBSMKo4tMYzroRfCXjmaOYWjjJ/R2MD5kU6BV31DP0sIRF2
         rUAN6UbuF+d1bqs1AEv1JzllTkxL0ugKmZ7uEbWgDrUAs//B3BhQn4BU7hhMAnx98eyB
         KjDXXKjw3xM7s26CyOhjDWa7vHD+egfmLKf7LLDYMVZ+BJCJN+DeZ5sKdyvY5SbtwHIX
         AhKzN8j260huis35EeVzAE3iPZ5J4WCYiFCHafh/OvPJpf7ss6f9MAc+4avcQFX2CKJV
         wdKA==
X-Gm-Message-State: AOAM533GC/ADac7FDkS2jHEaa3DgyGLb961ACLEzDwNv5t+1j2c1CNdu
	cWMXXcw2pXc+/fVz2EHmpTV0jz8uzFz8q6BdsQaoDTLhDgWmUQ==
X-Google-Smtp-Source: ABdhPJwnTQPahaR8k2TK0T5yodzgMb3s4B0oS9Iyukv4K6da+Dr8ww/SbzdWOdsE6oq8CYpz9E39SwgF5TX9loTEg7Q=
X-Received: by 2002:a5e:930d:: with SMTP id k13mr3814077iom.40.1599059340045;
 Wed, 02 Sep 2020 08:09:00 -0700 (PDT)
MIME-Version: 1.0
From: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Date: Wed, 2 Sep 2020 17:08:48 +0200
Message-ID: <CADSehqPK2R0ymqwFFm-wcE1m+K8WoAYSb1dwiCNhaNQDP6xYEw@mail.gmail.com>
Subject: Node amount restriction in IEEE 802.11s mesh network
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599059341;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=48VAOcFEZrbXceL2DOgwTkjkGd1lKooXrqVm3Ux2rlY=;
	b=1/r4eh+IwIqVn+dq9lS++1llizmRib9T32/ueX2ngsvad8ZFgBFmsCJloqe/joB8NRRPKo
	U6XXLotf3hbedVJMFREopjdmQk+M92CCkB3d5oHLEdlFtHuXAZTb+1NZiCm5d0Vrn/XmOf
	S3xHdyn52FP7EvsZPzAjN5pKbnWfxF4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599059341; a=rsa-sha256;
	cv=none;
	b=4LCqZhuUXtlZARcDuDOBL/rag9+izwsTFRWX8XffXBTWBX7gWINrQhKoBCJfkyiiL5G/5m
	iH7Ab6ujMCOZhfrKT9+5/qiCPoQZc5YIPNJ7ehy/e/rP6x2WBnTNALKd/rmVyIKGCaQ8eX
	qu9MwF0X7bI0QwB9YqFfAP7Nm2XWApg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=rGNxAm4V;
	spf=pass (diktynna.open-mesh.org: domain of maximyuschenko1@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=maximyuschenko1@gmail.com
X-MailFrom: maxim.yuschenko1@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: ZRRW5HG7WM5YXWLWYAJ4UPRV6ZW76GAK
X-Message-ID-Hash: ZRRW5HG7WM5YXWLWYAJ4UPRV6ZW76GAK
X-Mailman-Approved-At: Wed, 02 Sep 2020 17:07:37 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZRRW5HG7WM5YXWLWYAJ4UPRV6ZW76GAK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I read that IEEE 802.11s mesh network has a restriction for how many
nodes it consists of. It is supposed that the number of nodes in IEEE
802.11s mesh network does not exceed 32 nodes or so.

Is it HWMP protocol restriction? Or what is it related to? If I turn
HWMP off and use batman-adv instead, could it overcome such
restriction?

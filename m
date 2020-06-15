Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A01BD1FA905
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jun 2020 08:43:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 69BC7807CE;
	Tue, 16 Jun 2020 08:43:18 +0200 (CEST)
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 367B880292
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Jun 2020 22:45:38 +0200 (CEST)
Received: by mail-oi1-x22c.google.com with SMTP id k4so17191841oik.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Jun 2020 13:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xecoenergy-com.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=uOrM2tFZOzxrvg14iwA104GtNmAQtdoo3/+QgJOe5E0=;
        b=LIuvTUhA+apBLv20df/ayGLKVprGnEImALSfaCDRpm/CQq6TVk5yWIVOF25HNjcjKq
         v8/Ml179MS9/CT1xpF+eb4shr36+rON7elna6weP3V7Z7SiYfGexxyRSvdCmUEp8ee6Y
         Ek0TG95XwSHhoNZe5xvZl8hlmseyZSKYMG5kFFXqjF8Aoz5ZyeXA+dl5yUtA80dtSa9u
         roZTWwOy2Cs+ThznUvHffYrDD7kQJD3Y4hl+YHYHoFjOKkb97B1YovsNpXEgTlkJcnKi
         1NG5cDfIFry/VaTp6yFXAXoT90QUo55rH9BrBT8BEg1WzEPW40D9JdxtzUon2OZotRm9
         D10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=uOrM2tFZOzxrvg14iwA104GtNmAQtdoo3/+QgJOe5E0=;
        b=lN3Cvov3hGN6hiZcenEHQJlkY5SJJOIqRM9HyQuF7tXrWcAUVUG3eTWBDH9YfXu4a7
         DmJUQcPIRXXKOE9wgWr91oNtoPAdZ56y7/vvbEYfxxFscGenhKU2oXu7TqJi+D3V4TaK
         pkcEQIjuJdMd3QkcJd3SJv8dr6H8z6uM8sZ+dMGHge+L4b+SSCVwyultLRy3Q9mrvkZ2
         ncMqqpOUmm4gTTjkMrf6WAsbyV5byaFSGRJib7irKzpIF4swymsuAVwoOYGMol9kfPaE
         1Pjb8izlESTFQXxaNIlDmzlqj7ei/wHwYlrcA0fpeN5cUAIdQI/Y6b/z/ry2i7/eu4p8
         nKrQ==
X-Gm-Message-State: AOAM533stJuXazh0xH3iyTpVQ6hVl52ArdeNY0XM1kPeZ/nNTZ1CSTh1
	N9m+mBh8XS7Mu4ghVjMOOSa3Z6RDLpM=
X-Google-Smtp-Source: ABdhPJzQ8sVgD/OwUlgjLYfWC8jGdGSA5/m5BZxTLegEJiwkA+A1X6zuGDJT79yhR79E/nYExqT7Fg==
X-Received: by 2002:aca:d454:: with SMTP id l81mr1027115oig.152.1592253936391;
        Mon, 15 Jun 2020 13:45:36 -0700 (PDT)
Received: from ?IPv6:2605:6000:101b:cd12:6d34:17ad:8a8b:3500? ([2605:6000:101b:cd12:6d34:17ad:8a8b:3500])
        by smtp.gmail.com with ESMTPSA id t8sm3513583oor.42.2020.06.15.13.45.35
        for <b.a.t.m.a.n@lists.open-mesh.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 13:45:35 -0700 (PDT)
From: Rob Cowart <rob.cowart@xecoenergy.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: batadv gw_mode client 0?
Message-Id: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com>
Date: Mon, 15 Jun 2020 15:45:34 -0500
To: b.a.t.m.a.n@lists.open-mesh.org
X-Mailer: Apple Mail (2.3608.80.23.2.2)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592253938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=uOrM2tFZOzxrvg14iwA104GtNmAQtdoo3/+QgJOe5E0=;
	b=UslaR554GDY46xg1TL1PAk/HLQl7jcGjDetPgn7/0qnnO842RUbyl9PfsLBXPa/4C5PfMm
	/IU8Jq5Ev+NUWS4VaHtAF6AauLZKxEb4f6fOyzhmuXgcClfhgTMJkdPKWmyb9EWA7e+JnU
	V4/S7rxV66VKDV1JW+3OHwYIT7q0v7k=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592253938; a=rsa-sha256;
	cv=none;
	b=bwrM7V5/h+lqmwP2fRb8q+gkCY8Ns5z1peWhBR+DLXAnYgvZZjRk3dorzuFtdOzjKslDEt
	tgAhgDOTIGFBuvGpqLeog6zTuUMMEqEExllBMSaGfKKw4LG8H+I0uQHo9ptKgXKHXbUYdJ
	o9NKnQl4wr5MmdJ6ugPRGeVcURZ0UWc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=xecoenergy-com.20150623.gappssmtp.com header.s=20150623 header.b=LIuvTUhA;
	spf=pass (diktynna.open-mesh.org: domain of rob.cowart@xecoenergy.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=rob.cowart@xecoenergy.com
X-MailFrom: rob.cowart@xecoenergy.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: FG4ZGHSHFHISJUKZ4XQH56ACBV4ASSSZ
X-Message-ID-Hash: FG4ZGHSHFHISJUKZ4XQH56ACBV4ASSSZ
X-Mailman-Approved-At: Tue, 16 Jun 2020 06:43:15 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FG4ZGHSHFHISJUKZ4XQH56ACBV4ASSSZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

  We've been using batman with alfred and MQTT on raspbian for about 3 =
years.  We found it to be useful up to about 15 nodes, and then we'd =
saturate the wifi.  Then we downgraded the driver and we can get =
slightly over 30.  but something we found was all of our nodes were =
using gw_mode client 0, and we realized this isn't listed in the spec.  =
Do you know what it does in that case, does it use the default of 20?

Thanks,
Rov

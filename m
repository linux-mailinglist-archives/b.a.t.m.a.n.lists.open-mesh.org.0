Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D1037F95E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:08:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E7178107A;
	Thu, 13 May 2021 16:08:19 +0200 (CEST)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3FF688078B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:08:17 +0200 (CEST)
Received: by mail-ej1-x62c.google.com with SMTP id l4so40052688ejc.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLjNXKegjmyKijhN9tJVn4Wp6PRvXJoNOfPECmbVEms=;
        b=glQci4voAate0L+gB487Kd16NZSf/I0erkjC8gZMqzCsolGTaO/n55xBk3jDPSJMey
         9lElJ5qspD5Aw22jA1bY1XTDUnQ4yphbRvbMXwU4bRs09QWEriuiDgQJqB+lSa+M9k7e
         nsHUcfj4SC7XIVv5dV3Ch0xhgrVJT8gCU7ed0MBqwKXqxB9sPk+xLBJZONnSrSvnKWU3
         G750HvTtdAzaCtBGtFwwDRNrQeYWkFsMrspIYCzHUEsxUovjtazEZoo1lyuKlLRLJprJ
         6QVRguwap30rNegn8zXpkxZyCUMUIsGdqHvlzDUP1AbGXmV+9Kx5kZSEr7mh4xdr+k9M
         R4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLjNXKegjmyKijhN9tJVn4Wp6PRvXJoNOfPECmbVEms=;
        b=mZ6Me+ydl5lAYleVB+obN0nTGOmnA/JehWonbAzkpGBSGPdlYL1CSjdALT/unwaxQx
         64Ac8JiI1GclVErCxTXoaupNh/HYYhPk1onNVWB6GyTT7DMIpiEahk19osXwf4/sBYsl
         p83AmlFQ1Oyt9lKY+ovvywcp2uxkHIuaOGVWaDISHXVjOVPBlVvFfN+iiV1jY3nOQBQR
         O9l22CruzdqyGC104DfvIc+pL1asWG3CbNEut8nHvXcFvqr2VFZLtZmE0qRaqb1Yeona
         KtYNgpge6ElPHBv62dxIXKi22mEIXKre4NGN1awPFtr65SxebQXdPuxIhrf6zywN45zv
         CxPQ==
X-Gm-Message-State: AOAM533HxmoSNiqMmWEMXG5wFFrQJ940EvDn8H0/qCIlsCfwDqCqB74V
	AohTqmUhzgMPD+V8ldIJoWBme0ZNKJuIlNTx
X-Google-Smtp-Source: ABdhPJxFCHSJbbpVXrn4e9jZAEIeQcoSWXMVOhEnKKq0CV8SvweKko4Lpg7YUXafo6Wo/PGTTJlqHQ==
X-Received: by 2002:a17:907:98a7:: with SMTP id ju7mr45071577ejc.515.1620914567162;
        Thu, 13 May 2021 07:02:47 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id by20sm1825055ejc.74.2021.05.13.07.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:02:46 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 0/2] batctl: Add generic JSON interface
Date: Thu, 13 May 2021 16:02:32 +0200
Message-Id: <20210513140234.1624460-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620914897; a=rsa-sha256;
	cv=none;
	b=TFsIzB9PcF3+1m79VUD1kAS5XgqR9W1klAy39JJW9sIxBmQAxJVtoEjTkzJkBDYz9aDFoF
	Zl/Grzzv+6CRyUFYn7kQyB8hPCYuRxpLMejZSd1vNvz8i2MZ/5oJRKpF5Wi/bwQiquWSgP
	pLdEx2nsN/MFShG26dkcyL/q0nrIgF0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=glQci4vo;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620914897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=mLjNXKegjmyKijhN9tJVn4Wp6PRvXJoNOfPECmbVEms=;
	b=squSXW4HPZjhns7Uh76jhQBKunTdVtk8hD9n5ISSPusxWqayQqhVuJ1KIYvFxtZCXrMZV2
	dmDEHwEMSXNZvgI8v+8iCl4FCfkW4poxSpipi3Ngoq3IwMjp3iW2Lf30SDHas02CPLAYiu
	Se8aFbRg107JyvAmGssicE9C41UCUIQ=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: STECUTMMJGHBJSEHLMDWFOA4VDDDTACS
X-Message-ID-Hash: STECUTMMJGHBJSEHLMDWFOA4VDDDTACS
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/STECUTMMJGHBJSEHLMDWFOA4VDDDTACS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

For the missing JSON debug print a generic JSON print interface is
proposed.
A specific nla_policy is describing (a) the key name of the entry and
(b) the corresponding callback function for printing the value.
If the netlink attribute is not at disposal no entry for that will be
printed.

This patch reffering to following patches:

[1] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/SAQYUZQ7I7H7VWHFPVLBUDYCFX7HNWLO/
[2] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/IV2OFJ2KJX52K4ARZ5MIWZ2A42WOKJRO/
[3] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/EYQBFU5O7E3KKRG2YVPLRGHHN3OFIPYP/
[4] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/WKIBP64G27O23MBAPHECSKNJMUESWFAG/
[5] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/Y3XXIYCJWME4CQNWRBIRYJ6ZOL4MI2FT/
[6] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/LYMU5ZA3I6YVHHRZVY3RJJR4KDHF76QI/

Alexander Sarmanow (2):
  batctl: netlink: Make netlink_query_common non-static
  batctl: genl_json: Add generic JSON interface

 Makefile    |   1 +
 genl_json.c | 359 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 genl_json.h |  24 ++++
 netlink.c   |  12 +-
 netlink.h   |  14 ++
 5 files changed, 402 insertions(+), 8 deletions(-)
 create mode 100644 genl_json.c
 create mode 100644 genl_json.h

--=20
2.25.1

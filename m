Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC8E37F9A6
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:28:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E22C8020F;
	Thu, 13 May 2021 16:28:25 +0200 (CEST)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A506183EF5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:28:22 +0200 (CEST)
Received: by mail-ej1-x62d.google.com with SMTP id n2so40135173ejy.7
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/WVgasdPYrowRG5eUKScMwtF3GQomMyIlg48Yyajbhs=;
        b=Oz/6pjGVJr+5C2QB3d/tgW9ezHOpXbYYzhx06NxWvZqn6KgUTYVzzlp0P99+2ZHsfh
         8mubAZJ9G1XNxIqiHiJR9JfvkpAL+rWNByhTLdrHP/3korCFkVvpp6q03lPv9QE0d2//
         JJC38+ntLIW4pdBP35z2hAekRe/jjzdKdR20iz0N4RnMAaZICIjv7RczfTHz9YDFIouG
         tKuYq0+IWkH2IRx2Y+R1dsUNuonrmEXSMc+YokYKJhpIbydtVdKGgT515TpoFZ6B0FtR
         fVrAD1CzrCoHVlILv4nSRawp2cpRItMgd/56RhTPdR921CPsDS6l+Onr9ET5rIrgmZ7S
         z05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/WVgasdPYrowRG5eUKScMwtF3GQomMyIlg48Yyajbhs=;
        b=H3pBz/4n4gAK6v5Y+ApbWGC+vgAPGteOgX+PdE6VAqSOWwNI0eY1zi8uRG2CSoNTZd
         1fVPPq9L0TfgD40mzbGtKXspfsxFs/4OC6nuYAhyOJXsXypkq/37cURCi0EnQxFjmNMB
         ODlUK8cgEs098YlQPAikm6Ql8RDNpUUBW79x+ukFL7+/x/RbvHd8OLDi69jJ+PaOQ7ac
         2ZuNCq80EQ2KYgu4igh8Eoi6Dri/DNyqrLqdmTwirWK20xdrRjBgqsfl3WbTsXSRU9/C
         xedagSwnq0tG4pr2nvZKn2h+4qHb+pgB81sF3lJiviwmJfwoWhk+6Wv376Sp0E3ltV7J
         v1Ag==
X-Gm-Message-State: AOAM5324BXENH8nNoB2333QnHgzTfSrkemmHddH2SjEUbTZyJxq0xQ9X
	C93KMsezVgC5gZoUs+J4NEMi4iAfcqRbdc/VcGo=
X-Google-Smtp-Source: ABdhPJy1/4ISIdWwJvAxAY3nsQ9+2RX3gW+nviFqfAsKNV9ChlwPBp+XCFAksI30C23WJ+woFNEXVA==
X-Received: by 2002:a17:906:53cb:: with SMTP id p11mr17230725ejo.30.1620916102232;
        Thu, 13 May 2021 07:28:22 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id yw9sm1897153ejb.91.2021.05.13.07.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:28:21 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 0/4] batctl: Add JSON debug commands
Date: Thu, 13 May 2021 16:28:08 +0200
Message-Id: <20210513142812.1707215-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620916102; a=rsa-sha256;
	cv=none;
	b=1aKTO/K7mwNFdLgsBJunrmNUvZZRj4rzqWllJ/YQ3hGhj5HH4l5Ih5JGyYJDlLZOy0zuMc
	5gktLRAtu5WF4xRUkTn4vFQEpqvrdslGNls/vWbYdvPE08+XBBWcdwQ9lGnmkb9MxlA6aY
	3OoNhlvfrRvmCZN2icqFfXZnajott04=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b="Oz/6pjGV";
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620916102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=/WVgasdPYrowRG5eUKScMwtF3GQomMyIlg48Yyajbhs=;
	b=uC3s3YDjzl5X409tlxG9h5yMe87PouL72NRrFBQ+ChTiuvQezhIVI8gifFHW/VDYQahOtt
	WMWfN6udHY5rAV4REA2bkrK6xv9qr0pdAEQeoFzxMDTQwLLUVWsW5XCdZspH0hUwuIDa+v
	tMVRL9cpeRl5ZMItit5Xk0xS/g7Hvgs=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: FK45BH7VKY2BOEMBDNRQU54ZEE24VHKX
X-Message-ID-Hash: FK45BH7VKY2BOEMBDNRQU54ZEE24VHKX
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FK45BH7VKY2BOEMBDNRQU54ZEE24VHKX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Following JSON debug commands will be added: originators_json,
neighbors_json, translocal_json, transglobal_json.

This patches reffering to following patches:

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
[7] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/STECUTMMJGHBJSEHLMDWFOA4VDDDTACS/
[8] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@list=
s.open-mesh.org/thread/W6XWJURD5G577ZPK6WO4XTNTKX5C65Y3/

Alexander Sarmanow (4):
  batctl: originators_json: Add originators_json command
  batctl: neighbors_json: Add neighbors_json command
  batctl: transglobal_json: Add transglobal_json command
  batctl: translocal_json: Add translocal_json command

 Makefile           |  4 +++
 README.rst         | 60 +++++++++++++++++++++++++++++++++
 man/batctl.8       | 12 +++++++
 neighbors_json.c   | 82 ++++++++++++++++++++++++++++++++++++++++++++
 originators_json.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++
 transglobal_json.c | 81 ++++++++++++++++++++++++++++++++++++++++++++
 translocal_json.c  | 81 ++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 404 insertions(+)
 create mode 100644 neighbors_json.c
 create mode 100644 originators_json.c
 create mode 100644 transglobal_json.c
 create mode 100644 translocal_json.c

--=20
2.25.1

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA9E37F96D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 13 May 2021 16:10:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6F9D81246;
	Thu, 13 May 2021 16:10:45 +0200 (CEST)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7ABB881246
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 16:10:43 +0200 (CEST)
Received: by mail-ej1-x632.google.com with SMTP id b25so39996552eju.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 13 May 2021 07:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uzmIJSejGFfYHm+BvxmMPKnilRdKKAMR8mv95vpj700=;
        b=LagUAK4WLvgyLUYt4c9+rRIW5QHJ4c9ELWeyMK5TYeSzAEy+EY4CRalPZjFdpeKyOz
         /TCIgoKFvVz+JGlKBtMNW0S7VvSmZRyNS6Vaa0vfBe/o7uEKMa/f9hmGEXn5OqpBYKR0
         fIDh6mLRHbYervXdKJKtyXHQVnxCzSIMf0mYOiIJSgFF83MSwvhdUseP4hhKFpPcqr8G
         A+HMramLOncX8d+DdkORxog8FhKhmbUIokwsL42M4WvdHjbiXDDfF+Cv8OeBSGqqAKIp
         DyfQodkTw0gE0BqQm1cSocE+Yu5EfDQyZaJIUo6wTS4IQo3V5RWduig4BUH1TxQiUpBz
         FjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uzmIJSejGFfYHm+BvxmMPKnilRdKKAMR8mv95vpj700=;
        b=Zz2fGHpVVPFL0R+NZ/u3lRItl56gZy+l7tucgilQx5DKeWqGAXFogjYZ9BTnutwa7/
         73mXjxXNFsDUhXI9rtQXGZLP74bipmkQG9XbE95XoiNVGJhuLUqbL/1+6+hXiP15F9FJ
         3RTSOjNaffqrpmKw2Yr/7XbT93LzVS1/vcWdgPXpNU9flY1DpoYwP9RNYIOsgJd3xbuo
         eOEX2Vguk6hfr6MjgolxkhHliXN4UHFRX0tcE9x07g7/mzNekJD+XhMZ25FRKmQYhuyn
         WOjWaL/e14ULIMG3FaPu6WECIBacNhZ1QcM7KBIUF6qzmvcXyvRjYn1XGilAbxOYlnoX
         FRPg==
X-Gm-Message-State: AOAM533Od1BFelaMZU2pxGTp8XsCm+6InhoNbNZsjqlByZCiSU2VeSt3
	YS4eVkobDidFX63Ah0S945g=
X-Google-Smtp-Source: ABdhPJybRJr/bE3PSvnhmOSNOBFQylQFU6ddiQJ1wtYRA1qrSGHkp8DdUsI/o+YW9nJMG5nE5dsVlQ==
X-Received: by 2002:a17:907:7355:: with SMTP id dq21mr43827106ejc.157.1620915043080;
        Thu, 13 May 2021 07:10:43 -0700 (PDT)
Received: from machine.fritz.box (p4fc0a3a3.dip0.t-ipconnect.de. [79.192.163.163])
        by smtp.googlemail.com with ESMTPSA id f7sm2504910edd.5.2021.05.13.07.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 07:10:42 -0700 (PDT)
From: Alexander Sarmanow <asarmanow@gmail.com>
To: sven@narfation.org
Subject: [PATCH v3 0/2] batctl: Prepare JSON commands
Date: Thu, 13 May 2021 16:10:32 +0200
Message-Id: <20210513141034.1649576-1-asarmanow@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620915043; a=rsa-sha256;
	cv=none;
	b=vYG7DnpAnj7wm3tNvyPJrlNNrAuimkAE0d4pr/m+2FsLIsQNysm5Dmp3Q+ROEDsB3IMmC2
	K8b5kXMxlxqEoGfCMOcJyLuqoE7EczkbDklBlWzNbNV0ZQvGlkSz4rvrnJOHOmPCLoeXQx
	qNR3T38JZCbeMlCp9DaILkxhJFsOU5Q=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=LagUAK4W;
	spf=pass (diktynna.open-mesh.org: domain of asarmanow@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=asarmanow@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620915043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=uzmIJSejGFfYHm+BvxmMPKnilRdKKAMR8mv95vpj700=;
	b=Elfful8M+LYrC+/HD1+qtTgibRkGRr8B601Ok84kuRgF2bicMQM1uTRlQfGT4g+KKvvd5g
	saASuRIWyDOdZuBiWjnibBF29olZYWIh9D2AozspUUltTtzPS1hQKzZIuGKz68POABvc1M
	oJk62jTU5rHFBH7eRZkJnVMIN6psYJA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: W6XWJURD5G577ZPK6WO4XTNTKX5C65Y3
X-Message-ID-Hash: W6XWJURD5G577ZPK6WO4XTNTKX5C65Y3
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W6XWJURD5G577ZPK6WO4XTNTKX5C65Y3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

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

Alexander Sarmanow (2):
  batctl: main: Prepare DEBUGJSON command type
  batctl: debug: Introduce handler for DEBUGJSON

 debug.c      | 29 +++++++++++++++++++++++++++++
 debug.h      |  5 +++++
 main.c       | 14 ++++++++++----
 main.h       |  1 +
 man/batctl.8 | 15 +++++++++++++--
 5 files changed, 58 insertions(+), 6 deletions(-)

--=20
2.25.1

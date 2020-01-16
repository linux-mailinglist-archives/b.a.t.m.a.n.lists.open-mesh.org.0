Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id D551913FA62
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 16 Jan 2020 21:14:48 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 98812806C1;
	Thu, 16 Jan 2020 21:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579205677;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=AsIjI4szC4Ax4ThtMP9NF0Phv3BCl0Peplsv6U3Z7/M=;
	b=Rs1wV2+bwiyrG6u9hkU0pYiX6ZI1IUdpyeeyVCDiKJY6oisK+n0Wcw4sCc1FF3NOajRQlx
	hE5gc3DdtBKMyIS/cie5fZHaR2oCIa1nVcgOyYk1JiM4yCh/Yu91IHjasSuveV/msf3Gkw
	Nwx2vr6Az3ZN5LDsxHBc4PgQ6LPqOeM=
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Date: Thu, 16 Jan 2020 20:06:50 +0000
X-Mailman-Approved-At: Thu, 16 Jan 2020 21:14:33 +0100
MIME-Version: 1.0
Message-ID: <mailman.6.1579205674.8101.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Martin, Jeremy J CIV USARMY CCDC C5ISR \(USA\) via B.A.T.M.A.N"
 <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: "Martin,
 Jeremy J CIV USARMY CCDC C5ISR \(USA\)" <jeremy.j.martin33.civ@mail.mil>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============2908624876441179293=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============2908624876441179293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2908624876441179293==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <jeremy.j.martin33.civ@mail.mil>
Received: from USAT19PA24.eemsg.mail.mil (USAT19PA24.eemsg.mail.mil [214.24.22.198])
	by open-mesh.org (Postfix) with ESMTPS id 98C6680257
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 16 Jan 2020 21:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=mail.mil; i=@mail.mil; q=dns/txt; s=EEMSG2018v1a;
  t=1579205556; x=1610741556;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=Dt68AnwlDu+6m+Wh6rSrfdgsZxK2b0jXIgU2F8Lg5F0=;
  b=FUdStc0T5skra7oxcUlJY+PsqGB9c7+Ponj6Ep4H77QZyobFZvLH2pwq
   929evXoC7m1nXd/6yUMgyiznpErXifC1CXPBC3isRxhW9TyCSC9f6Nf5Z
   5e/919L1Y6mxPrMiGhQWgMM5Zb7YH3YLneoKk4HFREtMyJjg3CQurbxa1
   kvLz59S3weVq0AiR8978Vlw2fFiGM+aWbqRYuVHOPs0FJ4q5RTHX8Hza5
   eHTdr9UNFeasvJwLC7bMoKnuvdOIzohkYARJenQG2OkCKQi66A67T3CrJ
   bmjdbMMo+lWgpv9gW91OLjGhhnq5U0aeU+FI6VBHQFoqHPByOykqYWtXv
   g==;
X-EEMSG-check-017: 70720731|USAT19PA24_ESA_OUT05.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,327,1574121600"; 
   d="scan'208";a="70720731"
Received: from edge-cols02.mail.mil ([131.64.104.100])
  by USAT19PA24.eemsg.mail.mil with ESMTP; 16 Jan 2020 20:07:53 +0000
Received: from UCOLHPMH.easf.csd.disa.mil (131.64.104.36) by
 edge-cols02.mail.mil (131.64.104.100) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 16 Jan 2020 20:06:51 +0000
Received: from UCOLHPUH.easf.csd.disa.mil ([169.254.8.96]) by
 ucolhpmh.easf.csd.disa.mil ([131.64.104.36]) with mapi id 14.03.0468.000;
 Thu, 16 Jan 2020 20:06:49 +0000
From: "Martin, Jeremy J CIV USARMY CCDC C5ISR (USA)"
	<jeremy.j.martin33.civ@mail.mil>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Batman-Adv Use Case Question
Thread-Topic: Batman-Adv Use Case Question
Thread-Index: AdXMqC/wOh9byjw/TwGKzMej/F22tA==
Date: Thu, 16 Jan 2020 20:06:50 +0000
Message-ID: <766B88D91EC93C4C8C7E844717CBB21F0DF4B321@UCOLHPUH.easf.csd.disa.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [131.64.22.15]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579205557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Dt68AnwlDu+6m+Wh6rSrfdgsZxK2b0jXIgU2F8Lg5F0=;
	b=snzqwF7un86BuuuaukISH38EgpShkVyilAFIjZPQN5AEp91Eq7Sqw1Rj4QblMKGNtVC0pz
	sN7Zg6mfha/DClug1urgD44l+nhmFmhtK5W/V+1rxlief1vpzbUhGhMl9M3eMIsWJF6d1E
	cGP8nsXgaiUebz/u7LejNwQUQ9ItFyo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579205557; a=rsa-sha256;
	cv=none;
	b=Rhi/rux8VkRPrOd3/2RBB5DuUFLxYVRbt/STBHn9efrd/zQVPfCPznbM4ci6IyjmDXedYU
	NNu2l7oBtrfjYcXtlFReBU+U0bdLod8D44X4hVlfz2rSbgJITAt5/MNOWc6QQB/qPeaP02
	y+As2Bip2bBvDf2G4qFcgT2WgGTtG5Q=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=mail.mil header.s=EEMSG2018v1a header.b=FUdStc0T;
	spf=pass (open-mesh.org: domain of jeremy.j.martin33.civ@mail.mil designates 214.24.22.198 as permitted sender) smtp.mailfrom=jeremy.j.martin33.civ@mail.mil
X-Mailman-Approved-At: Thu, 16 Jan 2020 21:14:33 +0100

My/My Teams intent is to have 4 radios in total, 2 on one pc and two on ano=
ther. Our plan is to have Batman take care of the switching between which r=
adio to use in order to transmit data between these two PC's. One radio is =
high frequency radio (60 Ghz) and the other would be a lower frequency radi=
o and the idea is to have batman switch between these radios once the highe=
r frequency radio is dropping between a certain TQ. My primary questions re=
garding this scenario would be, 1) Are there specific standards the radio c=
hipsets would need to support in order for them to work in this scenario?. =
2) Would Batman-adv be adequate enough to be able to handle a 1Gb/s data tr=
ansmission and be able to swap accordingly to the lower frequency radio?

Best,
Jeremy Martin=20
Office: (443)-395-7475
Jeremy.j.martin33.civ@mail.mil
Radio Frequency Communications Division, RF Modeling and Simulation Branch
C5ISR Center, Space and Terrestrial Communications Directorate   =20



--===============2908624876441179293==--

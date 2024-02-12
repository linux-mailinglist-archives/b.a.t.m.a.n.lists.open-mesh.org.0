Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D41F1851221
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 12 Feb 2024 12:24:35 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B632F83FA0
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 12 Feb 2024 12:24:35 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1707737075;
 b=rWNZWKjar7rM44zppC9XL0ePrvcY6fCoFS1t2chBCBjtkySHsVcA8BILkBYNbeglHPUzj
 phW3oWErkiqwG+dBTdArd4hzkWbPHHtbFWD5+heDgzhDsFOfVDQElhpMq25oHAoTqxi5knE
 PeHNZIsfoWtrlmMsAeKKJA9tCyC+k08=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1707737075; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IdW3ANPsOumnUTm35YIcSXXwWb81rhjV/4NqYwmk2Pw=;
 b=HWT1QlkUguKvPi4m/IXudX+Fd5VI2U6YChgn1QLa7vpMQFdDpJi5KyeleC6rbUEgR0f2v
 4SLxAugUSOj2n5MzA9sid8/M7a5IRZvdexkWtr4HaoK7aU4rb0SowtQP7k2mAB+wlaMH87O
 lk3yvgA7sxxq4lDOG1Lk0YnI4wLZf1U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0B98B806BA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 12 Feb 2024 12:23:54 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1707737035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IdW3ANPsOumnUTm35YIcSXXwWb81rhjV/4NqYwmk2Pw=;
	b=WwWDrD/TkHjTG67W3HgNg++p2FQHVBFYw6k7u/Qp1CbvvTxaPZGZ/VSLpa2l6OzEboNENK
	3Sy/n43Uhsrkz9pYqPnaB3p7I7dGYzV6f30S4rKEhKvV2ilurKUl7lgdr3WxRw0C/OgCso
	NF35qWphHy9Hoi8ZvmAObYWvOsNcUp4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ehnTOX7x;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1707737035; a=rsa-sha256;
	cv=none;
	b=HIw+jj/5K6aiCNCbASS5XoM/ob7jtXnE9SIPCWs90nhravpgvuh8IMvLvNFNyuyb02eELr
	WG/uU0Mouzir5P+qEMCsmD9XnqQMG63x+JlytoI/8MtDBDBeGfyEpY0CeRPJ902gkzqOYG
	mivpELoevGDV/gCAtTmZ06iebGwJnro=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1707737034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IdW3ANPsOumnUTm35YIcSXXwWb81rhjV/4NqYwmk2Pw=;
	b=ehnTOX7xVqtW5lTFDHFyLRRbQ0lNc35QSCDG8pDLUj2YvuFR1E/SQbn56rHpD4o7qAQz4i
	qQLzA+okoJLz/xU88ulBpdVRl038dVl4X7/GdX2+71m9DWj3weIZW1UdAZOJLZKrTihze9
	+obYQ5F+CyocSijNqt9gjiWNU+YscMI=
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+a6a4b5bb3da165594cff@syzkaller.appspotmail.com>,
 Eric Dumazet <edumazet@google.com>
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 kuba@kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, pabeni@redhat.com, sw@simonwunderlich.de,
 syzkaller-bugs@googlegroups.com
Subject: Re: [syzbot] [batman?] BUG: soft lockup in sys_sendmsg
Date: Mon, 12 Feb 2024 12:23:51 +0100
Message-ID: <2173575.irdbgypaU6@ripper>
In-Reply-To: 
 <CANn89iKPYAY226+kV9D0jUn6Kfjq1gQJBAjSRxxFgQJK-QbLwA@mail.gmail.com>
References: 
 <000000000000ae28ce06112cb52e@google.com>
 <CANn89iKPYAY226+kV9D0jUn6Kfjq1gQJBAjSRxxFgQJK-QbLwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13450391.uLZWGnKmhe";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: DCIBE4RSXWDPINYIL4WQQ4U2DVXL4M2I
X-Message-ID-Hash: DCIBE4RSXWDPINYIL4WQQ4U2DVXL4M2I
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DCIBE4RSXWDPINYIL4WQQ4U2DVXL4M2I/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart13450391.uLZWGnKmhe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Subject: Re: [syzbot] [batman?] BUG: soft lockup in sys_sendmsg
Date: Mon, 12 Feb 2024 12:23:51 +0100
Message-ID: <2173575.irdbgypaU6@ripper>
MIME-Version: 1.0

On Monday, 12 February 2024 11:41:38 CET Eric Dumazet wrote:
> This patch [1] looks suspicious

Shouldn't be caused by this - but this might be another way to trigger the 
problem. The problem would be visible even without it when a mtu is explicitly 
set. But the reproducer is not available so I can't actually check what is 
going on.

> I think batman-adv should reject too small MTU values.

You are refering to the size calculated by 
batadv_tt_local_table_transmit_size(), right? And yes, I would agree that it 
looks suspicious and might not have been correctly integrated in 
batadv_max_header_len() when commit a19d3d85e1b8 ("batman-adv: limit local 
translation table max size") introduced the code. But I think we also need to 
remove interfaces again when receiving NETDEV_CHANGEMTU and an interface is 
not having the correctly sized anymore. So have to check how to do this the 
best way.

Kind regards,
	Sven
--nextPart13450391.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmXJ/8cACgkQXYcKB8Em
e0ZZFw/+N3em2ptTXcnr3+ApNV8/D8QriRS0O6mBuF8Hijfj6xnYM1hPFaRImy21
WtJjnb2ti7uavNtiBKGR71EUpLW8nNsdI/tB/Pc3ndzy/AOMN9/+JqQE6ekD9K0I
n7rKn5MqBoYjIPMB06lm26Cgx5WyDr3Lkuu3S2OCP3mZZ9+g/p3T0ALJR1c1dkSd
iTM9Yl5zapFzbtebJEa3ywLfeWVApBh0sTpWgfkevsS1OnkRnep59h/KnOa4oBt/
V/BuknZ+m8McCLySH8DuuY0XBvah+mWHMGoGY3qpoeqCo447axPSweIAAXs143t3
ujigchJGL1eaKtOvc/ZeOr2jSwPqmiqIeMN+g7S/mHe7GIW+l6fzH0ZfYm+EADCa
8yJmtZhhwRtSB5j0QsDDEquWlykluoN+jkB2ysTkb3ATY1S+K1ICVZpVMtZ6jCZr
PK68KmxnUFaGXdwKAMpDtDi50roDis7kafjRuIT+rSiTsTkR/uEJ7G4AZs7ca0xz
PfGS7dnXprXm+y/2pQuVXNUzcsuaZxCXzHtjEuzaCEec4qMq4a9QYRrHCLH5xQHE
LxkEvQ2TElGKTzFiOi2daRAreLUv5iQ6U9Y9taiL8AMsKaIjmDUdOmBAUFPhFHDX
ixcgudSFeAbYp0bGwjpqdvXkftitKiGESCAvgEDl+MIhIIK/4jI=
=4r6M
-----END PGP SIGNATURE-----

--nextPart13450391.uLZWGnKmhe--




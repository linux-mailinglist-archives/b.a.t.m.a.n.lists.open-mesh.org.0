Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EA7963B7B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 29 Aug 2024 08:27:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C58583C65
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 29 Aug 2024 08:27:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1724912858;
 b=JHdG+M0CKkwct57NID/3ORgPuUibKyeIdzedFwvTTy4sEm9PWQP1zMZfHfHyKt2SsRjyj
 /HXVekYuGqT5Yj2l/RzC7tG5+DV17H0ncX7OvcXx8NXeOaqEndmWogqKpaH7YlGz3iueJg2
 21/XL637fGGJPDYVwYbIMfNPQ5VHNmc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1724912858; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=D77BSHaUFViLdDM7kfQVR6bNScj//7o43h1CahEFyCk=;
 b=fmqT7Cb3TNpPNh6SCo12OwL4gBpMDvd8Kp9l24C+s10ppmM/8E6henoTcNGbeXm1Ryzbl
 Xc6BM/dwuH03j936gdyOxM5g2pyOLtsJMKneoI9x642HWD5llLJrSkNZVTY69zMF4EwrDKS
 p+yPbdXgP2tGsEJqfjRvSlISGd8Ugx4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B09C183B25
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 29 Aug 2024 08:27:30 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1724912852; a=rsa-sha256;
	cv=none;
	b=G1mRlt8dG77AaXFSt5FkhPaxkP/38st7wleZVVV2LfShPtMAI4PjRobucoSRRfJU+9wCzs
	+Q0w6fgqAjbmqxAMaSmUdmCSkNcb2L0WGUFFE68rqOwbPX18dYiuYqFARP6I2WztrJoeMw
	hYdlO26cclb582L6fyJd1/mOjFEPaE4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=yKEVa7u+;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1724912852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=D77BSHaUFViLdDM7kfQVR6bNScj//7o43h1CahEFyCk=;
	b=mHgrvNZFvLiukeuNaMJ8ZDaE/yD8JcnPiYe8Q+qtATr6SHb9avSDGk77iXFd3ZDFWSt4WC
	8pjLgN1R4q6BXjgK1+mabj51ZF/Vsk9NeiyQD1Btlh6kPSa/1AGkdcYu90/rsX7xtKgFOp
	GQQ/vN4qsqnQHXzYWeWTyePbxm2MWt4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1724912850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D77BSHaUFViLdDM7kfQVR6bNScj//7o43h1CahEFyCk=;
	b=yKEVa7u+YKRRiHQAM6lxvripiGVk3vjqz7lKBIVeKZNBe5iv6XAn73xLXiyE6+IMuf0S9F
	xEF+e9RPJQ6BPqy8eucpuPqKP4GS4j+eFDFsB1kENlay/dsePZfFulgtkYuv+shEqW3u4S
	rVZ1r/tbEATLDm41Ajlx3cKtoxak0Ao=
From: Sven Eckelmann <sven@narfation.org>
To: Xingyu Li <xli399@ucr.edu>
Cc: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, Yu Hao <yhao016@ucr.edu>
Subject: Re: BUG: general protection fault in batadv_bla_del_backbone_claims
Date: Thu, 29 Aug 2024 08:27:20 +0200
Message-ID: <2212852.CQOukoFCf9@sven-l14>
In-Reply-To: 
 <CALAgD-7AOA0At+y0BR2MZ0WXPFM03tQneRbeGZQqiKy6=1T0rw@mail.gmail.com>
References: 
 <CALAgD-7C3t=vRTvpnVvsZ_1YhgiiynDaX_ud0O6pxSBn3suADQ@mail.gmail.com>
 <13617673.uLZWGnKmhe@bentobox>
 <CALAgD-7AOA0At+y0BR2MZ0WXPFM03tQneRbeGZQqiKy6=1T0rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart23944202.6Emhk5qWAg";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: OYC4GQPX76QCV53ARH2DAMXHGAR24QTF
X-Message-ID-Hash: OYC4GQPX76QCV53ARH2DAMXHGAR24QTF
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OYC4GQPX76QCV53ARH2DAMXHGAR24QTF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart23944202.6Emhk5qWAg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Xingyu Li <xli399@ucr.edu>
Date: Thu, 29 Aug 2024 08:27:20 +0200
Message-ID: <2212852.CQOukoFCf9@sven-l14>
MIME-Version: 1.0

On Thursday, 29 August 2024 06:30:23 CEST Xingyu Li wrote:
> > Which line would that be in your build?
> 
> Somehow, the bug report does not include the line number in my end.

You can try to use gdb or similar tools to figure out more about it [1]. Maybe 
even adjust your kernel build to create better debuggable crashes

> 
> At the moment, I am unable to reproduce this crash with the provided
> reproducer.

Since I am missing information and you don't have a working reproducer - how 
should I then fix anything? Your comment from the first doesn't seem to apply 
and it is unclear how you came to the conclusion in the first place.

> > Can you reproduce it with it?
> 
> Sorry. The above syzkaller reproducer needs the additional support  to run it.
> But here is a C reproducer:
> https://gist.github.com/freexxxyyy/0be5002c45d7f060cb599dd7595cab78

I've tried to run it with the normal syz-execprog - but you seem to say now 
that this reproducer is not working the upstream one? In this case, please try 
to get it working with upstream. See also the mail from Kees Cook [2].

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/devtools/wiki/Crashlog_with_pstore#Decoding-the-stack-trace
[2] https://lore.kernel.org/r/202408281812.3F765DF@keescook
--nextPart23944202.6Emhk5qWAg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZtAUyQAKCRBND3cr0xT1
yxDRAP0Xgpu7aT8LpohRYfvgXf8o+GrJZqVeEyS+5DchULBSkAD/UrteyweAjX2D
BFSV2WqmyRJuWVxsbsxYCo2hixPZhgM=
=D8Cf
-----END PGP SIGNATURE-----

--nextPart23944202.6Emhk5qWAg--




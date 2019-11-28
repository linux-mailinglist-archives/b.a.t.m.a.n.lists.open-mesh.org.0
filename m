Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BC410C599
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 10:04:12 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CCEB780E9A;
	Thu, 28 Nov 2019 10:03:41 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 801EA80092
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 10:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1574931798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NrOadlV/ly7FreKTOQxgRCOUZAeZYFuDY0qoRN8icgo=;
 b=cDgC2CAdf2rhtq7hEdWN7O6A53wGbKZtVnG7HANS56jXbJDlbuy4WBQ6tB4iITPMinNWTz
 8ufAeJhojywWlqfMM3ThtQ7p76e0n8Sj8L24AyTXsWhh6j9yKnLRF3K4dLr/DCAK8TyW4I
 Yv0u0zLnBVZ7HdnC57anmxMMBMsSSdc=
From: Sven Eckelmann <sven@narfation.org>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: WARNING in mark_lock (3)
Date: Thu, 28 Nov 2019 10:03:13 +0100
Message-ID: <3691620.GRZi0niZ3p@sven-edge>
In-Reply-To: <CACT4Y+abQSWfiN16BwXFOBi+d3CFGk53oj+5+zZwQPbcYu-Rew@mail.gmail.com>
References: <0000000000009aa32205985e78b6@google.com>
 <1809369.KjlzdqruN6@sven-edge>
 <CACT4Y+abQSWfiN16BwXFOBi+d3CFGk53oj+5+zZwQPbcYu-Rew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3339975.5L7NHtn4j8";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574931798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=NrOadlV/ly7FreKTOQxgRCOUZAeZYFuDY0qoRN8icgo=;
 b=0VgIsH48pQJefbDJe/TEZaGh3h7GGIgII/M1I+biY1NMip4t3TdMlgFfSytgg4WIpPGLBK
 +5QXefzbxLYidyeVQAJV1DbFmRz4CyaSooxWn/ApSabO4/shjrvyDtGcyp9GWGwkWfEt3j
 kLzGg02mlyQJdjGsXTt60j04CZs6L6Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574931798; a=rsa-sha256; cv=none;
 b=tjuQ59j9EDDoKZJ0d7rwgnfWYAs0ZLEVkPaQIZqfNqSCuxhhPeT2qyV2yoZX0eL/7O5xdD
 ncPIvjmSENq6wTL01dBPgfsIXZBKYvgc8fCa24hAmDy2Ce9PjPd/f+eAgVfn8PPn8pv9KJ
 nHDYtMizYFz6dc5vHzl1jF2L3cPa7CM=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=cDgC2CAd;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Thu, 28 Nov 2019 10:03:35 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: wang.yi59@zte.com.cn, b.a.t.m.a.n@lists.open-mesh.org,
 Jakub Kicinski <jakub.kicinski@netronome.com>, mareklindner@neomailbox.ch,
 vinicius.gomes@intel.com, netdev <netdev@vger.kernel.org>,
 syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>, a@unstable.cc,
 Jamal Hadi Salim <jhs@mojatatu.com>, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 syzkaller <syzkaller@googlegroups.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 =?utf-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>,
 David Miller <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3339975.5L7NHtn4j8
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 November 2019 09:54:15 CET Dmitry Vyukov wrote:
[...]
> > I was thinking more about rerunning the same bisect but tell it to assume
> > "crashed: general protection fault in batadv_iv_ogm_queue_add" as OK instead
> > of assuming that it is a crashed like the previous "crashed: WARNING in
> > mark_lock". Just to get a non-bogus bisect result. Or try to rerun the
> > bisect between 40e220b4218b and 89d57dddd7d319ded00415790a0bb3c954b7e386
> 
> But... but this done by a program. What do you mean by "tell it"?

Sorry that I asked about what the infrastructure around syzbot can do and
how the interaction with it looks like.

Kind regards,
	Sven
--nextPart3339975.5L7NHtn4j8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl3fjVEACgkQXYcKB8Em
e0ajQhAAvetvCCehY5SmHsrLLKW7/YkVm3Ez3oqtbu/VCn8TEvau5PVt48ojQYmu
zOIZAs05i4JRI1WHZXyrAzPF3CI4juDdFCwOibiPDzCU2C3qD5s2AsZfxK22iPUt
dkBhW19Cq115ZgcOmerAor0nLkRkglYwoAEg6j+edtXUU3JYQG6PSGICN1NMGhmY
Q1jcXAGR1Hm+2SbR1sBBCflQHt8E6/wURkeqrvV82AcRSO3sPqQBWSEZ7QzIe3mc
oh0v4o5xZQMqppDByKmS9kZ5kRPH0yQid9l/KU4yGAQ8IDIZRKJGSHbpdOSGHNB4
9Wc3SR04lmn8WhwRBE8vpB/6n8cAq0mAv/kTa6pEYzjY499z8BjEkkAh9ggOuxLQ
AOb4dpu0L+wyXP/vLhUKJI+KWAJ+OOJoAVxNXh6HvhQRpShpTN/7+o1AVyRXLlBZ
bdjxVh3McRWvn8KYat3DtkON90uQRCZ9ufyTXcIPKkTiqQuT/UpwY0fNe3kjYfpK
pd5dyM86JWGxd39ramOhFSBQyNUAmJ+9pY2uVypbSABbbyIlqerGqzRSvgxoynNN
UrrZN3MVBCouMxM9+ES7L63jUg8JQQdAwr4RoisEyGLSPsstEnOd6PWYdsk6WYA2
kDoKPp9EjAeGEb7qH+IbXSm73qP2xX+rBBjfcTn/1CHCkgAPvTg=
=lHZm
-----END PGP SIGNATURE-----

--nextPart3339975.5L7NHtn4j8--




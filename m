Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id E093410C46A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 08:43:38 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1FEA780668;
	Thu, 28 Nov 2019 08:43:32 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 1742180157
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 08:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1574925941;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tdlxNmPjYz+T53Gzjo5bSd5rvu0/U9sFpAzZUIpHTf4=;
 b=bNjezSZJ4+JfYhaLI6ZHByOzf/g/QwZJrhzY1luZJRIUCRBZ5fFTBWQW4eOZ70YZwWOw76
 7t/tJfWXDW5VZuQ2/0duk63Hq6ooQnBIseefJO9PPpPPCGXY9s/BcjGsKdOIVujxzR83DA
 /T1n7uJiSOlcEUfqYivGmhB+b036rFQ=
From: Sven Eckelmann <sven@narfation.org>
To: syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>
Subject: Re: WARNING in mark_lock (3)
Date: Thu, 28 Nov 2019 08:25:34 +0100
Message-ID: <2825703.dkhYCMB3mh@sven-edge>
In-Reply-To: <0000000000009aa32205985e78b6@google.com>
References: <0000000000009aa32205985e78b6@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2024983.uInpGIOpHj";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1574926499;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=tdlxNmPjYz+T53Gzjo5bSd5rvu0/U9sFpAzZUIpHTf4=;
 b=s7wyyrPbatvOfScbGZleApL2cX/+O7hk940NjzDX9UNfyz1Pw+TX98PjnSfYOFS/TDx/5f
 LUh9HqAJduAsaJR/k0HrGKa739cbUxV8ojUgVpyTWPl9atFLkwEDGx970C1tDZaCElbhIg
 Q6h1nZkw7yTvjAlw9N5rQwAq8lIS9ag=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574926499; a=rsa-sha256; cv=none;
 b=tb4ScaSImasJ7CU2SgsdY4v3G2Z0mVIG6SX0C6UVv8zlcBPzkky2J5BICkKM1X547/YQrf
 5UQTKK4hMzTmD4AiJRwurVU3zJFV8lkofDDLWJfchHwiMl+o9m+PKFY2pg+LORhUDYhHGH
 6BH2tuavxdU2LmdB1TCzCABg3LUDM/Y=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=bNjezSZJ;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Thu, 28 Nov 2019 08:43:29 +0100
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
Cc: wang.yi59@zte.com.cn, jiri@resnulli.us, mareklindner@neomailbox.ch,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, jhs@mojatatu.com,
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 xiyou.wangcong@gmail.com, jakub.kicinski@netronome.com, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2024983.uInpGIOpHj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 November 2019 03:00:01 CET syzbot wrote:
[...]
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=132ee536e00000
> start commit:   89d57ddd Merge tag 'media/v5.5-1' of git://git.kernel.org/..
> git tree:       upstream
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=10aee536e00000

Can the syzbot infrastructure be told to ignore this crash in the bisect run? 
Because this should be an unrelated crash which is (hopefully) fixed in 
40e220b4218b ("batman-adv: Avoid free/alloc race when handling OGM buffer").

Kind regards,
	Sven

--nextPart2024983.uInpGIOpHj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl3fdm4ACgkQXYcKB8Em
e0Yhpg//TkD4LZe2QORpdzTJdAdLlx2bM1EYIhwWq2VPr+a/w89xre7Z0vpXmHHe
CBG+X/XCYev7EAJhDE7HQU/Jo4WRl0ukTNPprzHn0jcq8VcEIAl3qoqHg1ZhSImU
I242iP55uYzCcLfzj04hnlfgHHr5p8K4YMXUuSihL0SK2GGMdfMViRqb8mHXMwxi
vFaDAfI4mu0gmVm0MTo5ehel9e5VLVnmOJoBsReXXeXjLhjR70liSC1gzOKPQztk
oPiK8Ena8ZFDa6yEPPcB5sQQQfM0haPy1z3fmCFvIzAA9lnsYnJxIpWOBuzf2WfW
6hSeX6+zvXRGDV9R0cVsGpkRaslfHgl+B/gwVMdw2XtVkwUvX3GW4ugLe/4Yw3WK
jyzibIP1XunENnfUYwdPIMYXgMJxiJsZlS8ERWxBXG6fYlzTsKV5uKLYP3GfGuS2
/7cFTBC5xT7rCgiJ89CWhYRabfDJLUNpvi01s1jUBIG0AXyjev8xEHXwLV6qG8Ht
M6qzNcjrOnmOP80xzJrMvIr+lEawY3P5Gn3E/Ro6PoQzOs7zaVMV/Cg5VyTRyjQw
jPJ9bZmvGjw3zB/4mdYzSeDN8ZR1/bbv65OeI5IOo9Y+s4b8/reptZVROpXF2N7Y
CkO9awr7QYeRmeOHCtt+Adg5A6mJNz5LGUisgW1ZQJQzTLbOzVM=
=GMnl
-----END PGP SIGNATURE-----

--nextPart2024983.uInpGIOpHj--




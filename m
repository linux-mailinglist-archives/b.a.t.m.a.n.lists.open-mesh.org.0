Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BDC1604C7
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 17:19:33 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 59880807F2;
	Sun, 16 Feb 2020 17:19:27 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 183548008D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 17:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581869862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ycDGsIuRvIAvHC8M9jSWoOHJ+C/adZPAoQJAg4MOHh0=;
 b=zMk1rHpHJsElWdVbsSg4ZDZMx5E98D/6dpZl5fZ7/wTxbWc59OHrFcAPUL4dFRogbZ6BVR
 a2bf3WJenvnoXSI5J9ZK/6Ud5A8BUs7+CfYLzru/8x4teDCFj3+iU4/214121/5rIFYCMC
 8hsv797rAa9Y+pWYK8gV6jiuYAOJuZ8=
From: Sven Eckelmann <sven@narfation.org>
To: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Date: Sun, 16 Feb 2020 17:17:36 +0100
Message-ID: <14125758.fD4hS3u3Vl@sven-edge>
In-Reply-To: <20200216155243.GB4542@madhuparna-HP-Notebook>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
 <1634394.jP7ydfi60B@sven-edge> <20200216155243.GB4542@madhuparna-HP-Notebook>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2027361.KDeqtIc2Nz";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581869863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=ycDGsIuRvIAvHC8M9jSWoOHJ+C/adZPAoQJAg4MOHh0=;
 b=KiZFSPYFuXmp9Z6C8TTsUcY9vGBUsCXDd0ZJ+3uqqUTYVDZNCnrlJ4G3700sAEpvuVG+Vx
 QPe34D4hQkPflgTMMP4Hoef2ye5yM3o7pSRZoBp8xD2W6xfXSy1U0+qlBLZypnQwMU3oLP
 1+EgQpsjgD72l30yVDtPOdabBYQNklQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581869863; a=rsa-sha256; cv=none;
 b=urE/tC68ZzvragsL4L9jKQMtyKDQbD5RxlKdmQA4TcJjOGNNZVZ/aNYz10I0tWL63n8+Tp
 NlDiEPw5IhugV/tfq5LPTGWQZdDAlIAHQ2MVSa1UBIHFdEEL/OI98ipEKlzColsTpjCTVe
 PNNngIasmO2QfiTPCDya66tY70rU1fI=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=zMk1rHpH;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Sun, 16 Feb 2020 17:19:25 +0100
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
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 frextrite@gmail.com, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2027361.KDeqtIc2Nz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 16 February 2020 16:52:44 CET Madhuparna Bhowmik wrote:
[...]
> > I understand this part. I was asking how you've identified them. Did you use 
> > any tool for that? coccinelle, sparse, ...
> 
> Not really, I did it manually by inspecting each occurence.

In that case, I don't understand why you didn't convert the occurrences from 
hlist_for_each_entry_rcu to hlist_for_each_entry [1]. Because a manual
inspection should have noticed that there will always be the lock around
these ones.

KInd regards,
	Sven

[1] https://www.kernel.org/doc/html/v5.6-rc1/RCU/whatisRCU.html#analogy-with-reader-writer-locking
--nextPart2027361.KDeqtIc2Nz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5JayAACgkQXYcKB8Em
e0arqxAAs2BMDdBX1BL6F26UneTAZ8w5R8MOruf6/NJycj1OzwF9X96BeX0cyj4q
Gnryzgqb3/LXfZPWhF2HSLjuPeVjgiJOoF5S+3n9R00k0Oitqo53gFHirNzLqFYu
bJThufWSFbq3agNcYgrjYe15pyOe46r9Vt/aGyjVsvX+f8J/7PRFCTkznhluzo9C
tmLWbM4tbVJu8JDUD3PY/vR9SxPShYqDOlFz45bqmzHb7Dcr2fLYZC/jlbzd5af+
xTNCsjsk2U9pwR+te1MaIqJ6BDrIljis4HXLCdAMuL5ny1QKrNL1Hj/iS9ycxCnh
1lUNi0HGdRtGcpXbRBIiLkykMJMiIZoep+PkP5CND2WELURBBRVrys8xvwDD3mxJ
xdvhXKAkMv2qaJpbGIQWEf/p+UDbXQXr9Xa1UeUOOHjpC8eNm1FYtKKzTL0W74lE
9KSt086kB2Y9pUMAGQWoIDyb1QKTxQV+jzx9YJEL2AzGO0NEwd+d0UJrxXX+qNbF
BKd+EqdAIR/PfAp2pA4PIxAvieu9Z3jCnXkEURkhS19Rgu1G/0iBq6p8abj+CW8a
7OBNe+13SISLc0rMoX/nbH/Pwxq9MlqRJifFr05S77mKEvdNS8tz0KwN/ZVMSfA+
2dDdXfKzPo3BGnfSOtj7G1wgUMBWOFXVLnFytQEyYXMdlWC47Ks=
=70Ud
-----END PGP SIGNATURE-----

--nextPart2027361.KDeqtIc2Nz--




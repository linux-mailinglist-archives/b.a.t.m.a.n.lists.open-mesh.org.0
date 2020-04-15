Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9EB1A9805
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2020 11:11:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F2E5880C65;
	Wed, 15 Apr 2020 11:11:03 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id B65B18010F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 11:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1586941449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tVtwvlOsN93bbG9x0uA4RYzVQ7E8MaWkOr3JMOVqIew=;
 b=t4PUxGF66q+sK8FG57Ok5BLQHR3pCRxrdEwBBRvAsKHkHFT007ugssH4rWrDArHFxEljwB
 NEczT77qmd6oqnAlfbBCn+TlitS3ZptlLHjkA1lGla4/xsp7V+OgtX/0dP8zPGF8Axv9kg
 qEbrG0FlOIusx7qJep2lF9RO5GByTjQ=
From: Sven Eckelmann <sven@narfation.org>
To: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Subject: Re: [PATCH] batman-adv: Fix refcnt leak in
 batadv_show_throughput_override
Date: Wed, 15 Apr 2020 11:04:02 +0200
Message-ID: <28340414.QPzbqP6r4N@bentobox>
In-Reply-To: <1586939510-69461-1-git-send-email-xiyuyang19@fudan.edu.cn>
References: <1586939510-69461-1-git-send-email-xiyuyang19@fudan.edu.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3979470.HMjOjGzVmR";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586941450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=tVtwvlOsN93bbG9x0uA4RYzVQ7E8MaWkOr3JMOVqIew=;
 b=XFjP31VLR/HIuMPvFQb/zLrKM8S4+nj6R0rYeyoI7ESS2bNXVc+NRnwzqYHYNttU9jgN+Z
 kRK3eWXT9nDokmEF7qKu2Aaup6JxorfqpSn1ZIvl8fCwrcwkUH9v0nHPo8xeGwtkkh721j
 9gh/HaX3ua5/JKmKsuGWlQgmy0xtDWo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586941450; a=rsa-sha256; cv=none;
 b=yWsPRTknc6b9fgBGXU65hIQWvFuXR0FBYn4/urYk88reNs9ESklBut9xSjSz+/QwftzPD2
 83OP1EsNSgrRwE2KuNY7hqUDpLwR3TH17ooYJ9xnsVXqUXYURRACUsZ4HdEUxnn24mAygP
 E+pZQp4mvc0NaH+1B4CrG/SZC0p8l+8=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=t4PUxGF6;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Wed, 15 Apr 2020 11:11:02 +0200
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
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn,
 Marek Lindner <mareklindner@neomailbox.ch>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>,
 linux-kernel@vger.kernel.org, kjlu@umn.edu, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3979470.HMjOjGzVmR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 15 April 2020 10:31:50 CEST Xiyu Yang wrote:
[...]
> Fix this issue by calling batadv_hardif_put() before the
[...]

Thanks, fixes for batadv_store_throughput_override [1] and 
batadv_show_throughput_override [2] were applied. I've also added the missing 
Fixes: line to both patches.

May I ask whether you are still a user of the deprecated sysfs interface or 
did you find this in an automated fashion?

Thanks,
	Sven

[1] https://git.open-mesh.org/linux-merge.git/commit/cd339d8b14cd895d8333d94d832b05f67f00eefc
[2] https://git.open-mesh.org/linux-merge.git/commit/3d3e548f74fe51aee9a3c9e297518a2655dbc642
--nextPart3979470.HMjOjGzVmR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6WzgIACgkQXYcKB8Em
e0YWYA//cxS1UcxnDCvjyQWGYwFAPix8PLJ9rCp7jlscYfwarzqplrpPvLM6GNkl
O0H1Hh6SEWsyJ4kBdWrcADqHWfhanPco1Bh0o+Oh307JFtlViDVWpZnAKsICz1Hm
X9GsDu1SwkTepf+py6GNUnMJj2FXC/M1bXQJC15t8gAXwVwhQU8VVP9Vq0Hk1c7a
vwKU4vdV1JTix1zzWWDHGHXrMODQMFdOfBMuSS+AdCPONmffbsRzfGw8aJPu/qDW
vdMajAZWgYC9LP4FFZxyK1DLkaEVeVUScobj69RuyxFdZT2dCPakgMeLKZmtLmxt
yCKzxetELw107//zOXbRGqf1R7zTnqj5Zn8DmmNGA8H1EVii1WQhB8M1r17f8ROy
093I3ZgvnCd5T2i7yPWP6BLIHGt6ckIvdqERhw3EV4xTiS5KyWpTRPJ8B0Mqva4y
Us4k+D8EaTrZuwZwCR20DUx2liWsDSoGfWjEJ0ufIPWAe4qTs0f5ZFRbSuQf7FQW
KSLuI1dTEZp3zZH4zMSxhapCLNZt6d/+HRaVWrdr1ZRTXzdqdFNWmZKRUMUpXZYT
pXJNA5PDJBYXRGEfJUsM0/m/B2NDCvfbXSgl0wOsT3kPyZkE93K8szKLJhvbfiCW
gPOrz+UQsl6Sd2i7fKLmC+W01l4DOURUplSyP4HgHL0XnCMz3K4=
=iyC7
-----END PGP SIGNATURE-----

--nextPart3979470.HMjOjGzVmR--




Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9681A161CF6
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 17 Feb 2020 22:49:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 52BF0807F7;
	Mon, 17 Feb 2020 22:49:22 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 3B1AB8070B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 17 Feb 2020 22:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1581976159;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HxZSzSgpbXsT6HT2RI88A1vCpV9h+fEuqtwQGza/Ass=;
 b=wPWkMsYN/FfBSnf2qck8cq91ZnB+jbl0GQGwNhfhrbavGwKb6VFGNPCdKUPxnFwPuXSbfC
 bFQf9kuzteF3CdlPefNA4zSNuIXK16uklWxGwOtIgSc/LRGhSAqw2zLHqN6yOPTSIGVOzL
 W2NeHJKMBIHR/+OF3dscYAfm5YN+Als=
From: Sven Eckelmann <sven@narfation.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH][next] batman-adv: Replace zero-length array with
 flexible-array member
Date: Mon, 17 Feb 2020 22:49:15 +0100
Message-ID: <10763787.LixBgDfVEo@sven-edge>
In-Reply-To: <20200217214300.GA14129@embeddedor>
References: <20200217214300.GA14129@embeddedor>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2172108.OD1FaJJAUc";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581976160;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=HxZSzSgpbXsT6HT2RI88A1vCpV9h+fEuqtwQGza/Ass=;
 b=jzUvzt2z6OoawlqwZcjsZHcbqldqjiC6rwBeb7tbyYic7H/QyS4ZC/p3dho1HTOL6NMwV8
 U+4+0oKWYKMduuBLNvVZhLCVG/RVJv5cmW4NJZCNQ+edNc6dlwYrcNd4LjJ/ESXdes5Ejc
 c0dM0iqDsj7f/Y1N6TRYv3cK4VSQd8g=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581976160; a=rsa-sha256; cv=none;
 b=p4vMswmCjeZwbwAm1WMNifYJxfHb5I3v0gTy19i9sRZJVYHAJvTbIWLUQXUifbEVzwLcF9
 JZSyw5/FcnOgdI6Fg4nEX81iXT94ptV2jvDLfcVDnthrQLeVJCuzK6xvw50jNt2YtOLcMh
 5AfDOTh/Rrn/kLiajjozO+9CK+Ty0qY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=wPWkMsYN;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2172108.OD1FaJJAUc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 17 February 2020 22:43:00 CET Gustavo A. R. Silva wrote:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
> 
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
> 
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
> 
> This issue was found with the help of Coccinelle.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  net/batman-adv/distributed-arp-table.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied

Thanks, 
	Sven
--nextPart2172108.OD1FaJJAUc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5LClsACgkQXYcKB8Em
e0YrWBAApZLl9hFI3pEEU4sF0ogqQdIrgfXgwknMtOlHbt9PZLa7AdKhuvt3Srmf
2mPK88fPeI5Nm0ucK4auCSB6kMbivoWqhF/oI/I/IFPPjEm6HUCfquoCAKT+R+qH
nlXa4TMfuG2MNq+++dhNOMfyrGNG37hO9mx1+l+8G3J41XWU/bvGw6318hwDeqJx
zW8z5cJus0+FsICVvWhDHIZhVa/O8B6AJ3aC4RcLznmn/FlJdyt9W+7rI0JAWHll
ca4gehUbHxLHB1u9CZrPW9b15O0HFcd0UF1HgpVuhlFwE3/QUp/cGCJvw8g5cee1
YQEb2ZIyqDcElta5JmEgAqvIpmd3G+fTu6RZWiEkdyB4eeOgW0slvPj2nU0m8wlj
TuxAzi1HllHWnvrMQ9O6OHAiOFHVan+hFc1jjmI0rAk5iKxvguzMVjYHSmSNNSe6
Wb/AOceIjeRbIZlz3159+qubPC5/bO/1R1m4CldKqONh0NsqqntqEQG/1HTCpZiF
69ttiD11tkerFlwcw04FulD/Qy99XP7nAfbroT4hf3WtlEDJ/xCdZzrZrV36C/KC
Upc2AmZSj2gIjGC4cP3bpEz269xMyy7/IaVtzlI/J5vFIFdq7ivMVKoJOIT8qIDd
FOxy3eWR1ZYe9sYgBzTpnvdUDqItHwvIIXSr+b6zytxy0oQ2g0k=
=8qWS
-----END PGP SIGNATURE-----

--nextPart2172108.OD1FaJJAUc--




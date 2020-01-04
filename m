Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B64130448
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  4 Jan 2020 21:01:06 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DED2C8068F;
	Sat,  4 Jan 2020 21:00:57 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id D5ECF8015B
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  4 Jan 2020 20:59:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1578167974;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=do0qYq13q2UgxHBLRzs6kzswMNcpGZSR/m5UnG1sUoQ=;
 b=sTFaPKE/VHTOhNY+pVqv6yj1Qc/LJDS7SaIRuXG4PcrlUzwuraKRdqG1c1ePKGvi+LQZED
 cp5W+pRuvTZnsb+tMBaTU6jr1s0rNuDJ5L6vFeIZxyL+QRruYSoz+TQRsfm64ooueQF7TG
 Bnr2WtHKEBl5Z7WqYSs7kNwixOKcnXY=
From: Sven Eckelmann <sven@narfation.org>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Subject: Re: [PATCH 3/8] net: batman-adv: remove unneeded MODULE_VERSION()
 usage
Date: Sat, 04 Jan 2020 20:59:30 +0100
Message-ID: <3299640.fQ7R2JBGAg@sven-edge>
In-Reply-To: <20200104195131.16577-3-info@metux.net>
References: <20200104195131.16577-1-info@metux.net>
 <20200104195131.16577-3-info@metux.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart26314590.TLOP3i5lGz";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1578167975;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=do0qYq13q2UgxHBLRzs6kzswMNcpGZSR/m5UnG1sUoQ=;
 b=1HpN3sjGp1WDMY+JpclLROemBSToT91gEObfKm6nxm5bNCk+hD46GaLqDDnzEPQjjYg3Xt
 QQYJnsUVobg+PbZDyaVtlJQCQRgb813Zvh07UkzXzwyd+pXaq45axY4gfWyFkSycJUtuTA
 73iyKfB7BCyiMnuXdvrCdGLcoSl76qo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1578167975; a=rsa-sha256; cv=none;
 b=Y3JSlfTx4s6kK7/qYySPvApr6WXwr2JphWluN95hhdekz3UaLbzZR/Qglr5NRar+2sgarH
 Na/fVufF+q68aCoq/aeblUIobf0jtt9XXMMRsKm9PdF+YmJscu4kh4TnZrvJl+Sp8ygiXr
 cvhpuZs0FaXikay/pqzp4NWPGor4vwg=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=sTFaPKE/;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Sat, 04 Jan 2020 21:00:54 +0100
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
Cc: songliubraving@fb.com, mareklindner@neomailbox.ch, a@unstable.cc,
 linux-hyperv@vger.kernel.org, edumazet@google.com, yhs@fb.com, andriin@fb.com,
 roopa@cumulusnetworks.com, johan.hedberg@gmail.com,
 nikolay@cumulusnetworks.com, marcel@holtmann.org, kuznet@ms2.inr.ac.ru,
 jon.maloy@ericsson.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, linux-bluetooth@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com,
 bpf@vger.kernel.org, kafai@fb.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart26314590.TLOP3i5lGz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, 4 January 2020 20:51:26 CET Enrico Weigelt, metux IT consult wrote:
> Remove MODULE_VERSION(), as it isn't needed at all: the only version
> making sense is the kernel version.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---

While it is not strictly required, there are still some consumers that need 
this information to detect the version when installing various modules via 
backports.

Kind regards,
	Sven
--nextPart26314590.TLOP3i5lGz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl4Q7qIACgkQXYcKB8Em
e0ZWtxAAoeAT2LXc/P9gl9ouGpP+eXTe1HrRHNFos1gCKLRDX8CKmAy7GISoF1Nh
qFnDKzO0HjCvVymbjkW1o2XA6FmMbMiJmU0kQ7elcgsWAkEcE2fa/+aIaoCMGXbf
laWSCknJBtCfNii8G20PMnk41Gl7q0EO3tU51SWkJS3smDMCom02tQ3KI4Nth7Jk
0oG9X9piCtsqOAdKm4xc0TQ47cC3R0G0Bi3Mp0Z0h5TPVkJwM9seZYqwQzudC0lG
PxaWQKqcGwwbsyqkrltGg6PPIVDAOvBQs44TPJFgLNh9Cr1RX7zYWqHu7lB7K8Sg
55DWm8lpmmf9AE+C18FqStkbpmoaqIalW+pxSo38GCVXhK0/2h5pbKu0uawy053Q
AGVgxM6QvwfeCwK5QYZ+L8W886pwlWmhlA9PctQLbZB8LRyqbNd93wUIPfLe/BdG
zR3vi4yV0TUQl4sKANMch14tImMoOdTiRHhbeIgpf2JtKNwJtXpROC7Eu7QDmdTM
V0SBH+iUMGTOyN8+U0JyP3Vu4vpDhubB9XS9yf36DVfdOVQRNJmcgAYUdcEZv4dE
gsDbjhHBsiz3qpdP3ixG4K/MohhpDuSfJE3yysPw4PwYr627x769ksDQKBO5qhzH
s7H9oUOVjbHtuOjbk8rd1pX4xZQLPWju+ScoRsME9MECVqn3uRE=
=HJk2
-----END PGP SIGNATURE-----

--nextPart26314590.TLOP3i5lGz--




Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C608BC1A8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  5 May 2024 17:31:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 40A2282600
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  5 May 2024 17:31:19 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1714923079;
 b=0WjC6W9NVs8gUrOWLDHWREaQAlJESAb4VzzNm8t97SiPs0wDoq2Fa0EE23FW64WojS6eh
 BOP7Xc/fcAV400t/dOP+3JAuFbL5+WD7Zr+xRLcS201HYl+yUSTW56kjFysnX0k7dVHRlVw
 FgqyJDdLh7+0Q6hFVviLY/jFitX6HM0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1714923079; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=xuJ4u/ouTOrJt02FpiNU5j5yMZJgY6im3scH4wwajxE=;
 b=HByiRlDo4zoFX6fP1kk6Chn3f1E+iuzZY82c1ld4LOt79jAfVDxjWL6P/P+VvB7enVIG9
 4dohcvoJzTd2vu+Uabx2aIrWBxE0CFMfel3XAw1S4gAXJ5YI6a5u1ds8ouKd1aEp13fXwBh
 JvSOb4IuS61XcOOY0Y73FMdkykklwXM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 987258034F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  5 May 2024 17:22:14 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1714922534;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xuJ4u/ouTOrJt02FpiNU5j5yMZJgY6im3scH4wwajxE=;
	b=dCF9ExhaTGtMk6nvAQkgaKwLLdeVcwML5KMMeRbYmcSkVMYezDpXjaMFQ0K+g67nBV0/6Q
	3BP7nP1ouu/2S84fXIyWY2Ah+PsuTGuKD0E1YPNYvpiYNDEQ+CW9TGGU7AffAVbXw/B4kh
	RcZZa16W37S04BES0DBTEPv8tiS7oJE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1714922534; a=rsa-sha256;
	cv=none;
	b=2oYBf1pgJezyJpgLTVBygHKtub6fTsUsyonHPzYTVIEinMLN58Yc269rOHW2Wm0XQC+7CM
	n9IFmg0XgjrgR+tDvCafVjtTDXPUr+KKoe3T3yhj5hDzL8fJ8zPUntW6/ANcgdOspu6kHm
	Q10hVjJGtVWhzw1BUhpeFoZuOTIXdPU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="KAyUL/Kh";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1714922533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xuJ4u/ouTOrJt02FpiNU5j5yMZJgY6im3scH4wwajxE=;
	b=KAyUL/Kh/ITipKh9aVVkTMWPz7Nd3C6g1uWP3LQzc+Ugg0RkDLcTp5BaZlW7tvnajUwbGT
	fc5XyLz2pBTbE/p+ach8JwkkrD8RdoNvXeNYre3fZ+CVLXmHjeRpqJSbT5FzEQqombC3SW
	qLxsGVAYRKQffO5yBGIIHNz6IotbfnA=
From: Sven Eckelmann <sven@narfation.org>
To: Erick Archer <erick.archer@outlook.com>
Cc: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Erick Archer <erick.archer@outlook.com>, b.a.t.m.a.n@lists.open-mesh.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-hardening@vger.kernel.org, llvm@lists.linux.dev,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Subject: 
 Re: [PATCH v3] batman-adv: Add flex array to struct batadv_tvlv_tt_data
Date: Sun, 05 May 2024 17:22:10 +0200
Message-ID: <9977759.T7Z3S40VBb@sven-l14>
In-Reply-To: 
 <AS8PR02MB723738E5107C240933E4E0F28B1E2@AS8PR02MB7237.eurprd02.prod.outlook.com>
References: 
 <AS8PR02MB72371F89D188B047410B755E8B192@AS8PR02MB7237.eurprd02.prod.outlook.com>
 <3932737.ElGaqSPkdT@sven-l14>
 <AS8PR02MB723738E5107C240933E4E0F28B1E2@AS8PR02MB7237.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart12069128.nUPlyArG6x";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: 3FFR5TVT7BT63D3AMOCMX75URQDRTTSP
X-Message-ID-Hash: 3FFR5TVT7BT63D3AMOCMX75URQDRTTSP
X-Mailman-Approved-At: Sun, 05 May 2024 17:30:51 +0200
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3FFR5TVT7BT63D3AMOCMX75URQDRTTSP/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart12069128.nUPlyArG6x
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Erick Archer <erick.archer@outlook.com>
Date: Sun, 05 May 2024 17:22:10 +0200
Message-ID: <9977759.T7Z3S40VBb@sven-l14>
MIME-Version: 1.0

On Saturday, 4 May 2024 19:08:39 CEST Erick Archer wrote:
[...]
> > Thanks for the updates. But I can't accept this at the moment because 
> > __counted_by_be is used in an uapi header without it being defined
> > include/uapi/linux/stddef.h (and this file is also not included in this 
> > header).
> > 
> > See commit c8248faf3ca2 ("Compiler Attributes: counted_by: Adjust name and 
> > identifier expansion") as an example for the similar __counted_by macro.
> 
> If I understand correctly, the following changes are also needed because
> the annotated struct is defined in a "uapi" header. Sorry if it's a stupid
> question, but I'm new to these topics.

No, it is absolutely no stupid question.

> diff --git a/include/uapi/linux/batadv_packet.h b/include/uapi/linux/batadv_packet.h
> index 6e25753015df..41f39d7661c9 100644
> --- a/include/uapi/linux/batadv_packet.h
> +++ b/include/uapi/linux/batadv_packet.h
> @@ -9,6 +9,7 @@
> 
>  #include <asm/byteorder.h>
>  #include <linux/if_ether.h>
> +#include <linux/stddef.h>
>  #include <linux/types.h>
> 
>  /**

This must definitely go into your "original" patch

> diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
> index 2ec6f35cda32..58154117d9b0 100644
> --- a/include/uapi/linux/stddef.h
> +++ b/include/uapi/linux/stddef.h
> @@ -55,4 +55,12 @@
>  #define __counted_by(m)
>  #endif
> 
> +#ifndef __counted_by_le
> +#define __counted_by_le(m)
> +#endif

If you want to add this (for completeness) then please put it in an extra 
patch. It is simply not used by batman-adv and I would not be able to find any 
justification why it should be part of the batman-adv patch.

> +
> +#ifndef __counted_by_be
> +#define __counted_by_be(m)
> +#endif
> +

This part can be either:

* in the batman-adv patch
* or together with the __counted_by_le change in an additional patch which is 
  "in front" of the batman-adv patch (in the patch series).

>From my perspective, it is for you to decide - but of course, other 
maintainers might have a different opinion about it.

>  #endif /* _UAPI_LINUX_STDDEF_H */
> 
> If this is the right path, can these changes be merged into a
> single patch or is it better to add a previous patch to define
> __counted_by{le,be}?

I don't have a perfect answer here. See the comments above. The file 
include/uapi/linux/stddef.h doesn't have a specific maintainer (according to 
./scripts/get_maintainer.pl) - so it should be fine to get modified through 
the net-next tree.

But maybe Kees Cook has a different opinion about it. At least there are a lot 
of Signed-off-bys for this file by Kees.

Kind regards,
	Sven
--nextPart12069128.nUPlyArG6x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmY3pCIACgkQXYcKB8Em
e0ZBhg//Sno8piH1PoF7IE8mPDXalzTPEW5L8W1iX0gbkT0DRJF3ngI31P7iYtLA
TeYbI1z3YeRD5hNU2J7stFiqwoNbt5wWDmCYNcPoFf5zdimr5XbQYB2CGOVM5hG8
SexX9t6qndx3MWNj2f83XLfSIJh9Sn+B7mLEFixcsISX8CLAvQZfwkwjNpola13v
OZm+qoUsCeocQb18bR/XUhqfra69fMN3KRKHSvRg82xZqCox86RP3nukgcNr7Aw0
mY+RvmuEHzVQezgfkMs7Wz+uSJSGKyXuTSCnkdIhy62kSMIKv9TZhFeIwCQEDWVl
oCBLAqKXjMPr8sldjBScwkMM9mRAlCUgqD3XlIbZ32y2zCJoX9LsyRD+K6frc2tr
z0j/9xAfCrYJCvYhXuWFhqak3bc6owQ08NxB0A0ePx0bBCMiz34J3R55BBtGOaTL
YrXXEuNV79Z3/bI9P/Yk7mRmfuotPYa3p1r4fizuQEYa5294xJUdQkMF6aeH/R1G
YK3IFiRiLHi0rVu4BvdO3nsVJL2nqa1YZeSRtqFtsKhXb9wdQSxuqaJD7YgQm1T6
taFnTfK+6v7DXgEvlEdtUMqiKZkZM/pBDJoCZpI+oJHjYii7s0BiaYoDWHRfBwTj
szbiK24wF/bXmY20iarKe1I1VVaFlhg6N3PXgCWsLJYh6gATkVY=
=H+es
-----END PGP SIGNATURE-----

--nextPart12069128.nUPlyArG6x--




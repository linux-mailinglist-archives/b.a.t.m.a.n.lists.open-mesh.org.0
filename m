Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6592EBBAD7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 23 Sep 2019 19:56:59 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 6A9C18028C;
	Mon, 23 Sep 2019 19:56:52 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id E938380044
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 23 Sep 2019 19:56:16 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id D9AF31FFAB;
 Mon, 23 Sep 2019 17:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1569259611;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JUegENmeIHHiT+O9uIIOxc1zWJHPwvIxI2SvuwGf54A=;
 b=dVWTU2YRhbvNTjzU5zWqJuZwGuXdr2Y5i4h8fAIbmfcxuBJK1ZG+fGo/W/YblVDINcKj0n
 B670FTOeqbkbbqdtvLu3HbF2eoleJzXw6Dgnm1/VfifonzNleM7VytHWdyYL6G301L3qIC
 tdTHwh8/l2Z9JQUVmzRFgWWvKZS3wUo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH trivial 1/2] net: Fix Kconfig indentation
Date: Mon, 23 Sep 2019 19:56:12 +0200
Message-ID: <2354684.0ZvKvX0iQ3@sven-edge>
In-Reply-To: <20190923155243.6997-1-krzk@kernel.org>
References: <20190923155243.6997-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2306317.z6aVZVsvuq";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1569259612;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JUegENmeIHHiT+O9uIIOxc1zWJHPwvIxI2SvuwGf54A=;
 b=x1TVkKv99+ozAK7NGhKJppOQTZ3rt6BG5uCQ9jX1Cu6VwaJ1Z9e2XjHeZoi0ylFmE0Qgv2
 uPumTYEhEqN0pwscCMrxg05p8YgwwZxS95AE3BnKHxJCx8DfTCCPdTAyKbC6OzxnJqzLC+
 xMuRoeIhRMuvm0RcjlgRZSLiQKlXzBQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1569259612; a=rsa-sha256; cv=none;
 b=sC+Bw4VcxyWYjzxCJPweIGNX+Yyrk334W9KKcHzvmcS/hWk8OQo5sJew0irtt83lHu620y
 GR1yOu+K+tFNotiu7Ji8FKdtPcJdPj6tP5KcJpiNcjdVnKzc1GUdEDf7J4u+rCReuDLD9y
 a6G6B/KjsDql8SBNK00XkdLiqUmNeNQ=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-Mailman-Approved-At: Mon, 23 Sep 2019 19:56:50 +0200
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
Cc: linux-wireless@vger.kernel.org, rds-devel@oss.oracle.com,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, linux-rdma@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Pablo Neira Ayuso <pablo@netfilter.org>, linux-can@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Jiri Kosina <trivial@kernel.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2306317.z6aVZVsvuq
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 23 September 2019 17:52:42 CEST Krzysztof Kozlowski wrote:
> --- a/net/batman-adv/Kconfig
> +++ b/net/batman-adv/Kconfig
> @@ -12,11 +12,11 @@ config BATMAN_ADV
>         depends on NET
>         select LIBCRC32C
>         help
> -          B.A.T.M.A.N. (better approach to mobile ad-hoc networking) is
> -          a routing protocol for multi-hop ad-hoc mesh networks. The
> -          networks may be wired or wireless. See
> -          https://www.open-mesh.org/ for more information and user space
> -          tools.
> +         B.A.T.M.A.N. (better approach to mobile ad-hoc networking) is
> +         a routing protocol for multi-hop ad-hoc mesh networks. The
> +         networks may be wired or wireless. See
> +         https://www.open-mesh.org/ for more information and user space
> +         tools.
>  
>  config BATMAN_ADV_BATMAN_V
>         bool "B.A.T.M.A.N. V protocol"

Acked-by: Sven Eckelmann <sven@narfation.org>

Kind regards,
	Sven

--nextPart2306317.z6aVZVsvuq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl2JBzwACgkQXYcKB8Em
e0YTVg/+PgtfvbyO8UPeEG3nkvaRcMywQsGWWB2nkRfHXA+QnFghJNXsvPHonkd+
QQ1E5I3loiK90VFbdRR8R0o5G57WPTFAivY334UAL1m5qOZT1bMKwI971dT0GCny
a9+BhZEjt729e7WlSOvkT/v7BHo8lxyHH5+x33dxMJF0oSD5UDdH8VZX9PCBTJ1g
4+O3e18WyQdsXFi3G2N75DcT+OhRle2P7T6yfgD0Ro5ViMqeTigsdmw+kpq8x8IK
fyUN3oo5vqFnH3sEEXFshmxAqAVjPjzzoRYTFTupTw8yDOTL2REIgU75HZ0WP2w6
eQ03/+7hKhujukr4V/bwVPMf6WJ1mi9+cz88Op8BkY/UgFgAYJSUhnfeoLo1pK6q
ewEwagQfFibXUqtebAoam3z20Mb7rnrUmQJbUvPLQatL76qUaonJp3yxUMnrOWo+
GmDWR4zgHgwatjOBeGCPBuF3PBMPWe1NBrA0EF7+33gZu6pttf3Z6XLNUWCw3unx
xQCR1dn7VzUA+/FdFZfVoUlGBPeqWzqdyp3Os2ymDHJRp6jZWTd2gX6KvldvWTDR
dU2SmyvoOovNLFWyBd7rC7vud0aWMJUHypD2IlEMCPprnu+m33Lhqx8nrbF/goZL
drH0F1BJDs5jlWehfTwnnaNdqZEuzamWT8GEJAUBj8Iq5R6+35s=
=OS2O
-----END PGP SIGNATURE-----

--nextPart2306317.z6aVZVsvuq--




Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC3946FC96
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Dec 2021 09:20:05 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91A9283DA4;
	Fri, 10 Dec 2021 09:20:02 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 113CF807CC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Dec 2021 08:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1639122773;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zbggbeIVFXVq1N1T3x23ZrWZqRWaOMq4LLIQcQz7uVQ=;
	b=tQHDr0N4lHgpLkjFYlfjFJ0DjipI+hLPIAKvgeln8rY0KeJ7fEIlcufo/db9KPlUPrCIFT
	jgte41ukD+KrGIVftIi6ttle/ZcD77tOCvODJprwhJCik8CMGOmYAq5hAIpy62YG9W5JOd
	8XSQwKPviRoZTa0UvVyQ+8kDN/LYA0Q=
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, cgel.zte@gmail.com
Subject: Re: [PATCH] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 08:52:50 +0100
Message-ID: <2844186.8fJna1iEf4@ripper>
In-Reply-To: <20211210021917.423912-1-chi.minghao@zte.com.cn>
References: <20211210021917.423912-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2270532.c4uxPF5YdD"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1639122774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zbggbeIVFXVq1N1T3x23ZrWZqRWaOMq4LLIQcQz7uVQ=;
	b=OW4LmtQRbSwmgc7TKp70vCKqQquIDvIPIAPoR4GI6w7XnufPwP7ieg6P20xXKdhBAv1YPm
	P3DsrjGPoaZyhoZokzPAu6BkGgJlvgBZ3dvgeE+Ozthvrq882yLdHJgJ1GKh2LXKuQ8VSG
	0dwGQXfeEIelLnL60VcN3UKJ1P+c+ss=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=tQHDr0N4;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1639122774; a=rsa-sha256;
	cv=none;
	b=05NnJwNsGmjQ22c7g8GLvpdjTRR+HGewxpObGPbnZ0RGnB7l+oTKR7QFIQ3TI/pvMd/U8/
	E00dMTAQxwsefxzfkAcIbf88E5BsTs4zU+8ZhD4hvl1Tp0UdagEdiDNpcURG6ErqNqUv2R
	2o3YhnDEo0r8oOY9JUI9WIIM/1nC/rQ=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: FR3E2YYLRTCERUCLKUN7ZQFPJ4XBNQFM
X-Message-ID-Hash: FR3E2YYLRTCERUCLKUN7ZQFPJ4XBNQFM
X-Mailman-Approved-At: Fri, 10 Dec 2021 08:19:58 +0100
CC: a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FR3E2YYLRTCERUCLKUN7ZQFPJ4XBNQFM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2270532.c4uxPF5YdD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: mareklindner@neomailbox.ch, cgel.zte@gmail.com
Cc: sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>
Subject: Re: [PATCH] net/batman-adv:remove unneeded variable
Date: Fri, 10 Dec 2021 08:52:50 +0100
Message-ID: <2844186.8fJna1iEf4@ripper>
In-Reply-To: <20211210021917.423912-1-chi.minghao@zte.com.cn>
References: <20211210021917.423912-1-chi.minghao@zte.com.cn>

On Friday, 10 December 2021 03:19:17 CET cgel.zte@gmail.com wrote:
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Return status directly from function called.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cm>

And the Reported-by (robot) using a mail address which is bouncing.

   <zealci@zte.com.cm>: Host or domain name not found. Name service error for
       name=zte.com.cm type=AAAA: Host not found

Please fix this too in your scripts.

Kind regards,
	Sven
--nextPart2270532.c4uxPF5YdD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmGzB1IACgkQXYcKB8Em
e0YUag/+PA8FzRLW/Uw2ybainV3OPDxuUbSMmbufA1AaODvg4trJjA7xn7Zq2PnE
/8hsnXwHxq99To/o5tHkLF3f8xJSA+PmQtzPda90N4GUtiY+P0eQvtD7gFND82t9
Tl8t9WF208WcfPqH+CH1YzK2YuWB6q2Y8YBzUk1gBfp4jKaiyF/X6Ybz5mqt0zTm
SDISMa1cx1T+kvehH4p9AJ2/OluR7wGUd3Gw5GseMoYzRkV1UOzTuaGAgPhlA4p5
iPbLur4bpfZXYb+D13iUQn+2FRueBs267+0X8C13kU22bIVlDWlUwBomTi6kwPxJ
YZxQ6JOfvbwkTFjnHtet+ioWN9bz1zHE8Gn7f5HE5vrbUg8daduNN+q20bmfiYh0
uOYlaJ/2PoJd+chjcytq7tOcgN53NevhmCE2N/fUzi4yLo+yg3YeFY5GqvL7GPEP
qKa8HZYZxXpH4+HB0AV4wZdW+ngGpN/xnettRTt1ialtntDJjur/PDmjuqbS+X3s
VvNOWvB0MjYRm/ibAYw/rodI/umHV1xYVYD/gDC6K91pQ0k7C68BG7Mm6UkJ2HpW
IIOoN/TctEXLL3PFz1OxxN3QVjOsX2AAXXBYI6H+JnRIJeKGjzptdJPq/WFXWb72
eD6l645BH/1vrhBN+7gq1iumXxFBAEhILF41FlbujbeFnwxdK9E=
=1me2
-----END PGP SIGNATURE-----

--nextPart2270532.c4uxPF5YdD--



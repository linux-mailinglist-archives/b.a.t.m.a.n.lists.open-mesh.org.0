Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8415120A29F
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 18:07:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 44AA4809DD;
	Thu, 25 Jun 2020 18:07:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9767F80205
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 18:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1593101265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2sBqErN3TIJCsrBpxxiWDVXqyREuCcdA+Em0vyd92kg=;
	b=Iw+eFvVYpTypdqfqy4ycernRLZsfG4ysFHtu4eej3pRRL/rivkzgjHUqKck0b4V+QtI5P4
	yJhNMlUOS/yl4XT0qgY+tw4O8eaCTa5PzcVCfE+mG8l2QahcH6OQvfVKkTkCzpERvV/iZ4
	JHIHktfPSDlpMQYIJgcfe5XRBkbIAoU=
From: Sven Eckelmann <sven@narfation.org>
To: Rahul Bothra <rrbothra@gmail.com>
Subject: Re: bits 10 to 15 in OGM packets
Date: Thu, 25 Jun 2020 18:07:37 +0200
Message-ID: <2598273.Qu2jpsDzYc@sven-edge>
In-Reply-To: <CADhofF-z2bM0GxO=CeSuj3hBcBB6q8-jTwN7BFuh4SQ8EY17Sw@mail.gmail.com>
References: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com> <1752987.3nn1Mqi339@bentobox> <CADhofF-z2bM0GxO=CeSuj3hBcBB6q8-jTwN7BFuh4SQ8EY17Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6532749.gW96iS4tUv"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593101265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=2sBqErN3TIJCsrBpxxiWDVXqyREuCcdA+Em0vyd92kg=;
	b=i4otxSA/JO2pMd+NY0i0Sk28uCZYNNQi9W3m3bp0Yg+1AibFvi2jQa3XrnjmKDjskEvOeA
	++NNzAYB5HEi4niVHrywnaz+uihZSH+cFLb4t8aX8IYTKvG6L1gbwANwOF8wScTqNq+dKN
	ArCEhfuky25t1iQhV8a2v0ir61pF9QY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593101265; a=rsa-sha256;
	cv=none;
	b=WbXVS4gpZOyk63H2jkrPpMNB9ULLJTBe1+sZO6z00VsJhQ/trwyKh/RDfaiq4UUZNq4dnb
	x9Rav1M3HI6QJyKDvubuuLHSE3XnYqpb/UDcmXDTEvd7GNP6zUJ4Lg7aufQiWejTik0Cbs
	wsPvFyl4f3OMMUW+wKwHYWtrVyUW9Y4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Iw+eFvVY;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 5GLS4D23RDPEERQU6LENLRVNSEQU6UXF
X-Message-ID-Hash: 5GLS4D23RDPEERQU6LENLRVNSEQU6UXF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Tom Henderson <tomh@tomh.org>, tahiliani.nitk@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5GLS4D23RDPEERQU6LENLRVNSEQU6UXF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6532749.gW96iS4tUv
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 25 June 2020 17:16:16 CEST Rahul Bothra wrote:
> Thanks, is there a published documentation / memo for B.A.T.M.A.N. V
> currently present in the kernel tree?
> If not, I'd be happy to join in writing one as I work on the NS-3 model.

There are various documents in the wiki [1]. But the code is the most precise 
documentation at the moment. Other persons on this mailing list can also 
answer further questions and help you in situations when the wiki 
documentation doesn't match the actual implementation. At least I've found 
already various problems on the ELP page but the developers involved in the 
implementation didn't update the page(s) (yet). 

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/batman-adv/wiki/Protocol_information

--nextPart6532749.gW96iS4tUv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl70y8kACgkQXYcKB8Em
e0bK3RAAnd8KdxJSaTXYgxaQRQrWOn8Bl6BsYX8aKgO0TfzCbHPeqVZrAZ1JdKah
vD8gddCvYiOcy/CAvYAsZgFjLYSTjf3Fg6T8+XPSMAoWf2YDRenJ64On6UjvZEcp
4+ouGLegEhXCZk0fJ6TzG6TvTw/310PtteUTHnupCAqTF6vESSVuUGo9KIz6Ruqy
xGdFbpLmfzNAcUlQS+Z/Dry1Hxn9y6cbW1MajzNgN5Py/Bq2GRn9TtY9a6YnvYkk
ibP6DxctvJEYCIEIeYRvcwAcF4zPPYl6sxZYD3ka6Lkn6XygG2QO32htLZ8946+S
ifuZ4Hie4A2VUnz0dezoF5darW+Lwc+6Ka/riEuuiMh6GaM9LMBKPLyo6ey91TQR
vyQzFcygmUU2oNRzCW4D1x3QzJApD2EjklKrtJubaRSOM+/IeB5kBrNWVgJNfv3i
Dk7bBAMzyl1X70QScWw/c4qZKyxKZ4FTskhJV+EB7z+dVWX5D8OK9xNaTdPYUsdd
mkINsY0pmVYHdah7EGE8cHt6pT9516mXsstemQNiImsmTRj45ke/O/BU2qG/X36I
fgYvj9EUeMAzMNi824JxSJE5qN1o9R9kFt4uSWy0pgbxzYLiE473rQkpDKmaY40Y
3C668EMJ51lgFWU+UfK1iJ1dupqb2uGzJTYN8D0hI5XbPa+tA5E=
=Up6r
-----END PGP SIGNATURE-----

--nextPart6532749.gW96iS4tUv--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8D94BD870
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Feb 2022 10:14:26 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E2684806FB;
	Mon, 21 Feb 2022 10:14:24 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F02678012A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Feb 2022 10:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1645434861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oOvk7WMOciHkbYS2MT1ejD9cNcHuaR/OFKDG2lCaEjo=;
	b=emwCcDP4yog8lXNr067XqAPYb3m0nrul629KYnWMvwQwVKimSgowble0x+l3zMlwwhOhrF
	CsjmUFyTNGVt/EgL0dyfVF/s28AanxwIgkInn/urwHtqywjfAnbGfDAQrDRR9g8f6ocJAL
	uYZRyx20CI5+5Q7Xfab2V7GGj/j5ejA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Mon, 21 Feb 2022 10:14:18 +0100
Message-ID: <49865018.WmOq9pY62i@ripper>
In-Reply-To: <20220220183614.54865-1-mareklindner@neomailbox.ch>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3242400.sB13epYpGi"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=emwCcDP4;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1645434862; a=rsa-sha256;
	cv=none;
	b=mBbDKH5qF2LLGs1IMV8w9jc12wA+GqCBHEHLSePnVSEYKdWVU0dtTIn3iwToVst8yl4jlT
	SQaBtxxaGsXLepYBuBtK1kuDZoeolLe8IOAyG1eLi1LoVElYMsRJdEgbqvdxfwsMHl1MtM
	zMR6UkDn77yh5zfcmWZBSdzZgD9vffc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1645434862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oOvk7WMOciHkbYS2MT1ejD9cNcHuaR/OFKDG2lCaEjo=;
	b=mwCtGH9vX7ivPOoyKl4itEz9RqRfU4/ia4dQXh7+Q5v/AQz9uqwqZdnJ3SvkFvyvMAZgAt
	hzK+IWmCUNU0Kyc2rlgKZjcAs9fETQoAAoOVN2mKYgBHMTEaIUKVdhklf8nLfIZD3IOK4L
	+VMqG/U5Xgb5PZ2ia3zmDafoJ/a+nhs=
Message-ID-Hash: 37SISSV3PMIDADKE5B2UC3RVUIZ2R5IC
X-Message-ID-Hash: 37SISSV3PMIDADKE5B2UC3RVUIZ2R5IC
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/37SISSV3PMIDADKE5B2UC3RVUIZ2R5IC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3242400.sB13epYpGi
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Mon, 21 Feb 2022 10:14:18 +0100
Message-ID: <49865018.WmOq9pY62i@ripper>
In-Reply-To: <20220220183614.54865-1-mareklindner@neomailbox.ch>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch>

On Sunday, 20 February 2022 19:36:14 CET Marek Lindner wrote:
> diff --git a/alfred.h b/alfred.h
> index 9ab92a2..598d38b 100644
> --- a/alfred.h
> +++ b/alfred.h
> @@ -33,6 +33,9 @@
>  #define FIXED_TLV_LEN(__tlv_type) \
>         htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))
>  
> +#define FIXED_TLV_LEN_PTR(__tlv_type) \
> +       htons(sizeof(*__tlv_type) - sizeof(__tlv_type->header))
> +

This doesn't apply on master. And also doesn't make a lot of sense, because 
you can now just use FIXED_TLV_LEN(*whatever). So I have dropped this part and 
applied the rest.

Btw. good that you've spotted some prints to stderr which should actually be 
to stdout. You only missed it for "mode: unknown". I have also fixed this.

Kind regards,
	Sven
--nextPart3242400.sB13epYpGi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmITV+oACgkQXYcKB8Em
e0Ze7hAAlG3PmLCTqgMIhTJUNSzM+xYY9LEEMr4gA5SMVdi+IrN8n3bMWF/0Fuog
6bRDa/fAHXfNVcC8XzmOzY+U9HrIx2fU2E/BywR7ko1/htuddChunvKtxwhO+ckn
Y9Lrxh3kkUo/NAsyvstpWupw6g2bE48C2XlNyXS7L5/lpB4ahNKBT5ISmiekyVHh
Lrk2OINPDy2JhR7XaBYSc0H7GEQhi+KK/TZ7N6xP+VgjWoQlr2UEi9xRgMRkLmmU
/7Awj7bf2LE75Nm5QsD8bPgGPclLIOomKfEhCc1Ox88OKSv8Jm7beHswcb0VVG1g
IrbyLiM2FMOlcU4Amjn18c0OtK1RPwKnjE32XGp0Dx96PWtT8QHTNpNqeWo8I/bY
Kl9sZdcJ6gyw0C5D5XgxvIGgDnncJbaPot+9pOIzKQZ1Z90v+i+msPhw6L7G9UTW
Y/MWYTEyun/Dg+BcxdbccQXnMoEM+tnlMa0nABfuDdRPWKPq0imeUw5HcJE6lnrF
91+jJVxA7YixQyDlMkBRpNHec2Gpd0A603rJkrI8uKLYmA+yQ4gXMG7xVoKv1kkg
yXJWJMKth1BhEggUV+lBiwlKG7iapMMYU7EYsBD3tFTJJn1GUuNNCWgX0EkmzlQx
NeYhDyrxK9p9dWQcH+Og4lX0MeuG2waAIE7o5Bt4i/sTBwsDNWo=
=moav
-----END PGP SIGNATURE-----

--nextPart3242400.sB13epYpGi--



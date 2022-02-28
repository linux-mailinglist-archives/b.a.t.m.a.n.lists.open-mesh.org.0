Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 073C24C601F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 28 Feb 2022 01:30:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 010FE80DA4;
	Mon, 28 Feb 2022 01:30:36 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 49A35802C9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 28 Feb 2022 01:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1646008232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G3JsdEegZQLsn2vtU4L5m7AZbXjndk2QfqNrBOTi7ik=;
	b=SluX4iR+WjfyvQZ7hDkuus5OcNThluC4gTlS5BuWlQe7NnkdmoJekDjyWInrKIBddIqoS5
	p/A2U38pD2cdufaCO/BBO5Ho+XwerI0eHBeCcVqoviJS6zz1M1Q7YFRWG+KJWFiMXpbTUw
	Qo1F4qz0ICiT66rDhVcMFJgMbr6hRLU=
From: Sven Eckelmann <sven@narfation.org>
To: Leonardo =?ISO-8859-1?Q?M=F6rlein?= <me@irrelefant.net>
Subject: Re: [RFC PATCH 4/4] batman-adv: Demote batadv-on-batadv skip error message
Date: Mon, 28 Feb 2022 01:30:30 +0100
Message-ID: <8666192.zD6lZZMxfp@sven-l14>
In-Reply-To: <CAHhjh1P1WvsEP3zo7KGPmexiHCiZrOUrxA_7RR17_wZapUupqQ@mail.gmail.com>
References: <20220227235257.1324636-1-sven@narfation.org> <20220227235257.1324636-4-sven@narfation.org> <CAHhjh1P1WvsEP3zo7KGPmexiHCiZrOUrxA_7RR17_wZapUupqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3236798.6giVW9tMfr"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=SluX4iR+;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646008233; a=rsa-sha256;
	cv=none;
	b=ojpx5+bXu59BhraVtJHXGYANFeZJaH1oBJYs1kU/G3QDhAfwrw0sZqExbCdXwsv1nbyaiM
	OetVBCxgpLR7oWs/SbuLTBMzKg2Bz5blO9b1rkWoioykG9bYML0tu+QlyAAPP2VaXO/Ebt
	uLGom3s8TDUhJzziirkfOoQLGcri5sU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646008233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=G3JsdEegZQLsn2vtU4L5m7AZbXjndk2QfqNrBOTi7ik=;
	b=k0ejfgYTQNFEMI8R86XGyO4igo0EILQivIaQCqMHF0B5mccMV6pIsoo6p+dgduCEeQTP6h
	fmmf5qF3VKk3wkN40Y+uIykfSVTIaeepRUqkUo5S+IyJcRg4IaI6hnF6rmH4Zvyt+iebur
	dALedSpe6hRnjeGdoh/MDY3zbKoHRDM=
Message-ID-Hash: NHJUHZFAOGFLN4FSLJYWZJLHPLYUISNJ
X-Message-ID-Hash: NHJUHZFAOGFLN4FSLJYWZJLHPLYUISNJ
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NHJUHZFAOGFLN4FSLJYWZJLHPLYUISNJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3236798.6giVW9tMfr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Leonardo =?ISO-8859-1?Q?M=F6rlein?= <me@irrelefant.net>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [RFC PATCH 4/4] batman-adv: Demote batadv-on-batadv skip error message
Date: Mon, 28 Feb 2022 01:30:30 +0100
Message-ID: <8666192.zD6lZZMxfp@sven-l14>
In-Reply-To: <CAHhjh1P1WvsEP3zo7KGPmexiHCiZrOUrxA_7RR17_wZapUupqQ@mail.gmail.com>
References: <20220227235257.1324636-1-sven@narfation.org> <20220227235257.1324636-4-sven@narfation.org> <CAHhjh1P1WvsEP3zo7KGPmexiHCiZrOUrxA_7RR17_wZapUupqQ@mail.gmail.com>

On Monday, 28 February 2022 01:24:30 CET Leonardo M=F6rlein wrote:
> > This happens because macvtap doesn't provide
> >
>=20
> I think there are some missing words.

Correct.

"This happens because macvtap doesn't provide an implementation for=20
rtnl_link_ops->get_link_net" [1]

Kind regards,
	Sven

[1] https://git.open-mesh.org/linux-merge.git/commit/7748449945e3fb63b64d57=
c5c0604201164ef93c
--nextPart3236798.6giVW9tMfr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmIcF6YACgkQXYcKB8Em
e0Z1bQ//V9o68DTAa+Ak48Dha0wXv3I5teDvaNqTorzqEuuu9nGTXThTvBdTfOQ6
WKGd/O7CZQrRESI8t1ybh9uc6fX5UpFLGNIQGXADas43Ou0iK311tTujrpG5P+X3
4gPmhFe9FSgGgzvqAN0XZRZcAa3dWzyLNjOBCDFOgcX7vI1cTuzdtl9jrHhkmXjL
kVhBbdSRFYgw869JkAEgVEcf6xokEtViPdhaD4knRvxZPFfXmNXiOlLPxNhmOrwC
jEt6CUkTIIQnQYky4qQr7g6HGRHmelg+MuFcjn95urSRUXAefUtd/zpCSUYkbe+N
XgnYCgNcF9/Imxpw1LRcmMG346btQpz9SnKcnSGaIS5TRXGbg+jsj380cHzj9iC2
Br9B4z0o6at0oeoX93DhYSwwcfCNlomRHWBqSzCWc++obR9IYgVnx+c4gk9jDlot
d99yjOUV32JuGyl1AS4JNyh9lUwtY9X2OSqrb7pVb867fmUa+b/7kbw6P29GZbgm
/9bBdVk2fVGnaY1gT92Oa2S2xg+NE7UYstouMkWA7yYq9Hu/CO6bI4Ry8a6NwVXJ
x2HVQTwwQ2nu8c0ppjcW9QMGQXnd6gt5KPG0VQbZGJnrWJQ+P67FflmPh8I2p6ly
k+CnuwTPJPb77lGHij7SbosKqSEo9dSwq1BB/DRyUj3V0eIJbJs=
=A4/Q
-----END PGP SIGNATURE-----

--nextPart3236798.6giVW9tMfr--



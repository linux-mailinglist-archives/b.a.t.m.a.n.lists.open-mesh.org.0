Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CD0380958
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 14:20:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 90DF7803F0;
	Fri, 14 May 2021 14:20:26 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83D46803F0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 14:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620994824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Xf4sdQZV+wCEfQclF4al4ohplJuVS8vyT+6qPVRcUKE=;
	b=Z/YOOzaP3bJuybhPRGEDUQ39kQcP0kj6+Ki4AeRedc4jIzJMVjaGArvxDFfafeVKIi/Va5
	13bKXCBpuveML33CMVZsWVjQo+rBNPrnBfuwktMgvTtN3nxXDG6g7Dkj5LG1jHbMlRHdwU
	GtgT2kQBgWxfk+ptu5ut1vux+IQndMg=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 1/2] batctl: main: Prepare DEBUGJSON command type
Date: Fri, 14 May 2021 14:20:21 +0200
Message-ID: <4531406.tM7hSj3uOr@sven-desktop>
In-Reply-To: <20210513141034.1649576-2-asarmanow@gmail.com>
References: <20210513141034.1649576-1-asarmanow@gmail.com> <20210513141034.1649576-2-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4026565.7da73Uhx7I"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620994824; a=rsa-sha256;
	cv=none;
	b=W9znzptSb4Oa99a1ydtCzAJNlAY+MpKFdsXDBVBOMq5H0Xtmy7IOS2qLb/Gn46yNwqpsiz
	vCysIs5UgY1qDfFKZ3tVIWljo38KlXY3dble0bliMAekf2wdiXfYDG/akKlD9KlH702c8r
	SW5Ll+pQrFctN1sS0bIKx1z8MTpBrbo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="Z/YOOzaP";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620994824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Xf4sdQZV+wCEfQclF4al4ohplJuVS8vyT+6qPVRcUKE=;
	b=mx02rJZRD/WDCz2l6IoxvF7hl9oHqjVv3iveoIrABIoMsgbjq7LQ0AhGWLlMp7vJSBAnM3
	dWcwzCJQeFIdf8eDKCgBDD84gkeZiOAX0gq2geM9yCkkjWYjZXY+6xRE/7knCY4Xle/K1q
	Xo8Ax5grmtgHOqr2Mx6t1WfU0JoOPEc=
Message-ID-Hash: 53RUIE2AY45NTAJMNFKU4NL6SLSCUTZN
X-Message-ID-Hash: 53RUIE2AY45NTAJMNFKU4NL6SLSCUTZN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/53RUIE2AY45NTAJMNFKU4NL6SLSCUTZN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4026565.7da73Uhx7I
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de, Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 1/2] batctl: main: Prepare DEBUGJSON command type
Date: Fri, 14 May 2021 14:20:21 +0200
Message-ID: <4531406.tM7hSj3uOr@sven-desktop>
In-Reply-To: <20210513141034.1649576-2-asarmanow@gmail.com>
References: <20210513141034.1649576-1-asarmanow@gmail.com> <20210513141034.1649576-2-asarmanow@gmail.com>

On Thursday, 13 May 2021 16:10:33 CEST Alexander Sarmanow wrote:
> The introduction of JSON debug commands requires a new command type.

You only added a DEBUGJSON for MIF. But you would also need one for HIF and VID

And then you will not only print the "debug" tables but just the netlink query answers. So it should be called differently

[...]
> +.br
> +.PP
> +.I \fBdebug JSONs:
> +.IP
> +The batman-adv kernel module comes with a variety of debug JSONs containing various information about the state of the mesh
> +seen by each individual node.

This makes no sense. The batman-adv kernel module doesn't come with debug JSON.

Kind regards,
	Sven
--nextPart4026565.7da73Uhx7I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCeawUACgkQXYcKB8Em
e0b51Q//V4DwFfR90kZ8hTa/U00ZsoWh3EvgTb3GypFQaPB4ZxBhYv5OYZ8qZoar
T8f9y5vtHANf5x85IgePcNBjltpCSPmcrqcDlNPCHGQjZPOXoBnoHvr+XrZd4Sn1
aaZ8AhxRKpV6y1VoeWGWdS/lLpYeLhqtqvlyhTH9bui8lhiQ1m0b3yuXzbXWkCrE
dHTgkaOdigNZJFbmex3g8nK3tdFmtJgY4KKf0QDtR5YEDVuv9IHwsKp+4nP5AY3R
rH6fFgYn7qy99gr0w6rgJmrlkLAg9AQ+M1HEbnV91ddDY2eU8IAYsDZlh5+lgQwy
Bee5MhCqIssmShu2ejlvmm4Xjw0KWNoeiVtxrcMdgMSkd8TeT+z4b+UPlFRxHsFI
HAPhbG1noyfVaASBkWcfeVvZmUAJtBABixuL4yPNnw6MgcmN+6pDYPy+wLQtlaaG
XXPvTUZ+DncOEE/GULQ0KLpOJinIFZvryJJe95Yz0WGuxTtNYY3pMp6xWMkewCRv
YhWdnJJrPSJ7G+gCO6TeaPR45JNPy4LMcHIvpKMSOuH2yz8sGMgm8KdyO201GVbr
UKkP4i8qBwTy+NtOGPWNJp7rEHJTM4ZlzdGzzPmAMEEAFJInnQXvx0TlBUQ1Syxf
EDCZo6TVVpEx9p7gHzRrCgafYS3PiJFVGZjkyD0QzLxahT642qE=
=inLc
-----END PGP SIGNATURE-----

--nextPart4026565.7da73Uhx7I--



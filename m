Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9DB38053F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 10:29:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 62DC383EE0;
	Fri, 14 May 2021 10:28:59 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C3E6A80548
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 10:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620980936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p63G/W0K9y3QwXHde+DtPmeWiAKPRpvj9uRL58E1mZQ=;
	b=grpaC0L/QnR7P5EKlzzg0FBwcVcxBREFYT5XTtBQhwmFA6EUmwgMILlOskBTyzDnnyGOzm
	PCpbUnFS4H+0ngfEJ6SofD2k6OO+M1+NIh91Jh8Je5WUHpwsMt6VoF9QrWfokET942hHXA
	9OUObNOi4KXRSmDlvjPbR5h7X4IpmpI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2] batman-adv: bcast: queue per interface, if needed
Date: Fri, 14 May 2021 10:28:53 +0200
Message-ID: <3148825.KiqjeL1upR@sven-desktop>
In-Reply-To: <20210427184527.9889-1-linus.luessing@c0d3.blue>
References: <20210427184527.9889-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3550591.GgTu1SRWts"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620980936; a=rsa-sha256;
	cv=none;
	b=wnxtmiCpCyK8W5ezZPLMD7pQOGpaPuihcDOj/KncG6LBre3T9nZSc7Bt8t3xdN5I3b3/pN
	j6UWXdExbAUKZxHqSq4E+3nSUjco95lfkoTgYMeWaoOFiK0OsaCuGqPbRlFFNp2jEYoNtD
	dvl1Yu0XNiyo0QJV8N14x6bUS6NJuuw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="grpaC0L/";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620980936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=p63G/W0K9y3QwXHde+DtPmeWiAKPRpvj9uRL58E1mZQ=;
	b=LYeqG/vM6tzd/f+AlUUNP2jrJEfvPL1qpA7phH9vgQ8KuRZiZxtASMJgvv8TgbeQD3Glkr
	3aEYz7lE3C2BfjZAvJ//mR5MKKEbhW0/o9som6u+AjusRf8cFBbTWz21INh24y1YvuwJxD
	l8IDKYzjxNBPk5ryTjbp9qqj//q3DMg=
Message-ID-Hash: SI5PXAGMSBV6LPXVD2XRGO7NDGENQNMN
X-Message-ID-Hash: SI5PXAGMSBV6LPXVD2XRGO7NDGENQNMN
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SI5PXAGMSBV6LPXVD2XRGO7NDGENQNMN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3550591.GgTu1SRWts
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v2] batman-adv: bcast: queue per interface, if needed
Date: Fri, 14 May 2021 10:28:53 +0200
Message-ID: <3148825.KiqjeL1upR@sven-desktop>
In-Reply-To: <20210427184527.9889-1-linus.luessing@c0d3.blue>
References: <20210427184527.9889-1-linus.luessing@c0d3.blue>

On Tuesday, 27 April 2021 20:45:27 CEST Linus L=FCssing wrote:
> - * The skb is not consumed, so the caller should make sure that the
> - * skb is freed.
> + * This call clones the given skb, hence the caller needs to take into
> + * account that the data segment of the original skb might not be
> + * modifiable anymore.

But none of your callers is now taking care of it because you've removed al=
l=20
skb_copy's. All you do is to clone the control data and give it to the=20
underlying layers. And they may write freely to the data. Thus breaking=20
parallel (and under some circumstances sequential) running code which opera=
tes=20
on the skbs.

The review was stopped after noticing this problem.

Kind regards,
	Sven
--nextPart3550591.GgTu1SRWts
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCeNMUACgkQXYcKB8Em
e0b0ZQ//e0aQXKF8xuHnOfSECYU1MEMmXLhCkurOMTW+Cvcr6T67fmRPciBPZR5t
UhzXC2bill3oWSQPyDcoIz9fgd3GYoIn+/4TwekU9euyLfYZ2+Fe8C0ZtgXRSjL1
lDySZgvp5qaTmXYM738/9Jd249+Hgav7WqbR9cMKQCDMZ4WO3kThTUQyw5REnWsv
eRRahLbIOrGl6XiBanu4TDCFxm3m0ZSBXnhk1xqx45iQWQOduoVDu1huEhPFznxM
rv7PVzeVzveP9gHSNNHB7s1U84toeJtCG1rQc8JClpRcMNnrcnAZy7aWJHyLkNm3
rd0wbMDk1/RUYaHsjQao+SCUpMcFbJ2f3yLc/z8SrriOG0cSF2eMydMoQ5U+ej4o
yhuL4iotcD7j7EuvLiGJw5wOppp1LPcvr5VNZZEgZOSAQLcQXzGnrJKz3YLbKFCO
X5S5tq2sBH2GoEMuSsZwm94pTQg3F6upS3Da7NVSR01G48+gBZe08QbyCyuQM7aw
oE9vpFiLuf0fQeFKTMimZ742+WttDkyDTxTESX4Y95XAheiOwHdQMlN481nZknaa
vno++fkIpSGPMS5s8/wAaSQW/i3OuTViiwdDm14WOmn9SU2NTOAtHnKojwges8v1
acG3P7IHboLFiMrTMAuSGZ3LoTV/NSjpT24bE9P0aC63kIgD+jU=
=OczW
-----END PGP SIGNATURE-----

--nextPart3550591.GgTu1SRWts--



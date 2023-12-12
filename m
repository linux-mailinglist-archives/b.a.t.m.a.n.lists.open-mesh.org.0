Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A13D80F746
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 Dec 2023 20:54:06 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4BCF383E11
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 12 Dec 2023 20:54:06 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1702410846;
 b=jBolQ1dFymzwyq5XrKrsLa2oxnem6ckYMd7PeLJ/66hxAr+6nTZ7F0HH1STiIJAzAtvW5
 t/4NSYdG1HCt1tJKM5NFyAhKFy5hC0muBV39glhW2GyK7a9wNUn+UW4ocvRsDdPJV2bHFr2
 1Ukb8FoI+u3SFod82Aa4lXTxReR7D0E=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1702410846; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=lhMA0Yzw9X7Sb27YoAdvk+nMr6nTmaIch+2JM0GkQB0=;
 b=3atKdCclaDFsRhg/kftFZcKexvA2Z0/s7xoQcqstDSzaj09aGluH/5Aa4DybqcmkzfeZA
 fePpIVadIf7Co9Jbjb8yvXy2FbCKyXlyw7jZGzfrUhgOVwJXLumSBJ6vz4Vk+QXID44S66/
 QGCJooEA7PZYRkmA3OomgySVe4rf4Tg=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 25E17806C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 12 Dec 2023 20:53:33 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1702410813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=lhMA0Yzw9X7Sb27YoAdvk+nMr6nTmaIch+2JM0GkQB0=;
	b=SPMrSExBRoSo8hJz4iXyjCNBc5py52PtfRr08WFMveRRbCiBMVYsJo1Qa/ICpui48iFQhE
	8XvYkHDV1OWsLNdQ4kuQuy9VapfaSoyyzpYx5h4W7zzNsXj1n9gbXnySQPkESjcXmw66mW
	nFdFzHIGO5z63jfvVgaJnltx0tWT3v0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1702410813; a=rsa-sha256;
	cv=none;
	b=nI5BioxuKYBVnkmBErD9J3EsccmpjNgspvIuC7yTNgFk3cty8GAPJ3+NIhKpfSL3Zw9znA
	N/sqE8mfjXt49d2GhgmSEvs6WuNeHzwHfy9DdVbxL0fM0X1O+PqovVhXm4D01OfWIIZTOR
	HFMbr0tECI9lKpqsKL4/TZAjmVTM/ds=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ySuS2Iz0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1702410812;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lhMA0Yzw9X7Sb27YoAdvk+nMr6nTmaIch+2JM0GkQB0=;
	b=ySuS2Iz0j4g4tFbQdmxPkT9RSAPC7D3F4r+9x5Hl5yub+XjibTFjbXF8xiDvTvyET12HZT
	7R2lrx95SuyXrt8Y0/1X4pZgeLtRlgceU1O67XW5RbpY7gO1ajjKWAB+pw8p4PBDdG6ZyN
	tJauT1U/Jtg8lEpkqASo1+A0YsM72TM=
From: Sven Eckelmann <sven@narfation.org>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Rich Chase <rchase47@proton.me>
Subject: Re: bat0 not capable of MTU > 1500
Date: Tue, 12 Dec 2023 20:53:25 +0100
Message-ID: <1979998.CrzyxZ31qj@ripper>
In-Reply-To: 
 <mwhWyjjJXHvw6-948GpvusAWgqEJ_5SglADOQJRkhdzLl_r4VYK7ZWUzRG0UHDswIyUghMf7z_dJXIJzywAtc3js09aedSvTZx0pxkEgU-Y=@proton.me>
References: 
 <Q1WvDb-RVDm4Z2qmDwD2hpBjITfuDQMFtWJYgRrhbad0oE0M76pzK6dfZyGkClGkkJskqjMAB0ZQUpZJ250oUB_EEZaVPqQd2pDEEKknXRM=@proton.me>
 <mwhWyjjJXHvw6-948GpvusAWgqEJ_5SglADOQJRkhdzLl_r4VYK7ZWUzRG0UHDswIyUghMf7z_dJXIJzywAtc3js09aedSvTZx0pxkEgU-Y=@proton.me>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1752899.vCJZsxu672";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: HG73JAV3UKEM5NPB3PGJE4NBEZCNIS35
X-Message-ID-Hash: HG73JAV3UKEM5NPB3PGJE4NBEZCNIS35
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HG73JAV3UKEM5NPB3PGJE4NBEZCNIS35/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1752899.vCJZsxu672
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Cc: Rich Chase <rchase47@proton.me>
Subject: Re: bat0 not capable of MTU > 1500
Date: Tue, 12 Dec 2023 20:53:25 +0100
Message-ID: <1979998.CrzyxZ31qj@ripper>
MIME-Version: 1.0

On Tuesday, 12 December 2023 20:30:24 CET Rich Chase wrote:
> For my life I can't see anything I'm doing wrong. Why can't bat0
> have MTU greater than 1500?
> 
> I don't have any other devices mastered by bat0, other than my .1s wifi mesh link.
> 
> Throwing myself at your mercy. Help?

https://lore.kernel.org/all/20230727-jumbo-mtu-v1-3-036ce1a6e33c@narfation.org/
https://www.open-mesh.org/issues/365

Kind regards,
	Sven
--nextPart1752899.vCJZsxu672
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmV4ujUACgkQXYcKB8Em
e0Yd1xAAzRZS/o7w+XvsUjJfvZzuGMIFIqSlI3Ni1lJebgLsJqKnoliynwGH0Eye
APdj9hvmXaGfq+LuilyT3HGiREbYanwucv5ElhHnAChSUU8yOkIIzqRdvk0p9A28
Nbs3jEEaQdn/FUFIxHO5fc9Fn1MVp8jWuEfKEJ8K4YVQgF2m1K/0LFLjBUKll5NR
CHy/o/8dL8JcU6kEJPnaGJX9k3iUmnPsM3KarJtAQ1S4PB2yODNawRFH3QUl4moj
quBfFjzKBxMkXkBR+sJEe7B4yS1Vxx17huXy+OZvhapQBmh21WtA02/bB0c1QGTz
F+YvGYosbqph2ieaH6jltH0XpN4a9duUmXTK+KbJah9+ZnHTYNRCuPAEILcSdt5e
Hhg8ibjUQVsyM/QqSi7uEhLnr7vfnAq9OP2zPZwrbg+8DSRlyTfUlkU3zQ3NQtrh
rtd/fdmuo8P8IQNUEwVGfQx30hLcrw2r11Lc5Oa4lOMnudkFaxTphzfroIxcroNh
Mp9AjpsljJ6clvBiJuJ51G0vA5h5Ko7lyV9p7PrUIA2jpYGK3cHJUb973Qug6YU1
gphWSUfXcdwjADGDQa8mR+ADMwwgrWJyFzDmBp3rezR9eEFyEHNRN5TP4rPtV837
NwPm/tRqEzB8xuotCMcY+EgeSU3tEamP087KZ6pGWFA2xWzx9bo=
=arPW
-----END PGP SIGNATURE-----

--nextPart1752899.vCJZsxu672--




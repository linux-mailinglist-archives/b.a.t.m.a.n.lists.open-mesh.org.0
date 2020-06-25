Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 807D420A092
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 16:06:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 584EB80FAB;
	Thu, 25 Jun 2020 16:06:43 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5BBC78038A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 16:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1593094001;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6oQSmwMArXUYwmlthxhAy7v9PmD5h1uYz1CzZ60cHp8=;
	b=p6ze8HfVSS8FMiWniowEgCGFARtDM9G5XAOKNRegCQ6MbPNUTOlL9Vfnlm7PNLocGRG4QA
	UF95Jo9ZzSH8d20cZQ4NhK11BX1BHOXEL/AJOvqq3rJoyEhr4OeGWnTENpoqAatRR3hI6U
	YKtGf4LrFb2JBsASt6QQGfo7YUKKfcs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: bits 10 to 15 in OGM packets
Date: Thu, 25 Jun 2020 16:06:38 +0200
Message-ID: <1752987.3nn1Mqi339@bentobox>
In-Reply-To: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com>
References: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart20168081.oS1hcQqD1i"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593094001;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6oQSmwMArXUYwmlthxhAy7v9PmD5h1uYz1CzZ60cHp8=;
	b=dGRZOMM2U4G0Jd30Qb31tFGjZ2tsxjeDnfDOFFAWdMZcROJXxyNc1lMLxamVTKKvIaXmc5
	+RiI46Ej8nodAmct1wif9HulwZ3/3XHTcctY0o7Yr7I1L2hfAjnUradsPCFl4hDDtog7CQ
	0bhy8qpIBxninMRvO+xHvLl+PGN5Ugg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593094001; a=rsa-sha256;
	cv=none;
	b=gKaCQzhxzuXKavxgDA7S5JPfPvKcaBcORH7VcRcj05kFdVRJXVH/TafE2pjjv2twr3cPVj
	VNhKmr3O5/Cewf2QLfuwcvBHRp2XuimbbmJwswYbQRtyK6tIGfo8OF2wYkmNwqxSCrGr4S
	essLLTxcjvJYSoUa0BPFhNYw4rJlUMc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=p6ze8HfV;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: TFZZUB47PJSSNSG43PJNQP2K5LWAMN7S
X-Message-ID-Hash: TFZZUB47PJSSNSG43PJNQP2K5LWAMN7S
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Rahul Bothra <rrbothra@gmail.com>, Tom Henderson <tomh@tomh.org>, tahiliani.nitk@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TFZZUB47PJSSNSG43PJNQP2K5LWAMN7S/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart20168081.oS1hcQqD1i
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 25 June 2020 15:22:46 CEST Rahul Bothra wrote:
> I was going through the Internet Draft for B.A.T.M.A.N, and wanted to
> confirm if the bits 10 to 15 in the OGM packet are supposed to be all
> zeroes always?

Please don't implement the legacy draft which was never finished. This is 
really, really, really, really, really, really, really, really, really, 
really, really, really, really, really, really, really, really, really, 
really, really, really, really, really, really, really, really, really, 
really, really, really, really, really, really, really, really, really, 
really, really, really, really, really, really, really, really, really, 
really, really, really, really outdated.

But the batmand layer 3 compat version 5 handled these as reserved flags. So 
it would have been a good idea at that time not to leave them in a random 
state and just set them to 0. This would have allowed announcements of 
additional features in the future.


See https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/
include/uapi/linux/batadv_packet.h for the B.A.T.M.A.N. IV and B.A.T.M.A.N. V 
layer 2 packet definitions.

Kind regards,
	Sven
--nextPart20168081.oS1hcQqD1i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl70r24ACgkQXYcKB8Em
e0Y6/Q//dDw8T4rQLMmUHZ9Np6omSmX6AIE60C80wK0AWG1QZNYx3zj6hvl8gOIA
ACZQHCFZkwC89SqTaHWWeNVDun0fbavvqcyK+tEZRtC/QVi0Y7qdvrxSbYYIOKWj
63GkOx5YslZCQIsI5V+AKZ3dZ5rHVju+XCQ7/bcYb1pzOEQoQndX3r+HFe7ZUa/L
E6LHVe879wbX3C3EvTtRl/KQmSj0U+/pVFhshwlBddwxwMiyB1svv3U++Tzm8HmB
rmakXpNsqlvy6dPLHRoZwffIVabN+/Gnb7Qssv6dJCChMSxVKZ9V0M7D7GZyeVRV
eLCXQ+O9kT4EBZv9TvYQr++nQmWGpg1plAJceZae/gmPiTHbpvMmLjxJWXDI2+p3
2YYL95gC70rC2ePMNkWs4SiLhzM7zJ3/D29jN9Oq4aKTE7zQw91q0I5k9m+lHbAa
i5SKxE8sbYKd59nAMR0HwioOS5ku81tYtw2KY0CdYedYn7JTfkGw1x+r9wk40xlV
RFIbTnezCaw7/rRDcpD46sJgUPsVKZ/0KPZJHly+UT1rDZtSqKTGIrEPChpWtGZc
P+Nz40UqVGU79dvUOnbN+OePdR/LaFYb9IwZioWa0bEugf2FxduV3TqAbg33uFEj
EWfqb31fhG/rguBJjQjun+h2KcWB8tZOqi5VM0zyAYmjrpIVcgA=
=twgQ
-----END PGP SIGNATURE-----

--nextPart20168081.oS1hcQqD1i--



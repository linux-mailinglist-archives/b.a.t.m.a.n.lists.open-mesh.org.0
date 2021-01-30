Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AF53093FA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 30 Jan 2021 11:06:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 39E3A8142D;
	Sat, 30 Jan 2021 11:06:20 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8BACD800DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Jan 2021 11:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612001176;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+ypLw4lvPKDANVFFcxLv5lUctkBlPk4o185TAEU+fuY=;
	b=ILAoHFSbOomMSQNHoJM4pWLKmMmINBvJkDN4ERL07PCnzqi6TkF4FiV2RNbd8Outn3xUwv
	1Ry6zUUA8n+BeRhLTlyUwluNhyvnQMad/qdK2N9AdlBe/MvXhqs5+5NAk9s24KskYgj6r3
	u7IJJU2F6kdItSpa21gUyUAgKMpXfhA=
From: Sven Eckelmann <sven@narfation.org>
To: Moullick Mehra <dedamamoge@gmail.com>
Subject: Re: batman-adv: User defined nonce in packet header
Date: Sat, 30 Jan 2021 11:06:10 +0100
Message-ID: <5928700.sXXJehETrP@sven-edge>
In-Reply-To: <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com> <1708045.1bVLHfgjVF@sven-edge> <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2702395.lpSmoto3v6"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612001176; a=rsa-sha256;
	cv=none;
	b=IzhHm4NnxqgTCloQpbaVK/i0JA2ksTh+qeRkX89/sO6DjgYsJgEAeiw+2A2D5zapnezfWQ
	VE0KQ+wR7vtrkacAvK4gwB0Vdkgkb3Yb1rnAEuTmGnAjOwCpWsbXax7q2wEgkTYm6zqfGq
	BPOD/J/OXVbts49ZQJzmJor6jrU08QI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ILAoHFSb;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612001176;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+ypLw4lvPKDANVFFcxLv5lUctkBlPk4o185TAEU+fuY=;
	b=QyfdOqcVm8R8jWD2nKWtelP5iFC9QUAxtDYp5U9vj5cOcDbiykw3XmKWaFSZb9NcKxotJj
	DMvBZrZ06FSMIeY9hQZ5PdPkWGY9hcW4mAomZoxhEqNfwmhBEaSHcl2Deb5QrSNiXe0q9B
	fOBSM/lP/CwdET3Glvfq/hwSFc7rzRU=
Message-ID-Hash: T3DKHTZAQNRMU72FEXI4RZLVSQ67IFLF
X-Message-ID-Hash: T3DKHTZAQNRMU72FEXI4RZLVSQ67IFLF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/T3DKHTZAQNRMU72FEXI4RZLVSQ67IFLF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2702395.lpSmoto3v6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Moullick Mehra <dedamamoge@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batman-adv: User defined nonce in packet header
Date: Sat, 30 Jan 2021 11:06:10 +0100
Message-ID: <5928700.sXXJehETrP@sven-edge>
In-Reply-To: <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com> <1708045.1bVLHfgjVF@sven-edge> <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com>

[You forgot to reply to the mailing list]

On Saturday, 30 January 2021 10:48:11 CET Moullick Mehra wrote:
> The reason for not having authentication on a layer outside
> batman-adv is that we want the system to have seamless roaming hence,
> require something that goes along with the packets themselves. It
> would be great if you could provide some resource links.

The information are far to vague to give you anything.

Kind regards,
	Sven
--nextPart2702395.lpSmoto3v6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAVL5IACgkQXYcKB8Em
e0aYvRAAhXR0Ynajmw7wDKvAt2eIwy2HU7yQ2qDj3j84BqnPL1+RB/E3SbtScSjF
AIi3bdYGyUfSRU+5c+fxTyB1VS8KPgxX90CfE2FMaiASoLCRmVPjYK8uJSAiEdch
/zfa6BiasML6+kaRaKnO+KtcX0QUpwCgrB1BEJp9N2ZFFUK65zq+I02tBjiwtChS
956c30SUn1AhReeWENEyS/fItdQAWcdCKmbeJ8lfzi+WN6sg8JImYatP1Sj39JEY
HnCkNZHycrjvrWK7kn2TD4WnkBZCmkEporm607PKQvLTCkEPVY6tJ9k2CZnWjw6Q
UAL4vZLqSosaoFlPGEVWtNy9Drso9U7vgHp19UAfr6N/w7kMmk/UcC1ZEDe6/zCX
/NXVcPzhouu8uwBwOQyupEju0om4C/Vo5ye0R6X4fSTsxEoGI6e3WoeDpPBo+nwz
zfRq9a81PAN5ea+Ip7S7fEXqedsULTuHZu6/GIEH8RZf7lKPanZQXZGvKnTxU0Eu
1+xLeehuMLPOr/DBN1s6VlRQV2c/9HCcF7MuwSQPT8jXfO+nj8Kf5Yhuvxc/+nqI
Od50LJI5OxO2OBWbjki9NxNbJRTT7lFUdQZUTfVKcp3yozm1NinMB/r3Wr4YN31A
cbbQmjai8xipzOTQMO+kQFN3rhFK6AHFul9VmQY4b3YwvJQkLeE=
=s9tD
-----END PGP SIGNATURE-----

--nextPart2702395.lpSmoto3v6--



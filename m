Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A693D5C92
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 26 Jul 2021 17:04:55 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CABA781276;
	Mon, 26 Jul 2021 17:04:53 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4201480763
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 26 Jul 2021 17:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1627311889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FB7N7rq21xp/nnAQByo9qJVUIV2tvc1AOLArJeuzsQM=;
	b=pMy5HgEpcsSJE9jhYzbwLizffyYK1r9q5HCoR92MN3gzyYMO1dSjRbQUrj77/MYsOSdrd6
	8DKGKpWG7m+3lrFIaRp0GW87sZnsVPEzvVizWufEcaHclzCM2VrhuNA/Fk+mPIJY/iKpV6
	rf7JxhYJ1cgT8pWLS2CzyCOULzOsqYg=
From: Sven Eckelmann <sven@narfation.org>
To: Al Viro <viro@zeniv.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Date: Mon, 26 Jul 2021 17:04:46 +0200
Message-ID: <3234493.RMHOAZ7QyG@ripper>
In-Reply-To: <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>
References: <20210724162429.394792-1-sven@narfation.org> <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk> <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart14162632.04HtDE0LN9"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627311890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=FB7N7rq21xp/nnAQByo9qJVUIV2tvc1AOLArJeuzsQM=;
	b=J9r8eSpAfGLxjoOaw7FXnKEeXX/08S0Dl8UKDi9LyW9hqOVRzoYueUBpA8VHj0NfkqpMix
	IX7ezymhP+qJgOHxEbj1csNh4L/Kdon2OqmDQ4yys8aeC6DKETISag/ZXbJuMvZ0r41bmh
	MjT5U6nL0XjTR4WK3FwPqot5TvJ/GXk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627311890; a=rsa-sha256;
	cv=none;
	b=fqFMuiKyL6hPwFcj6Y4iyTIL2aoaiE3MOT0WuDeFG/63PkbfpakIL+dVqe1oS7Zll5ko+8
	tGbVEl2grYgHfPcwhbzBN+KRBLiMZ+YLlaD6N9DnkUnOmXL90hy+J+MmL72Gx8Mu2YJmOu
	O0IsEQWtNcOqwnEmVhKrzgmwcT6SDKo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=pMy5HgEp;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: SCRHMTREI6HRXVNBZWTRU4G53YYFFDNT
X-Message-ID-Hash: SCRHMTREI6HRXVNBZWTRU4G53YYFFDNT
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Arnd Bergmann <arnd@arndb.de>, b.a.t.m.a.n@lists.open-mesh.org, linux-arch <linux-arch@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SCRHMTREI6HRXVNBZWTRU4G53YYFFDNT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart14162632.04HtDE0LN9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Al Viro <viro@zeniv.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>
Cc: Arnd Bergmann <arnd@arndb.de>, b.a.t.m.a.n@lists.open-mesh.org, linux-arch <linux-arch@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Date: Mon, 26 Jul 2021 17:04:46 +0200
Message-ID: <3234493.RMHOAZ7QyG@ripper>
In-Reply-To: <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>
References: <20210724162429.394792-1-sven@narfation.org> <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk> <CAK8P3a2MVQMFFBUzudy+yrcp4Md8mm=NcvX7YzGVz4C8W61sgQ@mail.gmail.com>

On Monday, 26 July 2021 14:57:31 CEST Arnd Bergmann wrote:
> >
> > > The special attribute force must be used in such statements when the cast
> > > is known to be safe to avoid these warnings.
> 
> I can see why this would warn, but I'm having trouble reproducing the
> warning on linux-next.

I have sparse 0.6.3 on an Debian bullseye amd64 system. Sources are from 
linux-next next-20210723

    make allnoconfig
    cat >> .config << "EOF"
    CONFIG_NET=y
    CONFIG_INET=y
    CONFIG_BATMAN_ADV=y
    CONFIG_BATMAN_ADV_DAT=y
    EOF
    make olddefconfig
    make CHECK="sparse -Wbitwise-pointer" C=1

I should maybe have made this clearer in the last sentence of the first 
paragraph: "This is also true for pointers to variables with this type when
-Wbitwise-pointer is activated."

Kind regards,
	Sven

--nextPart14162632.04HtDE0LN9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmD+zw8ACgkQXYcKB8Em
e0aOSRAAloaA/kixLrh1I6C0K83aQTfaTxmxPCTKk6X9ohZmXNCc7wcIRM97zONy
D3/QFzdFBoCLJRyluykO/M+50/SXAgSu538aA/wjzkosb6aYliz0wNybS/F05XsO
3GxmwuZknqUmiQT6yEbfCBGFx44MqSF29FBCmbib0TN4w0h8fUGR4aExdmM9Mihd
PSQ07dP+icQC0tpG4FPH9Sd6tulSlCdA89nrnF+uHq3qQeraa17caBjIwSSMCXnO
L80OX+cHT8KPWII+eHRS9s5QjmY/gvmCuIhkJpPw2Aqz0xjYhSK8eMOb64dfXptK
WZR7bBgQzI709Cunf75GCMy3pfkXUgbm+ogXUpydfOqzmadAw7g1xnN8vfobs4D0
rNkPa+A5qe5OxVgtlZZ3QR2LNo1W535AuOsNBoTW50TLTSiKo6bYVKwQYge0I+q5
FyAzNOe+UxF75XTx+Wzac/RwOL7345HXfHFYPEc8Gc16PQ/gNij+5tC2JMkm1U9H
PFJ+SYwNeT5axt9teMjmzASBv/3W6I3/d/EbB6RN46CPiGXVbhcik/o/rxyuDVvM
M44jzl9QyO/3Xsh+yKJdDbWUTPDc4V53YxFLqvyJvDz/ONm+GVhPU9d5iCbgsb0D
3Z3akAfv1iJlILU4Jufo7j2C6piAXbr1Fzxrx5F/XyQ/f91290g=
=6aMm
-----END PGP SIGNATURE-----

--nextPart14162632.04HtDE0LN9--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616B656B11
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 27 Dec 2022 13:47:52 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6F9DE84790;
	Tue, 27 Dec 2022 13:47:51 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 64D5B801FE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 27 Dec 2022 13:47:48 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672145268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tYDAob7CKNdWDrTyWmMitWkgCdHD/2aZNSdin3Qn8JM=;
	b=pBVPQgm0igHXwRXhQaseV9VChOMtB66/l13VH7wAn+T+LlTendW9opiMV3wQiOgSGymB67
	WhwoB7SZeCSe4t0R1zlqwbJg7sARrYIZehAUNjuZxFkjKqVrnrcW3m++GOCIww4Jo6JTep
	vS+rdTrZAfBkFzvk+c+l4cQVCYBr03E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=E2W1i9CC;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672145268; a=rsa-sha256;
	cv=none;
	b=FC3tLJjLoXJJdNr6g70jkqA+j9a8eMuWAlJ/R6ocyOGVPG1ey2t7Xr67VMNo145Rc+d9fN
	YnhL/YeDQmOx0dh2FOFwYyknMYecRG0ci0jS1tFsZdm+KXtIHmWSMvUsVZ050CdtCrgl7M
	cjASjZH6fiWzkP1QkkVLEnWsjWa/V2s=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1672145268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tYDAob7CKNdWDrTyWmMitWkgCdHD/2aZNSdin3Qn8JM=;
	b=E2W1i9CCEXIhKtXr1LyX1SAueLaZd0gYUAGfcjVGs6iFL3y86wRhshb0ZUcc5Y7nRzHAp0
	bpZr0hvCl/vGwCmueIfSdgP5gIxVEPkHBz/VxYjQeGqoZ+hx4VtKFXpYmj4lE2UIiMpxeb
	4C5CO5Kb1KFbqbtnfiD/GxZNJnTpu88=
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH v3 3/5] batman-adv: mcast: implement multicast packet reception and forwarding
Date: Tue, 27 Dec 2022 13:47:42 +0100
Message-ID: <2126960.yKVeVyVuyW@sven-l14>
In-Reply-To: <Y6rd8cwPi8JqTbkN@sellars>
References: <20221226204237.10403-1-linus.luessing@c0d3.blue> <8399468.NyiUUSuA9g@sven-l14> <Y6rd8cwPi8JqTbkN@sellars>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2292924.OBFZWjSADL"; micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: AQXASSAQXIWN7ZITKWZCYSRXFKQW7UYY
X-Message-ID-Hash: AQXASSAQXIWN7ZITKWZCYSRXFKQW7UYY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AQXASSAQXIWN7ZITKWZCYSRXFKQW7UYY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2292924.OBFZWjSADL
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>
Date: Tue, 27 Dec 2022 13:47:42 +0100
Message-ID: <2126960.yKVeVyVuyW@sven-l14>
In-Reply-To: <Y6rd8cwPi8JqTbkN@sellars>
MIME-Version: 1.0

On Tuesday, 27 December 2022 12:58:41 CET Linus L=FCssing wrote:
> On Tue, Dec 27, 2022 at 10:07:36AM +0100, Sven Eckelmann wrote:
> > ecsv/pu: checkpatch ./net/batman-adv/multicast_forw.c
> > -----------------------------------------------------
> >=20
> >     CHECK: Macro argument reuse 'num_dests' - possible side-effects?
> >     #25: FILE: ./net/batman-adv/multicast_forw.c:25:
> >     +#define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
> >     +   for (; num_dests; num_dests--, (dest) +=3D ETH_ALEN)
> >    =20
> >     total: 0 errors, 0 warnings, 1 checks, 274 lines checked
> >=20
>=20
> For this I'm not quite sure how to best silence this. I tried
> the workaround of passing num_dests as a pointer and dereferencing
> it inside the macro:
>=20
> #define batadv_mcast_forw_tracker_for_each_dest(dest, num_dests) \
>         for (; (*(num_dests)); (*(num_dests))--, (dest) +=3D ETH_ALEN)

This doesn't make a lot of sense. The checkpatch output is about using the=
=20
same argument multiple times. It is explicitly talking about following=20
situation.


    #define asd(b) \
        do {
             if (b)
                 printk("Foobar %d\n", b);
        while (1)

    ....
    asd(x++);

Which would then be transformed to following by the preprocessor:

        do {
             if (x++)
                 printk("Foobar %d\n", x++);
        while (1)

So your x after the "call" of asd() would (sometimes) not be x+1 but x+2.

> So just like you'd do if you would want intentional side-effects with
> a normal function. But seems like checkpatch does not recoginze it.
>=20
> Also all the other for_each macros in the kernel code have
> side-effects, as far as I know?
>=20
> Or would you have another idea?

Provide a patch for checkpatch or build_test.git (which would otherwise sen=
d=20
this output every day).

Kind regards,
	Sven
--nextPart2292924.OBFZWjSADL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmOq6W4ACgkQXYcKB8Em
e0awsg/9FW6YzAjQIiWEV0CRCTsY7F9Ni67kycFhA5mz1eifZOZjrr7LYipbxp5V
IjFexpUh0WKlnO0YF7T41ME8aUDj6KVgGxupVkNztiwBlkGLkzvpUYjZXzkRhy21
mytfa3657zUaUEE0dYfwdqJDMV1VJbca8G0fRPFTvKc5g+Ov9RQTC+Q4PckcIDUY
WetfPXW655MMzlIGSctf/t9cHw33f+xtUcLgIg88t9UIOhxoypS9EOczjIDSd5cB
2AY68nd2cpcyvbutpn3NdWBB/iLqL63yjWgPePMVW+c3meN0wrQoWA27IhvKcjtu
5Bh0+nivTxkRKjVgXR/ujJDQF51JMoAuZOTg3gDMIDBMsymE41rgxeN865ZrDFSu
GMiSHp4w+2olZd4/wRcXT+t5UxoRIoLALy9xyI15mYi25OrSNHipzauof5rGwrMj
DRYcIUsYi/iduvNVgaOlQyH21dQ8RIZT4mzgpZLZtSslMxsOJTcJ+PthmCCEJ+Io
X5eu/1/GrMsbg7fcxhYGmoKLpvmU7ekqc+PVaaez6coHb2B5bn9zBK47jLoaeabu
oOC8PtJMPPsSBv/gwV46p6o7Eun6UKIKov0wrPBuCLvgsuQ3FXy+h/bih8bBdZZr
Dzq014kpxi+aMHUFrNjEWPtHqqNGZVy6x1zL9Ryv+Rnhx20dTMg=
=YHOC
-----END PGP SIGNATURE-----

--nextPart2292924.OBFZWjSADL--



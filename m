Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 646BE4BEDCD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Feb 2022 00:23:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 303CA80C89;
	Tue, 22 Feb 2022 00:23:19 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 965CF80709
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Feb 2022 00:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1645485796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TKxTcrA5OKBdT23aE7HISz/gTefhsGtQJztQCPNHPFA=;
	b=Qa359pml3+vTl+gMkbeIqy2l+Jnvj/dITvARAwd/rucMKrhe/khXCU+InllFjZP1IhdZlR
	PJPMGp/KZzJiXhrCuIJvKWvR9KclIVnJ8N43uvdxcT/GUpD3hPLusaRXShjJDQeaUIOzjg
	Rn4j5yvL57D0nJ4la3rhotbbs9Sq1Gk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Tue, 22 Feb 2022 00:23:00 +0100
Message-ID: <16344215.j3Ck3xriDr@sven-l14>
In-Reply-To: <2116595.VMJfFIaldL@rousseau>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch> <49865018.WmOq9pY62i@ripper> <2116595.VMJfFIaldL@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart20119176.fR0bjONF2F"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Qa359pml;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1645485796; a=rsa-sha256;
	cv=none;
	b=FW1IFPMXEPHJKZMwehQwpg/CNlWPpJR2+GF0EJh5dy18UpCdrUkzrmcupRAQtaHH1/75Y2
	brsuA1St3EkrxatoJRuj8MA+mXmCX4i0lQd+NCecL7JwPn/vjo3UCRsKGoYwp8eXzpxvEX
	SJjO41+DFTdJ/YPmQr/3KABTHOAlPTs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1645485796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=TKxTcrA5OKBdT23aE7HISz/gTefhsGtQJztQCPNHPFA=;
	b=s3XXhqv6tNCF9p/sL5AJ4Aj0izROV4hywlPPRJVWJzpXFiVBd7m/Dvk4j5NIdzOTMn0l07
	V9/ED0BcyenDucNusi8AEcNoO+5bD/7VpKfEvs9emI5br3PQUCvhwmMUxw3zyRUDAeC5ZY
	/t9t71fDKnshaV0kuWbLzV+dznLT5BU=
Message-ID-Hash: TKJTRKGBXHJKBYKLLCKUVIQM6VJER5FC
X-Message-ID-Hash: TKJTRKGBXHJKBYKLLCKUVIQM6VJER5FC
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TKJTRKGBXHJKBYKLLCKUVIQM6VJER5FC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart20119176.fR0bjONF2F
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Tue, 22 Feb 2022 00:23:00 +0100
Message-ID: <16344215.j3Ck3xriDr@sven-l14>
In-Reply-To: <2116595.VMJfFIaldL@rousseau>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch> <49865018.WmOq9pY62i@ripper> <2116595.VMJfFIaldL@rousseau>

On Tuesday, 22 February 2022 00:19:43 CET Marek Lindner wrote:
> Your proposal did no compile and the master branch now also does not compile
> on ipq40xx:
> 
> unix_sock.c: In function 'unix_sock_server_status':
> alfred.h:34:46: error: 'status_op_mode' is a pointer; did you mean to use '->'?
>   htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))

Are you sure you are using the master branch? Because the macro looks quite 
different to what you are showing here. See
https://git.open-mesh.org/alfred.git/blob/5a7d28b1866d1ba13f570551cea177187f9e54ff:/alfred.h#l33
and the commit
https://git.open-mesh.org/alfred.git/commit/f9cf9d22c8bdc8c675c5080d9a26a21082aa1d77 which changed the macro.

Kind regards,
	Sven
--nextPart20119176.fR0bjONF2F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmIUHtQACgkQXYcKB8Em
e0a0sg/5Ac9WkZH1Jvz6b5rrD+12cfYv1rRytFlu7YeBa44tilSmeQsKzFMAwIh8
zWnq5tMgyApDYU4vH2KpNRzjYWiYhOVcwvJ8i5lUA7G7IVMCOhHkLnjS8moMc+r4
5A+qTWBgxXTBrLQHoKw6teVVe7uElfqrfIFN7cGEwaUBnRSEv7XWlRnyawLYVVea
WAaYiotRINBGZqoOxixAfUFlswMCCaZtm6JQI/I2Tk2vDacRg7+phvI0T/EFQC0x
MrT2jpimk9yQM4vfnohxigJ1SnQ52ngMHNltqpu08uzX2vs/cVMno6kqXvuBPYRc
gwaTkePeEEZ04ZB4iMXBstYMIJ9mVS5KBrqD/Q2KBJ2ImTOaEpwVUogxbBrKlcmR
lO0xlXlc1An6ZGFxSulbP0wiyI/sZoQqWWwZUNDRk223mVvUcE+E5Hj+n1hx0A55
PdD5fc/gLvN30sajuD6LLvgJuErIQYhg0HggvmGCNVXQG8moGEmmAuKGdlWatbry
kbVwZowHvHXqBem1V2K0YdkdaX65W8ds2ttjp7cqXRnzIloFuadxsZWA74+354yD
EzPg8Pf9rXeaKRorPaHqbYh5CsQarqyIQoB24iGWpXCk6kGVLSmaIVqRq1IDTvAp
6f42+NvFwiVQ3Mkqrkkj/RT5ihVn1wjmGvl4Ynz4YAEOpWvgHuc=
=+iPI
-----END PGP SIGNATURE-----

--nextPart20119176.fR0bjONF2F--



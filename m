Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 975674BEDCC
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 22 Feb 2022 00:19:58 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0317D842F0;
	Tue, 22 Feb 2022 00:19:57 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 715D28070A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 22 Feb 2022 00:19:54 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Tue, 22 Feb 2022 00:19:43 +0100
Message-ID: <2116595.VMJfFIaldL@rousseau>
In-Reply-To: <49865018.WmOq9pY62i@ripper>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch> <49865018.WmOq9pY62i@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2369180.30GYhE2k2L"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1645485594; a=rsa-sha256;
	cv=none;
	b=RriFS/Bn6rk260idS6G1maPpepxV6DBrMrRYzKWn0RL5iHvPef/KhKDaZwaNcX7DQhwB5Y
	92ucFPLc74GKRVow96gYy8XNXZY89eBXru0N5toiNs+Oh23dcF0qtJWnLZ5F+mvTYcWYL4
	HB6PMpuUCOmfsqQo3oY/hpGpLMKbjPE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1645485594;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wJr0xcPaENzIqxJHQlmU/oKV1B+iDk/QL473ivE6gr8=;
	b=ZB0lD1OupLV+6ilvQoTQe48iuxXGwvF1OF7yACAU8RKTd0t1Ti8QwmK8SpamMRO1eqcPmq
	DrnolFmcTQLoBlfbNdUF30Pb5Kraz3TQxhDo0h7bA1J7eGKxLruxN3uW9RqQq5l9/5IMhI
	yHanbWfS7KlNIuIAf79CrC9b+ML+XVQ=
Message-ID-Hash: KYUEG6HZXMO67SUTPKQ6MRBCCSKXTYI6
X-Message-ID-Hash: KYUEG6HZXMO67SUTPKQ6MRBCCSKXTYI6
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KYUEG6HZXMO67SUTPKQ6MRBCCSKXTYI6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2369180.30GYhE2k2L
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v4] alfred: introduce 'server status' IPC call
Date: Tue, 22 Feb 2022 00:19:43 +0100
Message-ID: <2116595.VMJfFIaldL@rousseau>
In-Reply-To: <49865018.WmOq9pY62i@ripper>
References: <20220220183614.54865-1-mareklindner@neomailbox.ch> <49865018.WmOq9pY62i@ripper>

On Monday, 21 February 2022 10:14:18 CET Sven Eckelmann wrote:
> On Sunday, 20 February 2022 19:36:14 CET Marek Lindner wrote:
> > diff --git a/alfred.h b/alfred.h
> > index 9ab92a2..598d38b 100644
> > --- a/alfred.h
> > +++ b/alfred.h
> > @@ -33,6 +33,9 @@
> > #define FIXED_TLV_LEN(__tlv_type) \
> > htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))
> > 
> > +#define FIXED_TLV_LEN_PTR(__tlv_type) \
> > +       htons(sizeof(*__tlv_type) - sizeof(__tlv_type->header))
> > +
> 
> This doesn't apply on master. And also doesn't make a lot of sense, because
> you can now just use FIXED_TLV_LEN(*whatever). So I have dropped this part
> and applied the rest.

Your proposal did no compile and the master branch now also does not compile
on ipq40xx:

unix_sock.c: In function 'unix_sock_server_status':
alfred.h:34:46: error: 'status_op_mode' is a pointer; did you mean to use '->'?
  htons(sizeof(__tlv_type) - sizeof(__tlv_type.header))


> Btw. good that you've spotted some prints to stderr which should actually be
> to stdout. You only missed it for "mode: unknown". 

The alfred server running not in primary and not in secondary mode was stderr
worthy for me. But I also don't feel strongly about this.

Cheers,
Marek

--nextPart2369180.30GYhE2k2L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmIUHg8ACgkQU1VOj+62
HMBYMwf/WhorIkwpBquazXE7DxbWIvtaQpowAcPRHSLVafLJvRL7MGR1ovsX40CY
VmQl4/l8hq7RDG51S8fwhsCmpIfm2wxZ3OaMZXrs2VPS/I3ux5Jsa8D1l4rY96am
5nbDQXAjJaVTK12goXrwPZit3TdEIsj9z8R4cACRfhpE0j62Pj3gbyrXDlPYNBXt
dlE4YRTJCxli+IhYyk9PeOt4sP/ZHkyayPRauBfFteD/1ZUTgxeIXXmXRluMcdDh
z6HjLa0zsrDl8h8Q6aikVQ688QOVguXNrJ6Cq30APmlscvlzK3xUatUnuUeSABnF
SgUlfdCUiRdulm4QM9UcqDrB2gcLHA==
=gGQX
-----END PGP SIGNATURE-----

--nextPart2369180.30GYhE2k2L--



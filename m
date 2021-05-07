Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D5D376A86
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 May 2021 21:11:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6B5DB82648;
	Fri,  7 May 2021 21:11:43 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 23BB9803E2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 May 2021 21:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620414699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=phKC64J/aQqum4+EKeX4EivShwsm78xUp8auPGvkB9o=;
	b=CNc2zMy7rnMxZqcb/IclqchgKYvuo3h4eSz/wGJuE2KfenswZUlmbtEr+64e5As4ROb+8V
	57tCDn2rqKNvjsC4DlP1NAA0yt9ZKPp7C3cK7mEK1e7UKa7UumBbkhtFHIVMHrO6kaC3b7
	B2l42PKc+MOe07r3/zqNju3TOrfsewE=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 1/2] batctl: Add generic JSON interface
Date: Fri, 07 May 2021 21:11:37 +0200
Message-ID: <2690156.YyWG0Q00rh@sven-l14>
In-Reply-To: <20210507171414.369399-1-asarmanow@gmail.com>
References: <20210507171414.369399-1-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2726288.2ZRZGpqrMM"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620414700; a=rsa-sha256;
	cv=none;
	b=q9aMeBzebYu0RuiCwkbyHj4woj79SMN8xtgMwCDaVVE7CvvtGI4EEI+VHvX8KfKgA8omh/
	lJDrPhYouUx1hOfmUwDkKlSwvGAmCCRM7+MvPRbzqjWwh+7Ce/Wwi6ADsbg/gko1I66QSr
	XNwVhW968mUDsJVN7jQasQAA3rDjfaw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=CNc2zMy7;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620414700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=phKC64J/aQqum4+EKeX4EivShwsm78xUp8auPGvkB9o=;
	b=Wh7w0cQz0V7JJ0Iw0K4wlti6tCtrLUqGRFL7y3mosP8YEUS0oPEpx9O1HaegRTYGkfWzXU
	8jNyZyu31oTS8NYKp68e3LOL1rbK0yQerv9YGiDM2nZzyLVFZIrQDuU/CX/eduuPQK8vcJ
	g2JTHgIOIzIxIdT8DVZqBVL6Pt9MTOM=
Message-ID-Hash: IDGUWHQKX2ZTZBSZR7M5TZNWETO2TYCB
X-Message-ID-Hash: IDGUWHQKX2ZTZBSZR7M5TZNWETO2TYCB
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IDGUWHQKX2ZTZBSZR7M5TZNWETO2TYCB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2726288.2ZRZGpqrMM
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de, Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v2 1/2] batctl: Add generic JSON interface
Date: Fri, 07 May 2021 21:11:37 +0200
Message-ID: <2690156.YyWG0Q00rh@sven-l14>
In-Reply-To: <20210507171414.369399-1-asarmanow@gmail.com>
References: <20210507171414.369399-1-asarmanow@gmail.com>

On Friday, 7 May 2021 19:14:14 CEST Alexander Sarmanow wrote:
> +void netlink_print_json_entries(struct nlattr *attrs[], int selected_attrs[],
> +                               int arr_len, struct print_opts *opts);
> +void netlink_print_json_entry(struct nlattr *attrs[], int idx);
> +void nljson_print_str(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_ifname_by_ifindex(struct json_opts *json_opts, struct print_opts *opts,
> +                                   struct nlattr *attrs[], int idx);
> +void nljson_print_int(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_unsigned(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[],
> +                          int idx);
> +void nljson_print_uint8_t(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[],
> +                         int idx);
> +void nljson_print_vid(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_crc32(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_mac(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_bool(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[], int idx);
> +void nljson_print_ttflags(struct json_opts *json_opts, struct print_opts *opts, struct nlattr *attrs[],
> +                         int idx);
> +void create_json_print_string(const char *str, const char **str_ret);
> +void sanitize_string(const char *str, int str_len);

Why are you exporting all of these functions? Most should be static inside the 
c file. I would recommend a new genl_json.c file.

Kind regards,
	Sven

--nextPart2726288.2ZRZGpqrMM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCVkOkACgkQXYcKB8Em
e0Y5Gw//bm2aLlo1Mdp0pe8qTMXOTLR8yw4oieKgKXob23h4/4nQIXr2yPfodxx3
0y98i3YyOHLSFjiarzJ370BUSizk8Mqr/p/yNykNyHNHkkTsTfIVx2RRRjQmsbqj
brKTr6iHC9PNG7tfnfvz2iBewbPGekSlgNcsfIF2dWkS9CUkcLAqG6EzFBv8+kT0
8KL2Jas0G4bH+pjoSojvPvL+g31v9cNMG+bgh4+8CCoz6C3tTjYwPS8JXrWP6xWV
IOH9ZwjZw3VfZOFxOvvm1hg5UY8kTdEXr4I8Xc1iWejP5fP7wTEaISRez+rVdrhK
G00oIq2CbpMTyN7AFBp2mYEbd922P+baeY1Nh+aD7gkf6AZ2ceqkWNlYe+C3ghP7
UPIoKlNNXyFM3OUsJ58Gmg77VmCS1k+GCjUMYHJHYtcN55gK89G7mkxRw26CjdXk
Rvsa0M+QZzo5THEm15NFDaYp/m1Di7hAoi5QEZaEHoxNFEMqbQCOMx8gipWcbUbw
eYzaR5fgK5jjXpZ3xSzXOiASd6cusOe4xBaS4OoM747xYbcPFe61ztfV1Ba0/6R+
3tpLHnnlMfK/oFq4kIZ01ZmREO71utkF8y4IOtheczLOgE6/Ol53LcyWqlcr5QQo
OX8lFA1+0/bE/maash9D6NN1LKRjRrUEAOpBZUDJ3Ie239wURPI=
=Swoz
-----END PGP SIGNATURE-----

--nextPart2726288.2ZRZGpqrMM--



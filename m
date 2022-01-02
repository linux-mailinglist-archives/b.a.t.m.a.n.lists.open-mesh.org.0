Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C465482B97
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 15:43:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4998382553;
	Sun,  2 Jan 2022 15:43:44 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0E0A98045C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 15:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641134620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NlSr1ej4PmfrZSE/ZEO5XWveX6duLBMX8/sXVnrDaoQ=;
	b=XeFoV/2eZ2T/XWaALlanXRkvce6YN4I9QpqA3LnVcNLcoaIXKU1e0B3lohgH14E9JUpMdI
	ekiJKuJb8QTHjXbZ/4WXQvCdOxXO1Uskf/Sm0b6ElL+WW9XYwzw3678ut/hVODZR7Wp+fB
	3O4vouZn6sXN8UN4JIx3cDMnhpPLn0s=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Sun, 02 Jan 2022 15:43:37 +0100
Message-ID: <3214693.Z0pQRKLR2l@sven-l14>
In-Reply-To: <20220102113136.470299-4-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-4-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1985126.cY4G8qPslE"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="XeFoV/2e";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641134621; a=rsa-sha256;
	cv=none;
	b=Ych/tlowZ3d39pBTvFnu9QherSaJkc4I0yGDQl9T47mZo36Z0eQIVjB5TIG1kh+H/lE/z+
	EPC/4tF++vi9c18ppo28IkF1sL1DE5gk+KsmgZu8fDmo9/IvVZMAi6cbAi4VeAyq94/VLd
	yrfHi1paqqZ6bMqPf2peLrILuhPqKY8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641134621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NlSr1ej4PmfrZSE/ZEO5XWveX6duLBMX8/sXVnrDaoQ=;
	b=M+RXbwyfCkaNPin8I7U7/gLkqzxV7NovfKkQj9zB49hTxldhUrTOHAvaPzpzDa5zbs+As6
	C5uSpuitQrix3wPi05McqzhIJRGsUAXF6dyZCbgp+6/3247gYa7znKgm8VHPgSBZ4Wbw6x
	seoz3ch7USi0QJ/fmyahcOpFnoO9cqo=
Message-ID-Hash: KFSVTELAG5PBS22GFQD4PJMC5CGEAMNM
X-Message-ID-Hash: KFSVTELAG5PBS22GFQD4PJMC5CGEAMNM
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KFSVTELAG5PBS22GFQD4PJMC5CGEAMNM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1985126.cY4G8qPslE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Sun, 02 Jan 2022 15:43:37 +0100
Message-ID: <3214693.Z0pQRKLR2l@sven-l14>
In-Reply-To: <20220102113136.470299-4-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-4-mareklindner@neomailbox.ch>

On Sunday, 2 January 2022 12:31:36 CET Marek Lindner wrote:
> +       list_for_each_entry(interface, &globals->interfaces, list) {
> +               strncpy(status_rep->ifaces[iface_count].name,
> +                       interface->interface,
> +                       sizeof(status_rep->ifaces[iface_count].name));
> +
> +               iface_count++;
> +       }
> +
> +       strncpy(status_rep->bat_iface, globals->mesh_iface,
> +               sizeof(status_rep->bat_iface));

strncpy doesn't guarantee that the copied string ends with a \0. You have to 
take care of that yourself.

This might not be a big problem here because the name buffers in the 
interfaces list have currently the same size as the name buffers in 
status_rep. Still feels better to have the line to manually set \0 at
the end of the buffer.


Another thing I've just noticed: You don't take care of initialization all the 
bytes in the returned buffer. So you might leak data from the alfred process's 
stack to the client.


@Simon, would you prefer to have a global "status" message (which cannot be 
extended in the future) or separate "GET" queries for the existing commands:

* ALFRED_MODESWITCH -> ALFRED_GET_MODE
* ALFRED_CHANGE_INTERFACE -> ALFRED_GET_INTERFACES
* ALFRED_CHANGE_BAT_IFACE -> ALFRED_GET_BAT_IFACE

Kind regards,
	Sven
--nextPart1985126.cY4G8qPslE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmHRuhkACgkQXYcKB8Em
e0Zmpg//Z2FE5UTd68Kv46gh5YhqhfIhPdbuq1T+jqOA8TuAJwKJYg3tMZVzRjkP
wNPe9Dtzih7+FtenTee6IG6GakZzvfEzlJVTRNyMUuwgExinVzHWcglQi9plp33N
Eo8ThW2wH9CUXW8GOeiukFXnKTOYQVK1BFGY25dpRbRvkH6AigJORj9W/XTgpN1u
5aAEwhmJmTDRhINAeLVpczGoFtFMEJwkuLcbhNgQgiMQUOT8i9l2pkcmgz71H/48
SlbVue9+qD4FC9ADqEwC/vqhGfGU6ci7hGA65lf3iSu8Gd0wHOxfp6EFcBV1coXj
Esh+TaUoc2RfqlyPPGN/FYSmCFZzNj+JZD+AJkXrkJ3bR/o5dKmFWLdH/KmKEsrX
aUIyA+bRIE1pA3nun3KNLawP4+0xV1YI+cPjGimCp/JXoEFOVc/rxybl5PZlbmpk
5z5G083bwk3jERiRlCf6kTxM0tMjN17mai/HuLmwJJtzD1WUGK8llDLejORCnJXQ
RIVuqmRF/vktr1Fv7gohsXSaG3hS8MHLLCUEEDeaVWmBqKoeBGuGdy9DVWPjKyou
RXebHqcJzlRIDYzA5fIV7QovU22J36tx6U0w9uwRbUOI9+GIT7pzghUjIs6VJyaF
FaewJmecjGSExN/n9YxlI6k5UCCUDAe+nxhcDjZ22FYpJrSV+F4=
=ftMA
-----END PGP SIGNATURE-----

--nextPart1985126.cY4G8qPslE--



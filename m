Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D91B5482B8B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 15:20:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B75AA83E79;
	Sun,  2 Jan 2022 15:20:26 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 929D08074D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 15:20:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641133223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8Pgg3UriPJfryULF24okCObwbdXKymf5zuWD8goKesA=;
	b=nO39K06lLdGBaxCKwgZrGiDeER5LOY48C6InPDuaQfnx+fihuS99EpTBEYC2MTUIOZtHyF
	gGFVFB3olkhhjPrceQNiYG6G6iy48wh/itO7pgf1Ep8xustYYJEVv4tIEJh/FZ/sAKK1nu
	QXau4tmjF5SP3pQ/A0ZbJFRnHcsXGBs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 2/4] alfred: Allow operating without any interface specified
Date: Sun, 02 Jan 2022 15:20:20 +0100
Message-ID: <2887321.KE3FGX6OkO@sven-l14>
In-Reply-To: <20220102113136.470299-2-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-2-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3555316.B6yQ7zIYFZ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nO39K06l;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641133223; a=rsa-sha256;
	cv=none;
	b=HkTt3Tjg0wajAiZzLmMeCYCwBbTRbWrg8YyaFAs316LlE1vTtOvVbBNVVDfLF0WcUH53/G
	rljXVr6AHhT/jxcHpe9sXJ2cj3vR6r+ge2Pz9tRZIzsFkvKp6f6i+8wgaXHIXK3kJIYGDf
	cnYk23h6k/qgYWdjT5HML1AjBVWOv1c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641133223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8Pgg3UriPJfryULF24okCObwbdXKymf5zuWD8goKesA=;
	b=CWnjSPVSBcZM9D/M4t6mFIZGvWGL2cQpPtPb6kz+avXfs6SCE08dBK3wb9iJ5973MO4+fa
	nI16zrhw5wCtf/hfE8APz+cvGR5bzI0qizrE/64Oh4Ugfys7EFRGwy17yJ4lO6dp5HLBWt
	qmiJHyhSa9S5AToiKMJVF4Y8Ro4hlec=
Message-ID-Hash: 4JHDZKNJDWAHGDS5C5KWEY6N2RHTGZ7L
X-Message-ID-Hash: 4JHDZKNJDWAHGDS5C5KWEY6N2RHTGZ7L
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4JHDZKNJDWAHGDS5C5KWEY6N2RHTGZ7L/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3555316.B6yQ7zIYFZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 2/4] alfred: Allow operating without any interface specified
Date: Sun, 02 Jan 2022 15:20:20 +0100
Message-ID: <2887321.KE3FGX6OkO@sven-l14>
In-Reply-To: <20220102113136.470299-2-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-2-mareklindner@neomailbox.ch>

On Sunday, 2 January 2022 12:31:34 CET Marek Lindner wrote:
[...]
> diff --git a/README.rst b/README.rst
[...]
>  	if (strcmp(globals->mesh_iface, "none") != 0 &&
>  	    batadv_interface_check(globals->mesh_iface) < 0 &&
>  	    !globals->force) {
> @@ -393,12 +387,6 @@ int alfred_server(struct globals *globals)
>  		return -1;
>  	}
>  
> -	num_socks = netsock_open_all(globals);
> -	if (num_socks <= 0 && !globals->force) {
> -		fprintf(stderr, "Failed to open interfaces\n");
> -		return -1;
> -	}
> -
>  	num_interfaces = netsocket_count_interfaces(globals);
>  	if (num_interfaces > 1 && globals->opmode == OPMODE_SECONDARY) {
>  		fprintf(stderr, "More than one interface specified in secondary mode\n");
> 

This now causes the "--force" option (+its storage in the globals data 
structure) to be completely useless. I would prefer to have this handling
still be there when !list_empty(&globals->interfaces).

And why is it necessary to not open the sockets on startup when interfaces are 
already given?

Kind regards,
	Sven
--nextPart3555316.B6yQ7zIYFZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmHRtKQACgkQXYcKB8Em
e0Y/wBAAr4/e+kitdyYNx0/IDpoylufZ/1vsPngknN2yG0PQoyPxt3FYqotA3ZZ9
H/oCi6YKHSN9VsKsQLgysTBMJAlVOa/nSrcke6XDMdfKqkWyVo7VpK6w34XtiFsr
PLO/WXjR8CJxlH/V3Wx6TLZejdsFqeHR4aIZRe1B5dlJZnuTi8dltLoVvw5uUhE8
lgggUWTed6S6oMbJyjl3K3Cgy+iWrHsHdbpD/Qr/jUs7wbgLnBWzjSsQddaRbANg
Thsgumsv8Zikapcq0p3L+zEpF9tZL9YFswqypiwXgYikN2ih73UImFOgdS9R2vA4
xSZMYg6D8IYKUEuS1HupXugBd3WyV/LlmswdCZVirC8EPYOmxXgR/28Luf1fJWoZ
fR8GmA2trrIB/e+N3wM0AudGChL8hx5Jx4Uwss9D1HSXTqOFvoPJPDpHqeAu3WZF
Bdl6FLgq6gnp9O/cyt1/3fpmMJwrxcZakb9wDZVnAwgKHsBVohiagAFCIiyOGqpn
ISa7jFBS6en3zyNL08zDgmOqATI4x01ipDsJGPZ77kX0g5wQkVDiEUZQN0k1cSq1
Xanr39iF3aGNh09sh/X5RH8MBvJd3ju8cXKgZl9EaaEhqBwy7NOoFfbgYvI8tjN4
agb4cCtEyOmwwkneaYLYAw/gFRc8PedDDkeqxSVZOduOaynWnmk=
=mnex
-----END PGP SIGNATURE-----

--nextPart3555316.B6yQ7zIYFZ--



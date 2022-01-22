Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D17E496AD9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Jan 2022 09:03:28 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 07A5B80BE6;
	Sat, 22 Jan 2022 09:03:27 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2252F80BE6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 22 Jan 2022 09:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1642838603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q2MH1pmVOm/LfuONU7SeR17q3+YkUSs3WDp/8NtzCMk=;
	b=eWL6fhLER5Ee7qN+NksCTRiC/hcZLVs/S0H0/5xTomv74FswCpjYdYYHpJ3lRz5AeZ4en2
	4tH4dylKwkOM62Y9jxHFCtiyzu+Tgz9OnJsaJsIgA24W/1bCFYAegZNJ55WPnG7xf7Lw/M
	YzAKC1B4K+45j81vlnU46C/i6eSJ3fI=
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 09:03:12 +0100
Message-ID: <18671636.mmkZKWO0Lj@sven-l14>
In-Reply-To: <3612372.8DyAAORe3b@rousseau>
References: <10410848.OOsao9LFFs@rousseau> <2782676.din1RKh0Nb@sven-l14> <3612372.8DyAAORe3b@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7240190.pbdr2JfxmK"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=eWL6fhLE;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642838604; a=rsa-sha256;
	cv=none;
	b=vKZVmJXFuiJLJsVE4WclGADkX3e4uyzebK7HN170Mqf5/rgCJ7ftMysHyOXDvOHXXYWTf1
	44R5ZJ6AhnP8FB1nKWVFOiNTsNhGougEUmP1BuSzuwPUZfq0kNAERJPI8qz5JUXMXA1U3L
	VnbR2sc33Kd/tUjz4R9YDpJmLRGrF2g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642838604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Q2MH1pmVOm/LfuONU7SeR17q3+YkUSs3WDp/8NtzCMk=;
	b=LgAWlIrbbH8FUSxYiCYocPzqX8/QPheyHl1N4RRlKUT72YyG5D9yY4m4VL4sxZQxfrPTw8
	iZhMgfk0tQlL3CmryZwb/XvPJjH+HrvdykVwl+xvFWQepu6kBYOS9zQJM5kzMdE2YoqrL7
	EVmBhQjdTgJ97ugdiD2hkfXlvWp1onk=
Message-ID-Hash: XT3Z4Y56KYZFHGCHFNRB6U5E5J5POG2P
X-Message-ID-Hash: XT3Z4Y56KYZFHGCHFNRB6U5E5J5POG2P
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XT3Z4Y56KYZFHGCHFNRB6U5E5J5POG2P/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart7240190.pbdr2JfxmK
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 09:03:12 +0100
Message-ID: <18671636.mmkZKWO0Lj@sven-l14>
In-Reply-To: <3612372.8DyAAORe3b@rousseau>
References: <10410848.OOsao9LFFs@rousseau> <2782676.din1RKh0Nb@sven-l14> <3612372.8DyAAORe3b@rousseau>

On Saturday, 22 January 2022 01:41:36 CET Marek Lindner wrote:
[...]
> The struct alfred_change_interface_v0 -> ifaces[IFNAMSIZ * 16] may be written 
> to but not fully initialized. The interface name may be much shorter than the 
> buffer holding it. Same applies struct alfred_change_bat_iface_v0 -> 
> bat_iface[IFNAMSIZ] but to a lesser extent because the buffer is smaller.

But strncpy writes n bytes (second parameter of n). So the name + n-
strlen(name) 0-bytes. I thought I've corrected my earlier statement about 
strncpy but maybe I forgot it. So strlcpy will take care of always writing a 
single 0-byte at the end of a non-0-length buffer - but is not writing more than 
1x 0-byte (so half of the buffer might be uninitialised). strncpy will fill 
the remaining bytes with 0 but might end up writing NO 0-bytes when the buffer 
was already full.

But in your status patch, not all 16 name entries were written. So it leaks 
things from the stack and the receiver might parse things which are not 
actually written by the sender. And your code was not explicitly making sure
that the buffer ends with a 0-byte.

Kind regards,
	Sven
--nextPart7240190.pbdr2JfxmK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmHrukAACgkQXYcKB8Em
e0aNxw//Y+NsLF77hwjLQWK5OXBEO1z9/vQL65lvzDDk4e55vbPONEVMs9ByhRSL
M2nZyptvIiuhOg+lXPFh2AHLmzg7xX6fYim4oJNqnfkG53PGvq5uxx8EyvuhOZ6P
ygAAfofN7fC95qexN8Xyojrvty5UFy0e4viGWpvATm0mJJCNzNfA3R48otVRhvxP
y7CM2rtmPE1eAf6L+YSPox33cEnGUpJMSHTMTFYjrknUuCwa4n5WltTEWrZ9vBxx
lensA9ICCDHh8CGFYhGImlAVuNnXBzF4zF94caW4NfKpXMcb3Dd9KG4hB0HtrDcX
bcjMgoU/ozepO915Ubyft9cXGd2LhPZ54SkcHlekgQRHNK6DU1rQWnP4frcT1KmF
mJRwP+bWbuQHEfjTKTXtSA5oQbE/2ViwRfOYfXLFbm7OChATFvcDvKTMPnbzS9ju
umZXGiVZ0iuLVpb+rTZfIHlD0hEqSvB3+k+CuVq9zI9vSL32aeMHq4num4NaFOr/
I4O+MXnqfkugu/ppkLz/b25kHUxZvH857wiVvWp0gUcfKpwGY1GO1Co2ulTIcu3h
x4mUir3icDYYH/DcB+sN1AH4yb2ySwwM7W8jV3xP/V8s7xlQ+XDTt9TTvDdyW0m+
8nEjuqDrXVv0C7aVDIQpOFMdvJYJqYHTXk02CQVnVleTAzFqMEc=
=t0ap
-----END PGP SIGNATURE-----

--nextPart7240190.pbdr2JfxmK--



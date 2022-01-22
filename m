Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEC2496C72
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Jan 2022 14:06:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6555681DC3;
	Sat, 22 Jan 2022 14:06:44 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 39DEA80220
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 22 Jan 2022 14:06:40 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 14:06:31 +0100
Message-ID: <55198855.o2EDfbc6B2@rousseau>
In-Reply-To: <18671636.mmkZKWO0Lj@sven-l14>
References: <10410848.OOsao9LFFs@rousseau> <3612372.8DyAAORe3b@rousseau> <18671636.mmkZKWO0Lj@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9254362.6273V8V0VH"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642856802; a=rsa-sha256;
	cv=none;
	b=O/FKfHO5kXLQ7AeeAJ6XG3We5gECuVAK5GNuCDmogt3R9mrkUC6LCpE5vJA1uTntEO7q7t
	sr31gzku4rz9mY6DHAHL/o6eJxAHIX2u4gaDST9uT5nuLYXZKnCvBuCbNtSOYGoSneQYmi
	eBSOK0S7Q7UHNNczQSKi+jKYLjcwoFc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642856802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LmPpI1evOOx78zI0EHbWMPKXFQ3NbPunskpRsnAoJvU=;
	b=tckemGaEp/p/M3Q9C81uSRHZgspLgbRXxzri/e3vxcrn4XZvmmOApND7uqRBauL5kfTT3N
	yNqJ6IWoGfrRH0JBf2pSxYWAc6A4H880QNmwqffXTWM1frW7j6sBDJYKoevV/L1DvH3cWd
	KoZlJHGT8pD2olv2ATIwWArKAzNw9/k=
Message-ID-Hash: WKNGZ52OYPTZRI27NECG2FYDFP7JQRDI
X-Message-ID-Hash: WKNGZ52OYPTZRI27NECG2FYDFP7JQRDI
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WKNGZ52OYPTZRI27NECG2FYDFP7JQRDI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9254362.6273V8V0VH
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 14:06:31 +0100
Message-ID: <55198855.o2EDfbc6B2@rousseau>
In-Reply-To: <18671636.mmkZKWO0Lj@sven-l14>
References: <10410848.OOsao9LFFs@rousseau> <3612372.8DyAAORe3b@rousseau> <18671636.mmkZKWO0Lj@sven-l14>

On Saturday, 22 January 2022 09:03:12 CET Sven Eckelmann wrote:
> > The struct alfred_change_interface_v0 -> ifaces[IFNAMSIZ * 16] may be
> > written to but not fully initialized. The interface name may be much
> > shorter than the buffer holding it. Same applies struct
> > alfred_change_bat_iface_v0 -> bat_iface[IFNAMSIZ] but to a lesser extent
> > because the buffer is smaller.
>
> But strncpy writes n bytes (second parameter of n). So the name + n-
> strlen(name) 0-bytes. I thought I've corrected my earlier statement about
> strncpy but maybe I forgot it. So strlcpy will take care of always writing a
> single 0-byte at the end of a non-0-length buffer - but is not writing more
> than 1x 0-byte (so half of the buffer might be uninitialised). strncpy will
> fill the remaining bytes with 0 but might end up writing NO 0-bytes when
> the buffer was already full.

Thanks for highlighting this difference between strncpy() and strlcpy(). I see 
your point.


> But in your status patch, not all 16 name entries were written. So it leaks
> things from the stack and the receiver might parse things which are not
> actually written by the sender. And your code was not explicitly making sure
> that the buffer ends with a 0-byte.

The server status patch iterates over the list of interfaces and performs 
individual strncpy() calls, so that strncpy() can't initialize the entire 
buffer unless there are 16 interfaces to begin with. Ok!

Then drop this patch.

Kind regards,
Marek Lindner

--nextPart9254362.6273V8V0VH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHsAVcACgkQU1VOj+62
HMBPzwf/R2fKcPUu2uEgFoW42nORtSrqxskpJgcc3At4DJj7GC77bzwBI13JJTcq
J8M9r/Ov6QcXA8rSQXTsgVFxMXKycrYGG4Oiro5RMDoYVYHxch+SdmRsFVQfpX52
6Drf7+XCNXVSZ7QR0raZ61NYyfxkZLc1Q5wD+IE/xm8Wo6DDnrsic8ysgnBjn3Xx
ByG2KKZ0ZdS1u+Bc2B2l1+FjJetvVwqRzsR9zKL3AvoJnufxsonOqtS+bhtCtzSK
xYL9jiTJ62ONTLdtUTHjX5nLuoGRLN7jegwFUuzu0KSRxwhKbtiyozmxAjJgDkng
9O7/QhHvc9Pt/pfgGr559j7szYts+g==
=JzoQ
-----END PGP SIGNATURE-----

--nextPart9254362.6273V8V0VH--



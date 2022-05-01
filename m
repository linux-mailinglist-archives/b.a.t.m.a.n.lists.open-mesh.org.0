Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0BD51635E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 May 2022 11:12:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF9CE82E2F;
	Sun,  1 May 2022 11:12:20 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B37F18276B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 May 2022 11:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1651396338;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a1xe/S3qOGDF9cplA73cyZqKK1vj5w3u8dLn2LS/+J4=;
	b=W6PXL1hPdR75t139dOgM+9OV2VGERpW8DOjwpleLf9K+F8mkWhXqnRJorAuE0oXEQ0VJQw
	Oll48CCr+aQWvn+EPfwtpy8pinWna5PTuFIylz8zWwtn3IndYTz01wYjJ2pg7hGxpZuVBm
	/FdNYPXDpetBnFgPJJDcTdjykewlmYo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 11:12:12 +0200
Message-ID: <2357978.S02m7aqKFs@sven-desktop>
In-Reply-To: <1831000.Ehg04xY5OU@rousseau>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch> <3246469.CvshgyVVUE@sven-l14> <1831000.Ehg04xY5OU@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6694723.kCZG3UKmh0"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651396338; a=rsa-sha256;
	cv=none;
	b=coL6qA52ZFE501g/2wQXL1g+1KPcb9Ufl/8LgBlIMcsopGZML2OM76p2B6pvzMhK16W/H/
	tJkSbpW1IBweKGvD/CAY2ep9tg4yShe5lU+/1E/Fbq05GuXZ3prAe6r+gGcWY9543U/X1e
	ZsBf0B2Pkj09AKmC0jPGBzTogMHan8M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=W6PXL1hP;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651396338;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=a1xe/S3qOGDF9cplA73cyZqKK1vj5w3u8dLn2LS/+J4=;
	b=rneEk5Mlq7HnGKU988VYZFS/q+xfppx08F2Eg02JdM3li7eCf+8DnhjlW74SrPYZU0j5Ey
	PJfidNvbVC9okTCOnjvSnOUylVCI+KH6g4ozTlJp4dr/6BfMapnjMQvufTYa+qdKMFj4Zz
	YCccjUoieyn3khqfqEtsZQ9ZIta9GYA=
Message-ID-Hash: Q3J4LIB222KVFMAWSIIGGAKXWIMP3NMS
X-Message-ID-Hash: Q3J4LIB222KVFMAWSIIGGAKXWIMP3NMS
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q3J4LIB222KVFMAWSIIGGAKXWIMP3NMS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6694723.kCZG3UKmh0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 11:12:12 +0200
Message-ID: <2357978.S02m7aqKFs@sven-desktop>
In-Reply-To: <1831000.Ehg04xY5OU@rousseau>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch> <3246469.CvshgyVVUE@sven-l14> <1831000.Ehg04xY5OU@rousseau>

On Sunday, 1 May 2022 11:10:13 CEST Marek Lindner wrote:
> > > +static void unix_sock_event_listener_free(struct event_listener
> > > *listener)
> > > +{
> > > +	list_del_init(&listener->list);
> > > +	close(listener->fd);
> > > +	free(listener);
> > 
> > list_del_init has no benefit (only downsides) when you free the memory
> > anyway at the end of the function
> 
> What are those downsides you are referring to ?

Additional writes for something which is dropped anyway.

Kind regards,
	Sven
--nextPart6694723.kCZG3UKmh0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmJuTuwACgkQXYcKB8Em
e0ac7xAAixNv1iu2z2g2RZSiQMlttPeE7AGetRNJmBZXhhWAEZV9//Enphge5x6J
G02xJkqgtJdKP8B77CTd5lWhqflqs22PdECjss6nXyGmzuYFjD/gP3uC0bA45ARC
bIF/Kp745mAj6iBQS/fBI/dwkT+NMVoVfr9tI/SBvT4SP0inh28zl2oP156jf/LR
lbtAsiYvb279/Dwo71pCooI3H6PyRausvQ/XmTxESIqM9CKp1d0o3okvPbC5Mkm7
BThMZTLkXWAmlGr7k6vXzZxFXPxO9MC23SDhfzjJGquZeBWf20VXDfvLYQHw5eU/
uAn/uB/prZ/KRUz+djtFrboy7+xv2k0cDJBeU2vlwHTNECfCR7zauD3WjujF8Ov+
s22GS7rG9aGFq914tVgHqmFm0zKkdng9uEqTe2SHZmMzoqRX2KvHcHe4XpHHXtAA
YpvXlXBNmHXnbVz7Wz8r66R3TjM9nej/Ccalt8mFIJcNnPPd8DqbS2FDydgy2I45
zDR9QhdjgitLQk9usgF2kPvcsSy9vZ9a0wkKLbetXl0ty3tuBMAyIXyw7oWOzSE7
Pg+rLtWyk0kxAfTzlSTGyr/EUEib9NjtgA92610g/K8YlvutwOfMU0BljCkv0hwc
xqbcJ5Xx3ENMstJdtqAdXPcSHbAI6RTTZdnH61MFjjkirF/AMa0=
=03aU
-----END PGP SIGNATURE-----

--nextPart6694723.kCZG3UKmh0--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A239B1E6A43
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 21:19:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6E8E280953;
	Thu, 28 May 2020 21:19:50 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EE2E780208
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 21:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590693587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Mmchz7NYg9Ni4ZnCSJxhiXy7Z3n/1jAHokzZpPQyWS8=;
	b=ViOCWXScWF+I4gDizQNuaayo/rppaW8ftes6MRYRcJGzgM1Ny/eLxo9evHBXNJtPEkeHqO
	pmODZdABWheO8lXVtXLt1BMb6efI4s7KJ7SxKp7OBXvDLwDogSukBS1HuFRNFZbwUSSf1r
	qZOMHXnuI9m/b8SXgVksu94KnsUuWT4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, srn@coolheads.com
Subject: Re: Network stops passing traffic randomly
Date: Thu, 28 May 2020 21:19:39 +0200
Message-ID: <1970963.L7oaDoOIKM@sven-edge>
In-Reply-To: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
References: <20200525083512.832.13419@diktynna.open-mesh.org> <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2184304.dVTQkmkQ1z"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590693588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Mmchz7NYg9Ni4ZnCSJxhiXy7Z3n/1jAHokzZpPQyWS8=;
	b=HxZ6m6rEo7nsS70M101+c+FR7PlLyol+PnvE9jGuEBvSKaPFAlTnrpN4D/NromvZi4ezR5
	oEY/e0Ql4KxS2hxkccyswja6oeCcOWYsMou6lEwPFCJviG2wBUh6jtuP+vfpJ18IRHXBwV
	xL5jGsZifeal249prJmsGX7zEtxxe6Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590693588; a=rsa-sha256;
	cv=none;
	b=T4fiiGq7TUXIYcGu5HZ+cyyCtuNGITwXSGt3T3w8KynIGQBN3FG6pw6W5eK8slWm2mMkB4
	YEmtxRNUlHG9TXk+I1wbGU23DiFbL0vNyoCucqIf2lM5BBD2tzV74KYqJh/esl8FrpEI7c
	Ln2tXNmJEwxnMzbqty2Y4IPBHmnw9/M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=ViOCWXSc;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: ECPY3J7BE6DKGMQBTZQPCL4Q2IIHBNDI
X-Message-ID-Hash: ECPY3J7BE6DKGMQBTZQPCL4Q2IIHBNDI
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com, greearb@candelatech.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ECPY3J7BE6DKGMQBTZQPCL4Q2IIHBNDI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2184304.dVTQkmkQ1z
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 May 2020 21:03:20 CEST Steve Newcomb wrote:
> I have seen Sven's remark about unicast packets.  I'm not sanguine about 
> getting Qualcomm to fix a driver for an older product. 

I am slightly confused now about the mentioning of the candelatech driver.

Just to sync both of you up:

* Are you using ath10k-ct with the ath10k-firmware*-ct or are you using ath10k 
  with the ath10k-firmware*?
* And are you using IBSS or 802.11s (meshpoint with mesh_fwding=0)? Is this 
  encrypted or not encrypted?

> The Candela 
> Technologies driver refuses to function on the DFS channels (100, 116, 
> 132), which in my large, populous US residential environment work far, 
> far better than channels 36 or 149.

Was this reported to Ben Greear?

Kind regards,
	Sven
--nextPart2184304.dVTQkmkQ1z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7QDssACgkQXYcKB8Em
e0ZAxw/8C5ghdOc1mP1SfWeGL7ClQMVr1AM/A4bhH/tTbcdR0lgpe1q1F9SSGpTQ
xYkXmrh2r/epxRbowmVfdVjx7mHLAdPscvpc8XAzfizzKXo+SFnHdPOQEA9MizHt
RN/8c3PF9NIZU5b3PuzdwZZD9uLZr2tj27vwgBN8Egz1sOsc9bEdXVsbgzTY6Ltw
On5hfaOSmqPgp3/ofu/zfNarWEy9W23jOo4brhMxd1W0nH9P1ITzgtmsu2p/QhMw
5kI1rKKoBtjAXYTVZ8WUVh5SBrTuNxcUPVv2FSjmq4xqXmoA/2BJQBDzPa0KMH3M
72/iNe5kmPOZK4D49gVv1Rr7fXarXQwA9sz3NT4naxo2iVABt8o5irf5qLAMgd4M
f9/e2yptWmp0H6tUV/xyJ5tNJkEW9OMBgaF+JS++L1UWx8tWls5U80N3qxBxClVw
MOOl3VkMboPK/zybIlx8buG4nmoCI0SY7kA33Fb7Q2R0jkjtr3Lu4/q8U96kYWcL
7tBGZ7l/hSHCbEhRmdPu+WfKpQVrgtmGu5UIiNwWU1vR5lCOTGCFdcHD3NhJXUpm
5uUpNx4KYoSbpKNKN1b/57PY98Z9Vq1sCT95uGFpb9UYhkCr9WUFvqbrJ46m6p4+
ho4Xf9uYyBnoGUKrWxzBHGTkqfSwWaqTVrXAe+Y1gFjNQ7gMi50=
=U2Pd
-----END PGP SIGNATURE-----

--nextPart2184304.dVTQkmkQ1z--



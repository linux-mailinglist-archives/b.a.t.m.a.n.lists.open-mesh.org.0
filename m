Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED93A527
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 13:28:35 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 94BCD82064;
	Sun,  9 Jun 2019 13:28:29 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id AF7F6808EC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 13:28:27 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 52A431100CF;
 Sun,  9 Jun 2019 13:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560079707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gOWkgOPNE9BWrB08UsJkkwcy6Kz/kZDiZSTxgwznvY4=;
 b=Z8AQyrSb99Oi4nRrTE5z+stqVZpNlZoB+sVBDe3cQmkdBARpmBbyEJ7x5tZ/yUFFmeqrxm
 y77GmZ+ANnuhh+8vEoInkleUVD4RfUiKFaY6DlHAOwwx8T+15w3883z+GSkcHveVF/KstN
 cG6jcBJek6r5TfECdqf77dy+OFi3XME=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [B.A.T.M.A.N.] Antwort: Re: [PATCH] batman-adv: handle race
 condition for claims also in batadv_bla_rx
Date: Sun, 09 Jun 2019 13:28:24 +0200
Message-ID: <1725789.MhpV6G9eb2@sven-edge>
In-Reply-To: <OFB68BD388.DE1C34EE-ONC125811C.001DD4CD-C125811C.001FA9C9@phoenixcontact.com>
References: <20170428202610.27022-1-sw@simonwunderlich.de>
 <38318850.GE51cWUxAf@prime>
 <OFB68BD388.DE1C34EE-ONC125811C.001DD4CD-C125811C.001FA9C9@phoenixcontact.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3438243.sflS0P78E1";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560079707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gOWkgOPNE9BWrB08UsJkkwcy6Kz/kZDiZSTxgwznvY4=;
 b=I0ObBAtvdcDNsDmTKmlWe5Vvp39uWH5jwfXa15lP6fvSnUKpHhvd66j0hgq2QQrL93sPO7
 ksab3CUXZHdJ639hEsZ9sqrJobTGSWvB4hGz2zBJzgYCCoDWiVYHWlZ23/jsjo6w1qwMXL
 GVO8n+AYtt9YYvDpjRzuRVV4/fBmEfA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560079707; a=rsa-sha256; cv=none;
 b=JDINdUuZ6CLhXJLZLWqFsNqvnC3w+PlJzeEO60kQYJGZ0fhvscfP9BRlr1PbcgsEaYG5bz
 YctjSyAXaUAh+9rmsHkB5Jgw8pS/XqRXmXdnCtgh77qmQE3cEbAAFfwpr/uX747netkmwO
 UzRwZK2PY6mErq78fACmWi70kfW84aw=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3438243.sflS0P78E1
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 10 May 2017 07:45:50 CEST Andreas Pape wrote:
[...]
> I have to admit that I did not retest this with the current master or
> version 2017.0.1. I simply
> integrated the patch and I can at least confirm that bla works as reliable
> as in the 2014.4 case with
> this patch. I agree that this is no proof that this patch is still really
> needed. I think I'll remove it
> from my test setup and come back with my results.

What is the state of the tests?

Kind regards,
	Sven
--nextPart3438243.sflS0P78E1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz87VgACgkQXYcKB8Em
e0ZT5RAAuksmuSrtuKYZGF0JEIumXtLgQ//FxoERm4aNCt+mt53L+kc24OYJJBng
gtqbGJEgaDJJJBoMc7c1UMvNbuEBNY9OY/x2YCt4eD7TIwMPrjXmNY+vGQHmaW68
eXgZ7y4sK+dOnQPog9wxASG0TYeFiy+8s+LmuO2KWYZq94mTDm/3wrqKKpMxFqh6
AFNYeTb3w1rT/lHh9VU3C/2xpiwEwnz31O2Rj2WBtWCrkBtlc4ntVh0eSlmJWHmy
kFZOiFJWGsmVJ8Tq4OfzqRfm/rzmkDO4gGIKdy/qVQ2R+vkWvI6F3PJwHUoNUBEj
pmKX2IrmpJDZhQ//Xrzl3QV1D2f/d9zZRhGGjhg0ZWjL//p/6W/lPMC32Rn6Gtim
E/EXJpDtG7kNwqoCtly4gQ3pt9yZyuSu2HlLcUsSOaAVsH9FsQD1xWrA6DuWiZMA
fyrwbTdzL1uuXNYj8Z3mnAJ8xZ1w/XQbAzIp4wB4XT4Vd3ggTXx0jjUW0xE5Ndhl
+QgkNSZTBBvORZCk90d+KBAGvjvThl2k2vu1j2oPzIXepbf3OCE8jna969Va2QSQ
AtrY3TG8/BEMvz7yz17GZaU8dFDqaFTB25n9WP8jdiND29gHae33ehlInB8K09Mr
hHlB+870qc0ADOOxoLbQr5vGUUTlguECq+tlWuwLmnqNH94cAIM=
=bdg1
-----END PGP SIGNATURE-----

--nextPart3438243.sflS0P78E1--




Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 910115CC22
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Jul 2019 10:41:43 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 04F9982670;
	Tue,  2 Jul 2019 10:41:41 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id BED7580170
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jul 2019 10:41:37 +0200 (CEST)
Received: from bentobox.localnet (p5DD325C1.dip0.t-ipconnect.de
 [93.211.37.193])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 2DFD820664;
 Tue,  2 Jul 2019 08:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562056897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7yDGUHBZJB+HxZTzSqHZolnod6FEk7tnUxb/rUR6wX4=;
 b=FvcHx9kgVeRM3WA2NAJoOFZS4MHr7zivRIgSC+SMW+UbyICrDWI+vIjhpkXvf2PXYFfNcL
 7ZgHW7zfR191vdQzScl0YMQWEg4tEmAes8TYvgc+qt3T9QRxBcOYfK/Cog7qDbDcyYrhgi
 PMNslBejAVJcQV28O9PgzDJMT3TIaCU=
From: Sven Eckelmann <sven@narfation.org>
To: Andreas Pape <APape@phoenixcontact.com>
Subject: Re: Antwort: Re: [B.A.T.M.A.N.] Antwort: Re: [PATCH] batman-adv:
 handle race condition for claims also in batadv_bla_rx
Date: Tue, 02 Jul 2019 10:41:33 +0200
Message-ID: <5300456.PzWH2EYOel@bentobox>
In-Reply-To: <OFB8426900.4E038D61-ONC125842B.002EFBE3-C125842B.002F85CC@phoenixcontact.com>
References: <20170428202610.27022-1-sw@simonwunderlich.de>
 <1725789.MhpV6G9eb2@sven-edge>
 <OFB8426900.4E038D61-ONC125842B.002EFBE3-C125842B.002F85CC@phoenixcontact.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3706904.sy55F7JaNr";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562056897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7yDGUHBZJB+HxZTzSqHZolnod6FEk7tnUxb/rUR6wX4=;
 b=Frtqgpcv2ghM72eE+V2gkCdS9zSjrePJRM3aEN5qJBG030ZZDU+GGV/lgfIu2Uf/zF1JDW
 mX5/FD4RJ2fbraGvtwEYasK2xCGqFL7fpGdlVhZnDGzMDoUV0IV5JMxovYsOVNmSQzcsgU
 cCaWF4I80EZtgkhbgmbASIwM1XsqPPI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562056897; a=rsa-sha256; cv=none;
 b=AT4+B1ROylEXVKS4hJwhrS49bs79YX5+1S1O7z7lhaF0ucPqvC7xI0aV84Db5LUnM5W2Kn
 oQ+jX5fcUj5FJWqB0p5vGoXRTw5htdIq7VHNBGg6XIOk+CiL0mwFjxgAz8ae5GvCLjAU9H
 V6DcexyEO1vGF5/5lt0xPvgWTtERj14=
ARC-Authentication-Results: i=1; dvalin.narfation.org;
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3706904.sy55F7JaNr
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 2 July 2019 10:39:04 CEST Andreas Pape wrote:
> Hi Sven,
> 
> sorry for my late reply, but I finally found some time for testing. I used 
> batman-adv version 2017.2
> without this patch and I do not see any negative effects on the way bla 
> works in my testsetup.
> Therefore this patch doesn't seem to make sense anymore.

Awesome. Thanks that you took the time to test this :)

Kind regards,
	Sven

--nextPart3706904.sy55F7JaNr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0bGL0ACgkQXYcKB8Em
e0YBZRAArqE3juzn72pB8pz+GlmSu4sISHUo31SyHZo7D6dR37nxsu1SUJSlmdAd
fOB/VOQ3ipHehpL3CenjaGotHUoKjCSZvS33yFyqeTwzV2AIci0EnXlSofWWUPKY
5ZbtdKsjboA+6K+pbGY4D8PHSCMG8YZfRVtnEEsY6fX9X5Zyjx1lmZ6K5nN/BKdy
H0Va+emyix4H2LJp+L6z4bLQqPPKI+mfTZigMGJDxDWpxbM8ye5Et+We0vCTn8HR
IuhGfW6hnC1eqN89CaaMZduYHAd9ovIRXMu/t5I/kfSAuukXLh+WJeV5jRB10F+e
Fp5l9m5OL5HyIevenUhJmDkqnTwQsSbZRYZU1eJLJJDSkiCbxiw49wWyMleXFqnu
zwp4Ct5lySOU3DvM+4wuoEWI7ZLwfjIYEnYFeMzLnLrdJBSt4sp0lqoj8Gnogovj
Z2iG5evnWCaXjw428fv9ZBJU7A7HeNcf2E0lAW7zLrNeA2/chuKw8/3KKT6Xi+pL
tZ2k8oIGB2ZvBuNdyqD58ka80iTju1GnMRwqe1qL7eFjPID2hzQao7m9iRLtCLu0
hxNkd208FYX+ceUuGr8jOb+PoJZ8A5PC5vj7Rq5ug/ifjbjU56BhMq2VZJ5jldHk
+zA09BJmDN+NOnbWsgQFloHDjiRjNw1TcDKeLmI5flq/og9QsyM=
=3PYe
-----END PGP SIGNATURE-----

--nextPart3706904.sy55F7JaNr--




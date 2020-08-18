Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A7987248B51
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 Aug 2020 18:17:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8BE9680E11;
	Tue, 18 Aug 2020 18:17:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BF2A7803C8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Aug 2020 18:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1597767429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vwO5U/sX6vuxGzKXHQh05KMun4HJTBoRk6DrnP6J4IU=;
	b=oUWYBHxKeFcjQAm9yRYxgW4/jOJGMiydp32FRWBT/FR3BMU00dcBtzWrTUfmGjVb1OJoPe
	176lT9CkNp4fUB6rFe3w4WODMrSBJYeWoeQw/jc/IE5AZ1os8btmlsnG3j3Op8ZP9U7e+J
	5Mn/73zRKjFYa1W+eP82NjTR7re4RuQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Jussi Kivilinna <jussi.kivilinna@haltian.com>
Subject: Re: [PATCH] batman-adv: bla: use netif_rx_ni when not in interrupt context
Date: Tue, 18 Aug 2020 18:17:05 +0200
Message-ID: <6180909.URE3MufrRF@sven-edge>
In-Reply-To: <20200818144610.8094-1-jussi.kivilinna@haltian.com>
References: <20200818144610.8094-1-jussi.kivilinna@haltian.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart55107351.EY56bM8rYs"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1597767429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vwO5U/sX6vuxGzKXHQh05KMun4HJTBoRk6DrnP6J4IU=;
	b=ZET7A+2AypA+GohPXODFU+7Oyy3QCJhGMkvw0BVQcrSl00JiYoHhgWIV4SOm7EZMSn0PdZ
	C5l89RYfSJ+pjpD4Oyb+nA5sF026/KtzL9zo2HQbr24fO2NCry4eCuea9fLubXZmd7LJAB
	T01249i1vZnJox+K8pW6ltjHnyFs+dI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1597767429; a=rsa-sha256;
	cv=none;
	b=gG9qme9+SftrLK4J2WgXHIrMrzPRitvyKINFi4mqogSJ1W6ugW2Dug3dHB7nMII0TGbMgB
	kxzzqvfursK/zvt4W9eC7npjVTi93lX7uWIlOgmhce44TwjwCKFJKl5nr0/2VwFtXPf6T7
	MlzT6Ayk/Do++iaJ/Cw525AYZBUfdpc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=oUWYBHxK;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: VAZ6CYGAKO3KWSXAWBTEQAF26UC677EC
X-Message-ID-Hash: VAZ6CYGAKO3KWSXAWBTEQAF26UC677EC
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VAZ6CYGAKO3KWSXAWBTEQAF26UC677EC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart55107351.EY56bM8rYs
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 18 August 2020 16:46:10 CEST Jussi Kivilinna wrote:
> batadv_bla_send_claim() gets called from worker thread context through
> batadv_bla_periodic_work(), thus netif_rx_ni needs to be used in that
> case. This fixes "NOHZ: local_softirq_pending 08" log messages seen
> when batman-adv is enabled.
> 
> Signed-off-by: Jussi Kivilinna <jussi.kivilinna@haltian.com>
> ---
>  net/batman-adv/bridge_loop_avoidance.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Fixes: a9ce0dc43e2c ("batman-adv: add basic bridge loop avoidance code")

Kind regards,
	Sven
--nextPart55107351.EY56bM8rYs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl87/wIACgkQXYcKB8Em
e0a23hAAgXVUe5XrDy5/8/29s2l8qJa84evfHIxw/FsFsBd+/voY4fLLdefO49JQ
YBCoUp8xLqK2XtKBXcKQXC1zfA51QYR00Q/LnT+qUNZr18aaIKGL0DFoYS18xgoX
+TlFoNZPBLu+RRhBz3+3u26rqQbuD9kCiSoiYaSSGSTF++TTKh40U2Jmbm3/nkpY
vGNQKMSjBHvJg0CA1R6Vbn0qKbmtF2JltPX/js/bp9G+un+d7N7aRzarpqmnhMCX
HzSnqFOdJbIKetmsKIo7U9Yc6Oq/d9mviskejSndwJjH1soyHr7S4G1XGXggHk5w
/JpTM0iszp4dUNAuz27gDT4QImTRfEOL+P1CtLRC6YjvtiQhNekLWFpEOWeQUw+x
oSIwk4AIh2l2hLalspONNxwhwq0bOm94ERg1N9K7CSseLaC9XqpFa1BioLgJRTb3
3XAfSEsul/RMbgy61LHyHlK4ePp17ILPzG3Gl1pe1U5zZR/5Ubi9QSFfDdBJ03Oe
XixFhBKST209LaeM6Sz6SLaMTSGUTytGfeaA/Nvh0GFenWYq0Hb5AeCtFbK+44ZR
hqMemgNa3tbkJ27aiZwuhL0ImhO3OM0B+R/wMt73JrjNQYIerlMropXxcpN+MCPB
3J3YPXq8oSxxJen+8P3eyM3pG1rVr1qQG1wBDOcw2YRzuQTBxo0=
=FKaS
-----END PGP SIGNATURE-----

--nextPart55107351.EY56bM8rYs--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D04F11E0926
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 10:43:14 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A62C381271;
	Mon, 25 May 2020 10:43:13 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 93C3780349
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 10:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590396190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XDDpcPWCzaEkNP1H5G5JY77zqKdNWtPpvZrq9NKOSb0=;
	b=0J4HoERsSVWIU+SyyGqwm+Epo1+q0MOyp1XUvwU844BIWofQutaPyba6u7jj0xAdm+Tm5i
	Wv2znBYrai79cKOEAvPd4Rjwn49K7Ja8lpLrjdHpCC8gzrVkxkFI41eIpjHzyHruYQNA0v
	IktcMrpddQ3t6r5Xz1dwNHU/ztcHRGo=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Network stops passing traffic randomly
Date: Mon, 25 May 2020 10:43:07 +0200
Message-ID: <32459667.Id32LJz2i1@bentobox>
In-Reply-To: <20200525083512.832.13419@diktynna.open-mesh.org>
References: <20200525083512.832.13419@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8417396.2dMom07RQP"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590396190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=XDDpcPWCzaEkNP1H5G5JY77zqKdNWtPpvZrq9NKOSb0=;
	b=jybrd5T0sL6zeBcBgqFVKKaMWO2QQrLFPLRqFHCvngbQECkk0fXsqgdZOyb7uwkPpHuMBS
	csMfAg2it8RhlDIIZWMUtdz0W1tIkXT8RwCEigFiODxYNv736optK8pXuM5nOxKcwONS73
	Mrz9UoTbJJxaAFF3XcJ9UwaKWv772Sw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590396190; a=rsa-sha256;
	cv=none;
	b=Z5oMf8H66AdDO3iJV/7Mr89jm5psmswrYeL4KEuDlPAHGe7FYyEOmX5ZV8dHfCony4gDi/
	TbM6skFhnpJ8xfUEojYj+TbSpTquYyLA7nUZUGHtH0Wy4JeG/+rt9/9e0dhIy1uG0NSiJn
	m1/Oq0c3bkuIiKRfw61QP970T7pEM1c=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0J4HoERs;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 7ZDOKHCWHVB57EWK6PYO5MUF6D2M6M3F
X-Message-ID-Hash: 7ZDOKHCWHVB57EWK6PYO5MUF6D2M6M3F
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: smartwires@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/7ZDOKHCWHVB57EWK6PYO5MUF6D2M6M3F/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart8417396.2dMom07RQP
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 May 2020 10:35:12 CEST smartwires@gmail.com wrote:
> I have been battling a weird problem recently, I have this problem occurring on two (2) separate networks, one with 2 nodes and the other with 3 nodes. What happens is the network is fine and all of a sudden the clients can not reach the Internet, This what I have observed. on both Openwrt 19.07, 18.07. A reboot of the gateway corrects the problem. 
[...]
> root@Main-GW:~# batctl ping e8:5b:b7:00:10:6b
> PING e8:5b:b7:00:10:6b (e8:5b:b7:00:10:6b) 20(48) bytes of data
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out
> Reply from host e8:5b:b7:00:10:6b timed out

My first guess is that the underlying interfaces (mesh0) stopped to transport 
unicast frames. Did you check this by setting an IP on mesh0 and ping between 
these devices using the IPv4 ping?

Kind regards,
	Sven
--nextPart8417396.2dMom07RQP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7LhRsACgkQXYcKB8Em
e0ZZ9BAApJphhuF1Q6NwcyBzSd404f2r8UPhQivsvY7uDtJUr5prTBdX+/QFapJV
ELwck41pk8cuT5SXPATOY9nEXF1Z46YqOQVlrIgo0QlDiBSde+6ZJYOmNsgcklEY
CQTC7tB8FNCjX6upHS0Z3qn/2RTvbUV1jbaf5eCwLArC40f17cDWsMOpSlWK1zcS
YKUY5INcFy5FG5n6YTfvFkzVovlbvPTn8B+ciZzZb8PBeCJ9h48fw8lsosnkMfo2
9zsj18SslvsENfvRiQzsCzfuSynPoJil7GnsBqaLoSLTVYyymxEOy5iBOE9tOudi
riKzM4uHE6xo5GEHyBW1xxd1J7kh3v2tkVQs5StNUTXskt58whCY1XsmJmidrjA0
7hacaWiw0DvBcGA9OzgSPdQVT47YRrg9kxSLHKnZlRRC7CiLu2NCKq1TmVhiTts4
sE5slG2ix0iVpK/d/AQ0eYqlnXMUB+XyRbiqR3lSn4mApfp9FBQ48xwYB02sVjsC
viKX1BFq2G8rYs77uDBF76+SOveI+vTRXVj9nDxxJa+PjFHKnwtZsacnQIB8YaRW
MZl44+rb1YaC3UG9rOpJzpublpnen7rI5z8IEBctFO/9riWE8XdI6+CIxzsQww4k
AVT8kPCEksIWkqc3H431Ga0o129AoY2D8NGTZt9XFYdZoe0m7xI=
=Ri7A
-----END PGP SIGNATURE-----

--nextPart8417396.2dMom07RQP--



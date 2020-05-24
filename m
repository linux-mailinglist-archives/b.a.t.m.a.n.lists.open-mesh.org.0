Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 646941E0090
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 18:28:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 264DB810EE;
	Sun, 24 May 2020 18:28:33 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CBD5380190
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 18:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590337710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tdTg9Kn7EnZQZEAL3QBMG90zrfSTR4t/odM1ySPCP/A=;
	b=iFkQZRgqZMh2NVcNIpapDZcLBO4Gq8Qocs9mLoTSRHfZp48CvWTCct4JsGhF3f2VRkzu8y
	WrXJ6zimkC5cyAB/Spv2XkNPF6bBrT/k7DyqR3f7cxXymZYHB7GMNPMB7mgWtGt73sh0OU
	oFSEhk5FlazlwP3TXPwrVPfYJWbx1ME=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman-adv packet retranslation
Date: Sun, 24 May 2020 18:28:22 +0200
Message-ID: <2164745.TYCVdmGlQZ@sven-edge>
In-Reply-To: <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <4485194.d5W8GeZ6RB@sven-edge> <CAOVt3fE8-U73oJV2XjnxFzWc35LAMeXeaNsTUUgPaLqvchv-Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3568401.2ZN2OWTBjJ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590337710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tdTg9Kn7EnZQZEAL3QBMG90zrfSTR4t/odM1ySPCP/A=;
	b=Vd/qG1IzPmt3nnJKg6U5S39ekMOUCvEQqiWR5CeEUy/LJOImL/7sb97i0Mf5q9qqLYF71j
	3akUY/3BJeaflcAyrwLZheWZhcjSHYhsgFW59FltRoaiXS3R5KhppPZFP+IsS9FaGuDxzG
	aZ3eCBVV8RQKuu7UsRlRNmqBfraFVoM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590337710; a=rsa-sha256;
	cv=none;
	b=S/eqIj1mkNJNeK1sK7eVwPdbclJ2bjgmbstLhJIsGjXhlTEsmkULIejJdhGdplzZHIqPbx
	QC3Ao49wUGqP8VhgWI2Tt5sF/gkogyEMlNRVw4g8UzXCmFYB9ffYDMUsjg+uaUCzJqHz7u
	q9JXfmQj9MbpUCepzAJi5HmcZC3ObOc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=iFkQZRgq;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: UIGWMAU2GEPBEDPBFMODPDSRX2ZMV6ZM
X-Message-ID-Hash: UIGWMAU2GEPBEDPBFMODPDSRX2ZMV6ZM
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Alexey Ermakov <axel101@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UIGWMAU2GEPBEDPBFMODPDSRX2ZMV6ZM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3568401.2ZN2OWTBjJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 24 May 2020 16:43:55 CEST Alexey Ermakov wrote:
> Sorry, I didn't provided full information about experiment conditions.
[...]
> 6) batctl hardif eth0 to 100                NOTE: If sklip this step,
> all works fine!
> 
> After this I started host bridge interface br0. NOTE: if bridge had
> started before batman configured all works fine

As Marek pointed  out, you told batman-adv that the  eth0 interfaces have for 
some reason a link speed of 0.1 [Mbit/s] (or 1 [100Kbit/s] - what the actual 
unit is for B.A.T.M.A.N. V). And unfortunately, 88% (for the hop penalty) of 1 
[100 Kbit/s] is in integer arithmetic 0 [100 Kbit/s]. And 0 whatever/s is just 
discarded by B.A.T.M.A.N. V [1] and not considered for routing traffic - hey, 
this path ends up as being 0 and therefore useless.

The reason why you want to set the link to 1 [100 Kbit/s] has to be figured 
out by yourself. But for a (during forwarding) strictly monotonic decreasing, 
integer value, it is a bad starting point to set it to 1 [whatever-unit] for a 
multi-hop setup.

Kind regards,
	Sven

[1] https://git.open-mesh.org/batman-adv.git/blob/e946e0beec5764ed5182943bf764f8793f1364bf:/net/batman-adv/bat_v_ogm.c#l880
--nextPart3568401.2ZN2OWTBjJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7KoKYACgkQXYcKB8Em
e0anYhAAjxWWQ6KsBREUHNb3dho2TfVRiSaOMgnaFGDxYxZeMV7HetFFsFPYwjas
JLNZaZqKBOkdru+9Z0iG1tYjaypVhpbp6mefUY6qCwvgkBzaMVmNfv33Y4JYbas8
WNfl4gy/7TowaEbDQTRKz3VkR6CoXIB5Vq2eZ9I/siDn4VBmsApgFgRwbnCe3ecD
5W10JJe9HePLROT5aDYc/u7+JeuvYDD6CA5d8jtH/14+uWNOtrPUcTPgUvwA6qR3
vFvDFaaHMIKkBo0njfdS2qTkovKOdKzHjJjw/tV4Pw1hjnbtP93CbgnKrbkCc836
1JA7dkWjdg16byi2iCV7zYHHhPjb/X/QysyN0u6RY76NjXFFi8ZIi7b9Uyo3pM2a
CNlDys826q0Et167SvxsOCCtrTbpVOWwVLLl7UPeAXYLCyAWsLqatnTR3L+pQ2lW
BPOtO9GEI1KD9p9VNGWAWG+MEYQsU3QojdcSAytqAnfvSwycEC/YwNEF8+GJNlg+
gaOqvcyJgYTNc5hecLfyFmAUuNGvVf15ZNCmJS0ZXwEVlVGSbTNLBHon0ml5FE0Q
/cnJOaUQSWpODdkN4nyISCbgwgUMQ3kfV5SO3srmwIbCxXgNpHwr8iG/Mvkb/JJb
yJz9+IX7Sh5Wu9pbqu2zX1c7hNAovAmQle1XXGjenpdrJEzinTc=
=Rp4y
-----END PGP SIGNATURE-----

--nextPart3568401.2ZN2OWTBjJ--



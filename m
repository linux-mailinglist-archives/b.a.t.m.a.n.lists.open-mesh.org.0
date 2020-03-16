Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8124A186D6D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Mar 2020 15:41:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 40E0680B7E;
	Mon, 16 Mar 2020 15:41:24 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id B4F20801A9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 15:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1584369681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B+fH9mFlHFdm6VGeEBukJi9J1vkVjyvHFjEbqwD5BvM=;
 b=1GOuReU3zLQIV20dOyqTPZ1oG8Fz19seDwy5so//zpWJ6veRPRoYWUIkvrbJ3FwPYZ3e13
 k3+zfmwlmoi/hl7d9tlfNwP6wkmu62iJC0gvoI6UrSfmkffcal+EDWfw5BHAOIewo1L1bL
 zRiBHtvgxCCpPPU3dNdqgX4WG5qMFZg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batman-adv gateway issue
Date: Mon, 16 Mar 2020 15:41:11 +0100
Message-ID: <5958820.XUMrd2Zpsg@bentobox>
In-Reply-To: <CADSehqO-iKQ9BVWd_WjR28uZmpwmmLLjctg6AQj_xMAHvtRPdQ@mail.gmail.com>
References: <CADSehqO-iKQ9BVWd_WjR28uZmpwmmLLjctg6AQj_xMAHvtRPdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1786744.QDPt55KuLz";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584369681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=B+fH9mFlHFdm6VGeEBukJi9J1vkVjyvHFjEbqwD5BvM=;
 b=I6lWEo+cLkjoJBGk1+YpVngDzpVn1rmsCAUSeuUP0wMnnABjvCPX63ECOm/lBnnExFL/bH
 Zt2yyUpxME8DgqJSfuimYyQw+KGFWXvPhIRSoy+/6Ms9pSf4Viwt6IX6r49LidQptv8HAf
 gl0MNbGZDFcTzaAYp+SoJtUxS2V/xX4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584369681; a=rsa-sha256; cv=none;
 b=q9z8ukJq/2ZXiVgy/AhNsVGNa8x7XKW3ObGYHa41ABlis6e1BK0tMYT5RAhuohJPvV0QOW
 zievB4kdQCDDkbXt5ekOk9yQVE74PIDJZlXOg3Rs4wPWZEAaDs48w+ylouopaFgM0qnhY3
 PXFyGFOb3k7XLiimSGIVtwQRZP9vIf8=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=1GOuReU3;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1786744.QDPt55KuLz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 16 March 2020 13:15:18 CET Maksim Iushchenko wrote:
> Hello,
> I use batman-adv to create a mesh network and recently I faced an
> issue related to batman-adv gateways.

What are batman-adv gateways? Are you talking about the batman-adv gateway 
feature? This feature is only about IPv4 DHCP (broadcast) requests.

[...]
> Please, suggest me how can I distribute default route to all nodes in
> the mesh network in the case where nodes have static IPv6-addresses
> (and also it is necessary to maintain the actual default gateway on
> the nodes). 

This has nothing to do with batman-adv. Sounds more like IPv6 router 
advertisement.

Kind regards,
	Sven
--nextPart1786744.QDPt55KuLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl5vkAcACgkQXYcKB8Em
e0ZARhAArCOJwRgVFHyA9CTBQ2P/9f4C/FPp0XW0qTARH5SQfL5ut3CfsLLoFuOi
vVXq1wJEzAIE0PYRJDsL1caXbBpKxvw0xKWQU6hu/gDkeecj0l/MEwWD+p/ciyNF
BhSLW2mYimYBjk+YOei+jgE3HhXKwHQJtNDdr8J4ax7DpnwpP5gRP9W0q63qdUGs
/Fl6zEYMlOe9pYRUMcMb3EcUTXKLQ9DvQcNkUzl8Vq6MCLC+mdm0O9f11/UOc6h8
tq7FOhri0jhsF7QN37IgBOpyqcw/ppKYxD2eJc5q4KYhjqXECU0S2f3E/OpEl6bf
TJ3em7TkQmDyWOggt6XOLeuo+klNUhDzd3cryo3M/KwIC5J56oUGzfRq8sQsqT/o
YAa95rqLUQRbamV8Ou0xeYCekk3A3d438sjuYF2nmGd0oPkP4To5nYKY9fMVEe2P
mIhqaVmqhoBhvGzX7LXKwiTW+PKoB2mhhLlgQepo9lw5RLaC8a7OHeh68lMcEnF/
ZYSRw0oZWXuyr58vV0+eZdGkXjAEl3vLgYkOp11xHqbsCVHsC5zGemfDwBqxjAFw
xqHvkkRKHWUpnFD+gO+qcTMb0AMq1AlxdxZdsh6M9rzujTnWcVhWq/2LfwTQ2ZNi
EcXmDIO76/iTWs8gQWJEas/nBADwvukDn1sgatSzcsh/8Z0hbk0=
=PxYw
-----END PGP SIGNATURE-----

--nextPart1786744.QDPt55KuLz--




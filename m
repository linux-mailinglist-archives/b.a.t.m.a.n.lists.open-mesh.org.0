Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ABBF6C07
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Nov 2019 01:46:45 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B8BF7804EE;
	Mon, 11 Nov 2019 01:46:28 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id 0C9C280011
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Nov 2019 01:46:14 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: Xuebing Wang <xbing6@gmail.com>
Subject: Re: Any suggestions about configuring batman-adv gateways + modems
Date: Mon, 11 Nov 2019 08:46:00 +0800
Message-ID: <5348117.QQCNPljNj1@rousseau>
In-Reply-To: <CAG5qQ7jY2YqyUdx6=Mw=OWbLF0avwibJVQn5YHFqGC-+nPCkXQ@mail.gmail.com>
References: <CAG5qQ7jY2YqyUdx6=Mw=OWbLF0avwibJVQn5YHFqGC-+nPCkXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1737812.ZA4CCKpt2d";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573433177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=h2fwFqEhL6A8pnEauF9SZVP+o9kSG+YZn4b3sCIHXQ4=;
 b=h9qe5AEFAynBz6BUCCnQlsgMFPh6VOBOqWJQ0R16LLqxIgSg0H/GthZhbMcwD0YAeQWWiz
 uQb+JU6qgwXAvLAVrbMYRNsrtNWohVY0M6FIdTgRfikyeVaQg1AHSWmQ+5eOgTLA1gfiZ3
 IommpZpj3Q351knj4MWmHvF+C6/XAn0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573433177; a=rsa-sha256; cv=none;
 b=b+7PjRwjVzTgpSSM1d0v125qrOTuz4t9xrxHm9a0UumjDJSiWUi7etsmi01cWsw+VPtrZn
 F8WuV94HIuAwwqvbtX2ein+Y2BpiZQDdtUmqzx8Bcx5vjgmJAXzF3FPVcUiCJ009KazMWw
 YR1PioNCpMjtO1deC5bBIjRVjw0RWg8=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of mareklindner@neomailbox.ch designates
 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1737812.ZA4CCKpt2d
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

> Thank you for your help, as I did not subscribe to the mailing list, I did
> not get your reply. I subscribe to the mailing list now and I am writing a
> new email thread.

apologies, was not aware of that.


> When modem at gateway (for WAN uplink) is down and loses internet
> connection (but batman-adv connections with clients are good and dhcp
> server works good), can batman-adv clients know that internet connection is
> lost and "roam" to another gateway with good internet connection?

Seems you are looking for this:
https://www.open-mesh.org/projects/batman-adv/wiki/Gateways

Kind regards,
Marek

--nextPart1737812.ZA4CCKpt2d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl3Ir0gACgkQU1VOj+62
HMADEgf/ZonMgGvL3FIgvuqQICr6ff1bG0FzoQ8ZNo/DV3wPSU+dFZ3qXvr3e5qE
rjaKZ6BT2v6DxfMkTlH8rnX/EM6elEZO7renFD9HoHfTacPZ6K/lEhw3pLs4t6H6
BBZ2xyc0adX7qIZWMkUIP9oEsiF4LOERtTU6GGw4NdRbgx+JV56WJZCBdvlT+Hww
7sz+fdw9tZiD60HBexKXCnMb+TY8AhAoxffcftTchFPLyrDvw9CbABtutTV9/1uh
T5zqw3nprsSheUkAmlm7mZLtJNg26+D40ghmp23Gz6vm6fvIj1L+bkjnjYJ3xDFy
ZA/QV92uJ2jBd7T3fERCy0a9svyc5A==
=g0gl
-----END PGP SIGNATURE-----

--nextPart1737812.ZA4CCKpt2d--




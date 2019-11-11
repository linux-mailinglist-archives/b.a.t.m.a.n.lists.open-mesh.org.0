Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C543CF6C58
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Nov 2019 02:38:23 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8163A80542;
	Mon, 11 Nov 2019 02:38:16 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id 73BAF801A9
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Nov 2019 02:38:11 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org, xbing6@gmail.com
Subject: Re: Any suggestions about configuring batman-adv gateways + modems
Date: Mon, 11 Nov 2019 09:37:59 +0800
Message-ID: <2770026.qIgyRiqjke@rousseau>
In-Reply-To: <8b190923-5db5-17b2-da46-538b377d862a@gmail.com>
References: <8b190923-5db5-17b2-da46-538b377d862a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1986170.X7SbLmUq57";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573436291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1V6RjNG9IVvjWLRCKsMyk7YU+lYjzN/CB6cVF+Mjo5M=;
 b=RJgfUdnJ+iNnXeyMSU9xvdp+qN0vdsmDWdqkrBBSGv5sliOr+zUa3ZiFV+qr459Ys97xrC
 vTlJAz2cmDz6UMB2DdaWJkgiBd3r1dWR183fKmVfQWKT5ky+VHr6mWlhI+hX1/VNgO2UZF
 Cayt4hkkuW4Uh0wqR6dOPym6jJNiO7g=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573436291; a=rsa-sha256; cv=none;
 b=o678bJ6EzQe/InzedEKendCvn8XwtZ/2cwCpWbwLagMv0BLrxlDgmaUi4O1H7bu/FDqDHi
 T4Ri7tTGlqED8rYNzejX28UPyETNmnJJxyLcUBH7O8N8e1Xe8iYVnUJ8sfCvo9fWzYJELn
 kKmij3KcldBALbyL2gp1dbX07tMtO5Y=
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1986170.X7SbLmUq57
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

> Yes, batman-adv gateway is what I am using.
> 
> Do I need to write or find a daemon at gateway to sense internet
> connection, once internet connection is lost (and does not recover
> within like 2-5 minutes) then advertise batman-adv mesh network by
> "batctl gw_mode client" to turn this node to be a client?

you can have a mechanism to detect if the uplink connectivity is down and then 
have the batman-adv gateway switch to client. When the uplink is back, you can 
switch to gateway mode again.

Depending on how your uplink works, you may not need to write a separate 
daemon to check (though you can if you want). Most uplink solutions provide 
some kind of scriptable event for up/down changes. Depends very much on your 
setup and what you'd like to react to. 

Cheers,
Marek

--nextPart1986170.X7SbLmUq57
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl3Iu3cACgkQU1VOj+62
HMAIewf9GsRKaRoRT8xehmsxdKdq6xW5WXgWkVXnuF3/8p0t+3fN4cdaLo7B95m7
kucfarAoAhZDt5vfvyw/flyCcNLiO4DRmXpXEyh/5SbGqfmity+Qm5B3ix0wyIFg
YNznlB+6WCwvAikc+U0HbFbGH/LMsnUBQuRGyTkU7xuxGXbQvD/l1dpe2NF4KcZ9
hZREfUitBk5Ofr1syzEhJULtGNyw6cUXewWLWy9mPY++17JIbqxE0XfjN2WxDlWI
eRW3z98Ad82/0CZDOU56mcU/qYsmepXmpIdS077ujXBSm2GqHtlJiqxm6teDEsB5
zdT5j1HZoz15D0fsqRVTidWC+bPARw==
=SdU9
-----END PGP SIGNATURE-----

--nextPart1986170.X7SbLmUq57--




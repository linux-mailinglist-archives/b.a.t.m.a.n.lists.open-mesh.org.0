Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4857E1E0045
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 May 2020 17:55:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2CD0681520;
	Sun, 24 May 2020 17:55:48 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0B09C8021B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 May 2020 17:55:44 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman-adv packet retranslation
Date: Sun, 24 May 2020 17:55:34 +0200
Message-ID: <3386019.DEOV3mvQ00@rousseau>
In-Reply-To: <CAOVt3fHXmMbTeg1SN9Ngpf7ju6FeUvWzFa9ZsSBLuVhjF503_w@mail.gmail.com>
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com> <6286065.m5U1xfpyP1@rousseau> <CAOVt3fHXmMbTeg1SN9Ngpf7ju6FeUvWzFa9ZsSBLuVhjF503_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3192778.bLTUk8KIK0"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590335745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Mq+8AmU2FWew24oN4N2LGCqvx0NuNzZERAH2Zg6TEHg=;
	b=hGrplYAtb+Q3JZ4zt9PLgCS0quHyhan6nPo+ktZeYC2E+Y3ZBh1qwfFql1nV4BMNV8Mt3X
	KxQovf/ExU/SdHgH8RITTiVm1zfoW31Xbms+PI4SQLRfeVad9nMrfkT9dx8I8odLzWI/XV
	gDX7E1kMc5k0HJZuA4WfJ0xAx1K/NUw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590335745; a=rsa-sha256;
	cv=none;
	b=WfdoOwh/8DWwGdrWVjy8sxdh1LNjhnpvj1mT0H1gpzI79O/JbHJQTgkcOhXlIK5EMBFIzy
	HOGWTwotzSGSFjOwZcI9i4twnIIBLCvgbIG4jTipw8KjOasZ9M/XJqwMyTHqAqVMvHD4br
	JmCjiWXU2HNJ4wXKP+PfU9M8jO3kXyI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Message-ID-Hash: 5W2ZMKKV4FUXRKG5W5RLWULKBJHDUVMA
X-Message-ID-Hash: 5W2ZMKKV4FUXRKG5W5RLWULKBJHDUVMA
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5W2ZMKKV4FUXRKG5W5RLWULKBJHDUVMA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3192778.bLTUk8KIK0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 24 May 2020 17:49:23 CEST Alexey Ermakov wrote:
> - Why direct connections work properly (I mean connections Node1-Node2
> and Node2-Node3 ) even with this throughput?

Batman originator messages are not forwarded when the throughput value is too 
low. Furthermore, the batman algorithm applies a hop penalty on each hop which 
reduces the metric with each hop.
That is why one hop is still works.


> - Why this scheme works then all nodes had seen originators before
> throughput overrided?

I don't quite understand the question, sorry.


> - If I override throughput to 10000, for example, will it work properly?

It should. Why not simply give it a try ?

Kind regards,
Marek Lindner

--nextPart3192778.bLTUk8KIK0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl7KmPYACgkQU1VOj+62
HMB4KQf9EpBOGR/l1jIrLs34um4i3TmgKZAMz+1BQTG3BL0xhsuoRceDxlp/xulR
rCdjr+fy9o1VPD0yUEPhS9RVXmps/cKr2CYbk3+IJqNhXbp6HVaM+i+avf+wqR/S
fm2ntAY3vVG9dhTKHEQcJcx06Bt5TIwHpatUNPB0YBVu94Gke7lJxFdZyFFSs46l
vJ71m5lKhMrsegkPEbtKJGsys1RlzEWfMFN9hMeNumUrHwwS1WKdNrtZ0LtJT9+j
1qyMW1NiOish3KZyXTWKFrPCmjTaMecWptgRwKHTND0lprWfmMtLbivxcUWMfyWT
jb8LOrcoHhCsc3dJzHkH/m6oHcCopg==
=zV+2
-----END PGP SIGNATURE-----

--nextPart3192778.bLTUk8KIK0--



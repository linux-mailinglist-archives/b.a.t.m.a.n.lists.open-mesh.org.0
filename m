Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD37529B48
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 May 2022 09:44:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 36B91809D1;
	Tue, 17 May 2022 09:44:21 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 64E618073F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 17 May 2022 09:44:17 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v2] alfred: notify event listener via unix socket
Date: Tue, 17 May 2022 09:44:07 +0200
Message-ID: <10034333.HCmk49s6kI@rousseau>
In-Reply-To: <1727325.kRQH6uYu6r@sven-desktop>
References: <20220502114651.771309-1-mareklindner@neomailbox.ch> <1727325.kRQH6uYu6r@sven-desktop>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6068079.UanAL4W2Ky"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652773457; a=rsa-sha256;
	cv=none;
	b=gNimQEmLuYQZLm/KgE7cs5bZgwioJLuMBXiD9oxv5vzunTxWmsTQci6Jt9k/85wd3N38Nh
	buccvrnu4QJLLLy98VYITLPbMxTiGsdPa73W6WaHWGcMg35L4G4jmM/WIq9YyjnJSNsaYa
	6SExs1Us9nntIPaVon2AfqjI+6EBySU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652773457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CxDm0AGxunAVcXKy+CbVgdy9Q4Au5AnknjuUwk/0UTo=;
	b=0C4P9gpiLkuLMYe9nKaG2NLulFxtLzvzP9AVVxErM+sFrwxA2c9WSWSviEpl5eyCeSD7vA
	ydIkmx7AC7lucDGGPXaAUupu/q2U5Rz1OKP7Nbek8jJjk42L4lp1GWui7B+1HimwGoLhYP
	HWRyjHqEwMkuLFfxoJ1EcGUzL+sD860=
Message-ID-Hash: CLC6AWTVGCSBAK6IFSOEF5IHSONDRCET
X-Message-ID-Hash: CLC6AWTVGCSBAK6IFSOEF5IHSONDRCET
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CLC6AWTVGCSBAK6IFSOEF5IHSONDRCET/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6068079.UanAL4W2Ky
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v2] alfred: notify event listener via unix socket
Date: Tue, 17 May 2022 09:44:07 +0200
Message-ID: <10034333.HCmk49s6kI@rousseau>
In-Reply-To: <1727325.kRQH6uYu6r@sven-desktop>
References: <20220502114651.771309-1-mareklindner@neomailbox.ch> <1727325.kRQH6uYu6r@sven-desktop>

Hi,

On Saturday, 14 May 2022 11:51:38 CEST Sven Eckelmann wrote:
> This version cannot be applied on top of the current master. I have attached
> the diff for the things which (afaik) need to be changed when you rebase
> the patch.
> 
> I have also attached the change to support the reporting of the source mac
> for the changed dataset.

I like the epoll change (to avoid unnecessary clutter) and also the source MAC 
reporting. For debugging purposes it might be useful to know where the change 
came from.

Thanks for preparing the rebase & code change patches. Wouldn't you say that 
EPOLL_CTL_DEL somewhere near unix_sock_event_listener_free() could be helpful?

Something like:
-static void unix_sock_event_listener_free(struct event_listener *listener)
+static void unix_sock_event_listener_free(struct globals *globals,
+                                         struct event_listener *listener)
 {
        list_del(&listener->list);
+       epoll_ctl(globals->epollfd, EPOLL_CTL_DEL, listener->fd, NULL);
        close(listener->fd);
        free(listener);
 }

Kind regards,
Marek Lindner

--nextPart6068079.UanAL4W2Ky
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmKDUkcACgkQU1VOj+62
HMA06Qf/eBSCN2ELpUFBphUDZbOzYX6P7X6tVFMEqGYqkJxaEHBWf8sndUUodqsg
x4mUCN2ImDHmWkhBLRhiuk9m4/2F4nIymK6GdacUC0ivz/BkPmsb0m63bDM00oyN
D1EwIjaKIHB83zk3MM901IJH4JhaB2umMbWsq7e8t3fTWlid4shRSdTOTT11kZUj
mo3nRvA6U+FbM9yj8VVf5e7DBIOnFmP6eEoHlm0Rl1nkRl19Wn/zQyqNkvGgthCR
hQUkZj/f12TTiZhMcWkIoxmJPLE1kzgiOZvC8uz/0Rnbsp19TiWG95HE7y55UX5W
Yuhd/PDohx/Tba2SsW78dsy2VGpW/g==
=K/zn
-----END PGP SIGNATURE-----

--nextPart6068079.UanAL4W2Ky--



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EEB52A073
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 17 May 2022 13:32:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C26B826C9;
	Tue, 17 May 2022 13:32:48 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 79DCF80146
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 17 May 2022 13:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1652787164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u9BwNLM2H1SNpaQkZ+1rkbfZCIxq2/fmb7fxKOLrz7I=;
	b=D3GjJ+/gxmjRywdsVYSHZJycaxvHBrqOiUpnOIGZtPmwY076YQPqfsUogFx2FHQO2v5dJG
	M++UY7WGlA22VtOa5Wxp43kBB4Og2Ytj/3SJcR/rKaCX7AxkQGGCiaA5Q9P0mqktEkP2KF
	3hYMcSCnpUX2CfhNgeFBsxjt7NThKPU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH v2] alfred: notify event listener via unix socket
Date: Tue, 17 May 2022 13:32:38 +0200
Message-ID: <150256550.B0Qo63onoq@ripper>
In-Reply-To: <10034333.HCmk49s6kI@rousseau>
References: <20220502114651.771309-1-mareklindner@neomailbox.ch> <1727325.kRQH6uYu6r@sven-desktop> <10034333.HCmk49s6kI@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3002785.Nb0gmuCmfD"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1652787165; a=rsa-sha256;
	cv=none;
	b=qClC1F0TcMdjbaLoUTvJqwFQq1GVmhttLAyeXGWQv+yj1Qp8PHWeDIws1YqbsrdF90sSUy
	7M5I7IEvgEQ1Zw53fu5MJ+oc61Yrn3L7rx3ovg1jQ0iWscusr1n5izfL6CY+jNiWGjvZtB
	MmaHB/uLvSybocnGIlqQfMPXR728yIc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="D3GjJ+/g";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1652787165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=u9BwNLM2H1SNpaQkZ+1rkbfZCIxq2/fmb7fxKOLrz7I=;
	b=WZyzs4ehjwgtyHfgj1HtnrUrUPi47Eo1XeZomnsifQDuznQMa1IbukDGGQfchDx4G9MlmX
	mA11qTgpN90yd1mghei6zlXuO7VZEAV381RgQEilj7wKi4bhiufoIc2nPIQklF1r+GuyBp
	Rwv5c7Be1Pg1UwUZq/kOMheDqxTfWvQ=
Message-ID-Hash: PVKL5SYU4DMEBGT4PHZ7IWZHEQ62O2X5
X-Message-ID-Hash: PVKL5SYU4DMEBGT4PHZ7IWZHEQ62O2X5
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PVKL5SYU4DMEBGT4PHZ7IWZHEQ62O2X5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3002785.Nb0gmuCmfD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH v2] alfred: notify event listener via unix socket
Date: Tue, 17 May 2022 13:32:38 +0200
Message-ID: <150256550.B0Qo63onoq@ripper>
In-Reply-To: <10034333.HCmk49s6kI@rousseau>
References: <20220502114651.771309-1-mareklindner@neomailbox.ch> <1727325.kRQH6uYu6r@sven-desktop> <10034333.HCmk49s6kI@rousseau>

On Tuesday, 17 May 2022 09:44:07 CEST Marek Lindner wrote:
[...]
> Thanks for preparing the rebase & code change patches. Wouldn't you say that 
> EPOLL_CTL_DEL somewhere near unix_sock_event_listener_free() could be helpful?
> 
> Something like:
> -static void unix_sock_event_listener_free(struct event_listener *listener)
> +static void unix_sock_event_listener_free(struct globals *globals,
> +                                         struct event_listener *listener)
>  {
>         list_del(&listener->list);
> +       epoll_ctl(globals->epollfd, EPOLL_CTL_DEL, listener->fd, NULL);
>         close(listener->fd);
>         free(listener);
>  }

No, alfred doesn't share file descriptors and thus close of the fd will do 
this for us [1]. 

Kind regards,
	Sven


[1] https://man7.org/linux/man-pages/man7/epoll.7.html
    "Will closing a file descriptor cause it to be removed from
     all epoll interest lists?"
    
--nextPart3002785.Nb0gmuCmfD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmKDh9YACgkQXYcKB8Em
e0bFhw//Uh+OS5sbFzW8niO3tpN+1aXzK5mQ9SvUcf05uvbcSfuYUFQ5KUvM77V6
dNXRlBWJ84MjJU6A0Oxga6wyFR47UysM/nbRO91Xxpob0WXZ437i15MoHH7mvOw6
w6Hha3cLAFhiCRyMSnlYv1R99CArSPB2DCruWGCmE4C+hgM3cqUdXVHOQNTpiAmk
4YyS7FsZFvBZyySZwo7NRZtrTs+aYtv+SIrN3FO6hjcoeO6lA4VEZxAHuj9Lm8nt
7Igcd68/kDE0ZlR/iRn86qyaFKxjmXmV2MK++aMvvHAO7OFshrl72sVzPr/8Js+E
a/rEoj22kkg9ZFGQx8qPInK7g3lltZ2iw+BIXfHIdder8E2xwxNCi2CX/+m1H5tp
WMxdXerzqEb5dmmB39OYWYnIJueL/2S1x7WJVVaklnA9j2PJLHi10U9TedBlzs1k
uZKo6dtm29ewqFj4XcDIukaZvKkYZnu1kl5wtgC+IAIIPhoCT5dlHSb093PZYMNe
Z+tk4zPmmMkvOm4XK2p/6lGExcuQC30Xnpngw9VtyvBqV+5ygEqBwRGhKB/uuO/M
Jhi8714u7DUdhS46IvRMISrdLMv4BI1CYojEKB9EZJc+8PsRAFd2HjljVRvmgDoM
HpHQ2PU8N0pVCERZLCk5RIa6TOAR7c7dLQaDz6rBEX/ooTQYcvY=
=IxM9
-----END PGP SIGNATURE-----

--nextPart3002785.Nb0gmuCmfD--



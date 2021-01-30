Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A030937C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 30 Jan 2021 10:36:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9C843810C4;
	Sat, 30 Jan 2021 10:36:48 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 43881803CF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Jan 2021 10:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1611999405;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RzJua+UoEqhxbjtjH1GXAe47p5L9fXSMHmyKED6ZnkY=;
	b=0PXy4oG0Kt5GuhFo+0gXPYbNZMxXZlAvVWFHiHCZbsNOSTy0X1pANi6drM8Wb/5G7XnOzP
	P1VGzII6slRjiMQkpaVfzYUT36RNoRKBNmZ1gKM7liMOl2DMo8bhipUAMyd03dGWDzovZa
	jtTSLME+DRu/XreL0c9XF9EJsvBH2oI=
From: Sven Eckelmann <sven@narfation.org>
To: Moullick Mehra <dedamamoge@gmail.com>
Subject: batman-adv: User defined nonce in packet header [was: batman-adv related query]
Date: Sat, 30 Jan 2021 10:36:42 +0100
Message-ID: <1708045.1bVLHfgjVF@sven-edge>
In-Reply-To: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9597460.aHTAh1YC2F"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1611999406; a=rsa-sha256;
	cv=none;
	b=bM+zrxF12EjmOtIlJ0FFxRmP4l4BQobZPKAjwl7CA+Bn/H4qhblEuHJc+AMTbX+MKOsx+K
	Qy8syI1307Sjz+kUH3gdQ2pgSP+fAbsMVd/H9QEiwHEiTPi6+NnxOfBAqZqtwEocoWCN9D
	vRoWhDmEGn0JPt0CqXTryqiPHfarzio=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0PXy4oG0;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1611999406;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RzJua+UoEqhxbjtjH1GXAe47p5L9fXSMHmyKED6ZnkY=;
	b=Ujuy2EbJIN3dQecB4WSoxkIvEuBgy3RnwJYuX5cqu8AJBYr12UuoSMwY4Y4PUYSeSe9u0w
	dAhp0/bB9rzn/63DI/5HGOAdvI+x/X3RpSGb4jie48vnCTgK/c2b7RymT7qQtp0sdluYIQ
	Kqf8S4c2MqBTPfm6AjnY88LPbh0aEjw=
Message-ID-Hash: ODYBJNBB4PZCZNE7UPAB2PFUPK55ZVJU
X-Message-ID-Hash: ODYBJNBB4PZCZNE7UPAB2PFUPK55ZVJU
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ODYBJNBB4PZCZNE7UPAB2PFUPK55ZVJU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9597460.aHTAh1YC2F
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Moullick Mehra <dedamamoge@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: batman-adv: User defined nonce in packet header [was: batman-adv related query]
Date: Sat, 30 Jan 2021 10:36:42 +0100
Message-ID: <1708045.1bVLHfgjVF@sven-edge>
In-Reply-To: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com>

[please use a relevant subject when writing to the mailing list]

On Saturday, 30 January 2021 10:25:51 CET Moullick Mehra wrote:
> Is there any way to add a nonce value to the
> packet header? The reason being that I want to add an authentication
> mechanism where the firewall permits only selected headers that have
> this nonce. Hope this makes sense.

Not with the mainline batman-adv. But you can always add your own changes to 
your code - making it incompatible with mainline batman-adv.

But I would highly recommend to handle authentication on a layer outside of 
batman-adv.

Btw. "nonce" is a "number only used once". And you wrote here that the 
firewall only whitelist one specific nonce. Which would imply that your nonce 
is not used only once...

Kind regards,
	Sven
--nextPart9597460.aHTAh1YC2F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAVKKoACgkQXYcKB8Em
e0buSg//SKAmti2Z5h9tmTjHrgQHvfkqC6nf4IxugxNmlCq3Vt3goFEpm58PppNT
6ONsIMLgGceLkH7YHMDRhXg6uUuJSlkFpcvoGtc1nlEemDVQEBJzrwtTIBjoy757
9ym0bpi3dIMqzf5NET5/GocJTQNt1CNE2EFz0FlySNqRylBcwgIp5p8AurnEnLg7
/hvZ3MRn10z0WH2+g3UbcBelgNyVGpK9ZLpcVmL2f2PCdx1dP09FZ7tuUFt3oChJ
VTwwNZfRyvSh+aj/VpfHz9Eel23nLMHBkxDqBqOux609ML/tuhHR/2XU1IzEvV+b
vpE/ZGKfvE/gQ71ezIT29P0AqSF7gY1HmjjH8fpZdsWwXqZuoSle6NrY0nmS8ILE
7ayHPH/UdGW1JRqt4lbAlsVz2ip384qrPDRCau0TJVtWM5+nbtp1y30cJho/dEvl
8emhnxBG4jHUeBjs1O+y8qWxj0rErDL4wK+iUt7LnDRgVxaOUhpPBRA3xGpy4kFr
MjAuZPQBMwSuGUqL2ZBdX0q8ONBK3dt6cz6w48k88lmvi23eDIXj3oOUE5PkRAgu
PxetbefMD/Xzhm7PaX9IvtAcA/fwfR/BhVGfY4hDgLCIlokUs546SdsIBNS4+1ED
HOVpl8hWO+OrRKsPfAVi2QWPZZqCRzQcNcXoQ0/ezKccLVxz9B0=
=wFrx
-----END PGP SIGNATURE-----

--nextPart9597460.aHTAh1YC2F--



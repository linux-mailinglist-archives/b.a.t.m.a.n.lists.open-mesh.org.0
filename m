Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 127E11BBC3B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Apr 2020 13:17:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8FBB8104E;
	Tue, 28 Apr 2020 13:17:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588072646;
 b=1dExtiJXE2wCs9u4qBWXslIiFu72Ub/w9OwvFDeHrDbBTZPohyhclkV46l7wtoA0Z5Onb
 BMA1ZLAS2GFUlKOXeS6IA4PtH0iGRy/eMbBNI4Bqc9bLfE8t9vRzaBlFF7c7lmU6mj1l468
 M2bdReRIqSCyjp9nnCCmNnRvXQR1eOo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588072646; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rlJWd9SYrZQM3Di4OUaMy9bZI7cuYNGfyXGnYFGj9JY=;
 b=WUSfqVAPTacG1GNGqOdQX70wfuVJnJSO5vEzWqxM+Fvt6G1PqSiv5FSTm8eqRaXOkIV7O
 7c5cc/An/SUocLV/mTrfNq78C+t2XBQnfWnf+MvY1iSVfaKSepEjl3IA8l135ba7KfOWR7W
 heamQueZpo3hTTNQ5b7Ow9n/ltwl5eA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass header.from=narfation.org
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org; arc=pass; dmarc=pass header.from=narfation.org
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7BC8780968
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 13:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1588072644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rlJWd9SYrZQM3Di4OUaMy9bZI7cuYNGfyXGnYFGj9JY=;
	b=UTmiZN0PIhJsySsytqU83nmFD2juStDYsM1uZbLlQxIyDJXgmJZRaIh4keQWIrYaetBWd5
	zheToGXSZcRb7lP5yE5VmI5RRb7YKgmzAV43rJfl4YT+CPOIcnLH85Cn/BVDC+lLODjqHS
	ScH/k0vDEFM66fcjMnVtGL+aNNSYF/0=
From: Sven Eckelmann <sven@narfation.org>
To: Oguzhan Kayhan <oguzhan@kayhan.name.tr>
Subject: Re: configuration issue
Date: Tue, 28 Apr 2020 13:17:18 +0200
Message-ID: <6242566.y7phzM5aPs@bentobox>
In-Reply-To: <CANKYHpf+GVA8zWuc-eZXh_6aW5FkpM3Oj3QbTKiTkfDZvUgGHA@mail.gmail.com>
References: <CANKYHpeiWj7w2KEnkEfjUHWKfbhEAj7kMVE5hL5xv6O_1ZVFwg@mail.gmail.com> <9817716.HyuBmzvnZK@bentobox> <CANKYHpf+GVA8zWuc-eZXh_6aW5FkpM3Oj3QbTKiTkfDZvUgGHA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5874877.ucWHjBDv3O"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588072644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rlJWd9SYrZQM3Di4OUaMy9bZI7cuYNGfyXGnYFGj9JY=;
	b=280UkxzNJQYbsnaHHqH69Gjw2XtbVAX2MgKR8zX88FOPxbGvQUPT2rmUXgeEHU7A5+U0eh
	KBYnaYnguZb0FP8xa3+bA+Wxc2ZfOaZXTmhtrKbCndh42wZP7DAMBIH1eMd+DezJ12RVq5
	x8yRAlYVFmdj4LR/6pR6oSjao+tpbrU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588072644; a=rsa-sha256;
	cv=none;
	b=lpf4x+wCUB8+rqyirjrKYfIaq4M5mEdC/FitU3o7G5w3aI+hJxoujsotKj7tYoBjB2m5JM
	FYfvpYErxF4ZLn/tnoIw2e46YM7AbPgVqlpEcoVdfufhvolITfq+HeGoAVmaof90xB937H
	7/SZuio2posO2MDEfIFgFI8tEsufLIY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=UTmiZN0P;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: SCBL2VI2DA3YVC6476RFUDKZZIIXRTVK
X-Message-ID-Hash: SCBL2VI2DA3YVC6476RFUDKZZIIXRTVK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SCBL2VI2DA3YVC6476RFUDKZZIIXRTVK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart5874877.ucWHjBDv3O
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 28 April 2020 12:36:53 CEST Oguzhan Kayhan wrote:
[...]
> It failed when I add
>  option encryption 'psk2'
>  option key 'thisisaverysecretkey'

Just in case you didn't read in in my previous mail: Make sure that you have 
wpad-mesh(-openssl) installed and check if there is any relevant patch missing 
which prevents wpad-mesh to start up correctly. And no, wpad-full is not good 
enough - it is missing SAE and mesh support.

Kind regards,
	Sven

--nextPart5874877.ucWHjBDv3O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6oEL4ACgkQXYcKB8Em
e0aqpRAAuYjslDJvZ+Wfk5HlNrFq/pR8+qVdJ910h9ILpiN2WGfx8VlY0Qq5s2bk
0jp8AMqt640b+EkOfpWMj7MSYePBSSqkoOqLED02g0G9lFBDmdKsgweJ5wvMPrr8
4qc6GHbB69HsEWOzHySQCIZEXi5u7msjPM7S3kt4YoLkHtnIw5j59GCQCJCZVDQW
zqlCR5uF4XbWkOdhoOQzhNSar4fjUDswyWr2hkRwkpP75a+1GO0abj2gBwQGNK3S
PKg6yTKlJ1IEfGekWfdVxFx7WqLuoPEPL3jY2EoZo2Tl8B0Y0UGCFp5UEgw0EZHt
RI1s+kC7tjr/a6hfq5gWmijNKb/kfAUs8Aoqzm1M0z96PJvdN3LjgIu+Q/Rkckvx
/xWryfX6G5SWBqznFLN4/YtdlGi0v7y1aaEUuxsLS5mWqcd/bzBRjG++bus1p31D
c5uU4JzQB0GCXP6GK4vkvNkz2PN5REowikiJsY08LHskDrAQN05HD/3IfTWDWOlt
EJaKqP9z4p5DT6pFJyygFWN/canBH7erIU7vPbc5jHYHSAftNLYlS4+Q896v/YIu
IsjpxPnYsNmTi/sv3h/phTW5100OcKgfrGkW/9HUOyzBjfAb4rzXX9AoFFWMoWJL
/GvtXaREtKii7or1Zzhyy4BKmxWXnh0X4jDDs7BSbJAlOE+3LZk=
=9YR9
-----END PGP SIGNATURE-----

--nextPart5874877.ucWHjBDv3O--



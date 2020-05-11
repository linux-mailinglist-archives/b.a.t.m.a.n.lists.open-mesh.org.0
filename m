Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E99761CD1F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2020 08:38:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B055B80560;
	Mon, 11 May 2020 08:38:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589179117;
 b=rzzqUQY2GL5zF0Hu99AjLYKphMtqyXNP5V012e3N6faIP88QnX7L5tgTZ7O4NP8Ru5Xe+
 XJZ0DIlLcTV62E0E+VH9auDfqZDUv19yScSGDsrQPNODhMZtqwk6dEc3T3q4yVs3wGoQvLd
 tOOOpVfA7qCZbI4aavKz80ognoFshKQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589179117; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=+vocGCtrp5L0pV/2Hd9lFwwuGSlbUA1J2nirdV+tbeQ=;
 b=FcLlUAWnVHBG4ThdtErAS5Vfy8jde1pzYuaZelyBJmrqwkd6XGSuoIZ1Zz2QdEYaIzcon
 RpRJutYrpqOCyUwET3l3NRo9/pNEGA5HZLUgZ0WnhqhB6PtBuHKGL10gMamUP5x6b+OXnnj
 bLW/Mnh0Ri0YdXoJccRry2ExfF0thUU=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org; arc=pass; dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 95BD98025D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 May 2020 08:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1589179115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+vocGCtrp5L0pV/2Hd9lFwwuGSlbUA1J2nirdV+tbeQ=;
	b=f1Yk145AWXEvhp2n/j79iQKdEy5HiNoEC04S8JwU3cL/auKAttmElQEtrne8gZEjTo1wwO
	d29nPd3G0yGb0Ng0LcOP/qjyAh9bOIrN4kSRjknJlEU0rGsj7dD688l5jBHZ2whtxgQDCI
	ilxO/58Mpmq1L4CUDx+yc3pKhlmafdI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Xuebing Wang <xbing6@gmail.com>, Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: QoS over batman-adv
Date: Mon, 11 May 2020 08:38:32 +0200
Message-ID: <2200656.2eICcKID6T@bentobox>
In-Reply-To: <CAG5qQ7j1FzdwTqcAPcG=tBp5YTFm4UiOgVdSuk0qL5-pT6KB+A@mail.gmail.com>
References: <CAG5qQ7j1FzdwTqcAPcG=tBp5YTFm4UiOgVdSuk0qL5-pT6KB+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6114849.T8T7SrjxRy"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589179115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+vocGCtrp5L0pV/2Hd9lFwwuGSlbUA1J2nirdV+tbeQ=;
	b=kdqKkfa4l3OpNgynjhJS3irSzkCk4zlpNhamXPj/+/R8Z1y+1FoQVqJA5hmG8Y1u6o0WkN
	0xy47kDiuZpXO8Cd64r5HKEtZrc80O4ktA5vo+RU1EWF76F3iaYfj7OxSSKpqCqkHcgrps
	sdz2ThcGy/aPtH6RdisR4tBkVqNREPk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589179115; a=rsa-sha256;
	cv=none;
	b=1+MQU2KPoevS+B99guhFq7ErlQ+Jh/VEGmpIFMxydxPbBkdon+5w0EKr1ZI2r4zlRMC0sg
	jLvWIxEi7plLw7Oi3JlHx4dPJN0I2KNZERcDuPRqLc3JBN92x+Mjuf6AAj9Ce4cbCnDa3/
	uHNTwzNdQ7BLZ9Rnh5sUGqi0Bes9WQI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=f1Yk145A;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 3RB7Q7YOMLWZLTXMXVFOP6WXL547SBNG
X-Message-ID-Hash: 3RB7Q7YOMLWZLTXMXVFOP6WXL547SBNG
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3RB7Q7YOMLWZLTXMXVFOP6WXL547SBNG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6114849.T8T7SrjxRy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 11 May 2020 05:33:39 CEST Xuebing Wang wrote:
> Hi Simon and community,
> 
> We have been using batman-adv on OpenWRT 15.05
[...]
> We are exploring the idea of QoS over batman-adv to transmit small
> quantity of high priority data. Any suggestions? Thanks.

First step: Update OpenWrt to something which is not EOL since many years. 
This will also update the batman-adv version to a version which is actually 
supported in openwrt-routing.

And then you will get the dsfield or 802.1Q values propagated to the mac80211 
layer (as part of the priority field of the skbuff).

If you want to have QoS on a higher layer (before it enters batman-adv) then 
just use the normal queuing disciplines of the Linux kernel.

Kind regards,
	Sven
--nextPart6114849.T8T7SrjxRy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl648ugACgkQXYcKB8Em
e0btYw//TGQq6LsdW35YXpkA/xeeOrAKoGr/+s/29LU8xu3m7HkiSmettAAjeifM
gmI91z0x1Cf4JHmAaGqF3plhSgFWl3N+Kepe9oYeZSobh94tngxC7yjN7MmfQ7rt
U+KLz/aywdc+SRfxdeNc2z4L3BdosuB7MclkVxod/wIwuZ9ttJJP8uklNgx1F/OZ
GGO2N6K0AI9sdY/vDOZ8x1CSW6Z3uP7jpSuPFhfvOqPqWCEtB3tSTikcQ776UUgd
NX+Iep4mUXFCqZoKWHMb2YnXNN3SDuFFufiKttGMA/uY+00eUGvI/HloAlSTaOlm
Hc0ojS0ylgF12FkawwP5arb0J64FP4OHPL6Xtiz8DkrBkl4lknZnDZaFuM8VM8Qt
YQuujx5frKW/GIbj4+XkOF9jMIbUeKwIRBRiAFqLX2jfAsFHQKxUt47+385EPJb4
A0UfIjZSOpJzcQj0wlHIHE5JLSZ4GsYvAYmDAlNgtz59x/Jwi7+NwTVCc3UeJldj
Md/S0vr7GCtFIkn+4z91olRVJviGnALtnCRPZB6gebAvctCYFfKQv5L4arUu6LSG
4luuRQ7HcbY4xL5wqy4LYRD4mCqZAqwIMoKxbG91kGQZkLs6nSXZfIURQnWxiNJf
yQ8alx0s+0HmR3DklIX8DOkGtKDxNK+TUjbkWHkdUguWBfu7qbM=
=KnUS
-----END PGP SIGNATURE-----

--nextPart6114849.T8T7SrjxRy--



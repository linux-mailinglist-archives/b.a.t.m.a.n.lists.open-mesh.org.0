Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A59BB36D231
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 28 Apr 2021 08:28:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 604078043E;
	Wed, 28 Apr 2021 08:28:26 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3CDFC8043E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 28 Apr 2021 08:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1619591301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=98RGn8/mmC0wF7LM/tbhLxDKc0cXfydQjmGXyOtABrI=;
	b=jpgmwyWEDcmh03jmdATyA624jMoBaLRJuAVj/swrGzeZAod194hHCsPNoTb313E2cvU015
	j9xaUt7CyNz1ODBAbxxmnHzVvg4L7uTwqRnvPup/5FDZ6qGHRlM1cemXb8mGnZqfueLBf/
	YsR86sazcX2L4C1Cf6YHk2aBSsAI1UQ=
From: Sven Eckelmann <sven@narfation.org>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Callback Function
Date: Wed, 28 Apr 2021 08:28:13 +0200
Message-ID: <3500965.S1Hpm5EVt8@sven-l14>
In-Reply-To: <pYxS_SbGp4jLwzdYJKID7uwQCI5M1s6eTc1Ib1EohCNZ1HeNzc341ewCY15CatPmfxur4rEV3i6KhcKPlcU_CcxpS5_VSTLwbM_OrYfIaWM=@protonmail.com>
References: <pYxS_SbGp4jLwzdYJKID7uwQCI5M1s6eTc1Ib1EohCNZ1HeNzc341ewCY15CatPmfxur4rEV3i6KhcKPlcU_CcxpS5_VSTLwbM_OrYfIaWM=@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1987721.Iqeva8pZxL"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1619591303; a=rsa-sha256;
	cv=none;
	b=qkkPJfdJct8EZZhr7mht9T3N50olCQnpZvIFbOsALKFRIB7DjgesvUoiZrZQ52p7s5lqgn
	N1QKlr8p8GPqMXfnBOW2CuEXLu4AthkixBG2yfTAEyUQF4ryVhi4gbIVUq28yC85KVKUfn
	7fRZrNQhjFcR5CXim9eC6DucS7WhyeE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=jpgmwyWE;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619591303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=98RGn8/mmC0wF7LM/tbhLxDKc0cXfydQjmGXyOtABrI=;
	b=0PfoytPktjxuZlR0shp5GiZTHlo2cqyU4Ai0IwJdayRqJk3f1CLUCIUk7c7pdBc324fRIN
	Kro6Eh5lYOhRbOt7B6qqITPpy7n0c3NtJNPG+xp8NwR6deZeW4NzLlQRiA4CNUSGzGfo7B
	AY7pMIZeg1XcnpIhd4CyFdn4S+mH1Ew=
Message-ID-Hash: JLZQNRY42XV22Q6BWJ6CTLQXA2ETLF6K
X-Message-ID-Hash: JLZQNRY42XV22Q6BWJ6CTLQXA2ETLF6K
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: BrainGeek <braingeek@protonmail.com>, Anatoliy Lapitskiy <anatoliy.lapitskiy@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JLZQNRY42XV22Q6BWJ6CTLQXA2ETLF6K/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart1987721.Iqeva8pZxL
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: BrainGeek <braingeek@protonmail.com>, Anatoliy Lapitskiy <anatoliy.lapitskiy@gmail.com>
Subject: Re: Callback Function
Date: Wed, 28 Apr 2021 08:28:13 +0200
Message-ID: <3500965.S1Hpm5EVt8@sven-l14>
In-Reply-To: <pYxS_SbGp4jLwzdYJKID7uwQCI5M1s6eTc1Ib1EohCNZ1HeNzc341ewCY15CatPmfxur4rEV3i6KhcKPlcU_CcxpS5_VSTLwbM_OrYfIaWM=@protonmail.com>
References: <pYxS_SbGp4jLwzdYJKID7uwQCI5M1s6eTc1Ib1EohCNZ1HeNzc341ewCY15CatPmfxur4rEV3i6KhcKPlcU_CcxpS5_VSTLwbM_OrYfIaWM=@protonmail.com>

On Wednesday, 28 April 2021 05:05:47 CEST BrainGeek wrote:
> With ALFRED I've noticed a parameter you can pass into it labeled "-c" which is described to be a callback. I've tried things like "-c poweroff" just to make it obvious that the callback worked, but to no avail. How can I properly use this feature and how does it work?

Please have a look at the manpage [1].

    Specify command to execute on data change. It will be called
    with data-type list as arguments.

As you can see, the called command will have additional values added to the 
end. So you have to keep in mind that some commands don't like it when they 
receive extra parameters at the end. Let us simulate this with poweroff:

    $ poweroff 1
    Too many arguments.

So this will not work. You have to add some kind of wrapper which evaluates 
the numbers and then calls poweroff at the appropriate time. Let us define 
a small test script on host 1.

    host1$ cat > /tmp/alfred_cmd.sh << "EOF"
    #! /bin/sh
    
    echo "$(date): $@" >> /tmp/alfred_cmd_log
    
    for i in "$@"; do
       if [ "$i" = "123" ]; then
          poweroff
       fi
    done
    EOF
    
    host1$ chmod +x /tmp/alfred_cmd.sh

And now start the alfred instances on both hosts:

    host1$  alfred -m -i bat0 -c /tmp/alfred_cmd.sh
    host2$  alfred -m -i bat0


You can now inject data on host2

    host2$ echo foobar | alfred -s 65

and see the changed data-types on host1

   host1$ touch /tmp/alfred_cmd_log
   host1$ tail -f /tmp/alfred_cmd_log


If you write something to data-type 123 and you alfred instance is running 
with high enough privileges then it might shut down the system.

Kind regards,
	Sven


[1] https://downloads.open-mesh.org/batman/manpages/alfred.8.html
--nextPart1987721.Iqeva8pZxL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCJAH0ACgkQXYcKB8Em
e0afhRAAx5EbwyB+6THQhLOgkPdx+0LV4uOJuRt98SW6HhFYPQxtLWTFF0xzcbfG
Yt4sl/R60lNNwoXp+4kV03bytENM12JP3nO9htkKsaB5h7Xai1qmXyVyk+GLv6VI
Kp1B9Auq+PA3zIADeBKxNiRHlEolY8FZb3xbYBIQVq/FjubT+nVuDbe029HVj8wP
Yhy9cafgPZRgfRg3tnTyGMH4SvxII2m/4i9hr218bB6nkj1H+npL9sG48vk7JbEh
CkxUR3qJvz0IZEZftATbE4Iz/UAdhn02tK/RxZJllRSUgcQusFigoihEjvPXMAx1
O1WAF1D3Xs1FgNn9iqd1WUeGLts4WVYX4K7cibGIkHfiyIsspY/VagUvnGOJipcL
AylqlEeguW1qzWTAfstoMuxkSWwaHUfH4oQoXBUxS/bJlp2Osj/9D54+SoI9kG2F
eCdJ2eN4SIui9+t4wGzKBHwlqx0LcTbI8PWF9KuSmMH3Mz0NPWptoP7gRdwHF8p7
Kpo4eCkztMKBzKYedwk8prHuCotr1NFzyhKaiBc5Ss7ORg5rIA+p/9QNWrSg/9bo
VEibeNbq3+dVyBRejSHHqXP9pJCmIiW+y2pf8IkXSAoznxOwmyUzb4bqVsifXJ37
jKLPbDMVF2Wg3h4jaEa8mTGgKTjIOO/sd6jR4Sijn3CI/zfhaa4=
=eHcD
-----END PGP SIGNATURE-----

--nextPart1987721.Iqeva8pZxL--



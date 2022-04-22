Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E323F50B281
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 10:00:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C7C378276B;
	Fri, 22 Apr 2022 10:00:42 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A050080376
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 09:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1650614137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=FFj6+/K+6ijDBVy6GU0k6XitYfz7fo/RaeEwRuAByJ4=;
	b=hwcVhN6601PAIDsZN+Ji0A/wlk+AnYcRg99FBkeGflffJA7MRpJJgwXAv8suOG7bouq4K0
	pL595d9LsgxwqoOjOYTvVHg6XYmZXkMebHu9/9s5cfjPJ3u65hzjqU8iZuA31FuX89AXil
	n5/E5ypdRCuFHd0KoeVVR29oAT4NX2g=
From: Sven Eckelmann <sven@narfation.org>
To: yuzhe@nfschina.com
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Date: Fri, 22 Apr 2022 09:55:34 +0200
Message-ID: <3537486.13E77TLkhO@ripper>
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3059673.4202UCAtWU"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650614139; a=rsa-sha256;
	cv=none;
	b=plkVtWxpG/fvl7IYxmsKW4rdphydc1ItDkjlQrMWw4wTHK7OGAb8vrhqBpQ75PsMLbUAtN
	D7bzbUhdEdtr7BEsUsXbcUT+GO2cko9RV3m/FigeMuU2837/IgIFt+mgZdbZSAryZF6nMs
	n1h7s00ycwYxpcsfjRw7h2380Bj+Xx8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=hwcVhN66;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650614139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=FFj6+/K+6ijDBVy6GU0k6XitYfz7fo/RaeEwRuAByJ4=;
	b=H1Mcaf573dDhEU+Q+EUqxuX8YkjfTTDsSHnlkSHXlI3mamRc5M0bPrj8R+xhUbuTQXVlEr
	Ny3m5/+Wg55FpJAkW7q36mHLO56gVtgYdHPxJrPcqPmOZ7z2BUHQ10yh7nmd7fo7ohSwGY
	Ok2dUuzbGWnEsGWUO3YCmIQCxqFVCGA=
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: CIFISP6HC62GCDTTXEYPK5L5NGSBPJZF
X-Message-ID-Hash: CIFISP6HC62GCDTTXEYPK5L5NGSBPJZF
X-Mailman-Approved-At: Fri, 22 Apr 2022 08:00:41 +0200
CC: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kernel-janitors@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, mareklindner@neomailbox.ch, netdev@vger.kernel.org, pabeni@redhat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CIFISP6HC62GCDTTXEYPK5L5NGSBPJZF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3059673.4202UCAtWU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: yuzhe@nfschina.com
Cc: a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kernel-janitors@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, mareklindner@neomailbox.ch, netdev@vger.kernel.org, pabeni@redhat.com, sven@narfation.org, sw@simonwunderlich.de
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Date: Fri, 22 Apr 2022 09:55:34 +0200
Message-ID: <3537486.13E77TLkhO@ripper>
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>

Hi,

we neither received your mail via the mailing list nor our private mail 
servers. It seems your mail setup is broken:

    Apr 21 15:48:37 dvalin postfix/smtpd[10256]: NOQUEUE: reject: RCPT from unknown[2400:dd01:100f:2:72e2:84ff:fe10:5f45]: 450 4.7.1 <ha.nfschina.com>: Helo command rejected: Host not found; from=<yuzhe@nfschina.com> to=<sven@narfation.org> proto=ESMTP helo=<ha.nfschina.co>


And when I test it myself, it is also not working:

    $ dig @8.8.8.8 ha.nfschina.com

    ; <<>> DiG 9.16.27-Debian <<>> @8.8.8.8 ha.nfschina.com
    ; (1 server found)
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 39639
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1
    
    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 512
    ;; QUESTION SECTION:
    ;ha.nfschina.com.               IN      A
    
    ;; AUTHORITY SECTION:
    nfschina.com.           600     IN      SOA     dns11.hichina.com. hostmaster.hichina.com. 2022011002 3600 1200 86400 600

    ;; Query time: 328 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: Fri Apr 22 09:51:56 CEST 2022
    ;; MSG SIZE  rcvd: 105


Please fix this before sending patches out.


But the kernel test bot already demonstrated why this patch is not a good 
idea. You can improve it and resent it but I will not accept it in this form.


Kind regards,
	Sven
--nextPart3059673.4202UCAtWU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmJiX3YACgkQXYcKB8Em
e0Y0dQ/+NFnsxqJsaMC0zYzt5WK1JDVmpYneRZuoEf62CIsbpN+AtGouyHyqpRQA
UBOK4KaKDKL/iUTAz9m6kJ7k65RxnE9/WnwJaEbY1JNzn0V7mhxJOEarZrjjcz1J
R4MVT/l/vQHDhcGWwX0l4YHkXiUDjtmT1SripHZGouhOoxW/yCg7MPGDsIHNCWBw
Nj3kqClxRhwp+MExsKxmylX6EnIlOxO3Z5gtk848BaDgvpatjJkAxRDmpuxvDFn/
QTm70eQ5mLV/B2E5aZSH1IfYB77n9upt9PGp/r3FSwaUJaCBMPTyK6iDGG7fiwym
GlJhzoagbtr2zy8GlFWTFJKcTFt6uwhl1yRqQ37BTWVB86oFEp9pB2d+1J14m3gK
1+MjhWhfVN5Q8SALqpIZl5ms9grA+R1+SAW95mvdRitYgIqSpQt5+aLuelHiJMu0
fKgHOBQPabaFdTv973KAZP24lQTTOnkXQGPSbKRFzXperFql1sy7Rm+ZxUi4HmbS
HbUm9dApMdPpv+h/km0LKOnyca4c5ZPXXrY7iI9Y/lSevPSgQD8M8YtcV64kkAn7
s73LFpzveIGz/ITKycpOhGeWVJQRDKndJiZIQLJTfAGiy8P9SUeo+2I3fYT69lkb
y+z5SmMz1RBBXRmLhy6OiCe6xajWe/gQ82SN74O0uRthjQIX8dQ=
=yYih
-----END PGP SIGNATURE-----

--nextPart3059673.4202UCAtWU--



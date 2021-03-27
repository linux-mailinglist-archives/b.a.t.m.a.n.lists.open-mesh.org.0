Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE7334B558
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Mar 2021 09:12:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3BB3C80B44;
	Sat, 27 Mar 2021 09:12:39 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C5A9E804BE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Mar 2021 09:12:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1616832754;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mlLMoRI8NcPkC6TOC5Agi4URJvPAMKZEzJDK10cPCQ8=;
	b=efWtf2v6tt+7bOvH+0udkRBN9cBAJo8qqTN9n5St2zzFggWSBWM2em6zqrZ1C3GdN9lW5V
	C3XsqyPkeJPG9MxP2TpWWctAhcw48oewsWcTWHdkjMSk4m94+XKbAZ8EsJh9VgIV1iBaIT
	OOGNLVVKpXKl8OZSv1DLSzFWg9EDL1A=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
Date: Sat, 27 Mar 2021 09:12:29 +0100
Message-ID: <12440149.KDPBelFpPj@sven-l14>
In-Reply-To: <20210327003654.1205.8819@diktynna.open-mesh.org>
References: <20210327003654.1205.8819@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart12634480.o9XkevPc1q"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616832755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=mlLMoRI8NcPkC6TOC5Agi4URJvPAMKZEzJDK10cPCQ8=;
	b=fQ2z+giv6VrWivfXGwOVpK2JRLHperYkKHpyNF3vM47tO5/4PXiQakDJv9+g+ODpQiycRz
	t8cOKHfrDHzkwjJKNg1/cpIfruRunMUjKAd86nZZM1J1V1bm7ZzLw9RjclKRcPHW1XwI8m
	ju0qk54uY1CqUbBD3o+SOr2FirsjhMs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616832755; a=rsa-sha256;
	cv=none;
	b=Rg9QA58+esb59Rdb9pCjTOZy8zWr850iSMzvbB7BqX6+AJn7D3F4xP998E6ic9Ode80Gmy
	TkBOA/DnlKG0c80QhDzgb3nPsQLhZSz1UqeWeh8qDjujInW/BkzhDF7f4wgt3Qhm86j/Y0
	p90UCXiYMcmmmZQAyiaqQGyN6lu9ZtQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=efWtf2v6;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: P7IVCBI3IXXV7EM7YHSSJQ4RY25WLAOW
X-Message-ID-Hash: P7IVCBI3IXXV7EM7YHSSJQ4RY25WLAOW
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: spiccinini@altermundi.net
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/P7IVCBI3IXXV7EM7YHSSJQ4RY25WLAOW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart12634480.o9XkevPc1q
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: spiccinini@altermundi.net
Subject: Re: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
Date: Sat, 27 Mar 2021 09:12:29 +0100
Message-ID: <12440149.KDPBelFpPj@sven-l14>
In-Reply-To: <20210327003654.1205.8819@diktynna.open-mesh.org>
References: <20210327003654.1205.8819@diktynna.open-mesh.org>

On Saturday, 27 March 2021 01:36:54 CET spiccinini@altermundi.net wrote:
> Libremesh based on OpenWrt 19.07 + ad-hoc: not working
> Libremesh based on OpenWrt 19.07 + 802.11s: working
> Libremesh based on OpenWrt 18.06 + ad-hoc: working
> Libremesh based on OpenWrt 18.06 + 802.11s: working

Sounds like your wifi stack/driver is failing. batman-adv doesn't know or care 
about whether the wifi layer is using IBSS or a non-fwding meshpoint 
interface.

batman-adv is needing:

* working broadcast in both directions

  - you can see in `batctl n` whether some OGMs were received from a neighbor
  - you can see in `batctl o` if both directions work(ed)

* working unicast in both directions

  - just use something like `batctl ping` or some other kind of `ping` 
    directly on the lower interface (wlan*-adhoc)
  - you might also use something like `tcpdump`/`batctl td` to check if the 
    peer can receive your unicast packets on the lower device (wlan*-adhoc)

You should also configure a third device in wifi monitor mode to figure out 
whether the transmission of the unicast/broadcast packets is working or not. 
This should make it easier for you to figure out whether the sending or 
receiving part is not working in your wifi stack/driver.
 	
Kind regards,
	Sven
--nextPart12634480.o9XkevPc1q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmBe6O0ACgkQXYcKB8Em
e0Z59Q/9E+yxXScw7fQnxfXqrfWkmcTsBTNmcv3LnI02M3k1KfVglji5Lnbf9Nwo
+HXhXk2t7dlRyF+whdP9N09uRdhHI5HIZfJz0be43jBycdnMa3Nt2ErPpMaNuMsq
wm9GX8kUpNhfyc5NO0BwOiF2brSYxEe2+AafBdToxbVVCnS2Jse0LAd3uo54CniG
2s7hlG6z7w0h2XEgv5GnrVuIbwY/7TO1/vm+pr29tsJ3nAgFtrGwSs6ZXtU6IJOr
1cHpT1hV2xjq8by7Fcgc9T7ByufdQW1jq9y2jjDik1Uz//V1Xvl1L9eHMn72BPcb
9ThlWocXxaWJy/U81RR8l30GR4R2yN5GAHb5ljxbJ+JabsgxkYl7izfVrDyCRcbN
JUfUQ+6UCeO6Hmlma+fW9pCtcOxdUjxmEFn7+dLvkvp+hfB/4OXgvAl+VQG+T6Rf
6hWYpzhkGAhZKwkgdJK5V/mq3G0FDIXmlOql+Z4BFrQkWpVDMcwRcEPjbATix/lK
6FOnNSlr7tQpaV+NW4VesgMiEmvPvIj08sNGptf2wZmCNnfMwpgS15REDt2Ks3zp
Acl7XT/pA4REN/+kjd+zAA/nIxbf8qeFDR943XZByXg897R4vcz4FFOAqxqeLts8
53AcoyBg9mhccNzQTCeapYdHcdjMErKcOA74o51e+L6cMFNfCZk=
=7O2Q
-----END PGP SIGNATURE-----

--nextPart12634480.o9XkevPc1q--



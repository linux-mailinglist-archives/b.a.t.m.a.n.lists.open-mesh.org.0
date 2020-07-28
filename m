Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA39230115
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Jul 2020 07:06:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3CDCF802A2;
	Tue, 28 Jul 2020 07:06:17 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E10D680212
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Jul 2020 07:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1595912773;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=13xhimdYL47fBPwoh7I5kCtnq3HbZOTIgdLbbiE7cDU=;
	b=eueSyT+ZMFY2R+JDbXmVDCd3XoPIE88L7fedH0bcoeaYzS0iz1HOZ8pTuWiWRod4KsKuNS
	SLykcmgQBifuQbCXkjANDrj09eSnIuE5XRxZIA9Iv1TI4mxZRIUzTEuHFDvbnUNWmXdbDe
	+4vxCHHWZKnwYDweK+PDbFJklTexJnE=
From: Sven Eckelmann <sven@narfation.org>
To: Rob Cowart <rob.cowart@xecoenergy.com>
Subject: Re: batadv gw_mode client 0?
Date: Tue, 28 Jul 2020 07:06:06 +0200
Message-ID: <1997151.jcLF785M7x@sven-edge>
In-Reply-To: <1C0C87FF-C97B-4118-BCC6-DF1163BAB05F@xecoenergy.com>
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com> <3573996.TXEB8fxZsQ@sven-edge> <1C0C87FF-C97B-4118-BCC6-DF1163BAB05F@xecoenergy.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2164744.kCo4vZI0ly"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595912774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=13xhimdYL47fBPwoh7I5kCtnq3HbZOTIgdLbbiE7cDU=;
	b=eE0apKYfvGPU9VMxsK9cj3BDd1Vb3och2hkFnW3WGCz9zZJpkyXErutqFfUFVR5q4U5hlv
	cJQCR6wdMp1dROviGnQTglQqAQVl+k7ogdeZ90oBZ0gbPkRyE2C8CjxFrQK8Gz3SRYlpmF
	sw5GEyEQ1go5QtoWyUI4GwJDjnzzL18=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595912774; a=rsa-sha256;
	cv=none;
	b=T0k42wMlaxuR2WdJdR8BpD8kn9VzIiHLDrAQXkH/KIeMcWaXyKAsfBYt5hRq/4xC/SUfl5
	PvZFfzGJc9mEH9IlGhYz6uF0rv6XCtF4KYRbeY5VsCBIETRNY7MbRswverdvPEWspBuA3o
	AHMJiOmTshyvrIjyqyPneLUTMBqR0pE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=eueSyT+Z;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: WW4HDTXECTDTIPTLEUOYGI2EQW36FODK
X-Message-ID-Hash: WW4HDTXECTDTIPTLEUOYGI2EQW36FODK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WW4HDTXECTDTIPTLEUOYGI2EQW36FODK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2164744.kCo4vZI0ly
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 28 July 2020 01:07:09 CEST Rob Cowart wrote:
> So we have a new problem.  In BATMAN 2018 logging worked, but on BATMAN 2019 it doesn't - should I update to 2020?

What does this have to do with gw_mode client 0? At least you posted in the 
thread [0] with the subject "batadv gw_mode client 0". And you mail also has
the subject "batadv gw_mode client 0"

And please stop posting HTML messages [1]

> pi@raspberrypi:~ $ sudo batctl -v
> batctl 2019.4-1-g6046cf9 [batman-adv: 2019.4-9-g890c6748-dirty]
[...]
> pi@raspberrypi:~ $ sudo batctl log
> Error - no valid command or debug table specified: log

The log command was removed from batctl on purpose [2]. Please either get the 
data via trace-cmd [3] or build your batman-adv with DEBUGFS support and 
manually fetch the data from the deprecated log file
/sys/kernel/debug/batman_adv/log (tail -f, cat, ...).

Kind regards,
	Sven

[0] https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/thread/FG4ZGHSHFHISJUKZ4XQH56ACBV4ASSSZ/
[1] https://www.open-mesh.org/projects/open-mesh/wiki/MailingList
[2] https://www.open-mesh.org/news/90
[3] https://www.open-mesh.org/projects/batman-adv/wiki/Understand-your-batman-adv-network#Logging

--nextPart2164744.kCo4vZI0ly
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl8fsj4ACgkQXYcKB8Em
e0Y9pw//WQJ66nnTjYN4hFlEuWKC+gdIobNsrDCdh3P2EXHk7IcvPgsv4VGgRKhQ
C2BB9smwKD5EpQFJF+OJOdUfhIOKo2a/b6uDwy+UgSzQviiqmXnxJibgwOZo2B0S
sv+YxoV4995gmBqRsumTb6Q0L1LQA6ZQf5On3YlM1bsMYa7dL+AtnIJAmpE328hf
GabrIn0O88zvPX7xKvAA8muCmZcYgnjvNScOUD/kBGCS+r2rGrWYbN7A3GXg7P0L
jiKWAiR+GK21OdvkdJXSPAS3MjJLGztORlD4oUefOs+zG4yqjVU7adfAH5rnf+IG
7IWP5AHIcTAzqoIy0EH0oF/UFPnOnYFsrdRPUdUxR2m4T0fGwaMBjgWKNIO4Z47/
uqKfLQjJtt/pngtb8QWIG82PwG8gH2byR2ShUVCJWHMEVDjF+lB56t5tOjO6PX7g
JA0Yzr7PENLB2SGv5FE092mM1bgy4MHpbjAaAYF2fKNeEm4ymeWq+Z10AuCkmalz
B8I9Mh/AyShSOdZ801K0wXnMCd/dSmSTiiVchJch//bnutJl5dliLjcSkmiSzXBt
CcY7nPuz/sD89Dy2bbzk+9aI2nTVriXIOnujBNx5yUctuxMM/bwLWJYXr6mG3bgM
0ed7EKyJv7OQXlUPokpeVy41q6lFi83Itna0Xbs4j+dGOUtI8jM=
=wEV+
-----END PGP SIGNATURE-----

--nextPart2164744.kCo4vZI0ly--



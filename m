Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3F3207C85
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Jun 2020 22:00:34 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 62290809ED;
	Wed, 24 Jun 2020 22:00:33 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 227B380199
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 21:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1593028575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gmTOtoia8i0MOJA4HP0qres0o7K+xbeyv3/mMs0nuAI=;
	b=y2Au7VA+DG1MuMlQgwynv+G8LmscSKxCf6oBkFOLgpsWqh2dJg5P30jQLHbFHrzvU3HvOT
	eg/4MK2ixyu1p+h2Nxnw0ckVZcjvxrqzuBkDq/5e4pJFhYAtmxfnrFNPTU4m1q1nZEkHBr
	/SaCjxJOg3fD9Ee0J2h+Vppek5fFpAo=
X-Mailbox-Line: From sven@narfation.org Wed Jun 24 19:54:53 2020
From: Sven Eckelmann <sven@narfation.org>
To: Rob Cowart <rob.cowart@xecoenergy.com>
Subject: Re: batadv gw_mode client 0?
Date: Wed, 24 Jun 2020 21:54:53 +0200
Message-ID: <8393812.UZvHzlbVaM@sven-edge>
X-KMail-Identity: 481132557
X-KMail-Transport: 368970294
X-KMail-Fcc: 27
X-KMail-Identity-Name: Sven
X-KMail-Transport-Name: narfation.org
In-Reply-To: <9543BE37-DB78-4DC6-A674-F6460D5665BF@xecoenergy.com>
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com> <4434528.9OTWPoQ4Dk@sven-edge> <9543BE37-DB78-4DC6-A674-F6460D5665BF@xecoenergy.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3090745.EzTnSp286q"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593028576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gmTOtoia8i0MOJA4HP0qres0o7K+xbeyv3/mMs0nuAI=;
	b=gk6v+2PM4uWVJyzi7yuXxFIPdp1yNdcWQ5wOTOMDb9XOSzcTPprLPK6onU8r6k+bVdXBdY
	KvFc9Sccf6QfZoU4Ehjn4rtVLbTZRAey+lSdFyER6DLRkyygNmRjBIBuDFHUy+uO0gPE00
	8jIVyL8kDdlR0p/Ro2tqohBXUGmKP+s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593028576; a=rsa-sha256;
	cv=none;
	b=FmM0e8Um2e0I+I34mXHe/rpfgAMgT3ITb+RdCSTJEruekcgdq56UjXvveaQyRUN/TIyUej
	gDhitAa2Gvy4iBKXdM0hIyTRO1g/NQH5s2NYv2Jpzlgqc5Zr8jmXC32slUZiuPczIJgX6Z
	MMBb00c794FG6FlY0QaXB/ceGxlFM/o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=y2Au7VA+;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; suspicious-header
Message-ID-Hash: RNCZIOSDDHVJHXIHSFSBQT5VDNFLMNAK
X-Message-ID-Hash: RNCZIOSDDHVJHXIHSFSBQT5VDNFLMNAK
X-Mailman-Approved-At: Wed, 24 Jun 2020 20:00:32 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RNCZIOSDDHVJHXIHSFSBQT5VDNFLMNAK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3090745.EzTnSp286q
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 24 June 2020 21:43:18 CEST Rob Cowart wrote:
> >    ssh fe80::6c39:baff:fe1c:6d11%wlan0
> Yes we knew this, this is Standard Operating Procedure, but atm nothing responds on ping.

When nothing reacts to pings on wlan0 then your lower link is most likely 
broken. batman-adv can also not help here when the link on which it operates 
is "dead".

> > Not sure what the ELP interval is here but the last seen is extremely high. I 
> > would guess that the lower link actually broke down and the neighbor entries
> > just  didn't time out yet.
> How do I tell you what the ELP is?

Echo Location Protocol [1]. It is similar to the OGM messages in 
B.A.T.M.A.N. IV - but only used between single hop neighbors (and sometimes 
also as unicast instead of broadcast)

> we (my boss who tries to be a software engineer) have definitely messed a lot with the batctl settings.

The elp interval can be checked on recent batctl versions using:

    batctl hardif wlan0 elp_interval

Or on systems which are using sysfs for configuration:

    cat /sys/class/net/wlan/batman_adv/elp_interval


The OGM(2) interval can be checked using

    batctl meshif bat0 orig_interval

Or on systems which are using sysfs for configuration:


    cat /sys/class/net/bat0/mesh/orig_interval


Both values are in milliseconds


> pi@raspberrypi:~/xeco-master/enola-daemon $ sudo batctl s 

The ELP packets (and much more) are part of mgmt_tx/mgmt_tx_bytes/mgmt_rx/
mgmt_rx_bytes.


> pi@raspberrypi:~/xeco-master/enola-daemon $ sudo batctl td bat0
> 14:42:51.260179 IP6 fe80::4829:b9ff:fea5:8a76.16962 > fe80::d486:8dff:fe7d:394d.16962: UDP, length 218

ELP messages are not sent on top of bat0 but on the lower interface (wlan0 in 
your case). So you have would have to run "batctl td wlan0". Or create a pcap 
on wlan with tcpdump and open it in a recent version of wireshark.

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/batman-adv/wiki/ELP
--nextPart3090745.EzTnSp286q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7zr40ACgkQXYcKB8Em
e0Zfrg//e0vvMm1E81ZGSEsY8HnouORnqRRw0vsks2TtwYSrHr8pvH/BgyjzsGsI
Ya0Zj4CS99eGvMUzCdh/W7/UJ6woTALBMpyylfIYLiFo6ae2IzqBOpVDAIjGxGFR
0Z0+IPfzjdTBB0plH4OL9BC0GZwlSN9VOQr1rKVLx2lRKpy0q6DiAr5dUSq0F2ak
JEt2b0UhCQUlz+NGphSXgY+blWCo6wj+N4UfYWxfYbDX2MEQWcViT5QXFuhVelEJ
gEWOHj1LMeTaCvL4vHXJjGIOYxDtyapJ/SiVOYZeuVqU9400MrRGvoSjRrx0sYtO
r9xfyy4uon6CdKbaqN0UlaTbxAvSD5AOOUlYbyAON9OCLxvq9xqNCx3LRDjkmKve
9qZmtXwZ08CTaWG0iGBLkYb/vaKSlOci/RaF6+8r6ncykAKLZ8cO8ZY8Glar4/zG
zEymhqJrRsa3cwFffKmZCJy/nw+CqgsGkWv8AdpaZr8TqdbLmTehxiKqFlLXewuF
3Ac5KrLLbE97ipHGaf3yiXNtz/u9ldZU+AAvHUqXXUnepD8JG6v0adrMqcmkv38+
qDtDstOQz/3m+VvTrkT/lNPdLho0ky5w+ppILGpkBoe1jznEdmQ13MF9Wfo0YJBE
/TBtgpf5oUPbB4HE1bRCKbqFYCRWAu7tTkaD/gAxrgdDliyUrWM=
=OJTZ
-----END PGP SIGNATURE-----

--nextPart3090745.EzTnSp286q--

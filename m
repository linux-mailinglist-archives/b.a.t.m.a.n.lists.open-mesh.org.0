Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 703DE207D9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Jun 2020 22:42:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1BAFF809F2;
	Wed, 24 Jun 2020 22:42:07 +0200 (CEST)
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 02095800E6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 22:37:32 +0200 (CEST)
Received: by mail-oi1-x234.google.com with SMTP id r8so3019571oij.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 13:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xecoenergy-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=mqngjVib2mAWJVqGUu3zu5l+GSkWquvMYrnIvtmUCM0=;
        b=Sv+rSZ/aA5KReTqiyrgtVN3R/VMtwEGqzc2M+xmWBss1MW2WqOVGbBp9Q9N7ug0Y8y
         QDUFBSMrLWbkURuLylK2ORY+2QotPPRiZ2AvMN+dwO8qsgDofa+dM+GtKD6BPqu3jIKK
         Fr3hhG0NGWQHNKYpUKkdpbsifHVC9+LuK1If2Wpvj82FS6CI0OYdC21RT+C1y8/OXjnE
         18OBIOaObDRgcbiM6za6qVc3WQ1u7HBo/p+p9M9foz0xYSJtx8D3W76ep8Rzkw9dvqm8
         RgUkA2E0jhuFCBESnL3O/F3gTbujwhwEsZYCIb5HTMJuFKqTU+3Iqoe2F9JNAWjdGXyc
         Yg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=mqngjVib2mAWJVqGUu3zu5l+GSkWquvMYrnIvtmUCM0=;
        b=eh0y/HY4NndBcoZj7D+M4O4W4KSi7esL+4Jj1F0Fjyn6NzaWPa7Rubu5rfio7ZbZps
         C3lL1GDMT1T+yaKW1QwKAmpctSQf900J8d1nysjw5PSPUjOXqQEsbwO4NYXcii9jRFWJ
         kgMOuF6F98njg7UMM45WhJmKUSIPYczBStPrfOgwqpOnqcDI724iytWGhVJv15Ig/5ef
         KN080AFZQN46YXvSJNJIGTSnUqcZKCNiEId5lwnNW/pXLqIH/8JvQDWmmiM1O7BhDsfr
         xszrap3mpabxgxVZZKrVus3BILNkkh7+ZXj3YOSf+pm1H3nHD3XyRVu+uL4xCjf8YzRA
         cGXw==
X-Gm-Message-State: AOAM533G2zQmH14kHhgHm6WljtjOfvFZjst1xRMEub1p8zNPhjjukto6
	FRZvdBIlf3HDl+LyI8cTkJRLXcDk27Q=
X-Google-Smtp-Source: ABdhPJwETQR5SFMhRSEXZOeuDB78emz+Tcy5JIWwb7TlLUPmwZFUlh9s46z08G/1SCSe9pm6AzMVlA==
X-Received: by 2002:a05:6808:3ca:: with SMTP id o10mr6526854oie.11.1593031051559;
        Wed, 24 Jun 2020 13:37:31 -0700 (PDT)
Received: from ?IPv6:2605:6000:101b:cd12:c96e:e113:f08d:5e96? ([2605:6000:101b:cd12:c96e:e113:f08d:5e96])
        by smtp.gmail.com with ESMTPSA id 7sm5083009oti.25.2020.06.24.13.37.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:37:30 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: batadv gw_mode client 0?
From: Rob Cowart <rob.cowart@xecoenergy.com>
In-Reply-To: <2094569.NUmnuQNPM9@sven-edge>
Date: Wed, 24 Jun 2020 15:37:29 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <FE41926B-5684-45D8-B9AE-17D46DA1C8C7@xecoenergy.com>
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com>
 <8393812.UZvHzlbVaM@sven-edge>
 <E3FD8A72-966A-4CBB-A036-8C0A4152983D@xecoenergy.com>
 <2094569.NUmnuQNPM9@sven-edge>
To: Sven Eckelmann <sven@narfation.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593031053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=mqngjVib2mAWJVqGUu3zu5l+GSkWquvMYrnIvtmUCM0=;
	b=K9/o+9xE/kUr8NUdeXE4HHnVHeWAyQ3I9Paev36zT8FdcLuA7obDC4Lgy4it9Fu1nQoYY4
	aZ6PI0E+EuMy7qc472uDs2IJdBCVEm2exoI/+VjTY/8hptrEwfxcddneTJwwXcakjqX6kI
	xtstUK0yPK9AREWB1kIEHgqWbr0DmEc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593031053; a=rsa-sha256;
	cv=none;
	b=DDzzx6pWsw+CjQE5ectI19n3GpwsZJeNG+HGP8bh6k4riCHff6tovo9uEM8p0s0FNRx0lg
	c2NRmdivAMJRwXvVJjcg2JVtOnEXBdcmwdFmzLfkLsVQYNZqg9+TNp5BCpunQ/zDGsAcWy
	0K7xITUCvC6sh47GnVbWivtRbdvypb4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=xecoenergy-com.20150623.gappssmtp.com header.s=20150623 header.b=Sv+rSZ/a;
	spf=pass (diktynna.open-mesh.org: domain of rob.cowart@xecoenergy.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=rob.cowart@xecoenergy.com
X-MailFrom: rob.cowart@xecoenergy.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: QH33DFNA4CMRI7AZNE7LWLY2XURJCAOQ
X-Message-ID-Hash: QH33DFNA4CMRI7AZNE7LWLY2XURJCAOQ
X-Mailman-Approved-At: Wed, 24 Jun 2020 20:42:05 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QH33DFNA4CMRI7AZNE7LWLY2XURJCAOQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



> On Jun 24, 2020, at 3:13 PM, Sven Eckelmann <sven@narfation.org> =
wrote:
>=20
> On Wednesday, 24 June 2020 22:02:38 CEST Rob Cowart wrote:
> [....]
>> Is anything wrong with these?
>=20
> Most likely not, but someone on the mailing list with deeper knowledge =
on=20
> B.A.T.M.A.N. V's echo location protocol could actually check whether =
non-
> symmetric settings on different nodes could create problems or not. Or =
if=20
> having both ELP and OGM2 interval set to the same value could have =
negative=20
> side effects.
>=20
>=20
>> Our gateway:
>>=20
>> pi@raspberrypi:~/xeco-master/enola-daemon $ cat =
/sys/class/net/wlan0/batman_adv/elp_interval=20
>> 500
>> pi@raspberrypi:~/xeco-master/enola-daemon $ cat =
/sys/class/net/bat0/mesh/orig_interval
>> 1000
>>=20
>> nodes:
>> pi@raspberrypi:~ $ cat /sys/class/net/wlan0/batman_adv/elp_interval
>> 30000
>> pi@raspberrypi:~ $ cat /sys/class/net/bat0/mesh/orig_interval
>> 30000
> [...]
>=20
> On Wednesday, 24 June 2020 21:23:09 CEST Rob Cowart wrote:
>> IF             Neighbor              last-seen
>> b8:27:eb:4e:73:6d   25.330s (        1.0) [     wlan0]
>> b8:27:eb:ff:0e:b6   23.320s (        1.0) [     wlan0]
>> b8:27:eb:08:13:37   18.850s (        1.0) [     wlan0]
>> b8:27:eb:aa:1e:6d   37.010s (        1.0) [     wlan0]
>> b8:27:eb:35:c6:77   63.590s (        1.0) [     wlan0]
>> b8:27:eb:e9:34:41   18.280s (        1.0) [     wlan0]
>> b8:27:eb:84:ca:90   30.560s (        1.0) [     wlan0]
>> b8:27:eb:1e:eb:cd   27.410s (        1.0) [     wlan0]
>> b8:27:eb:cb:80:34   23.100s (        1.0) [     wlan0]
>=20
> Btw. it looks to me like B.A.T.M.A.N. V is a really bad choice for =
your setup.=20
> All links have the throughput value 1.0 Mbit/s. This sounds to me like =
the=20
> wifi driver doesn't provide the required expected_throughput. And so =
you have=20
> a REALLY, REALLY, REALLY bad metric when you are using 1.0 everywhere. =
So if=20
> you want to continue experimenting with B.A.T.M.A.N. V then you should =
try to=20
> get this fixed in your wifi driver or just switch to B.A.T.M.A.N. IV =
with=20
> increased multicast rate.
Are there any docs that talk about what B.A.T.M.A.N. V vs B.A.T.M.A.N. =
IV is good for?  The decision to upgrade was made before I got here, I'm =
not sure anyone understood that IV would still be supported/expected to =
be used.=20
>=20
>=20
>> Lots of stuff I don't understand here, looks like loopback is very =
busy?
>=20
> Not sure what you mean here with loopback. I will just leave the whole =
output=20
> here in case somebody else on the mailing list wants to figure it out.
>=20
>> pi@raspberrypi:~/xeco-master/enola-daemon $ sudo batctl td wlan0
>> 15:01:52.075412 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 704843962, v 15, interval 500ms, length 20
>> 15:01:52.076036 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.076507 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.076854 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.077456 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.077937 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.078028 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.078657 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.079155 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.079246 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.079894 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.080480 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.080965 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.081435 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.081904 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.081995 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.082435 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.082539 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.082957 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>> 15:01:52.415359 BAT b8:27:eb:fb:4e:58: OGM2 via neigh =
b8:27:eb:fb:4e:58, seq 500807384, throughput MAX, ttl 50, v 15, length =
60, tvlv_len 40
>> 	TVLV TTv1: OGM DIFF [.] ttvn=3D1 vlan_num=3D1 entry_num=3D0
>> 		VLAN ID -1, crc 0xf0cfd284
>> 	TVLV GWv1: down 10.0Mbps, up 2.0Mbps
>> 	TVLV DATv1: enabled
>> 15:01:52.423153 BAT b8:27:eb:fb:4e:58: OGM2 via neigh =
b8:27:eb:aa:1e:6d, seq 500807384, throughput 15.0Mbps, ttl 49, v 15, =
length 60, tvlv_len 40
>> 	TVLV TTv1: OGM DIFF [.] ttvn=3D1 vlan_num=3D1 entry_num=3D0
>> 		VLAN ID -1, crc 0xf0cfd284
>> 	TVLV GWv1: down 10.0Mbps, up 2.0Mbps
>> 	TVLV DATv1: enabled
>> 15:01:52.424280 BAT b8:27:eb:fb:4e:58: OGM2 via neigh =
b8:27:eb:cb:80:34, seq 500807384, throughput 14.9Mbps, ttl 49, v 15, =
length 60, tvlv_len 40
>> 	TVLV TTv1: OGM DIFF [.] ttvn=3D1 vlan_num=3D1 entry_num=3D0
>> 		VLAN ID -1, crc 0xf0cfd284
>> 	TVLV GWv1: down 10.0Mbps, up 2.0Mbps
>> 	TVLV DATv1: enabled
>> 15:01:52.428556 BAT b8:27:eb:fb:4e:58: OGM2 via neigh =
b8:27:eb:84:ca:90, seq 500807384, throughput 15.0Mbps, ttl 49, v 15, =
length 60, tvlv_len 40
>> 	TVLV TTv1: OGM DIFF [.] ttvn=3D1 vlan_num=3D1 entry_num=3D0
>> 		VLAN ID -1, crc 0xf0cfd284
>> 	TVLV GWv1: down 10.0Mbps, up 2.0Mbps
>> 	TVLV DATv1: enabled
>> 15:01:52.575301 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 704843963, v 15, interval 500ms, length 20
>> 15:01:52.575486 BAT b8:27:eb:fb:4e:58: ELP via iface =
b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
>=20
> Kind regards,
> 	Sven

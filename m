Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B64F207E02
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Jun 2020 23:01:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 69A1080852;
	Wed, 24 Jun 2020 23:01:46 +0200 (CEST)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0BDA8800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 23:01:42 +0200 (CEST)
Received: by mail-lj1-x22b.google.com with SMTP id q19so4148334lji.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 14:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=15WTfK5GinHtfEXHoQ7X3r0DIMOdPJWpGXpFShCz2yM=;
        b=gd12EEbI3+tk01OWfaYIz7Lo5JmAkKO1QlCrV8wTAHk4MgZHSZQ4Cjnm9ifxlhY1YR
         NvWvP9PaKdM1p/pTuheuVo0yN06/xIJlismQ6T8+e+BwXnSmWU38Rx6VSnJjv714CU67
         epyhq3jAcJy37dkmylGr4/H6enDau8SVPcr5qFbvGdr6FHN9esoADCsIOhZAvOhL/6rj
         wrL6Y4S6OOT5NdvzJDU29/8msPq48dxabojgnxgmqdRrmr7UQ+MFnM/0r7qYortYlQXZ
         B2H00QZFjnH0zYZXyhHxvtI7WPHIBimBO7PCp4LvKUclHzkkbhvlDe6xycLqFkC+w9fH
         pdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=15WTfK5GinHtfEXHoQ7X3r0DIMOdPJWpGXpFShCz2yM=;
        b=sr7trK3b+7V2QIfhbNKHhNn5nw9aZCqtF8eq3Oc0mKL6L0SNRkRK/d5ntgT0eTsvId
         oECU0VUOUBBLCeN9onAF6kqA4fByObbtRhUUh0a4kdVTnJxs3v2VvU6vPi+9nPXncyKP
         O8tTg8LNoU/zcLg15h9JIxEe6cGtvB39pYKKNej5/tRgXK3FXN8b287CcuL/AMPnwxMX
         8SeYeljFJ1zQstterqJ+HSQiX47Dm3rKgZoUKAU/yvNIJMPIDvBsOdvEA4s3s/LnEp8V
         bum5Ea8FmMaXoOaz9pHPs0OTvukUcAWOBUfY/nHqVILZPnp7ldYeKcJQRMV7XYCIdYKf
         0dKA==
X-Gm-Message-State: AOAM533dyrliune+jaFCzpsFwE4AvfzBoqBSnrsta0XySG5ra9UqEGx2
	ZxnQMvGPh3j4QkmOJDTcd6sUhPI0B4zsYHBqmd7vx6wnqjU=
X-Google-Smtp-Source: ABdhPJzUksFuL1wekavQ7Gw113EQD0X2QPrXgXzglYBY8jLdrIJITyyWqszRqzju+ZYAiO2OusY+nHVTq9yrtoK3oCw=
X-Received: by 2002:a2e:8643:: with SMTP id i3mr6092764ljj.190.1593032501767;
 Wed, 24 Jun 2020 14:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com>
 <8393812.UZvHzlbVaM@sven-edge> <E3FD8A72-966A-4CBB-A036-8C0A4152983D@xecoenergy.com>
 <2094569.NUmnuQNPM9@sven-edge> <FE41926B-5684-45D8-B9AE-17D46DA1C8C7@xecoenergy.com>
In-Reply-To: <FE41926B-5684-45D8-B9AE-17D46DA1C8C7@xecoenergy.com>
From: Mark Birss <markbirss@gmail.com>
Date: Wed, 24 Jun 2020 23:01:30 +0200
Message-ID: <CADg1mwK62tGw8kkXSYpZ2H2XOmCWa21L29YnJ3AyNih15+1vMw@mail.gmail.com>
Subject: Re: batadv gw_mode client 0?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593032503;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=15WTfK5GinHtfEXHoQ7X3r0DIMOdPJWpGXpFShCz2yM=;
	b=ygbrKtc3P5sXG1WIg4kc4Bj4uBVVy9Qy5kwuCcU+QjS9DlpyLsh8R4kG1vGjHfSdhz2kKH
	RfxzpuiZqjSoNQJTX4CMK3KkDC2bXWTimYGwD+y30AqUb3chVimpV2M31zQdCqH3dNSbS+
	ROI8ZZA20HLNeuoLLIKteCrrvO5JwWY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593032503; a=rsa-sha256;
	cv=none;
	b=OAE9u5JLEED/6eT8No2G6Je85sDFFHz29NC2OApVgolQrQnw3K/qN1SUUed2KUUfWCdlzP
	2zRS+G3wolTTq91cVntZMu/Fgs6nHz61CFzDwu2qwRUQQgXZ2Zluj1168zfsBVyK2sNNPA
	QT08gJZ6SxBdr44OBmBAgci82WK/ol0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=gd12EEbI;
	spf=pass (diktynna.open-mesh.org: domain of markbirss@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=markbirss@gmail.com
Message-ID-Hash: CZ5K2JISR7PPPNLJTY3A2FETYEY2JWYF
X-Message-ID-Hash: CZ5K2JISR7PPPNLJTY3A2FETYEY2JWYF
X-MailFrom: markbirss@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CZ5K2JISR7PPPNLJTY3A2FETYEY2JWYF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi

I don't want to hi-jack your initial conversation here.

I just recently been using BATMAN-adv over ethernet

So yes BATMAN_V shows link speed throughput 1000Mbps  for me instead
of #255 with BATMAN-VI

I wanted to ask about debugging also, what other debug if any options
are there that i can use ?

I have enabled


echo "CONFIG_BATMAN_ADV_DEBUG=y" >> .config
echo "CONFIG_BATMAN_ADV_DEBUGFS=y" >> .config
echo "CONFIG_BATMAN_ADV_BLA=y" >> .config
echo "CONFIG_BATMAN_ADV_DAT=y" >> .config
echo "CONFIG_BATMAN_ADV_MCAST=y" >> .config
echo "CONFIG_BATMAN_ADV_NC=n" >> .config
echo "CONFIG_BATMAN_ADV_BATMAN_V=y" >> .config
echo "CONFIG_BATMAN_ADV_SYSFS=y" >> .config
echo "CONFIG_BATMAN_ADV_TRACING=y" >> .config


echo 255 > /sys/class/net/bat0/mesh/log_level
cat /sys/kernel/debug/batman_adv/bat0/log



since i want to understand why on wifi mesh seems to crash for me ath10k


On Wed, Jun 24, 2020 at 10:42 PM Rob Cowart <rob.cowart@xecoenergy.com> wrote:
>
>
>
> > On Jun 24, 2020, at 3:13 PM, Sven Eckelmann <sven@narfation.org> wrote:
> >
> > On Wednesday, 24 June 2020 22:02:38 CEST Rob Cowart wrote:
> > [....]
> >> Is anything wrong with these?
> >
> > Most likely not, but someone on the mailing list with deeper knowledge on
> > B.A.T.M.A.N. V's echo location protocol could actually check whether non-
> > symmetric settings on different nodes could create problems or not. Or if
> > having both ELP and OGM2 interval set to the same value could have negative
> > side effects.
> >
> >
> >> Our gateway:
> >>
> >> pi@raspberrypi:~/xeco-master/enola-daemon $ cat /sys/class/net/wlan0/batman_adv/elp_interval
> >> 500
> >> pi@raspberrypi:~/xeco-master/enola-daemon $ cat /sys/class/net/bat0/mesh/orig_interval
> >> 1000
> >>
> >> nodes:
> >> pi@raspberrypi:~ $ cat /sys/class/net/wlan0/batman_adv/elp_interval
> >> 30000
> >> pi@raspberrypi:~ $ cat /sys/class/net/bat0/mesh/orig_interval
> >> 30000
> > [...]
> >
> > On Wednesday, 24 June 2020 21:23:09 CEST Rob Cowart wrote:
> >> IF             Neighbor              last-seen
> >> b8:27:eb:4e:73:6d   25.330s (        1.0) [     wlan0]
> >> b8:27:eb:ff:0e:b6   23.320s (        1.0) [     wlan0]
> >> b8:27:eb:08:13:37   18.850s (        1.0) [     wlan0]
> >> b8:27:eb:aa:1e:6d   37.010s (        1.0) [     wlan0]
> >> b8:27:eb:35:c6:77   63.590s (        1.0) [     wlan0]
> >> b8:27:eb:e9:34:41   18.280s (        1.0) [     wlan0]
> >> b8:27:eb:84:ca:90   30.560s (        1.0) [     wlan0]
> >> b8:27:eb:1e:eb:cd   27.410s (        1.0) [     wlan0]
> >> b8:27:eb:cb:80:34   23.100s (        1.0) [     wlan0]
> >
> > Btw. it looks to me like B.A.T.M.A.N. V is a really bad choice for your setup.
> > All links have the throughput value 1.0 Mbit/s. This sounds to me like the
> > wifi driver doesn't provide the required expected_throughput. And so you have
> > a REALLY, REALLY, REALLY bad metric when you are using 1.0 everywhere. So if
> > you want to continue experimenting with B.A.T.M.A.N. V then you should try to
> > get this fixed in your wifi driver or just switch to B.A.T.M.A.N. IV with
> > increased multicast rate.
> Are there any docs that talk about what B.A.T.M.A.N. V vs B.A.T.M.A.N. IV is good for?  The decision to upgrade was made before I got here, I'm not sure anyone understood that IV would still be supported/expected to be used.
> >
> >
> >> Lots of stuff I don't understand here, looks like loopback is very busy?
> >
> > Not sure what you mean here with loopback. I will just leave the whole output
> > here in case somebody else on the mailing list wants to figure it out.
> >
> >> pi@raspberrypi:~/xeco-master/enola-daemon $ sudo batctl td wlan0
> >> 15:01:52.075412 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 704843962, v 15, interval 500ms, length 20
> >> 15:01:52.076036 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.076507 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.076854 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.077456 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.077937 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.078028 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.078657 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.079155 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.079246 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.079894 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.080480 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.080965 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.081435 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.081904 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.081995 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.082435 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.082539 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.082957 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >> 15:01:52.415359 BAT b8:27:eb:fb:4e:58: OGM2 via neigh b8:27:eb:fb:4e:58, seq 500807384, throughput MAX, ttl 50, v 15, length 60, tvlv_len 40
> >>      TVLV TTv1: OGM DIFF [.] ttvn=1 vlan_num=1 entry_num=0
> >>              VLAN ID -1, crc 0xf0cfd284
> >>      TVLV GWv1: down 10.0Mbps, up 2.0Mbps
> >>      TVLV DATv1: enabled
> >> 15:01:52.423153 BAT b8:27:eb:fb:4e:58: OGM2 via neigh b8:27:eb:aa:1e:6d, seq 500807384, throughput 15.0Mbps, ttl 49, v 15, length 60, tvlv_len 40
> >>      TVLV TTv1: OGM DIFF [.] ttvn=1 vlan_num=1 entry_num=0
> >>              VLAN ID -1, crc 0xf0cfd284
> >>      TVLV GWv1: down 10.0Mbps, up 2.0Mbps
> >>      TVLV DATv1: enabled
> >> 15:01:52.424280 BAT b8:27:eb:fb:4e:58: OGM2 via neigh b8:27:eb:cb:80:34, seq 500807384, throughput 14.9Mbps, ttl 49, v 15, length 60, tvlv_len 40
> >>      TVLV TTv1: OGM DIFF [.] ttvn=1 vlan_num=1 entry_num=0
> >>              VLAN ID -1, crc 0xf0cfd284
> >>      TVLV GWv1: down 10.0Mbps, up 2.0Mbps
> >>      TVLV DATv1: enabled
> >> 15:01:52.428556 BAT b8:27:eb:fb:4e:58: OGM2 via neigh b8:27:eb:84:ca:90, seq 500807384, throughput 15.0Mbps, ttl 49, v 15, length 60, tvlv_len 40
> >>      TVLV TTv1: OGM DIFF [.] ttvn=1 vlan_num=1 entry_num=0
> >>              VLAN ID -1, crc 0xf0cfd284
> >>      TVLV GWv1: down 10.0Mbps, up 2.0Mbps
> >>      TVLV DATv1: enabled
> >> 15:01:52.575301 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 704843963, v 15, interval 500ms, length 20
> >> 15:01:52.575486 BAT b8:27:eb:fb:4e:58: ELP via iface b8:27:eb:fb:4e:58, seq 0, v 15, interval 0ms, length 200
> >
> > Kind regards,
> >       Sven

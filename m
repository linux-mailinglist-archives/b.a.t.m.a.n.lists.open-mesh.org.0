Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3C209DA9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 13:44:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5F3DF80748;
	Thu, 25 Jun 2020 13:44:21 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 30490802A4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 13:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1593085457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SaPSNEBkwlOyUlG85hKK0JpmOxL1twDS2CaMJOJDYmI=;
	b=DeQolSdH7R7k8BeriasXGa3m+ZHHERQZSFZrYV1qjiu5i0FwWKocx7BONJ4ZrK2wFuBK4X
	anChL+vkBRSSker91TBTTUj/OJAYPSXTQXspj+moztoVJzDtmGQ7VruzVDdndVtSzzPjhK
	JPcRphPZERoiNcYYzaFLH1a25m0rbg8=
From: Sven Eckelmann <sven@narfation.org>
To: Mark Birss <markbirss@gmail.com>
Subject: Re: BATMAN-adv Debug options
Date: Thu, 25 Jun 2020 13:44:14 +0200
Message-ID: <12351834.0eS7jaRIYG@bentobox>
In-Reply-To: <CADg1mwLTTq-wjxvPvkTBb2J9qtSs_+BxhNsSW0DGTeo6QiWXbA@mail.gmail.com>
References: <CADg1mwL07UQqmUctQexAFCgFMrXBiF=rB1EdRqb3agveSEkckQ@mail.gmail.com> <1986026.lAXmxmQttu@sven-edge> <CADg1mwLTTq-wjxvPvkTBb2J9qtSs_+BxhNsSW0DGTeo6QiWXbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3144515.ssdNmsuo9I"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593085458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SaPSNEBkwlOyUlG85hKK0JpmOxL1twDS2CaMJOJDYmI=;
	b=PBS20EvVw2hxfy7A7+djHJP81vT4mTSvdzqwXR7H3CMGypVD3qAQEyOp4Y8Iqvlyk29y88
	+Ic/EM6L5BqBNIj+jR70srKyqDTj8UJWGIPNdP4O087diDw33I4hv14/2M/6v0SK1NuSXJ
	Rt9VPTtcquYcZ4zOEyUdl0X2jqPLs30=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593085458; a=rsa-sha256;
	cv=none;
	b=gR6/0MyAOpIlevyM8+mdGONHbXoN9FksaJmYr2l6dpX0YfXUW6c7pQqRLmNqtihkUZc2k5
	P8lscA9fEkbGOW8A9fpmCCQz/QlotalyOZnHUAijUX+0NArGqWxe03STWVCbHOxfQEQAh5
	YHLRzGbDbOOsTvoX969+fnfYY8W1BLQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=DeQolSdH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 5DDLAIMEC2XI22LVC4L6JSRMSCEYHQD6
X-Message-ID-Hash: 5DDLAIMEC2XI22LVC4L6JSRMSCEYHQD6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5DDLAIMEC2XI22LVC4L6JSRMSCEYHQD6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3144515.ssdNmsuo9I
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

[please never contact me privately about batman-adv without a really good 
 reason. Cc at least the mailing list]

On Thursday, 25 June 2020 13:12:34 CEST Mark Birss wrote:
> "Is the lower layer working or did the lower layer break? Can be
> tested easily with multicast/broadcast and unicast pings on the lower
> device."
> 
> How to do this ?

ping/ping6.

* unicast: just ping as normal the lower device (not bat0) IPv4 address or 
  (link local) IPv6 address
* multicast: just send from both sides an multicast ping. For example 
  ff02::1%wlan0 and check if the remote (not your own device) responds with a 
  unicast reply

> As for originator and neighbours this can also be checked by batctl or
> proc file system.

proc? If you have batman-adv entries in proc then you should definitely 
upgrade. This was removed in 2010.

Should this have been a question about where to find the originators and 
neighbors table? And you can see this via "batctl meshif bat0 originators" 
and "batctl meshif bat0 neighbors". The "meshif bat0" has to replaced with 
"-m bat0" on older batctl versions.

> Another question is there a breakdown of the meaning of the messages for
> 
> $ cat /sys/kernel/debug/batman_adv/bat0/log
> 
> The additional debug output is by default disabled. It can be enabled
> during run time. Following log_levels are defined:

No idea what you want here. The help text already says what each message type 
is about. If you don't know what a specific feature is then please check the 
wiki [1].

> and what is the Flags here
> 
> root@LiMe-a376eb:~# batctl tl
> [B.A.T.M.A.N. adv 2020.1-openwrt-2, MainIF/MAC:
> dummy0/aa:84:86:a3:76:eb (bat0/72:8b:cf:a4:00:77 BATMAN_IV), TTVN: 4]
> Client             VID Flags    Last seen (CRC       )
> 72:8b:cf:a4:00:77   -1 [.P....]   0.000   (0x1c349131)
> 50:3e:aa:06:6f:4d   -1 [......]   0.280   (0x1c349131)
> 72:8b:cf:a4:00:77    0 [.P....]   0.000   (0x9243e316)
> cc:2d:e0:47:b3:56   -1 [......]   0.980   (0x1c349131)
> 72:8b:cf:a4:00:77    1 [.P....]   0.000   (0xdb7f9e31)

The flags here are

* 'R' BATADV_TT_CLIENT_ROAM
* 'N' BATADV_TT_CLIENT_NEW
* 'X' BATADV_TT_CLIENT_PENDING
* 'W' BATADV_TT_CLIENT_WIFI
* 'I' BATADV_TT_CLIENT_ISOLA
* 'P' BATADV_TT_CLIENT_NOPURGE

And they are documented in the wiki [2]

Kind regards,
	Sven

[1] https://www.open-mesh.org/projects/batman-adv/wiki/Protocol_information
[2] https://www.open-mesh.org/projects/batman-adv/wiki/TT-Flags
--nextPart3144515.ssdNmsuo9I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl70jg4ACgkQXYcKB8Em
e0YPJQ//WVm74Lbb0Uy2218PQ7JD1GTtSyZsl3qDVW54uX1gmz7jDYDE+46V91Rt
MtTmEyeryh6ROH0+pCACkyc3Y8QlDPnACXNn+vXGNiqWfZunM5EJzNvOUPPzS+Ya
ierUrTGzhCENqs4Cg9xbtMtlgGhEZt6DlL22F/EqlQxapUWGriJO7g/beNBJlhC6
fvsOmV7B6VO/S1qg2oz5sXujNqK5q3xci2hNfJUCGkSAjQh698A/UfX04yerEi3X
XSbaVONUGsie061xeXvtnV7wu96711q295aKBB/akJGRgQwEh6Z5dLE31l77xK0d
36eZmLBqEALKZhHW5dzTtBm+2UQIFVdWWh/FtqYKHZociRe1z6ZRekwVXu0EQkvS
HlNniLB8Alkpp1H8K7cTxfzbvkHNK0uuFzkuNHVSIo3gFxAIYzTZno8FfS7JiDOD
OGwwIWlgdHNfs+xsloP6YxgUx/D7dCNSlZwW+CqmzmDQAAyXeswNIuAZm4lPKU2A
r3mJtBPDNu3cA0hqDniFVppazesvy64V+F9eqzvzzP+4cS5CDvX/JVQv05Ue2vML
gcNiuEr3qPFsQYMGqbR8RtA9wxf3Dzt8kvVhSNAHI1PG7+TsuEQmuDMu7cRDL4fL
YS+66GpI2uEWx2gnGsH6Ils1FTRlAyy4Xcx1iouXAv8g10FLEHY=
=oTmE
-----END PGP SIGNATURE-----

--nextPart3144515.ssdNmsuo9I--



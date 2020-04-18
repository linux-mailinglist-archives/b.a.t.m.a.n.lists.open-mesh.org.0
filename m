Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0031C1AEA8E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 18 Apr 2020 09:49:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9219F81088;
	Sat, 18 Apr 2020 09:49:36 +0200 (CEST)
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 20950800AD
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 18 Apr 2020 09:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1587196174;
 bh=vI2ncKZGa4wiN0TT0eZCzJVOs/hAoy1dFqqVa4947io=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=FnF2+092rmMHezoWLGy5WDvDmGDKsc6d0uBYsfMxDkrVRIuXl07aJvr3KZpvlQGBD
 PARKZdappE5Q93skHmfW4i5n6iafv5+gTerdbcTA4TdbAN/zYsjZ0Sg8BcyQ81kbSO
 7HGgHU6paYstvVXIM0dCMDkhVJU1pjx4mGPm7kVU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.109] ([91.3.167.116]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0M9dCJ-1jX7I10CjP-00D3Lt; Sat, 18
 Apr 2020 09:49:34 +0200
Subject: Re: batman cpu usage of multiple instances
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <97bf748d-16e5-d088-118f-6f3678300191@web.de>
 <11503500.qvHmQplXmE@bentobox>
From: Moritz Warning <moritzwarning@web.de>
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6467ca72-a8af-0a85-f490-57ffe4763794@web.de>
Date: Sat, 18 Apr 2020 09:49:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <11503500.qvHmQplXmE@bentobox>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="JnHHbHhz9FgtcIuX6bkVjxE0Bu3ikfgk4"
X-Provags-ID: V03:K1:wbUfLWy0VAUEfO5x8d+w+PdJJZkpLlt7BN6dqnwNE74gruXsl+9
 ipOSuV1ir1jaAKRbx0du51jPwz4e7Cb1fYS7n6A/5XLsgC554fUdWWZMG+3+WgKoi/nXuOJ
 u7fVXESjFJfCPb4uyUpwxidH6ielcwpDC1SbdcIke+KYIE2ezRPHMbRMmZJsM7We0+SGuSH
 1PV5/0cUZdyolgEaLmGOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yJCPf2Sdlv4=:zIzAde8vc0bBdSrWHsj2nC
 3r/R9VqVAAN7T0Ep0qUWVP+IXI4pF/06dsLutyj32gst9GK0jYlXhT7QYVD7J1u8o3wjt/WDJ
 +wSrt+uVi7e2iq+Yz65Da8NwnQm/I49xXf2qgDzevraVryV4oLMvdlg9EoGxgeI4x41rjB2k6
 biQ1UlG6+Rziy0+OSsROCILJM2m2AnrzQ2xsmRE/jY8K3wmb9eS29C1F00sx3l35b2idm5S7W
 vAT5IouSMJQnBi6jiGje6y2EGoFmYMSVLuiBBRzt1s+btUho92+zubPCLpK6+Jj67Xn7gBqaJ
 6Tz/ViNBf2+q2ky5G8fn1kMOiEpWGnzl++EOlA0KfBgRuLzmZq86QOvoU2zg1AmOwHZlG3U6e
 vU4TSTQp6YXC+BxiKPJ2V8dYa0qr6Nv3c2QDsM/4UNpB1glfMBGzmyuFnu5OF9rI4R8gdHTQ2
 PCHMlwQyv+ngOMGRsZiv1L/K/mRIEyU58d2GE9n3/FrOH5Jsikok2sq0eLMuQoXS7iYe8DGCB
 +T5D3AA+DqeK+b+j/AUrYvsCMd+N4Mu8ggQl9U6qvT//n1CTnpKxshqJ2daAi1sXsz2w4XLHk
 lOW6iIuk55zEApI/DqEp9UCAkvIsI9sJlYtSSiJHdRA5qg9B5fTFeMu5oxvekRgKWaTll+Cf9
 yc2V5sJ5CLYaTPrlDkUwmdeEjDV51GeKJBIXBNdRzAKBEHMhfwbLKg7dnN02068lSi9fS6BoM
 QIUuNzPYlotrd5hJUfzqFJ3exM1rRsYz7ZjztJ5+BD0dFLcvNAMY2CX0/LKWritcRgd9xZ/o4
 untowiwi641S8+EPwm69oUmGEngzifrZpRY2C/4Q9+/8qVUw20itHzkh1un/kPOpaq7zr9Xq8
 CoovKtyRUeiPlIkZEGtewWyfk3FuT1b7oXqvC1KyyT9JUsDp65SFoWutmvMwkTU980pEf4XB8
 Id74Wbof8epPRSHS+hJdNWKzSbkK2J/iJZqOxo+kL7bHAIMgkt05Yb4mdMFBkXGQJgeTVKsRd
 hg58xT9IPsmgGZd0QWNSUJJJfpATrkBRRrV/nPX5GzS0su4Dl3hh91rDd/05xIvVWDuJ1GsRQ
 QJDiKvtY53qohy7JqZPKN05g9KOUop94Mibqx02ednZQyI0IMxKKyK9cFdpP+ZaNb7neQOq/H
 roA+n+Ly94rK46NpeBQ2kI2irdHFV7Rpd97wYsH/7oR8NQ96adgMIQcdO2XZNUMM33PvW39fZ
 dn2I8YN5OOPn27BiP
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1587196175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
 bh=EKhV39IR58N8Dp1T1mqTpmsvMGOFPIQgwq8ymHFtXZk=;
 b=ngKYFWHfRkSqSPCWi6FtJOkhBCzKi7lzg2DgLIOi2+rtnX7/7/IdkNZ3AMUCpbkzwgdrxx
 LzSo/CGwYZ/zDeGKYGD5ziyakxS48XEkQjtRZDP2XOOMLTMPrkHJPfwvnBQHyaGiKO44xN
 HvDyTbHOCgWKLSkTK4KOtUoWzkHQWMg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587196175; a=rsa-sha256; cv=none;
 b=ass15jhfp71MVToxqJUu8VKYjwETkbyi8vqr6BGy8FdYOlfSK8KyBLI74ROk7mTMFO9bjD
 WhcADeq2W+elBkVjKTPNiE4LywpB6axraTM3uuDcKg6gj9oKgiKxQ82JIc0sJgEKkc7RU0
 6iYO+/e2U61sf1t4ddQdk3XbdNE7828=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=web.de header.s=dbaedf251592 header.b=FnF2+092;
 spf=pass (diktynna.open-mesh.org: domain of moritzwarning@web.de designates
 212.227.15.3 as permitted sender) smtp.mailfrom=moritzwarning@web.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--JnHHbHhz9FgtcIuX6bkVjxE0Bu3ikfgk4
Content-Type: multipart/mixed; boundary="gKXBTivO4fyTsNeSiv0uVJVSZ552Rhzt7";
 protected-headers="v1"
From: Moritz Warning <moritzwarning@web.de>
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
Message-ID: <6467ca72-a8af-0a85-f490-57ffe4763794@web.de>
Subject: Re: batman cpu usage of multiple instances
References: <97bf748d-16e5-d088-118f-6f3678300191@web.de>
 <11503500.qvHmQplXmE@bentobox>
In-Reply-To: <11503500.qvHmQplXmE@bentobox>

--gKXBTivO4fyTsNeSiv0uVJVSZ552Rhzt7
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 4/17/20 7:51 AM, Sven Eckelmann wrote:
> On Friday, 17 April 2020 03:23:23 CEST Moritz Warning wrote:
>> I have many batman-adv instances (~1000) running on one computer in a =
Linux network namespace each.
>>
>> Top shows me that a single kernel worker is handling batman-adv:
>>   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ C=
OMMAND
>> 29251 root      20   0       0      0      0 R  99.3   0.0  18:03.27 k=
worker/u32:3+bat_events
>=20
> This bat_events is mostly for sending the OGMs/ELPs/BCAST-retries. Usua=
lly not=20
> a bottleneck but your configuration is rather special and thus can be a=
=20
> limiting factor.=20
>=20
>> Is there a way to let those multiple batman-adv instances make use of =
the other cores?
>=20
> A quick way to change this is to go to batadv_init in net/batman-adv/ma=
in.c=20
> and change the create_singlethread_workqueue() call to create_workqueue=
().
>=20
> Kind reagrds,
> 	Sven
>=20

Thanks for the idea, but it turned out to make the situation slightly wor=
se.
While bat_events is only consuming very little CPU resources now,
now the ksoftirqd/X instances take up 100% of each CPU thread.

The maximum of traffic is generated at 170 nodes producing 14KB/s traffic=
 send per node,
which is much more than expected. This is a grid of nodes, maybe a differ=
ent topology will do better.

I am open for new ideas. :-)

Thanks,
Moritz


--gKXBTivO4fyTsNeSiv0uVJVSZ552Rhzt7--

--JnHHbHhz9FgtcIuX6bkVjxE0Bu3ikfgk4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEBtNBFtOYRL0Whm9U5yAWyf8FrDwFAl6asPkACgkQ5yAWyf8F
rDyhBhAAvSPJ1KdnpWnRd2arzivhUpVRfdszYqVLxdjs9YFoy4ECldyprJ2o7/bd
+hEhiE/D5SNkELsgMER6iOXISWoXhWP9mC1MSzlJBytXe0PDoht0KGEK4PphqIFE
xRQVeKFjCbgBa/ukP3P3cDjEs2NFjtrrKvJ7ZYUZZ4DnDPXE54gObsTSd9k4tG9e
QYp54S21sr6J8QEB7Wt39KRQKhZ6977nkbK6hKCdnnoD3jUBOYIrhZM/+plsdoAM
f0Ys9aVjBE+baFKZtJEuZZyF4jCbgHadA0L5HFEVnUcQq2dVJkXanMcOKTQbgUxr
AtWBdlrMsm6ob2CRqf7HC94H3IKgmCLR8Adj1pZTlzSmH82IwGWliW7hIuuNheLI
z7cFghhoNVM1tL1gdyOn2EvkmKJf1ol7Q1cYKDfobqGJR1rx0346U4mKLKDxo7dv
14IqjEKKWjvCGr/k6UH0K60L9dEvnWdnG7a89DnwaKUXP0mwa7/+OR3nwoQPa/T8
m/lOOh5W6zdbPAYkOMU2WnTDAITf/TGoPynKF/Ec72x2JcC1Fk2K5r1f6im2uqJA
66XGOEYq5Jy/Qf8Tfkx89qOMs7pXOHy/fBhY/0wZgiXXXDjzLbrQI68hhpm/Q6U7
4nSjomeKOhiRj8okTvnm0B0G+kE3DPdz/jYVojg+IA+Si2MWEw8=
=GLxn
-----END PGP SIGNATURE-----

--JnHHbHhz9FgtcIuX6bkVjxE0Bu3ikfgk4--

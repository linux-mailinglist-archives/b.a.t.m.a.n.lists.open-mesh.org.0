Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id EC31A643DC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jul 2019 10:57:02 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0D1B9811CE;
	Wed, 10 Jul 2019 10:56:54 +0200 (CEST)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112]) by open-mesh.org (Postfix) with ESMTPS id 8E9138033C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Jul 2019 10:56:50 +0200 (CEST)
Received: from 1.general.smb.uk.vpn ([10.172.193.28])
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <stefan.bader@canonical.com>)
 id 1hl8PB-0006Rb-VP; Wed, 10 Jul 2019 08:56:50 +0000
Subject: Re: Unknown symbol cfg80211_get_station
To: Sven Eckelmann <sven@narfation.org>
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
 <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
 <91929546.yq5N1g86sx@bentobox>
From: Stefan Bader <stefan.bader@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.bader@canonical.com; prefer-encrypt=mutual; keydata=
 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
 a/xox1VK9s1EK3Ny6Pj9DekR+8E=
Message-ID: <e8205d24-56d7-14fd-6cd8-367791c2c003@canonical.com>
Date: Wed, 10 Jul 2019 10:56:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <91929546.yq5N1g86sx@bentobox>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="RjMhftuPXC9laEChtiLJycDLDD0P9fVvK"
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>,
 b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RjMhftuPXC9laEChtiLJycDLDD0P9fVvK
Content-Type: multipart/mixed; boundary="30xOA4emvBlS1RY0ALuJ0yKmWAxRmAZTS";
 protected-headers="v1"
From: Stefan Bader <stefan.bader@canonical.com>
To: Sven Eckelmann <sven@narfation.org>
Cc: Moritz Warning <moritzwarning@web.de>, b.a.t.m.a.n@lists.open-mesh.org,
 Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Message-ID: <e8205d24-56d7-14fd-6cd8-367791c2c003@canonical.com>
Subject: Re: Unknown symbol cfg80211_get_station
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
 <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
 <91929546.yq5N1g86sx@bentobox>
In-Reply-To: <91929546.yq5N1g86sx@bentobox>

--30xOA4emvBlS1RY0ALuJ0yKmWAxRmAZTS
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10.07.19 10:28, Sven Eckelmann wrote:
> On Wednesday, 10 July 2019 10:23:21 CEST Stefan Bader wrote:
>> On 06.07.19 17:22, Moritz Warning wrote:
>>> Thanks Sven for having a good look.
>>>
>>> There is no cfg80211 module present on the system (find /lib/modules/=
4.15.0-1032-aws/ -name *80211*).
>>> Package linux-modules-4.15.0-1032-aws is installed.
>>
>> The aws kernel is intended to be used on instances in the Amazon cloud=
=2E There is
>> no wifi hardware present on those instances, so it generally makes no =
sense to
>> have those modules.
>=20
> Yes, but then please don't compile it in. Otherwise other modules (whic=
h make=20
> sense on a server) build against functions from cfg80211 and *don't* en=
d up with=20
> a nop-stub - just because the actual implementation was compiled as par=
t of the=20
> cfg80211 module (but not shipped).
>=20
>> As Jens pointed out the missing modules are in linux-modules-extra not=
 in
>> linux-modules (the former is not installed by default).
>=20
> Who is Jens and where did he point something out?
>=20
> On Saturday, 6 July 2019 17:22:01 CEST Moritz Warning wrote:
>> The module linux-modules-extra-4.15.0-1032 installs the following file=
s:

Sorry, I meant Moritz ^

>>
>> /lib/modules/4.15.0-1032-gcp/kernel/net/wireless/cfg80211.ko
>> /lib/modules/4.15.0-1032-gke/kernel/net/wireless/cfg80211.ko
>> /lib/modules/4.15.0-1032-azure/kernel/net/wireless/cfg80211.ko
>>
>> But this is not in the *-aws path.
>=20
> It looks to me like Moritz checked it (I didn't) and they were not avai=
lable=20
> for his aws kernel.
>=20
> Kind regards,
> 	Sven
>=20



--30xOA4emvBlS1RY0ALuJ0yKmWAxRmAZTS--

--RjMhftuPXC9laEChtiLJycDLDD0P9fVvK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE2118yvOZTjOV2k0+6Gdd7svuzqMFAl0lqEQACgkQ6Gdd7svu
zqPRvRAA3b0cAk6u3XRGHVHOLR5dhODlzBpOKiB72XZvF7RmPeqEHo7s/r5muwCt
wts+g3O8e5x0mkaE5SyrZEvc1Kcop1+FMVTGmek9GlviFUZY0HHznWcJAa1hhOFa
KZtMIDNE7UhQzTOsvQ12OnvvHHhGPPy1K7VM8fdiwhModpzd5XNUzAcbrTYONadt
Fi8gG8eCh/3sZ86eXW+QIr/NVA0GM8ey1W529vflIOFrLEv//kE0JXrZYa1wBJ/n
MJqiBvxA+6eUehO1c4fLVDg+00jUxWyzXdhvEEAYLZ54w4RSl0q4jmfksypnOfDp
T7G5/qXESz1WF2+H0pWNi7Skkr8/VAra4XaqbCY1noQ656LstjlB6L1LMpkwrvuD
emkc+gdoGJCbaKhZteSvqMNWESMcNj2qzOEzvXq0Ck9KYTKe3dtKNWVUXYliD1JM
bsP5A2UZA4jD0HMcmI+Z7qQ13hxBH4dkbTdsCkhPkuag3BbVWaNdBNpP+GcM41tD
FhwnfQjK9KuPlFM2WI1rYswmunsxmByB2IMmPcHKUHHZ5xKwyskV3KRtjG93BLtY
24Wbnqbucm9kYfozj19+1Bf9oSVL5uP0sq5jmfBd+zHIduxO5eaRm7sVFPLULgeN
QBG/uTLsPY3IgWiliZGfY+JhTWA3VhAK4GFOw9LHVKkZT58oPbA=
=r+OI
-----END PGP SIGNATURE-----

--RjMhftuPXC9laEChtiLJycDLDD0P9fVvK--

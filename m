Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 37315698D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Jul 2019 18:04:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 48BFA811C8;
	Mon, 15 Jul 2019 18:04:48 +0200 (CEST)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112]) by open-mesh.org (Postfix) with ESMTPS id 5AAF380A39
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Jul 2019 18:04:44 +0200 (CEST)
Received: from 1.general.smb.uk.vpn ([10.172.193.28])
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <stefan.bader@canonical.com>)
 id 1hn3T1-0006wz-Rh; Mon, 15 Jul 2019 16:04:43 +0000
Subject: Re: Unknown symbol cfg80211_get_station
To: Sven Eckelmann <sven@narfation.org>
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <91929546.yq5N1g86sx@bentobox>
 <e8205d24-56d7-14fd-6cd8-367791c2c003@canonical.com>
 <10352586.3EjdGBoHHf@bentobox>
From: Stefan Bader <stefan.bader@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.bader@canonical.com; prefer-encrypt=mutual; keydata=
 mQINBE5mmXEBEADoM0yd6ERIuH2sQjbCGtrt0SFCbpAuOgNy7LSDJw2vZHkZ1bLPtpojdQId
 258o/4V+qLWaWLjbQdadzodnVUsvb+LUKJhFRB1kmzVYNxiu7AtxOnNmUn9dl1oS90IACo1B
 BpaMIunnKu1pp7s3sfzWapsNMwHbYVHXyJeaPFtMqOxd1V7bNEAC9uNjqJ3IG15f5/50+N+w
 LGkd5QJmp6Hs9RgCXQMDn989+qFnJga390C9JPWYye0sLjQeZTuUgdhebP0nvciOlKwaOC8v
 K3UwEIbjt+eL18kBq4VBgrqQiMupmTP9oQNYEgk2FiW3iAQ9BXE8VGiglUOF8KIe/2okVjdO
 nl3VgOHumV+emrE8XFOB2pgVmoklYNvOjaIV7UBesO5/16jbhGVDXskpZkrP/Ip+n9XD/EJM
 ismF8UcvcL4aPwZf9J03fZT4HARXuig/GXdK7nMgCRChKwsAARjw5f8lUx5iR1wZwSa7HhHP
 rAclUzjFNK2819/Ke5kM1UuT1X9aqL+uLYQEDB3QfJmdzVv5vHON3O7GOfaxBICo4Z5OdXSQ
 SRetiJ8YeUhKpWSqP59PSsbJg+nCKvWfkl/XUu5cFO4V/+NfivTttnoFwNhi/4lrBKZDhGVm
 6Oo/VytPpGHXt29npHb8x0NsQOsfZeam9Z5ysmePwH/53Np8NQARAQABtDVTdGVmYW4gQmFk
 ZXIgKENhbm9uaWNhbCkgPHN0ZWZhbi5iYWRlckBjYW5vbmljYWwuY29tPokCVwQTAQoAQQIb
 AwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgAIZARYhBNtdfMrzmU4zldpNPuhnXe7L7s6jBQJc
 YXLFBQkP4AFUAAoJEOhnXe7L7s6jfnoQAIvMeiY2h8q6EpEWfge0nJR3RnCghxd7Jjr9+bZV
 57DybFz0KnxR7MyKfOM8Sgp7pz5RYdtw6gNf8EZloZx+wd7YIYMiMHp4X2i43wY9G9r78AGe
 fATQBQ0QwqVn4Ix7OwVRCgbtv6cZ70lYY7AamXT65frXtc8FoGjaRV+ArgpL26pZV+ACarC8
 H796RfKS6nsyNjKq+aClLIE+YAIDT16pkiXFAsbFtNXLciBxmSPrPUCCYoSJiNjTioLAxqXn
 MxBhnfTmZOp1UTrxA63yQlqRNYDB6Z0mL8RRH5j/a1cJPskavyZstnSA1pjqnNXonsxVwvn9
 WopEpgr73PU6UdMMoOkUV8Z3wUpPaJOGSskqmM12cDZYbVZ9G3FvNPWv0bXw5ww0jdbQ4BPn
 aGp1RumilTLsmyk3gshEt78ufkbCTug4hThCmaXTnyheqL4R6D9n0ZC1lQw+Nb5chyjVoQ1v
 WUWjekL8Crfj5KzTEi/pW1bzUa03j9/L5VDF3ghm4jKPt9+Iyd+p4/ICZrCv/6ESgC2pYxZm
 jI+ZfN4mrKCwy4T9WekgB5aNEWeRZx01/5O0iMVRDVU2BEpFCAqu8S8px1n+U2RIb2CjZEOg
 70w0heVfDDxZKLx002Kw1sM/PB5drWmkXZlpL5fZ5ZC2yxgsrLquf7rbPyNsX7mBhz1iuQIN
 BE5mmXEBEADCkRfuS1cAx02yTsk9gyAapcQnpb6EBay40Ch/IPrMF2iG4F0CX6puKubjjVbq
 L6jEKyksqPb57Vu9WAufy4Rlv3OwzaymmWk00CROCVSuEV+3bikBTnF/l+VVCvccNlpHsADM
 LncaATvSOj1iCXeikxNAk2LA3g9H8uz7lQUhjni05ixBZGDGbaxB6Odmh58q8k/iooREHyqf
 leSg1zpuBxYGKVug2daXLSvQI7w59eYO/L1YpLtu1sMzqRyYdSUyCiNcXDO/Ko221o2NfdqQ
 9KET1az8QTsBnZeTsjsk4VnYwjc9ZEYN7LATWrhz8vgI2eP80lXxXm9kx81NubnOPxna5vg9
 DhxZEjo8A+zE4c5bQuSCJ3GTnOalXsAz0Lwk1H1nFwizUqvmPI8eAqZGeZoJ409uDcNi2BrR
 +W7MjXxPM5k4M2zMiNfIvNBjclBLE/m7nrcxNLOk1z/KQiFVZQhtHXoOTUWmINZ+E3GIJT2D
 ToFxUoaEW2GdX0rjqEerbUaoo6SBX7HxmjAzseND9IatGTxgN+EhJUiIWK4UOH343erB7Hga
 98WeEzZTq7W2NvwnqOVAq2ElnPhHrD98nWIBZPOEu6xgiyvVFfXJGmRBMRBR+8hBjfX0643n
 Lq3wYOrZbNfP8dJVQZ4GxI6OLTcwYNgifqp/SIJzE1tgkwARAQABiQI8BBgBCgAmAhsMFiEE
 2118yvOZTjOV2k0+6Gdd7svuzqMFAlxhc+wFCQ+krvsACgkQ6Gdd7svuzqNbxBAA42TRb2w7
 AaaxFl/+f62F4ouDm0SPzLRoSmaKc/aqKnsNyn6ECp/qn9w1K04zh5HOOM2aJlGoEQiwIIQF
 ePgdoC/KFFxdEqRO2PWOJuewA8CfAsLq+eWYaGSdkuL3bvhB3nXweN89XDaxw1WTOP16Gtae
 CHdqNW1/ZdiFUvN/f/LiVQIgRvhqOm6ueN+z+mW5RrJg5rKsGO+UeQjV1CyVVvTKC044wQr/
 kCJamYglXvlgwO2/OoVveXe7FWV5To569vf0foxE6OA2fHx1bt/tkYL4MCbYMA+/7J5/JCcC
 Yd3jjuuazeDPDTchadUALz7XnxyBg8YkychoenHhI4mAvQFyeQHPC9bhNrk20AeJgm0onaYX
 mvL4vHSpB4KbcfbR+synGvfEgQ5Y8tvi27R51VhOaKmeK257m8W6fwReba19PK66gb59uyTU
 eDMBn+adQT4kjLLQMSdJmnDcbfDTtdwzepXOSkPGlluBKuvSTAg5Tv/Wp93XZICpqG0ufWwG
 9uG1fRqR3JDBe5IXOIppMHCaZBRC2x3tNVQnQlirhaUGGttOE+2Q5WGhWQejU+MRqKm8RYlb
 fztx5IMAzp3DR+6mpC9pAnNMATOZ6goC9cGWozu/JFMXS2H0uFnwtRjjHxcIYneuSAJQf/Kb
 a/xox1VK9s1EK3Ny6Pj9DekR+8E=
Message-ID: <af494410-d3a2-4602-644a-1eab1536f9b6@canonical.com>
Date: Mon, 15 Jul 2019 18:04:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <10352586.3EjdGBoHHf@bentobox>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Jz5acOXULUKKPOTZteNzga0PwSOS7espV"
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
--Jz5acOXULUKKPOTZteNzga0PwSOS7espV
Content-Type: multipart/mixed; boundary="jGDNfkLvlki88l2aPJKiimRem5f8EtqBB";
 protected-headers="v1"
From: Stefan Bader <stefan.bader@canonical.com>
To: Sven Eckelmann <sven@narfation.org>
Cc: Moritz Warning <moritzwarning@web.de>, b.a.t.m.a.n@lists.open-mesh.org,
 Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Message-ID: <af494410-d3a2-4602-644a-1eab1536f9b6@canonical.com>
Subject: Re: Unknown symbol cfg80211_get_station
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <91929546.yq5N1g86sx@bentobox>
 <e8205d24-56d7-14fd-6cd8-367791c2c003@canonical.com>
 <10352586.3EjdGBoHHf@bentobox>
In-Reply-To: <10352586.3EjdGBoHHf@bentobox>

--jGDNfkLvlki88l2aPJKiimRem5f8EtqBB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10.07.19 11:56, Sven Eckelmann wrote:
> On Wednesday, 10 July 2019 10:56:36 CEST Stefan Bader wrote:
> [...]
>>>> As Jens pointed out the missing modules are in linux-modules-extra n=
ot in
>>>> linux-modules (the former is not installed by default).
>>>
>>> Who is Jens and where did he point something out?
>>>
>>> On Saturday, 6 July 2019 17:22:01 CEST Moritz Warning wrote:
>>>> The module linux-modules-extra-4.15.0-1032 installs the following fi=
les:
>>
>> Sorry, I meant Moritz ^
>=20
> But he said something else. Or maybe I misunderstood him.
>=20
> I think Moritz meant that he didn't find the cfg80211.ko for his kernel=
=2E And=20
> thus cannot run batman-adv due to the missing dependency (which was int=
roduced=20
> because the kernel was compiled with cfg80211 but the cfg80211.ko was t=
hen not=20
> shipped).
>=20
> I also just tried to find linux-modules-extra-4.15.0-1032 but there are=
 only=20
> following packages in bionic:
>=20
> * linux-modules-extra-4.15.0-1032-azure
> * linux-modules-extra-4.15.0-1032-gcp
> * linux-modules-extra-4.15.0-1032-gke

Sorry for the late reply. This was discussed internally now and we will b=
e
working on getting this resolved (by starting to ship modules-extra for a=
ws, too).

-Stefan

>=20
> There is none which looks like it is for aws (something like=20
> linux-modules-extra-4.15.0-1032-aws).
>=20
> Kind regards,
> 	Sven
>=20



--jGDNfkLvlki88l2aPJKiimRem5f8EtqBB--

--Jz5acOXULUKKPOTZteNzga0PwSOS7espV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE2118yvOZTjOV2k0+6Gdd7svuzqMFAl0spBsACgkQ6Gdd7svu
zqPGoQ/8C8mqtRpbQpqHQAUEDiZgbg4I5eeYCWRh0WWEITbxqwUWWVKJJn2Un1MC
HYsU9JnqU7a8UZbzQ0mf3bIC0cqIo4TbeDM7luaO1P1yCe59gDz52iZKCNE0GYYg
6lp/fd54a1xPM7JjC+uwrtS95Y9g5Z4zQM3uSyoaYMtlgnrzoNgSCXJfDQwHKJra
3d288ooAO3kMs9hvrW+K1lAjoZrA6vU2WDLkvcHMZcqSGpSuAjTnQGrm2Pwhz5gM
727ywEk2Zu+hO7O3EHWiMMaPNbOqwQryUWmhIQcXfIK+9/5231UVur5iFtGYKC6L
JhkArNpAlOwBgQ6XhQ7sY/LUHQeHVTj9JF/YUMNGunySysa8jemLfGv+9qhRARhm
CJ2TJs5YYyQdDx44DDhK8j+B2YgYQvYyuYv38wT+PEhTuLYZHGsv8uKGMGUtZ4T2
kBOpNjteyMY1WMpt17zZVQaf709eMKXMD+4VZ6r6T1+fYIBEgzkI8n/lq1IivD8Y
XrS2cbwkENhi/tC8w1cEI4XqcXeA1W5EoyP5Q9ZBXyWhADsa4IC+M7k/N11iX3p5
+e+2SgJ1/DlhjKpCL4sIAFUtoLHf77zVa/+xo68+KfvZpFH3ckWCZtz+bZI5IfKJ
c+l5vkqKXyBgXMbSd3l+pdjjfSsfFeQ/MAuzjuT8ByPFSHMv5/Q=
=WDEo
-----END PGP SIGNATURE-----

--Jz5acOXULUKKPOTZteNzga0PwSOS7espV--

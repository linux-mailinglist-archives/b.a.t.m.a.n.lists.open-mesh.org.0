Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2964394
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 10 Jul 2019 10:29:29 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7B8E2815E2;
	Wed, 10 Jul 2019 10:29:18 +0200 (CEST)
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112]) by open-mesh.org (Postfix) with ESMTPS id A0FF380618
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 10 Jul 2019 10:23:22 +0200 (CEST)
Received: from 1.general.smb.uk.vpn ([10.172.193.28])
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <stefan.bader@canonical.com>)
 id 1hl7sn-0004Dh-UB; Wed, 10 Jul 2019 08:23:22 +0000
Subject: Re: Unknown symbol cfg80211_get_station
To: Moritz Warning <moritzwarning@web.de>, Sven Eckelmann
 <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <1875314.jOPAOSbl7z@sven-edge> <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
From: Stefan Bader <stefan.bader@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.bader@canonical.com; prefer-encrypt=mutual; keydata=
 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
 a/xox1VK9s1EK3Ny6Pj9DekR+8E=
Message-ID: <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
Date: Wed, 10 Jul 2019 10:23:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="KhJPMH8QhPYjvBDpq4jnwFeU2RKud5t3D"
X-Mailman-Approved-At: Wed, 10 Jul 2019 10:29:15 +0200
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
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--KhJPMH8QhPYjvBDpq4jnwFeU2RKud5t3D
Content-Type: multipart/mixed; boundary="5RwczmPjshYdofCVoKLJOx12lQELR4jK9";
 protected-headers="v1"
From: Stefan Bader <stefan.bader@canonical.com>
To: Moritz Warning <moritzwarning@web.de>, Sven Eckelmann
 <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Message-ID: <c60bd64a-127d-229c-3bed-eb59803a54f4@canonical.com>
Subject: Re: Unknown symbol cfg80211_get_station
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <1875314.jOPAOSbl7z@sven-edge> <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>
In-Reply-To: <7eadb3ab-1b51-e248-6122-a7c3c73383c9@web.de>

--5RwczmPjshYdofCVoKLJOx12lQELR4jK9
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 06.07.19 17:22, Moritz Warning wrote:
> Thanks Sven for having a good look.
>=20
> There is no cfg80211 module present on the system (find /lib/modules/4.=
15.0-1032-aws/ -name *80211*).
> Package linux-modules-4.15.0-1032-aws is installed.

The aws kernel is intended to be used on instances in the Amazon cloud. T=
here is
no wifi hardware present on those instances, so it generally makes no sen=
se to
have those modules.
As Jens pointed out the missing modules are in linux-modules-extra not in=

linux-modules (the former is not installed by default).

-Stefan
>=20
> The module linux-modules-extra-4.15.0-1032 installs the following files=
:
>=20
> /lib/modules/4.15.0-1032-gcp/kernel/net/wireless/cfg80211.ko
> /lib/modules/4.15.0-1032-gke/kernel/net/wireless/cfg80211.ko
> /lib/modules/4.15.0-1032-azure/kernel/net/wireless/cfg80211.ko
>=20
> But this is not in the *-aws path.
>=20
> On 7/6/19 2:16 PM, Sven Eckelmann wrote:
>> On Friday, 5 July 2019 16:51:56 CEST Moritz Warning wrote:
>>> on an AWS server I get this error:
>>>
>>> $ modprobe batman-adv
>>> $ dmesg
>>> ...
>>> [ 1310.125438] batman_adv: Unknown symbol cfg80211_get_station (err 0=
)
>>>
>>> $ uname -a
>>> Linux ip-172-31-47-217 4.15.0-1032-aws #34-Ubuntu SMP Thu Jan 17 15:1=
8:09 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>>>
>>
>> I have downloaded the headers [1] and they have following defined in
>> include/config/cfg80211.h:
>>
>>     #if IS_ENABLED(CONFIG_CFG80211)
>>     /**
>>      * cfg80211_get_station - retrieve information about a given stati=
on
>>      * @dev: the device where the station is supposed to be connected =
to
>>      * @mac_addr: the mac address of the station of interest
>>      * @sinfo: pointer to the structure to fill with the information
>>      *
>>      * Returns 0 on success and sinfo is filled with the available inf=
ormation
>>      * otherwise returns a negative error code and the content of sinf=
o has to be
>>      * considered undefined.
>>      */
>>     int cfg80211_get_station(struct net_device *dev, const u8 *mac_add=
r,
>>     			 struct station_info *sinfo);
>>     #else
>>     static inline int cfg80211_get_station(struct net_device *dev,
>>     				       const u8 *mac_addr,
>>     				       struct station_info *sinfo)
>>     {
>>     	return -ENOENT;
>>     }
>>     #endif
>>
>> So this function should be always defined by the kernel. Either throug=
h this
>> header or through the cfg80211 module (which can be part of the kernel=
 binary
>> itself).
>>
>> I have then downloaded the config deb [2]. It has the .config file inc=
luded
>>
>>     $ grep CONFIG_CFG80211 usr/src/linux-headers-4.15.0-1032-aws/.conf=
ig
>>     CONFIG_CFG80211=3Dm
>>     # CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
>>     # CONFIG_CFG80211_CERTIFICATION_ONUS is not set
>>     CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=3Dy
>>     CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=3Dy
>>     CONFIG_CFG80211_DEFAULT_PS=3Dy
>>     CONFIG_CFG80211_DEBUGFS=3Dy
>>     CONFIG_CFG80211_CRDA_SUPPORT=3Dy
>>     CONFIG_CFG80211_WEXT=3Dy
>>
>> So it is enabled as a module. So please load this module. And if it is=
 not
>> included in any package (what I am currently suspecting), please conta=
ct the
>> maintainers [3]. They either have to ship the modules or disable any m=
odules
>> in their build. But building them and not shipping is breaking the
>> dependencies of other modules (as shown by you).
>>
>> Kind regards,
>> 	Sven
>>
>> [1] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-aws-h=
eaders-4.15.0-1032_4.15.0-1032.34_all.deb
>> [2] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-heade=
rs-4.15.0-1032-aws_4.15.0-1032.34_amd64.deb
>> [3] https://bugs.launchpad.net/ubuntu/+source/linux-aws/+filebug
>>
>=20
>=20



--5RwczmPjshYdofCVoKLJOx12lQELR4jK9--

--KhJPMH8QhPYjvBDpq4jnwFeU2RKud5t3D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE2118yvOZTjOV2k0+6Gdd7svuzqMFAl0loHkACgkQ6Gdd7svu
zqM3lg/9G5k+BFUp9MvP5HiKtht4iVvrgPwkGIHfLFjUb3BfO8OkMPXWmyM6vYvH
PEauKal8D/kFHBdwi8ZOVdhJ/EIO5Dz2EtScGN3aPl2Iaf39WdSCNu26RiCV6FfF
bcp/datx+r2MjtkEqbrWGOmg0v/a/aNn2+99od/xc/SJAgalSbcvDHn7SjDJTQ3m
6cGRtwme4cAIkZert7Lw9jKICMylrsFYtSbajPTNPCeldoc4Tmm7gYCcGyhKS3tn
WUQbDLmjTD2S3Grvqw2YwIRdZ0FMHUDna/SB2MbIz/dK3XvxhTHQvzhDbXdQF64z
XfX9RAUn1pSBsWEfvb6ccsO6LrstbLmedp76RzLe/i1yoU4VsjoF9g30SNXqQBfz
KgnYcLF0tTxbQF94fYQzf9afwMvaj42KGsFITwYQPdn1aJWMFiy1eRuYKgRfFtkh
P60EUg1TccGpy6DRe3V46fvqOajrUg5cKupdVysBpuQijbvb34vEQj4GEhkDDgX2
+mzRPbeB5ygpwy0LYkPd4SbJwG1MBdIjP+GQHzsGIZsubsJ9otl6VSJR3GK8q9MT
tqfh74UyGfz8BYNGSxQE3C25V2BqOA2OLJUpnW0N4f6Qlw+TK05IT5xpf7fhtcfj
Q2VSehJ+UfUJRia41UYHfBH3Wpq0HJ778Hmf8b2uBouSOTBa/K8=
=qecm
-----END PGP SIGNATURE-----

--KhJPMH8QhPYjvBDpq4jnwFeU2RKud5t3D--

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D206109F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Jul 2019 14:16:34 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1CC90811EA;
	Sat,  6 Jul 2019 14:16:28 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id E1BE280610
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat,  6 Jul 2019 14:16:24 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 8571D1FE01;
 Sat,  6 Jul 2019 12:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1562415383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=05oeX/w55FzGxoOTntrA3f97I1IcRLEOXOlHZNECqjA=;
 b=rUmYJv8svqlWeuG6TMl+KVHOywPAeZMruZBNM6rWyTnCL/VQfArW/9Tc4bJt6We9ABQyIo
 CxIb3ocu30T86Rc2QvS9E/RjYhChhDh6XHR/tqzuIlgRU1vb+Ys/X4oVnOEDdB2NjI7p8w
 IGsq03IjKpQ7KZjeq4kAOaA12gVKA7Q=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Unknown symbol cfg80211_get_station
Date: Sat, 06 Jul 2019 14:16:21 +0200
Message-ID: <1875314.jOPAOSbl7z@sven-edge>
In-Reply-To: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3497251.KLex8dkMXf";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1562415383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=05oeX/w55FzGxoOTntrA3f97I1IcRLEOXOlHZNECqjA=;
 b=UzY7rbGDCqQOsXdfU88AmDMisc4aXqviZoSEX0P6FUeNDTQaw3UpXd3W2P7qiOX/SNCSmD
 5W/3x/M43+1r32AcPYMr7Z2YlIHOfY+hhBbNcF3m3bXeIdx8IkSivbdNSGkGIDemjQEpEk
 DTovP0z3s0ZBa9US9p8bYUkKF+ZuBJU=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1562415383; a=rsa-sha256; cv=none;
 b=ppe15DdhNfHBx9bpV+8uJqQnE9OEJu8bw+JzOw2bFkBDFior6xiKMV/UIoKDFWOqfspLW8
 3rhuuGSiOvmjtJ8VEqVE0dQHKXPlQTC8zLqoIV6uxn4jub27FhN/1v80rw8AxJ3iZqeGFk
 fWZuRDpmN9Bb+MKox/LsergSm9Y2b0E=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
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

--nextPart3497251.KLex8dkMXf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 5 July 2019 16:51:56 CEST Moritz Warning wrote:
> on an AWS server I get this error:
> 
> $ modprobe batman-adv
> $ dmesg
> ...
> [ 1310.125438] batman_adv: Unknown symbol cfg80211_get_station (err 0)
> 
> $ uname -a
> Linux ip-172-31-47-217 4.15.0-1032-aws #34-Ubuntu SMP Thu Jan 17 15:18:09 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
> 

I have downloaded the headers [1] and they have following defined in 
include/config/cfg80211.h:

    #if IS_ENABLED(CONFIG_CFG80211)
    /**
     * cfg80211_get_station - retrieve information about a given station
     * @dev: the device where the station is supposed to be connected to
     * @mac_addr: the mac address of the station of interest
     * @sinfo: pointer to the structure to fill with the information
     *
     * Returns 0 on success and sinfo is filled with the available information
     * otherwise returns a negative error code and the content of sinfo has to be
     * considered undefined.
     */
    int cfg80211_get_station(struct net_device *dev, const u8 *mac_addr,
    			 struct station_info *sinfo);
    #else
    static inline int cfg80211_get_station(struct net_device *dev,
    				       const u8 *mac_addr,
    				       struct station_info *sinfo)
    {
    	return -ENOENT;
    }
    #endif

So this function should be always defined by the kernel. Either through this 
header or through the cfg80211 module (which can be part of the kernel binary
itself).

I have then downloaded the config deb [2]. It has the .config file included

    $ grep CONFIG_CFG80211 usr/src/linux-headers-4.15.0-1032-aws/.config
    CONFIG_CFG80211=m
    # CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
    # CONFIG_CFG80211_CERTIFICATION_ONUS is not set
    CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
    CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
    CONFIG_CFG80211_DEFAULT_PS=y
    CONFIG_CFG80211_DEBUGFS=y
    CONFIG_CFG80211_CRDA_SUPPORT=y
    CONFIG_CFG80211_WEXT=y

So it is enabled as a module. So please load this module. And if it is not 
included in any package (what I am currently suspecting), please contact the 
maintainers [3]. They either have to ship the modules or disable any modules 
in their build. But building them and not shipping is breaking the 
dependencies of other modules (as shown by you).

Kind regards,
	Sven

[1] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-aws-headers-4.15.0-1032_4.15.0-1032.34_all.deb
[2] http://mirrors.kernel.org/ubuntu/pool/main/l/linux-aws/linux-headers-4.15.0-1032-aws_4.15.0-1032.34_amd64.deb
[3] https://bugs.launchpad.net/ubuntu/+source/linux-aws/+filebug
--nextPart3497251.KLex8dkMXf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0gkRUACgkQXYcKB8Em
e0YyohAAwmyAQCIdODNaGiXZasi3HbeVD/7lMlhEMSX7meUNgjB1wbxc0ZPnz8Ug
Q2ved9E7dSjKiKDdmnbLH2ODYgc84CxepuE8esfx22nsZVev1mEnPimqUoWtYaG/
MouausAPZmbpXrGm9VGwqrBQPsBUTm9fpSYAcC/XIuE1S3hsBfpF3H0QGXD31rwe
uglsU3RdXwmqpdgLGhzBJ0eZGWmCngrUavuIEzmK7TBBDgjCBpFctVYb9Sroky9y
VQ+Tb6nQrziG9MSRHdG+IaCZarf9NX3IYsbU6gSqwmVA4SFS09OMEft4ynwaFRDT
1z3lS5p8aFmvZwhSqG5RjboIjrIsNWHW/KVow81OYlmd7F5ZYQzetCshJidOKjSE
/pKrtZms0PR1NTU2jQ5w2P5w0nlSJwkrivdSV3Z89gIIo6tstHWdctzgFM9GEXcw
vNtbwP9197jKAWGiSkH4iE3wavMSthHLvqfEwdCiO6GysIwDUVHcGe2x4uo9lF90
JdywQSvr2LcvyfWv/M0zo9v4dsUh/puUPJzyq1AvmCiOG9mUPm6U6WhVXMSa/IaA
tMRCsOBLOvwEZ/JWK2q2fNH8BHPQqrGbwtumQKkZ5cpEgU98VvzTmbbX3PHgw5bm
mw6teDrCsf6QpWUu622bY2+VuoBiUsOT4oYL0U3iT6nz9A1kDw8=
=DJyO
-----END PGP SIGNATURE-----

--nextPart3497251.KLex8dkMXf--




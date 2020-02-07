Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C11155B26
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2020 16:52:59 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 8A6B380325;
	Fri,  7 Feb 2020 16:52:54 +0100 (CET)
Received: from simonwunderlich.de (packetmixer.de
 [IPv6:2001:4d88:2000:24::c0de])
 by open-mesh.org (Postfix) with ESMTPS id B4A2B80020
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 16:52:50 +0100 (CET)
Received: from prime.localnet
 (p200300C5970BB600893AD11B4D6E2C20.dip0.t-ipconnect.de
 [IPv6:2003:c5:970b:b600:893a:d11b:4d6e:2c20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by simonwunderlich.de (Postfix) with ESMTPSA id 00D5462055;
 Fri,  7 Feb 2020 16:52:49 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org, srn@coolheads.com
Subject: Re: can't find logged information
Date: Fri, 07 Feb 2020 16:52:49 +0100
Message-ID: <1594276.uRpPO4E4fP@prime>
In-Reply-To: <b696db36-b9db-d31a-d8a6-0523f8a0986c@coolheads.com>
References: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
 <b696db36-b9db-d31a-d8a6-0523f8a0986c@coolheads.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1749101.mhWpf81R1O";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581090770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2LIIDu4nryNMZDGqTzsRwQbjHoabriXj4y4kZvNEJg4=;
 b=yhVR83juzK1uoEx9bju6Ld9FydKdIqr0r901RZBW0y97X505Z9sqqVuwxbkpgdRL8ITsUM
 pDL3boLlpiAkxovcSHUOsfQ+5jYD+lLPsZgQKgwx6KlssAO1rcOeesD8fjXT7QmmNPahHa
 UQLjmA/MHXfG8ilWBsGN31uC+wmXFUU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581090770; a=rsa-sha256; cv=none;
 b=j37b/29qCaE0g5mslaDarEA9ntPPw0xS3200umSvaoCX8A+CjI1BJZSjc2W+B6TMrO7Wnc
 PNWTE8SHcWsWfGk3a+GJRJivqbYjDc8xxwPfdiYraLv5aWym5Dq2m+xcMD0jZ/+N40EQf0
 RXtk+C46lr5YxJklr5xmiDU7fMeTmuM=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=pass (open-mesh.org: domain of sw@simonwunderlich.de designates
 2001:4d88:2000:24::c0de as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de
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

--nextPart1749101.mhWpf81R1O
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, February 7, 2020 4:18:19 PM CET Steve Newcomb wrote:
> On 2/7/20 9:51 AM, Simon Wunderlich wrote:
> > On Friday, February 7, 2020 3:13:47 PM CET Steve Newcomb wrote:
> >> @rpc152:/tmp/log# echo "$(logread)" | grep batman
> >> Thu Feb 6 15:21:13 2020 kern.warn kernel: [174193.938445] batman_adv:
> >> [Deprecated]: batctl (pid 22747) Use of debugfs file "nc_nodes".
> >> @rpc152:/tmp/log#
> >> 
> >> 
> >> What have I missed?
> > 
> > Hi Steve,
> > 
> > you can use "batctl log" to retrieve the log. It will not appear in your
> > logread.
> 
> Alas, that doesn't work either, and I don't know why:
> 
> root@rpc152:~# batctl log
> Error - no valid command or debug table specified: log
> Usage: batctl [options] command|debug table [parameters]
> options:
>          -h print this help (or 'batctl <command|debug table> -h' for
> the parameter help)
>          -v print version
> 
> commands:
>          meshif <netdev> aggregation|ag [0|1] display or modify
> aggregation setting
> ...
> 

Oops, you are right, we have actually removed that command in 2019.2. You can 
use one of the two following commands:

cat /sys/kernel/debug/batman_adv/bat0/log

(will be removed in the future when debugfs support is dropped

 trace-cmd stream -e batadv:batadv_dbg

> > When the problem happens, you can also check "iw wlan0 station dump"
> > and other
> > debug files (batctl n for neighbors) to find out if the WiFi layer is
> > still
> > working. It wouldn't be the first time that actually the WiFi chip or
> > driver
> > has a problem, not batman-adv.
> 
> I've seen that "batctl n" works, and "iw mesh0 station dump" works, too.
> 
> I am arranging for the nodes to send me such mail when things have gone
> awry, but prior to rebooting.  I've written a tiny mail queueing system
> that optionally uses nonvolatile memory for the queue.

By "works" you mean you get useful outputs where the timeout is not increasing 
or similar? can you still "batctl ping" to one of your neighbors?

Cheers,
      Simon
--nextPart1749101.mhWpf81R1O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAl49h9EACgkQoSvjmEKS
nqEQnQ//Y+n2Coh4qHaNBCxNlRFdbeJ3OqznzjzVJGqwHipz9zktv+LHuv8/Qg8w
IG1s3SveXWK7ulmcGkoSDUWLIoigLXtGhzik/PX0YLtsEcW7D7u9QIvcrce6Nkbo
kzbsKiq0tJq/2HakJtx34EcNg69oAugO4iVHRFD8JAyx7j8PeBlgegrfO2kOauUQ
55a7i6aATMXC3ukBz/MMVlO3d9HdkF7/gMZjJOER1exAG64c0A/8EIcU1dYvdoE4
l8pBWYNolC1hv8OGteB8u/0Kkg4t4/2mA1H1mHFwoch7Di8jgYR4rSRiIi9SbEOy
MZPBC1tr1Z0q9TWn21LYpsgjruJAHzTTeZVoUnIQkgpJo34oMZ1PlNg7qOrGjuSa
CKDKVz9X7qklN+N8WWCYYPx5SG96naCC4n6YxGOSSpBImof9hGTkanAht1z6wMxe
I4I6e+Eu2YKd/megXrjn61DPJxiTuwogoqj5Wn30+e/O3yNKVfWvAZS2eH8veFFR
v+8I777jyW6AcuJ8+YSFPyEPxSU7VIXYcpHPfEEeDkKzA+Q5LAOUMl13qVbGS5ti
CfeXywSx897/I6VE1THS3e4qV2GKlmlJPlOQNAsm6YR1OVjMz1oUdTfuScNuGmwP
YDeHyMXwD218noC6XdmPVMcP2wwViLea3XKtp0bLVEQ6G5XYlDo=
=n2Mb
-----END PGP SIGNATURE-----

--nextPart1749101.mhWpf81R1O--




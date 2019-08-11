Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id E82A5891CB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Aug 2019 15:17:28 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id EF5E182204;
	Sun, 11 Aug 2019 15:17:24 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id 1A0DC8065C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Aug 2019 15:17:22 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: Rene Treffer <treffer@measite.de>
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
Date: Sun, 11 Aug 2019 21:17:12 +0800
Message-ID: <1814247.gJGOOAd38O@rousseau>
In-Reply-To: <CALD2-cLnviLCav=Lui9T4Mzz1nnY93kN_0ypd-nhwFUhKNYRQg@mail.gmail.com>
References: <20190609101922.2366-1-treffer@measite.de>
 <2541950.y14E6QPJ2z@rousseau>
 <CALD2-cLnviLCav=Lui9T4Mzz1nnY93kN_0ypd-nhwFUhKNYRQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2925479.JDeULPc8V9";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart2925479.JDeULPc8V9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 11 August 2019 20:54:36 HKT Rene Treffer wrote:
> I found a high TX and (very) low RX unrealistic.
> 
> But there was another suggestion to use the "success" rate (1-retransmits
> or errors) that sounds like a better idea. I would suggest to disregard RX.

Right, retransmission rate or error rate might be helpful to add. A number of 
questions still need to be answered: 

* Is this information exported by Wifi drivers like ath9k/ath10k/others ?
* How is this information factored into the equation ?
* How does the result compare to the actual throughput ? 

Especially the last point is somewhat crucial simply because in a mesh network 
with a healthy mix of devices & drivers all these various sources of 
throughput data need to be comparable. Picture a situation in which batman-adv 
needs to choose a route involving Ethernet throughput / manual throughput / 
expected throughput / bitrate throughput.

Cheers,
Marek

--nextPart2925479.JDeULPc8V9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAl1QFVgACgkQU1VOj+62
HMBxjwgAoOs63pxBuucEfx+xlTuhnBU5zDbex8hC/PX8wDuFFR3piYfFG2iuGDxM
eCSrGOX5CAUL1EE2jh9lbqlNGBJRTNA4w/cAUX6NsHBpcXudteV5Ya+RvZ/ECoXL
CnzktgL/wtJkrDgaRyn0gWOLYP6PWblwck7Kk759LUTFDyH9PjUch4LWdtH5e0FH
LV3eosuHAJfs+VIWtZ14DZge+i2lJ83tD0p6ZQlYpn+EtfxK1BLcbu4kuVx3b0xO
0t2BnLJaS3y3pmdHFDvNeRVQ0iDY0ag+1NebecAVlTIx4uMEbc2O246x9/i0bRkK
JIUXERwDHFlLGtERDowFS5VaflvFsQ==
=9S72
-----END PGP SIGNATURE-----

--nextPart2925479.JDeULPc8V9--




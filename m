Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 623841A2EE6
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  9 Apr 2020 07:54:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D33C580A3D;
	Thu,  9 Apr 2020 07:54:31 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id ECFAA80185
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  9 Apr 2020 07:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1586411669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=v1h3W8EXFznXYrw9GoeSK2MURmes5lCApad0rroours=;
 b=bZO4XA34kT/s4sBJ+pNwC8TBKkUVYW8UGgCbFklCW9tL8GRzfT5xqnewkC9DQ35OaJDD/I
 9kd23qB/OKNusAk+dOqogx2zsPx0FifmT7mBELWzhj7C0VxWUDqzAgeTenHHArU5LjMBxw
 Hepmz4aVyeMNJvLvEdsXGV7zG4ncWPk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: working openwrt ibss configuration?
Date: Thu, 09 Apr 2020 07:54:18 +0200
Message-ID: <2428331.g3B3l9l1lY@bentobox>
In-Reply-To: <3d4b35cb-4a4a-13a3-90dc-bbdb26456145@coolheads.com>
References: <3d4b35cb-4a4a-13a3-90dc-bbdb26456145@coolheads.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1781114.JtcMaHvpFU";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586411670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=v1h3W8EXFznXYrw9GoeSK2MURmes5lCApad0rroours=;
 b=PcRAhyjwnxkBerSbUGcREjbgWUH2FsvbVwmmx7hHQchSGKoOa2QriPAUtwQE1CL95R3d3U
 1v/bOJQQQBM+fucoFlMgy9ohZZfjKx/ptJzJgnneOh/3/tsiSROSPlnAM/UWEHl+66XgRd
 h2uQqG48BKEzw+SEoRuI8EBJfVRvdUY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586411670; a=rsa-sha256; cv=none;
 b=DkWYINI0jPngwTNNdJD1mER8SS0yB3f1jcM1umvusZtTIl5dxDl28yIxWB/DsjVdPk2PcD
 gRAzAMGTEmQD1xlKE6yWwabITBqfcqCtVjbXkY8BE1LdHxqvKLu8quFQ6QPUZn2cPIhGkA
 Q6AemYHjR0Ea5dLt2BidWclPKNZU0E0=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=bZO4XA34;
 spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
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

--nextPart1781114.JtcMaHvpFU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 8 April 2020 20:10:03 CEST Steve Newcomb wrote:
> Ben Greear suggested to me that I ask for help in figuring out how to 
> configure an adhoc/ibss based mesh.  I haven't been able to find an 
> example that's relevant.

I am guessing you mean OpenWrt configuration. Because you linked a 
OpenWrt routing commit below.

Take the wireless configuration from 
https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-201300-till-20190-2 
and the network configuration from 
https://www.open-mesh.org/projects/batman-adv/wiki/Batman-adv-openwrt-config#Batman-adv-20190-3-and-newer

[...]
> My problem is that I have a bunch of wave-1 radios that, running under 
> ath10k-ct (Ben Greear's firmware), can support mesh networking only in 
> ibss mode (says Ben Greear).  I can use the non-CT firmware's 802.11s 
> implementation, but it's unreliable. I'm looking for a way around my 
> still-growing number of self-diagnosis-and-reboot hacks that are 
> necessary with nodes running the non-CT firmware.
> 
> I'm hoping that someone on this list is running batman-adv with 
> ibss/adhoc mode with a recent version of OpenWRT and will provide me 
> their appropriately-redacted working OpenWrt config files 
> (/etc/config/{network|wireless} as an example of something that is known 
> to work.

Uff. IBSS with Ben Greears firmware is... somewhat broken. I had fun with 
this a couple of weeks ago. Easiest way to break it (on Dakota) was to 
start an AP and IBSS interface at the same time - both will then top to 
beacon and only start to beacon again when you stop one of them. It was 
then decided just to stop using this firmware (and IBSS).

But maybe it still works for you. Maybe some of the Gluon users here can 
also provide some insides here because some of the communities used IBSS 
with ath10k-ct.

Kind regards,
	Sven
--nextPart1781114.JtcMaHvpFU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6OuIoACgkQXYcKB8Em
e0anIg/+KOHX+FNVJL4VdxECNgA8Qi3670M6WkQdUoFsrWl5Z0UAkeqyIPLBe7UZ
K3NuRF3KgaL4pMTDGw1gWg6/d5IRGi4Jl//FgqHdGFDsvgq59IrepiAYLOltWP2E
IIAtfWSngj1BZZEJEndktmVzAK984EDtcorc/v0wBuX/rHLdatcaFRgvj3kuWitc
K71SND1TtP4dTuPWGiZeQBkLoMYB/StDITLoqxWpopt++LeKfp3/5/XUAS37BmbR
E+4C5pwDaIQBa8E+cZORMJtT0Ke15GOsX41TmKoS1OL8Zk14vgyBFN+knbdUhqmk
6rSP2KW8mIKksSdk6hgz20gtQHMKsPjnDdT2QQgFTaFoVjKv9rGTKzpSx4Nf/K6e
3zMlxkOrAzskDb8JAH7LtGKJ4voc8xteT1Fq+EFqCWWnZ3/rY6uwetwG4YH4H6r+
hdfKdwYZMMkLF8KP/nAVfm+I7mxUvN6N9V4/I3e3rbKysQEyiv08VaEYRGwsVB1s
zTLLltVLlv6UnZEGJdh2YwE1XQTSiSTz+IgJixI+5iFEi++3bCipSJOuBT4oGgjN
DXpbkF/eOjFVD1790vW8hg1DjgidBYwHqzByld2TnWxgAGgHYH8GuM9rfu2CF0VH
nPNclqsy/faTscKRX2aJ5Rg6MQQTUxRG9KQ4eFX9d6VdH/JKXP4=
=yiEZ
-----END PGP SIGNATURE-----

--nextPart1781114.JtcMaHvpFU--




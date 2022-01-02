Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BA9482C95
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 20:02:04 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C4486807EB;
	Sun,  2 Jan 2022 20:02:02 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A0FC980611
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 20:01:58 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 2/4] alfred: Allow operating without any interface specified
Date: Sun, 02 Jan 2022 20:01:47 +0100
Message-ID: <2907656.mQGJSZOrAB@rousseau>
In-Reply-To: <2887321.KE3FGX6OkO@sven-l14>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-2-mareklindner@neomailbox.ch> <2887321.KE3FGX6OkO@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3773800.9PjQFFAlAC"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641150120; a=rsa-sha256;
	cv=none;
	b=B9+FDhR9C2dQGDMhQC6jlee+TlP+4o5oMKSb5PSiPsNtaR2jAalZ0in5J3amESXzq+yxJ6
	AIWBalhv7HTRku8dRPVp6yVxmlbRhMrXunGlSww1xaprbcGCkNiM6GAoKsWFZRaVvMXU1Z
	6dwY13CIT2RP/hBEaVICiKagjM5vCRI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641150120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7EVxIUvHSWCMSLz1vYHy0NXXGir2WjscPUVyHMWCFVQ=;
	b=NatjkQZM9fLbypZvJTAdgZDttFof3X4jAezS539oDUH4JBGGIBChm8JfkwBNiRrvo/bX30
	AIMaw5qJpcQGkVMtc/xGEkuXKAEHzlD6U6IbBxVSmqYVoW/yH/k0GI/8Ot1BaxtuFZJeIA
	aKB8PtaneBtWB3cw+ezR2Xpmo1phaYo=
Message-ID-Hash: BRXZAZCHRPDTUZPUZPCMJIN6ASJDWWRQ
X-Message-ID-Hash: BRXZAZCHRPDTUZPUZPCMJIN6ASJDWWRQ
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BRXZAZCHRPDTUZPUZPCMJIN6ASJDWWRQ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3773800.9PjQFFAlAC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 2/4] alfred: Allow operating without any interface specified
Date: Sun, 02 Jan 2022 20:01:47 +0100
Message-ID: <2907656.mQGJSZOrAB@rousseau>
In-Reply-To: <2887321.KE3FGX6OkO@sven-l14>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-2-mareklindner@neomailbox.ch> <2887321.KE3FGX6OkO@sven-l14>

On Sunday, 2 January 2022 15:20:20 CET Sven Eckelmann wrote:
> This now causes the "--force" option (+its storage in the globals data
> structure) to be completely useless. 

Why would global->force be useless ? The alfred_server() function still uses 
the global->force state to determine if globals->mesh_iface is configured 
correctly.


> I would prefer to have this handling still be there when
> !list_empty(&globals->interfaces).

To be honest, I hadn't fully understood what use case global->force is trying 
to address. What do you have in mind ? Checking for list_empty() will require 
alfred to be always started with an interface configured while alfred could be 
used without any interface at all and operate as local data storage between 2 
processes on the same system or the interface could be configured at a later 
time (via unix socket).


> And why is it necessary to not open the sockets on startup when interfaces
> are already given?

The main while loop calls netsock_reopen() in each round which will open all 
necessary sockets (unless I am mistaken). My guess is that this was added when 
the ALFRED_CHANGE_INTERFACE call was added. Therefore, the netsock_open() call 
is somewhat redundant unless alfred is meant to always require an interface at 
startup time and alfred is meant to bail out whenever that configured interface 
isn't available at startup time.

Cheers,
Marek

--nextPart3773800.9PjQFFAlAC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHR9psACgkQU1VOj+62
HMAOIAf+O9I2ZvZVvhTnc39IlRDyNBR19PK5t0p/4JxYT5ScjD3ORUu1EmEh6lS4
ByzhAi03m/CoWdexfYGrJwQ0RGf1B8ZTyQnoljXlAOzfN5GnwkR0wTY+LZRhM7Jh
ILFusl2tKilS4qZwHcUqIoICFTJEmMJZOa4T+EO5WSrYEf4B3OxzfcRmJwDDHV1X
nYDerm23AS1q8WshwciJjJNSwrpEif6tD0iLZiKOdb2ND0CEnHeKJFbu+2ntIWAI
+aDCd8uvxKdJlCJF2Oo8nBvKwmUdFdwMhx94vVDsEiIf3QuXo7B4KscvVjMhAmq2
1EhfUsbh8wfoXZ1LpVo1MNjbV/lgTQ==
=bhm0
-----END PGP SIGNATURE-----

--nextPart3773800.9PjQFFAlAC--



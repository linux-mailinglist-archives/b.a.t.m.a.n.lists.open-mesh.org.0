Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8BE3095AB
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 30 Jan 2021 15:01:37 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 144D2826A7;
	Sat, 30 Jan 2021 15:01:35 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C3F26802FB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 30 Jan 2021 15:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1612015291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BEmuCcQAk2pHg+Nyp8cd42Ah4r37pCPogTA55EDux1w=;
	b=c5/FGmX5xHOlGELlyyh52MBNZuS72SFznnfH/cywnztyKaRqAa2k2oT5Dm6WfuAcGzBgLt
	mG/peUdBsVHvSqXICvFPAMhnzcpjWEJCRMgbcdwb1Xk/Q8ulDFKy+IkipGd16Ce7aeUOQ1
	IgWKk+YMlJgax8NqrqcoUggbugS17ok=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batman-adv: User defined nonce in packet header
Date: Sat, 30 Jan 2021 15:01:28 +0100
Message-ID: <50377703.RPh4jNDbgB@sven-edge>
In-Reply-To: <5928700.sXXJehETrP@sven-edge>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com> <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com> <5928700.sXXJehETrP@sven-edge>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8531407.V59q01m9Al"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612015291; a=rsa-sha256;
	cv=none;
	b=eIXAusn+t+fNzwI0PCMCFPLl+MZ0vHrabj6bk4UtM4FvkG6lqloQwCUSLN2N/mPUBfGtgn
	QU8C+ewUlsEKAow7/MKfbPj83hQ+9KVRgRkneIEfNz6zWqlPCL4aN2GNSRf728tGtdJVQF
	tnsASteLmZRjAdHyx/HZNb8NiyK0WCQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="c5/FGmX5";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612015291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BEmuCcQAk2pHg+Nyp8cd42Ah4r37pCPogTA55EDux1w=;
	b=WAZYF8AxTAr4RRpP23MlaCRgIQzXEtDmlosAp95Ugw7WQn9eKvr2QHECdZqpO0QRINBcLu
	UAs6/UCG70XPKE6UOoVEQeBKOtxf4Ci2KgXyxHQ6C0N19xYaGrYYxHUdqenWmVaMSd/0m9
	9g/FyH5iExN/aWx7fCSqC50iS2EHZq4=
Message-ID-Hash: VDIFOE763XOJXPZ5PNMLUOGMCYGK3NM4
X-Message-ID-Hash: VDIFOE763XOJXPZ5PNMLUOGMCYGK3NM4
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Moullick Mehra <dedamamoge@gmail.com>, Tushar Malpani <tusharmalpani20@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VDIFOE763XOJXPZ5PNMLUOGMCYGK3NM4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart8531407.V59q01m9Al
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Moullick Mehra <dedamamoge@gmail.com>, Tushar Malpani <tusharmalpani20@gmail.com>
Subject: Re: batman-adv: User defined nonce in packet header
Date: Sat, 30 Jan 2021 15:01:28 +0100
Message-ID: <50377703.RPh4jNDbgB@sven-edge>
In-Reply-To: <5928700.sXXJehETrP@sven-edge>
References: <CAJZjC1surX81hwZLchC6jfETiFGE9F1tZbUJKhbbwE7Q5UOqXQ@mail.gmail.com> <CAJZjC1sCQRd_QBYcaQUWADTjgA6FBp0qshhUxrmw9tXkjYKu3Q@mail.gmail.com> <5928700.sXXJehETrP@sven-edge>

On Saturday, 30 January 2021 11:06:10 CET Sven Eckelmann wrote:
[...]
> The information are far to vague to give you anything.

I just got two mails which tried to standard new threads and were therefore 
rejected. Still I am forwarding the most relevant one of both to this thread.

But I still think that this is completely unrelated to batman-adv. Because it 
is at the completely wrong layer, doesn't have access to the users device
(and the other way around) and  the firewall wouldn't even see batman-adv packets:

----------  Forwarded Message  ----------

Subject: Users authentication with roaming feature
Date: Saturday, 30 January 2021, 14:18:02 CET
From: Tushar Malpani <tusharmalpani20@gmail.com>
To: b.a.t.m.a.n@lists.open-mesh.org

Hi,
     I have a community mesh setup here in India and we have been
using B.A.T.M.A.N  Adv as our mesh routing protocol. At present, we
are using pfSense firewall/router which hosts a captive portal for
authenticating a users. Am not sure but somehow it seems to work great
with client roaming as the users switches from one node to another
but, since it's easy to bypass a captive portal by changing one's IP
and MAC address we switched to different authentication methods such
and tried using WPA-Enterprise, VPN but none of those gave us a
seamless roaming experience.
So, we moved baked to captive portal as of now and understood it's
working and found that it uses ipfw table under the hood, it adds the
authenticated users IP address in ipfw tables and passes all the
request made by them.
And then we came up with the idea of adding an additional header to
each packet which will have a value(which is unique to each
user).After the first authentication we add that unique value to our
firewall rules which will be similar to what captive portal does but
secure since each value is unique to each user.
Can this be done by tweaking B.A.T.M.A.N Adv code or this is something
which should be done at users devices?
Is this idea as good as we think it is or there is already a better
solution out there?
Can you help point to where to look, learn and build this system?

Thanks and regards
Tushar Malpani
-----------------------------------------
--nextPart8531407.V59q01m9Al
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmAVZrgACgkQXYcKB8Em
e0aU1A/9HSxtJWGtshft1JewWUy9Z1IW8FOnIzj+BmgQYGcIxiwFzlIG6rcII5HX
smybmxfijK34ffdmcKF6TulJ0d2y0Buuihpmf7T7/Xz/hKD6fNgeVvS3pKct+Tka
tzBHW1eERItl+qwoLgd0F2B+0w7xlxuIybgx/bxpHz28pQQ7wMMhMhlJCGrnoQjT
Fqp2RdWH1dlxqi2fbBHZc/DgqZ5ntsPPeoAbTcpCMwlt0MUrN4NJwN3w5dGrIXsx
0+tHluy2N+OkmI99hEXqt36FSQ4yRf35+6wMEcKCqxUmW0WI/+bymeMCSiEIiXh2
BAoA8UeefdvYZQAkkWFKiHMvA77Hy+yg4EujMIk3KZ1McKTxsWo2KEoA0P0uSHsm
GNL4i9nO5ukHXRfQsE8QVKoaPyWjKN9IdPPB9oL94OHxbd2shgmTqXE2WMILmcF1
UPAMm4oAXJz4yeShQx3dXujlL+b/PA0ArVPcNyt1u8GxNTPGx2rxCzhS0V9pVopX
VTXX4oq8tjN04sCregKzEWcZ3IRlo+DaDuYYOGK4Qx6H95Pvyl79cqCvgEoS/TXa
1nj9fRzVCISzjle36rq/ronlWVRsZyUyhHICnlUY4J1cRdsvHY92AhF8X1nKM9pB
Wav4QYeG77YMZpUnSzBjWEMtUX0YOee8ELiqHGWAv6PEfsmgrcs=
=KPeP
-----END PGP SIGNATURE-----

--nextPart8531407.V59q01m9Al--



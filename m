Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 581B939CFFD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  6 Jun 2021 18:23:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2715380038;
	Sun,  6 Jun 2021 18:23:53 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3B6DD8038C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Jun 2021 18:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1622996629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lfwEaB/bnSt5AXBVK6YfVKWCp8u6uBY8gQE6HfuWJiA=;
	b=gafCDn4gAIANS1/z6I7XYw4xX5/fFdo4tUCIdMk/vq9ZynJr4ih5bNsufT/QMWYuvhWlT4
	/bguNLetuVrYz6JBVKXyH+/IqAfRAydunKnCIGDSHj9RG4v/+WZn7d7oN/rnewN3yNkiN4
	iDbalfb7ZvsTPvlERtTZpAO+rF7+oIY=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: Re: [PATCH] batman-adv: don't warn when enslaving hard interface failed
Date: Sun, 06 Jun 2021 18:23:42 +0200
Message-ID: <2840183.ZAG60PTCvJ@sven-l14>
In-Reply-To: <e43b78ae-7a4c-3dd2-d4a4-554f0280efa8@i-love.sakura.ne.jp>
References: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp> <19096778.Bt7unJmvIX@sven-l14> <e43b78ae-7a4c-3dd2-d4a4-554f0280efa8@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10473722.78iBaUREnk"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622996630; a=rsa-sha256;
	cv=none;
	b=CJxrCosCRt+F5qzPO5QaZ+nKh4S56Fx9ehf365qE7Tbtu6bL92+PobOT6ZEhZVtQpnehln
	tYnMVkyyx4mmcjzWwOQOnTtk92VJYeG3Py4pBd8fHDZ92HjeMbv0by4lFV/n2CLClkGNeZ
	8n0XpKFzm/JUnL+z5AeOWTYxmjYvJ70=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gafCDn4g;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622996630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=lfwEaB/bnSt5AXBVK6YfVKWCp8u6uBY8gQE6HfuWJiA=;
	b=jZsjwItHDJazdAuw1yghgUUr2yXQgRvdS0wcGaF3+iZn5pIuWUpRCyMZ+2GRNLKfI7BdKV
	Pu2Ay0S5NJ39G7AT6qaZpwzB0cMkEXuELTSsyRbQFTg6dgTOX7BC94dhZWuoE6RsYAtZZ+
	yG+CDdciymwDc8aFPYVKyqD/PwjTRnc=
Message-ID-Hash: 2IZLWPGTKIVNV6ZQF4S7WLDFREMVFX72
X-Message-ID-Hash: 2IZLWPGTKIVNV6ZQF4S7WLDFREMVFX72
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2IZLWPGTKIVNV6ZQF4S7WLDFREMVFX72/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart10473722.78iBaUREnk
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: don't warn when enslaving hard interface failed
Date: Sun, 06 Jun 2021 18:23:42 +0200
Message-ID: <2840183.ZAG60PTCvJ@sven-l14>
In-Reply-To: <e43b78ae-7a4c-3dd2-d4a4-554f0280efa8@i-love.sakura.ne.jp>
References: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp> <19096778.Bt7unJmvIX@sven-l14> <e43b78ae-7a4c-3dd2-d4a4-554f0280efa8@i-love.sakura.ne.jp>

On Sunday, 6 June 2021 17:48:25 CEST Tetsuo Handa wrote:
> > And the explanation you give seems to be bogus. Or am I missing some error 
> > handling in batadv_hardif_enable_interface [1]?
> 
> I told syzbot to try https://syzkaller.appspot.com/text?tag=Patch&x=100b083fd00000
> and the response ( https://syzkaller.appspot.com/text?tag=CrashLog&x=1456f0ffd00000 ) was
> 
>    batman_adv: forw_packet->if_outgoing->soft_iface=0000000000000000 forw_packet->if_incoming->soft_iface=0000000039fa85b7
> 
> indicating that if_outgoing->soft_iface was NULL, and there was a memory allocation
> fault injection immediately before this result.
> 
> Since if_outgoing->soft_iface becomes non-NULL if batadv_hardif_enable_interface()
> succeeds, this situation indicates that batadv_hardif_enable_interface() failure
> caused forw_packet->if_outgoing->soft_iface to remain NULL.

Ok, then I misread the commit message. I've understood is as "soft_iface" 
allocation failed (which doesn't happen here anymore) in 
batadv_hardif_enable_interface. But you meant that was that hard_iface->soft_iface is 
set to the correct value, the OGM transmission is started up by batadv_iv_ogm_schedule_buff
but soft_iface is changed back immediately in batadv_hardif_enable_interface because
netdev_master_upper_dev_link failed.

Kind regards,
	Sven
--nextPart10473722.78iBaUREnk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmC89o4ACgkQXYcKB8Em
e0YNXQ//du8VzQaxaA3p7PfnTtZ4ldUFGWwEYKhCRetPeepW21wLPCPOuugjhLEO
VtKp4T4thgRrRfUhwACuN3WbkIXUvbN3SsY4SsLpwMBaR5E2iTxIkRXC1+GWL0QK
LGswIt18DsN6DljUhDono7LKcwVXwtcNS+tXWuGdf4Lv85cyIl7NziD215Gr/WzW
BWPQtCV3kiMvl2A3dCDPmyMLPWfs43vPdlr+LQCVtyNhSifp42BfsETYP2o3UEGb
71G/cWHuYPPC978hbZk63DOS9N4mmrzC/zoC98v0mPIWCnyMqfj9XQfST9cmFdZD
1FfiH44T7/WUR0sCAfgALLNRoAyAOjM/4Ke0FzKJ+Y0INNQkYrf+TKpZmJz2c95V
lLRq4raIYspEGkDo6GQC2bHyiOf74ZnrSDzGnoFfmdMFVun1nuHk4CVYoH0+GJ5d
7KXyK9l3p2La1ss//ODX3oqrYUQ7IsGwobdChGkRHaPg3mKhkryJ59xvmoM86EXp
bv/iLCBaQZkRRZD7Gim1i6lTXlem+p+RN0uHWM0ko5ZsN9IVklrwj+ak3TyagCaq
peh/nudpaBH/lZw7k4iKfRMbZ2wb2nVP+BNY+LHQXrPClhbwaBGlfKVhpgcftRAW
sAd38C+13VDHWtlPueUo9tvpngVQflq20OYHvZ7AbQVTNzqQSu8=
=HTKz
-----END PGP SIGNATURE-----

--nextPart10473722.78iBaUREnk--



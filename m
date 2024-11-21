Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B3D9D5270
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 19:20:31 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 22C5F8422D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 19:20:31 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732213231;
 b=sQMXCXqN0gO0+46hrFG+ntHm38DBY2W56SXDUiDwnBu09ztGqa/51onTN/WLwFv7tGgX9
 6TcCm0z8nf+ZRoZS+QK5T8ZPlS4JOiaBWi+CoyFAPY+48tBcyxom0Cpv5OFdueEkWYb7XaR
 r8YvSQRsuFIMP38vTnpCAPrklHaFGE0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732213231; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Llzq64kJ1VXHj3+o2wUdCcvMsCAVZYD6AyzLyvStIFM=;
 b=XWSm7UQRWnFcCUPpYaiSS6WhzXuirEH2GAmmxao31zibiOWdxNeMByK+Mw0/b+Re9+Iq0
 nzZegPwu3fjLaf9uvBnPBLBtDhzkBjl+H/C0zgL7DeDPG04VuSWM/pmxb20B9G8yeXC8s5G
 j+yOx/LCcZGbsgvcO3B7CUFTndi3yJ8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7F6FB802EA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 Nov 2024 19:20:28 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732213228; a=rsa-sha256;
	cv=none;
	b=aPmipTW8tw3qbKA1jcdFpFDU4rsxJCV06UOpc45EgtdjY+Y6aA8nmB9vYbv79ygoLJdYls
	hxKbBx2Yb0lQ2iZ065bH1zpI8nOMECbqXMFUdCch+n/rtN5c35NvPksCKzVlNtJUbXkPKV
	hqgZdBmSQ/MTd54pJp594pVoZ702xpM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="yDg1kcA/";
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732213228;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Llzq64kJ1VXHj3+o2wUdCcvMsCAVZYD6AyzLyvStIFM=;
	b=CwGbWPUdaphOh8wnA4UCF9UmL2ahzHR3WPtgTTe6FkPn31Zr3FZGUdzRAmnQJpFdbZvsPQ
	gUqyF6MQkiPuKqEu5RGQCq0UzqyKyjwn0ua0N427YZjEeO4f7hrdIFfyu5mdfWJjaod4FO
	QYTfWOiad25Kjk9SAsk8uGxpG5AitYw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732213227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Llzq64kJ1VXHj3+o2wUdCcvMsCAVZYD6AyzLyvStIFM=;
	b=yDg1kcA/h1G5Zz5e6zDXG1hnZ//NNDnABYwAEiH5LLhDZfefXBUqimWLRxiX7kh8Ss8y/n
	H8o92ob8UDZOR/7Bi13COZH46MFUBIc5t57S+JOJ45UiyS54zbUzPTkchUVD1IJIpix8NE
	TobN5DXCP9PZ47aCklvxP8DltNH/o3M=
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>, b.a.t.m.a.n@lists.open-mesh.org,
 Antonio Quartulli <a@unstable.cc>
Cc: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>
Subject: 
 Re: [PATCH v3 2/5] batman-adv: Remove uninitialized data in full table TT
 response
Date: Thu, 21 Nov 2024 19:20:22 +0100
Message-ID: <7877322.lvqk35OSZv@ripper>
In-Reply-To: <97132b71-a5c8-42d2-be4c-5e3cf6e7cfe8@unstable.cc>
References: 
 <cover.1732124716.git.repk@triplefau.lt>
 <0368cc2fc6c7719a40a52eeab3c1c6458fc3ebe4.1732124716.git.repk@triplefau.lt>
 <97132b71-a5c8-42d2-be4c-5e3cf6e7cfe8@unstable.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6081567.alqRGMn8q6";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: JNVHO5GLX3UP25APXBFMBWR2IZRPAZ35
X-Message-ID-Hash: JNVHO5GLX3UP25APXBFMBWR2IZRPAZ35
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JNVHO5GLX3UP25APXBFMBWR2IZRPAZ35/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart6081567.alqRGMn8q6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 21 Nov 2024 19:20:22 +0100
Message-ID: <7877322.lvqk35OSZv@ripper>
In-Reply-To: <97132b71-a5c8-42d2-be4c-5e3cf6e7cfe8@unstable.cc>
MIME-Version: 1.0

On Thursday, 21 November 2024 14:14:13 CET Antonio Quartulli wrote:
> I am wondering if acquiring a lock around the entire section can make 
> sense. Also in this case it would cover the case where we get an ADD in 
> between.
> 
> What do you think?

So you would change the hash with its per-bucket spinlocks to a global 
spinlock? Just imagine that I am now locking angry at you. Especially because 
I still hear the people asking for a migration from the batadv hash the 
rhashtable.

Kind regards,
	Sven
--nextPart6081567.alqRGMn8q6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZz955gAKCRBND3cr0xT1
y93jAP9A3MNSN1rRStmr9T2JlSo3xLfxAqtuAmPEVhAlSoCbvgEA+ZTfnsCe8CH8
LO/2DgYfvgzMX8VKaPaD/bANtLRWpg8=
=XAVV
-----END PGP SIGNATURE-----

--nextPart6081567.alqRGMn8q6--




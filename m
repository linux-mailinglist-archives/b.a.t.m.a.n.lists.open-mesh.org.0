Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 524429D4A0D
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 10:34:30 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8D8C483AFB
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 10:34:27 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732181667;
 b=jLNjS0WxW44opxoFb7QhnhBIxOEmZ6D+wwqaLpL63wwu6DSs02u769pWzEWyhHpCSk5MO
 PlHfsa+ksc8wDodZR1TMC+NOK1uKkPRk50W1iy2xMpphooCJwjyjKQh5VOPK5BT/0wYxkPN
 xW4tqCwyzyDob9hX74OHARVrXUyA2/s=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732181667; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/3qqRe6mvVdx+oPNfAOgVuO2Y7ROjepFwYsoHM116Pw=;
 b=wRnKdroL2y+YaMsQRcEPON/hCg6eRINmGtT/4qiO/NZ6J6Sxqi7I1GrDSnJcsolWvPDVS
 scFHP5bpgTj4qD/N5l5WQqwg8ZVJQvphNNMPKmIBkWjVAc6Fjquf9SiHBDsJ91rY1+rozjN
 e+3JqRmnfHywQ0QyJ/+7OgkNctbcTLw=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 39EFC801DA
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 Nov 2024 10:34:24 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732181664; a=rsa-sha256;
	cv=none;
	b=mvle6byxwEX56/jdFN2BZC9pFdMYOsh0fibEKaogLihK2I3bFmDkYTaZGUGU/atNW8lAwB
	EMvXkHDIfNJfre5UyCviYhA1o70YYPlnIUOqR+NkPKkAqxbgaeosRhsmKLfLgG3upPz9Mk
	SKb2+UV15oI6x+jofrLtThmdvbqismM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XwKM+9an;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732181664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/3qqRe6mvVdx+oPNfAOgVuO2Y7ROjepFwYsoHM116Pw=;
	b=VqvMGnT6XpENI6VMyU53K2IjJRG/esJPeJ79QwFKVn6qTRmOI4iQPW/z7AbNOu82An4umo
	nshNuTUhplHcfabEIZ43rmkbq3WmIJq/l+P7irGN2txynv/SPnxj7qPQ2rpCWDx+5M3Mxk
	cIhAtPgD0ny6quvGey16B8oh5O9V67A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732181663;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/3qqRe6mvVdx+oPNfAOgVuO2Y7ROjepFwYsoHM116Pw=;
	b=XwKM+9an23HnZMpTjTqSMVZ+Zd8UgnbMcGczI7juKF3UEhBbw6rY+yaWSSWiozhobgQx0y
	vGlorpvy0xYiBprk1cOUX+EzaBcz5Ljzrephe025bGbtdZxsdZa3637MaifJ6ChwKrHjFY
	WCSwbv69RWQO653/OJ4sgZVsOBSkyS8=
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Cc: b.a.t.m.a.n@lists.open-mesh.org,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>
Subject: 
 Re: [PATCH v3 4/5] batman-adv: Remove atomic usage for tt.local_changes
Date: Thu, 21 Nov 2024 10:34:20 +0100
Message-ID: <6743632.4vTCxPXJkl@ripper>
In-Reply-To: <Zz79Jqaf3ee4ZxMT@pilgrim>
References: 
 <cover.1732124716.git.repk@triplefau.lt> <9417646.rMLUfLXkoz@ripper>
 <Zz79Jqaf3ee4ZxMT@pilgrim>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart39371391.10thIPus4b";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: EA7ZTBQ5EXHG3377UTFX5EFLLO6RINUP
X-Message-ID-Hash: EA7ZTBQ5EXHG3377UTFX5EFLLO6RINUP
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EA7ZTBQ5EXHG3377UTFX5EFLLO6RINUP/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart39371391.10thIPus4b
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Date: Thu, 21 Nov 2024 10:34:20 +0100
Message-ID: <6743632.4vTCxPXJkl@ripper>
In-Reply-To: <Zz79Jqaf3ee4ZxMT@pilgrim>
MIME-Version: 1.0

On Thursday, 21 November 2024 10:28:06 CET Remi Pommarel wrote:
> > Needs more complex constructs with WRITE_ONCE or 
> > __sync_add_and_fetch/__sync_sub_and_fetch (which were handled before inside 
> > atomic_inc). The latter are not used that often in the kernel, so I wouldn't
> > want to introduce them in the batman-adv module.
> 
> What about using something in the line:
>         WRITE_ONCE(&bat_priv->tt.local_changes,
>                    READ_ONCE(&bat_priv->tt.local_changes) + 1);

This is what I meant with "more complex construct" :)

Kind regards,
	Sven
--nextPart39371391.10thIPus4b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZz7+nQAKCRBND3cr0xT1
y23oAQCp9ZCwzRQ2uddThgUou54QorOA2F+U0wEWnLn6y8sIwwEAqoYUrtrw1WjL
s1KG43ZAZhx0MYvDc2PRLpH8GUk5XQc=
=2VXH
-----END PGP SIGNATURE-----

--nextPart39371391.10thIPus4b--




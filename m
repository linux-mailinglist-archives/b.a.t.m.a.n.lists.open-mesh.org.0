Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 352363A793C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 15 Jun 2021 10:42:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6FC38076B;
	Tue, 15 Jun 2021 10:41:58 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 13BE280611
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 15 Jun 2021 10:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1623746515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fbl5aF9OP2y+89R2Ihe1hYdGC/hbyTo0ZHNVHeYOozw=;
	b=zJ9G7jdbEhe/un+nxZT0lG5vIVOKxLPvjwzSznL7eNNNQDvSffCxCzn8HqxCIEAdxXzLRh
	TjlQHrEw2yTW6OqG9+2HTEgu8LMEGmc7H60BEKJphRtQN1XKXPU/GK8SJhutK0jtyI/YgD
	nORk6o+AxZOpAO2XWb+bzHzfhSRTXiY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: IRC channel moved to irc.hackint.org #batadv
Date: Tue, 15 Jun 2021 10:41:49 +0200
Message-ID: <2226940.2AtTIDTzSa@ripper>
In-Reply-To: <18456690.fnCDB5Feod@ripper>
References: <18456690.fnCDB5Feod@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3075137.BaJf2WcGOb"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1623746516; a=rsa-sha256;
	cv=none;
	b=kQXq9ZL5gnZw6SsfplFP5jpzHp4Cu20kGYKcQe5PNIV5SUgO2VdMCGsSkI+PDlT34IKeQs
	WXK1h1YPxGTsRMoDpllDjk386ILPBJBp9YYavcCNlHDlnmag8IwjQ1ti8VOAgpiAbWvH2V
	TaTI5kTJL6z4OPHl77Xl8KgZy2xDIa4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=zJ9G7jdb;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1623746516;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fbl5aF9OP2y+89R2Ihe1hYdGC/hbyTo0ZHNVHeYOozw=;
	b=w9VbaKLofp2Bh33oIrG/xy3au8IktteQyMolqzlybfU02D/DxudYV/lpj/GiZTLMtm7CoT
	pFhFwDCStEwAsQSiFmUiF870l6kpLyxFQRFeBo4c6C0lzlXAw8IBcwRct2/t4U0e8lYDJu
	8UFzbaqjFz/dF0TWNj0ZZOE/2bcdqc8=
Message-ID-Hash: J57KQ24CCWZWI2C3JKZLMTAM3IM4VOB6
X-Message-ID-Hash: J57KQ24CCWZWI2C3JKZLMTAM3IM4VOB6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/J57KQ24CCWZWI2C3JKZLMTAM3IM4VOB6/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3075137.BaJf2WcGOb
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: IRC channel moved to irc.hackint.org #batadv
Date: Tue, 15 Jun 2021 10:41:49 +0200
Message-ID: <2226940.2AtTIDTzSa@ripper>
In-Reply-To: <18456690.fnCDB5Feod@ripper>
References: <18456690.fnCDB5Feod@ripper>

On Monday, 14 June 2021 18:51:52 CEST Sven Eckelmann wrote:
> Due to recent developments around the Freenode.org IRC network, the opinions 
> about the usage of this service shifted dramatically.

Btw. what happened to the old #batman channel on freenode is unrelated to our 
move (but happened interestingly at roughly the same time). I've never de-
registered anything or blocked/deauthed anyone on freenode during the move. 
Only the topic and entry message was changed to point to our website (with 
more information).

But the new freenode staff decided to perform some questionable actions [1] 
which resulted in a fractured network and a loss of the previously registered 
channels + nicks.

If you need to recover some information from the old chanserv/nickserv then 
you can try to connect to rinnegan.freenode.net or another server on the 
"old" freenode and query the services.

Kind regards,
	Sven

[1] https://www.devever.net/~hl/freenode_suicide
--nextPart3075137.BaJf2WcGOb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmDIZ80ACgkQXYcKB8Em
e0ZXCg//cmZ2og0VC/L4K2lrgVB/w/9dDOY2gxraB8p5/D7taOUfP96YtZ6VMjOf
eJDnteDJIYfqqw6MhBy/lLqKwlplBgCE/h4o5iGQZlSgAxqNW6roowfPUkqiutZa
TLRU4SP3ahza0rQQBEcxXwYDXd4Hqm9fXi01Kg5TB/muZxzO3onKJqeMxUiJWksA
YypSj0Q/s1wG398KINPVc8I8hG03XCnjFU15DBI5KOwUQ7/huBDnL3Ai4XmlAncr
8pZpfB+KvMvnruryA1/MB1T7T81TT80WCuqD/m0bfM8v0ouBF0xCR+XAKuLe+CQn
SPXxn9HD/VHqs3biwwOP2L1duCsWcwzydnAuzw/fBKr6m62FO6iFM1gqi2BtOz5p
kH5i6fp/iAOvzHFTimrC35URlHfYDnwVgfdScWkMIBGSKASX7dSyzf0m2zr0v9h4
aiv0YgYjnL3WNz9d5KPW/Uz9XxUzPhyZiOwkiGAkG34wZI6TXdB04IVYfKDNgQuO
gkzi58yY9TAacnlmcSetmLqI0RS5LG+5x6WVU1SWRDxJbx3CFcP8jJlgue2Oqc2Z
68JU3BLSW/f/nWz4PVcVjr9FTB1C2lumX0CAE8iJlSdvp5ml/p8MxoobpliBOHmc
nJce5FbHejEhAWcuOl2Z0Gq8Yfx6eTRDOuZvBAgsQkC3ZoSUImk=
=0Web
-----END PGP SIGNATURE-----

--nextPart3075137.BaJf2WcGOb--



Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EEE9D2176
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 09:19:16 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2CCFB83C5B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 09:19:16 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732004356;
 b=XL/7evZh3K1ZyQp5ISiNvLODjmXRPfHdInLjy5wawE/KdCHjKoiXOLxVG2t1NV7HZ/WFd
 +jhAQ4Ns5ErOwlVvQVuJLkZ/xWTFfKwRNThyOzatTAZ6j5T9FzsXdI4F7C9KiUK5eIiRE1T
 HoWqKKk5J45tGVLj7K7nhz2oRlNe77k=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732004356; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wsD9q9YxUC5RVhmXMoBvWfxYLHeTsYIhEuM92wBmakM=;
 b=OmiotwtDc9tS8BJB9uhlXXd8gEbVSkxPolLAHCPB77fuALtWNRXz1r999MB7Fvfehr89I
 dsKE7DARx+bRF+HzfQZzg43ubtfO/AHcBqJ0oN80pKTd1uPcs8jR2E/1wHPzlLpdiMqtZ6z
 jjCrbBP9+KVGXY22QRCvNsHyDOVc8Bo=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1BC4581750
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Nov 2024 09:19:12 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732004352; a=rsa-sha256;
	cv=none;
	b=R6KcjzpWXu9vHRV2uuAW0avEn5nIyGBcNlIh4YsvDFHHoFB2lJTDJ4TzUhF4f2JQRApIa5
	rp8dPPJwoLXlvpN81N0d2+Swql8QLaXeZt28PwU9L+rLkwFkqgrr1AixpXqmXRnKAdZQvV
	k5ZFHclA0VXJT6/+j2VFS34IkjM64g4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cJdEKTTr;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732004352;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wsD9q9YxUC5RVhmXMoBvWfxYLHeTsYIhEuM92wBmakM=;
	b=gRQpue0eZoyTJaIe2izXAe7s0PUpvloKSlEj1kDfnUD6paaA4pUY4FGHhFnEwYkSXU4718
	y5zQCTVgoZDL52f8nyrKOJTOPBFKEkQWxxt6VAebMFnHjAeYOVWhoWcqtcMvcFOFZaDWiM
	nUXv+6NpwIDdCiqTKgaQW0BpGpAE+cI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732004351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wsD9q9YxUC5RVhmXMoBvWfxYLHeTsYIhEuM92wBmakM=;
	b=cJdEKTTrjeaGxIyUnKgMf4nGlLOJ0jHEAQuw8TDOFC3mcmzx76ty3V+0nprxMArj6xff04
	8j2X5lxDfInrQ8YFq+aLnyQA7bwk2I8mTAe6o0ZlLRX+jLX9NywkEnB3yFwLDLmpYXiIaL
	b2Dvqb82fk5Gh0eZGNKkDEa4ZnY7O/Y=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: soanican@gmail.com
Subject: Re: IP connectivity issue at openwrt nodes
Date: Tue, 19 Nov 2024 09:19:03 +0100
Message-ID: <13641455.uLZWGnKmhe@ripper>
In-Reply-To: <173195908428.676947.9438253969806655968@diktynna.open-mesh.org>
References: <173195908428.676947.9438253969806655968@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2964317.e9J7NaK4W3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: N42GGVPLPD4Y7LK7WZOA6KF75HQ2VP5P
X-Message-ID-Hash: N42GGVPLPD4Y7LK7WZOA6KF75HQ2VP5P
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N42GGVPLPD4Y7LK7WZOA6KF75HQ2VP5P/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2964317.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: soanican@gmail.com
Subject: Re: IP connectivity issue at openwrt nodes
Date: Tue, 19 Nov 2024 09:19:03 +0100
Message-ID: <13641455.uLZWGnKmhe@ripper>
MIME-Version: 1.0

On Monday, 18 November 2024 20:44:44 CET soanican@gmail.com wrote:
> Im new to batman-adv and this is my first attempt to make it work. Im having connectivity issue, couldnt complete the configuration.

Unfortunately, this is not enough information to answer the question. And some 
of the information is only one-sided, Here are some pointers how you might be 
able to continue:

https://www.open-mesh.org/projects/batman-adv/wiki/Troubleshooting

Kind regards,
	Sven
--nextPart2964317.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZzxJ9wAKCRBND3cr0xT1
y4K8AQDHPGt0v3qW1tQSQAOG/MUXaN6WxQdTm3LtPHMNf8txcgEA+U3NXYZDLhfT
N0KpRAv96fpjQwZmU5m4SjOykWZZ5QE=
=TXRa
-----END PGP SIGNATURE-----

--nextPart2964317.e9J7NaK4W3--




Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B951FA95D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jun 2020 09:01:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 399CD80303;
	Tue, 16 Jun 2020 09:01:32 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4B65D8000D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Jun 2020 09:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1592290889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mV2Qqc99FOT3H+K9aANwHEhk9mCAcPavkNQv9gIsLF0=;
	b=0jm9C3374Dy64FxS6ruyelOUWLQNwcJPqzo5qfSQJYUywfT1yOCDj3AJCwzlRp3c0U4krw
	IosXiF7EymuEG5DnofCwCrvRJngYkGyFjXvOOCRqHakK/WcZvYDtgTyE1JwiOcyloP7ZlW
	s2Isjzt7lF1lbMLc+8W7XXehYoFLRZI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batadv gw_mode client 0?
Date: Tue, 16 Jun 2020 09:01:26 +0200
Message-ID: <20687769.zqcOZmODRP@bentobox>
In-Reply-To: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com>
References: <927533E5-C265-44BF-B271-1A7A9A084447@xecoenergy.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2296441.xZy9kG0TSa"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592290889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=mV2Qqc99FOT3H+K9aANwHEhk9mCAcPavkNQv9gIsLF0=;
	b=LU379s65oToDtQ45HPKf9iobHAgqODkHoMYT7QwMo7b63Ioa963C3Ox0vBSj1SEojmTC+L
	GCkJMVsP+NV9YxlZiaIa0a/bLz3dUXoClXQ/HCzYCTTDBfMV8/XabOmz9LCq2vkpGJWAjJ
	qxNXdoAe7Z2XytTsP1AnvUPTflvVl54=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592290889; a=rsa-sha256;
	cv=none;
	b=oh8ORYXlaoe6Sp3WomnKcVuutrz+eSbQnfamAvBYqBLisY50EJBuz8Bb6JzplXoYH9wDEV
	ImUdsZOFZzV8QdObC76+B6ffXC16RDbfggiQ3tB3FWGjVNwIcOwgxEBwtJI8TMjyvp41Ql
	0oBJE/XRVFO470eo/HOWOLbCsov6xSw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0jm9C337;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: IWSY5TRBBTNEM6MB3SBNETVJBIXTMQQY
X-Message-ID-Hash: IWSY5TRBBTNEM6MB3SBNETVJBIXTMQQY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Rob Cowart <rob.cowart@xecoenergy.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IWSY5TRBBTNEM6MB3SBNETVJBIXTMQQY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2296441.xZy9kG0TSa
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 15 June 2020 22:45:34 CEST Rob Cowart wrote:
[...]
>but something we found was all of our nodes were using gw_mode client 0, and we realized this isn't listed in the spec.  Do you know what it does in that case, does it use the default of 20?

I have no idea where "client 0" is coming from. This is not a valid output 
from batctl or the sysfs files. I must now assume that 0 refers to the 
selection class.

selection class 0 is not valid for B.A.T.M.A.N. IV and will also be rejected 
by the netlink and sysfs code for B.A.T.M.A.N. IV.

If you were really able to set this somehow(tm) then it should (mis)behave 
like gw class 2 (when I remember correctly).

Kind regards,
	Sven
--nextPart2296441.xZy9kG0TSa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7obkYACgkQXYcKB8Em
e0a4ohAAzqUmDvAgRpboRv8EmErgohKe7CR9uBX78RzfX9If6uUkqoqPIPTljdAh
Cb1U8yKLaCbyFk2v3IW56UV822IXcUUQwAArIy/7X+d41s671CdLWDzfj1tVP523
xqVwiqAKsBG63QDlQ53Qxj9l3m+lVMM4VYHbgOqDMBxXDEp+FANvWe9rU1v2SRIw
+GgwmpfkSq2vHDMSSmO6thEzVr8QVZ0OH0cPVoU5X+gVkFRGV031m+TAk9eNWnrI
Jr8qSxGukBw+J6VXG+JjIcOimDJ4Bq0Wv0nr+0CPIn00pgBlv2v3W4aQ+ojoRAKc
5xsjh27PXqDwIJfmPxd3qdiujhHCJ8EKY58b7BZGQblLn85dN9NLKtJlQS4WdGnS
9GT8kTMrxmELT2qfxh2LJrDCUNeKXe0c15/lxdfjXAKqXWzdkTrcrFf3843hOHL0
4QRm5oRNsY8yfbIreKLhYGAdmwxgbn9np4h4WqM/fNo2cFFTsKBn09eMY8auBn7g
jgbPk1+w5UfViH8xfPkwD6KAHDwY6DDQhNBM1s464QjuVE2mSONoeO5UrzS6p21D
2rxhggklWCyHRfeHVZ7b8Y7IRa/ak7IXsO0KmOrLu86J6ZRswASVBzh3n3hstx/f
NX7sVNNWbDQ2EKqowrEHKv7o1AGzdrIbUC8/vkpj0DJjpmJSac0=
=TTtX
-----END PGP SIGNATURE-----

--nextPart2296441.xZy9kG0TSa--



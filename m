Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0BB9D27F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 15:18:47 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BA88181DCF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 15:18:46 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732025926;
 b=sLcTIpYs2LCkfmhcfykX1Ch2wUrHtu9XMlcOBbd2QmKxztloeTumoT7VPF8CsTuUF74yE
 rjBrzEKPPWU1W6YgcTtQwp+PbZnE39ie6Xtm8Wq/o+i4JDsWuqoKIuBuWvHNCkA9at9/Eef
 /Vnf3OHW3nPV7+Pss7MyAK85/6Q7W9Q=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732025926; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wieu80HBLRf+WP1AahaIUuYRYslPpkRKpsPHo+rxheU=;
 b=MTwU9rH1QaSBjcqfhE9vbLwU+bKhwc0fEuepu84nQ3i0ft7f7rPz4jKakcfnhJ9seSCYh
 XUM+Ies1q0KZjx3BVgGPrQ0NqKq1KGXPZXJTuoBlndsEI/84LBeqR11+sRlWezNJUwZtDtO
 +RAfq8KfzeGYSBL9gomUl9R6HTk/98U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A5AB481CAE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Nov 2024 15:18:43 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732025923; a=rsa-sha256;
	cv=none;
	b=pbSeGdWRGW6RruVZ/z/Hq03WnzUej4XKLf6kqsTJatzD55k0UM3gZl8xfbTHcCl6XljOMe
	pMDUjozlQNfE80v/nF4TcejO423fgyKe80CauHpx+/GvFkC6WtLg7q7EA9yszor/ML31fk
	i7yceYoE+o6bK77Fp0O/cxjUVNJ6BSo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nyoQGKWN;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732025923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wieu80HBLRf+WP1AahaIUuYRYslPpkRKpsPHo+rxheU=;
	b=yFk3oAoy7LRlONnPRQCFybDQw2obAxVQz+5cr1cpfffpLagYMvIc2GLug2RH0pL5wmfJVz
	1QMlnMcdbeycCTCmqyAXPyNJ0KsTkY8W8Oglt8av2MyQSFE9EdPdfGMq5UxjRet92dY6qR
	yj4T3qsj+1yLK2Sh7DFSm3ns4zcYVpE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732025922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wieu80HBLRf+WP1AahaIUuYRYslPpkRKpsPHo+rxheU=;
	b=nyoQGKWNkGzp3mFc6z/8NKfUJIfjYHgdB17bvTxb/rhQUbVbveRQuIGK9a3PFQmEwvNeZ7
	P42tCZiqnCXnDvcDHFl+x1VcxiQ5xSvXUpaaCeqXlZJKQGevbKKAgf5/ohCSUO8QBvOUoq
	TqYRjeyxChiqVc9nyNbH78XbDVE3ZD0=
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, b.a.t.m.a.n@lists.open-mesh.org,
 Mu De <soanican@gmail.com>
Subject: Re: IP connectivity issue at openwrt nodes
Date: Tue, 19 Nov 2024 15:18:40 +0100
Message-ID: <22497469.EfDdHjke4D@ripper>
In-Reply-To: 
 <CACKXFETaiEdriRp7rS2KfuFOcfXpcNe_y+4WfgRUW5t8R=MsLQ@mail.gmail.com>
References: 
 <173195908428.676947.9438253969806655968@diktynna.open-mesh.org>
 <13641455.uLZWGnKmhe@ripper>
 <CACKXFETaiEdriRp7rS2KfuFOcfXpcNe_y+4WfgRUW5t8R=MsLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7735884.EvYhyI6sBW";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: W7NX66RBL2FI5ZONYSYYSQLDTP7IRSV4
X-Message-ID-Hash: W7NX66RBL2FI5ZONYSYYSQLDTP7IRSV4
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W7NX66RBL2FI5ZONYSYYSQLDTP7IRSV4/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart7735884.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Subject: Re: IP connectivity issue at openwrt nodes
Date: Tue, 19 Nov 2024 15:18:40 +0100
Message-ID: <22497469.EfDdHjke4D@ripper>
MIME-Version: 1.0

On Tuesday, 19 November 2024 15:17:28 CET Mu De wrote:
> Dear Sven,
> 
> I would like to ask generic system and topology questions:


Don't hijack other persons threads.

Kind regards,
	Sven
--nextPart7735884.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZzyeQAAKCRBND3cr0xT1
y1uWAP9j5y+K0ycJAJiJHZb3nGz1QwerxhW9xAcB0te/xr5V+wEAvF+HKejP31Gw
nrgAOU/PvEajtRr9WGYskjOqf/amZAU=
=tZQy
-----END PGP SIGNATURE-----

--nextPart7735884.EvYhyI6sBW--




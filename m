Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B20221EB336
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Jun 2020 04:05:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91F1C80DF0;
	Tue,  2 Jun 2020 04:05:12 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7F5F180314
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 04:05:10 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 31D254177D; Mon,  1 Jun 2020 22:05:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591063510; bh=SgbUiCpKmpxZ2RbkleWmMuNL2oMrAHuZeSvDc8F3z5k=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=NVVeCPcYqgGKw24fipeMtvX9MFefIeEHE8XQfGy3ymmlkKyMFTFV81diuESh69Kol
	 blhRppGl3RgbnNw8yLNQEUTW/ynwuSqo0AqOXB6eoa2mDBGXZYRnHjPGPP93xDAFuQ
	 YXZ4R9R7Kpijt+jeY3I5RIllfkwDEme44qhNjKVltEa3738bxwpnkERbueP/Re2J7B
	 Yjswz4MTyj/FSFAbnxeJ42nj4wM3asqe7AgGBrJznPyzhuCQ67InFF+ambgoiMMadi
	 lQ/E1/2QolarIUllRqqoddi24OjmFFBP03DcCmC9nnNqolm9/Hz735hvC9T7+cJVor
	 ayw5TaL+KtmRg==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id CF3DA40362;
	Mon,  1 Jun 2020 22:05:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591063506; bh=SgbUiCpKmpxZ2RbkleWmMuNL2oMrAHuZeSvDc8F3z5k=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=aPqwUwdmDzvkoHuPrCkR9k7KAvZkV18yonZ6A2o/AmA2PocCw3rJ6D7mIFipFvo/R
	 LnIL2UFRmG/r0Qtcnc8zbm8PGVXKodmtbhDFacezWkpiSbDqMJO9o2dK2+iddmpRTb
	 4i9Vc339NxytXVgScLmTLMiYQPBlFdCal2o8TeBC02GBLVnvVy/NFz34ryyJ/z9yka
	 ZA4HKHYT8UsRuXJmrBvTto+qn/52eYdW4DqlP6H+y0balBnyQfSby0A3CJJIqFDprx
	 32qgfgHnEs72DdUasCvXcEM/FeOSenW5H6Ihr0pPwERCWHI4tLZqNWYFEZpfzpQlcX
	 kuFv25xsmMdmw==
Subject: Re: Network stops passing traffic randomly
To: b.a.t.m.a.n@lists.open-mesh.org, Ben Greear <greearb@candelatech.com>,
 smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
Date: Mon, 1 Jun 2020 22:05:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529001302.832.66710@diktynna.open-mesh.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591063510;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SgbUiCpKmpxZ2RbkleWmMuNL2oMrAHuZeSvDc8F3z5k=;
	b=oDZDDWVhHws8gfo5sKERqMDHWS7grDzRU1aPg3vvJdfB42auuSHiEmNyVT0Y/Dvd4TCeT5
	4SYz0qYGhJssPrcEavYTlbCNadqHoxO2Tul5yvd5g3xiCdCz27H0gGe6blDrBSNZzPGh3Z
	Pg4xmGWblOCWnoiOgLyXIVwGt1WnYag=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591063510; a=rsa-sha256;
	cv=none;
	b=jFi4fSOILo5CzDkLHnzLTb1Etjskey3qMX42kYu7PDM0wQvH7FyHu7A9uvDepOEvLlW9cD
	xhNUtr5TyfZzlRUoJL1O1rPuhCxHfXH+wiXS0/PQD0e6yil2auKa7shahcWBmrU4dMFsum
	iOjOWBijrUseyFaZnnrXtPLYVaHyG2I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=NVVeCPcY;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=aPqwUwdm;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: VHMPU7SJKJLWF5ICVNIJHDSNUQIPRBMX
X-Message-ID-Hash: VHMPU7SJKJLWF5ICVNIJHDSNUQIPRBMX
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VHMPU7SJKJLWF5ICVNIJHDSNUQIPRBMX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 5/28/20 8:13 PM, smartwires@gmail.com wrote:
> Steve, I am also using ap with a QCA9558 SOC and Also using ath10k-firm=
ware-qca988x . I have also considered using adhoc.

I think I discovered something yesterday that explains everything, and=20
it's very reproducible.=C2=A0 The mesh mode in the QCA firmware works=20
reliably in the lab and in the field, but only when there are 3 or fewer=20
nodes.=C2=A0 If I add one more node, the mesh will completely fail, eithe=
r=20
immediately or within a few hours.=C2=A0 If the nodes are strung out in a=
=20
daisy chain, failure is usually, but not always, delayed for a while,=20
and the links break in a piecemeal fashion, one at a time.=C2=A0 If the n=
odes=20
are close enough to each other, total failure occurs quite quickly.=C2=A0=
 I=20
surmise that the 802.11s implementation in the QCA driver was not tested=20
with more than 3 nodes, or perhaps it wasn't designed to support more=20
than 3 nodes.=C2=A0 Sigh.

Sven, I think this epiphany obviates the need for your test (which I=20
still haven't figured out how to execute in the field), but I'll return=20
to that effort if you think I should.

So in the end, unless I replace the hardware throughout the neighborhood=20
with far more expensive hardware, I must find a way to use Ben's driver,=20
or to have no mesh network with more than 3 nodes in it.


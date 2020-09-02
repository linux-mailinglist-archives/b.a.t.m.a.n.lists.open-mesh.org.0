Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6CA25B2DC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  2 Sep 2020 19:20:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 02C2E803A3;
	Wed,  2 Sep 2020 19:20:53 +0200 (CEST)
Received: from mout.web.de (mout.web.de [212.227.15.3])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 94945800F2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  2 Sep 2020 19:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1599067250;
	bh=K9L0p0SAbsHBDLTIo/6A3oHbFFrsXDS1ivZKeuiSHjE=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=citc0ghtQ6Cl9xR1GwgVUIEmsylPodk8utAc+c8uYOLSl+ZeDaQLjaozyTlJ9qXWO
	 xLYN6bhUg1lbcrunO698pobS7SyWWy+oB2W1sDSa3AGi+8BcVHUF0TLqo55AbjyHcq
	 ZF/K1GMJ8BwNhMRFNJPDp8iX6fM9DWu7G+IIjSa0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.200] ([196.240.57.108]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MKdLM-1jsYiD3hNc-00Kvcp for
 <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 02 Sep 2020 19:20:50 +0200
Subject: Re: Node amount restriction in IEEE 802.11s mesh network
To: b.a.t.m.a.n@lists.open-mesh.org
References: <CADSehqPK2R0ymqwFFm-wcE1m+K8WoAYSb1dwiCNhaNQDP6xYEw@mail.gmail.com>
From: Moritz Warning <moritzwarning@web.de>
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <69c4adcb-ba52-d8f7-855b-ccf148ab0af7@web.de>
Date: Wed, 2 Sep 2020 19:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CADSehqPK2R0ymqwFFm-wcE1m+K8WoAYSb1dwiCNhaNQDP6xYEw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Ofd3klSLSQw0eT8BTMMzZR5MKhDx0OiB91vJEu3Q8ROl3WfSpKK
 Pm8jD/d8Jn5MsZ979lajHLENrz5UB5ayB5foKN4HsQKqEdqSKeL1ExJNQqPwxgNxmrTw4Iw
 mb7/NWWT1v9GwyC/3BiQzpFbdDu7V7ikeBW+nyM/1PRByLC6UqEmAXV3h2eUM5zjtn21DKL
 SXPFkpTQP+eNNuLufOUDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v2TNCBnCeuA=:wExoQ0A6UQQHT972PffYpb
 VH3LBLixOyAiXsp/eHefbvvIYUZ2XhjYWJ8ycPuOLctAu8uqqM/+mLeFkzbrrzOg8/zRmNajQ
 JaO5mqmVyggQrVKEW4ij5C1n3WF1Qu6jOyQzSCyo5k7SKdn7RMg9CAscgntCi29LLtSypAe+a
 tObBNvm4RXFQSzfc8/JKI/FeDVz13K3BFX7q+Mgqe4lCZ7AFsYMur18SDJHpOFD3J55w+KmyG
 Kt5lLzlXSk7DDdsOlNn/zymg1gVImXDvr0TsVa48uR+3Ooo6wlYpKAZ0Iin41zs1p1Euo0H7y
 PVT8FUlD1XHhrGIZshy9oX8WjDwfyqZCjTA0tXjVLY5QcVZ6Al3uJOI8G7k/+8l62GwQxQmaB
 l8qRvs5qmpcF3XzFOiGLafVVYVLrmQJyhgNbEYfL9MnyAB0/V8mirj2vM2QsRSU1jnlQ3rs/Q
 6bHRZ5jnenHyKYyeIgG+7ee5ag9dqp9yzXKQFUPxdcYws8u9POX125agOPtoBHeMISvpK7ip/
 sMLsC098tuPsiIPnnCCUJD0JXXl9XmvSp3921VW+jRIrAgsipXiHeq4J7G2SJXtU4ZQBNuqZm
 5MtPbSOyPGUjKK2xPn44HElNy4zFvXUW1Ea45ooeJwf5D+CZPynenI2mDOjszeg6ve+QzX0KZ
 6jZg4o6aPbkhUkzzAz2xTiktJkdXsXtz3SFUtBOQkHIhEWj/IcMuMWy+31wu+z7I0TVwyDXAM
 eI/UwhBy97MqSeBZQO9tq1BeS3tg+S+IZH0z8FHEQvmAJWxTEcEDm5bf5fMg/u8mjLkp6E3PT
 vtt/aDXVPOMSLbluZShypbH/V/Girm3Q8pYVMf/IWW1+S6DuB3h83C0rjyKV0Xgz0T4Osjn9w
 DKweae12GuhVxoEb/JdwI8bTb1/poVBQxDm63pR7GmICkNhuIL7Z3iSsKufq7k4C61eWSXA9i
 yBiHpVNOKEHvC9qwlDjZzis0qM/1ZVz1rk9ePeu7i86m5ETIKNodmJ1664FhvfC2QIsIBkiIh
 uOXC4By5c1TKm1fTN+LDvO+cpEarONctE5ZpPRogIalA2IopOpRkbPiV+oybkDc820E1M0qnD
 hR5uxPQtHaPJKfCSd95JwPoKSwewhymN/vGQR2WwUZTE7PANsqlRZ4qA5h5u3NofZmFVeH8Ra
 etXSNslWfP9HhAo9qn7w39emkoyoM1Dqtea5OWZJemTDnWmKv/LYuZFVlQkCMHsFpSWZgS5zk
 KUPzLv5oUUpy31hnBONiTzyBnmDQZESLa33FcDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599067250;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
	bh=K9L0p0SAbsHBDLTIo/6A3oHbFFrsXDS1ivZKeuiSHjE=;
	b=vdOiICFn9y02BQ2P+g+0deVUQWmr5yQ4Y/Lp64dK2PzwYElDWrRsp4/blWZ/k5DiU6uZzY
	BhKg5SSFnpZcD8z5QZFTL+qxrzMrEzSjDgXmSaNqU9pMxtSYdq9LehQFjZct0rR+/SMS0h
	DpXKsJTyUziaD6c4mlqMMQilievafwg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599067250; a=rsa-sha256;
	cv=none;
	b=WVMG8NvdfNNZ+qLvaaS8BE9DcRT+2R66R6hgZrDRX7ayXP2ZtoiVIX49jGzoVDQ3OfX7/D
	kW8Wj17PpRoLRfz/YFnbjtJFTiQzNpnvVE/zKNGofk7PN7cytmbX/X9h6YZqNWl19LVJrW
	Ngrmi6EmompJxkgu0ytCMjo0xWV2CuA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=web.de header.s=dbaedf251592 header.b=citc0ght;
	spf=pass (diktynna.open-mesh.org: domain of moritzwarning@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=moritzwarning@web.de
Message-ID-Hash: 6FW3QVDORSNXVZ2XRTUHTSU6IGD7G46C
X-Message-ID-Hash: 6FW3QVDORSNXVZ2XRTUHTSU6IGD7G46C
X-MailFrom: moritzwarning@web.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6FW3QVDORSNXVZ2XRTUHTSU6IGD7G46C/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 9/2/20 5:08 PM, Maksim Iushchenko wrote:
> I read that IEEE 802.11s mesh network has a restriction for how many
> nodes it consists of. It is supposed that the number of nodes in IEEE
> 802.11s mesh network does not exceed 32 nodes or so.
>
> Is it HWMP protocol restriction? Or what is it related to? If I turn
> HWMP off and use batman-adv instead, could it overcome such
> restriction?
>
Yes. If you disable meshing for 802.11s, then batman-adv can use the MAC l=
ayer and use its own routing algorithm, which does not have this limitatio=
n.

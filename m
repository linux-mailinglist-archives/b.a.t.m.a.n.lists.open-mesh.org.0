Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8DA50FC83
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 Apr 2022 14:08:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4FFFD81559;
	Tue, 26 Apr 2022 14:08:35 +0200 (CEST)
Received: from mail.nfschina.com (unknown [IPv6:2400:dd01:100f:2:72e2:84ff:fe10:5f45])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 91E7780BF3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 Apr 2022 11:52:24 +0200 (CEST)
Received: from localhost (unknown [127.0.0.1])
	by mail.nfschina.com (Postfix) with ESMTP id 7194C1E80D56;
	Tue, 26 Apr 2022 17:49:09 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from mail.nfschina.com ([127.0.0.1])
	by localhost (mail.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lx14sW9fD0dM; Tue, 26 Apr 2022 17:49:06 +0800 (CST)
Received: from [18.165.124.109] (unknown [101.228.255.56])
	(Authenticated sender: yuzhe@nfschina.com)
	by mail.nfschina.com (Postfix) with ESMTPA id 26C751E80CE6;
	Tue, 26 Apr 2022 17:49:06 +0800 (CST)
Message-ID: <e4525347-f3b1-440c-b72b-4b7a6830a0d1@nfschina.com>
Date: Tue, 26 Apr 2022 17:52:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
From: yuzhe <yuzhe@nfschina.com>
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
To: Sven Eckelmann <sven@narfation.org>, mareklindner@neomailbox.ch,
 sw@simonwunderlich.de, a@unstable.cc, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com
References: <20220421154829.9775-1-yuzhe@nfschina.com>
 <20220425113635.1609532-1-yuzhe@nfschina.com> <2133162.nbW41nx31j@ripper>
In-Reply-To: <2133162.nbW41nx31j@ripper>
Content-Type: text/plain; charset=UTF-8; format=flowed
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650966745; a=rsa-sha256;
	cv=none;
	b=pBgl2hjaz7Mao9UgszevHfbdtRDX1wR9Yg10Gy7MNvOfLAsgMkdQpbtXY6MPj5PzmYVxHn
	ONinEgfusZ6GS/GyDMGMxtfOT2+cmsAnWOovMgCW64J8+emTTh+HfDiv/7tXi/z785YtFn
	pQht2Ek5fvVLwjCtCxinUG0y2+Qae8k=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of yuzhe@nfschina.com has no SPF policy when checking 2400:dd01:100f:2:72e2:84ff:fe10:5f45) smtp.mailfrom=yuzhe@nfschina.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650966745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UVX9ZrS2xZyntz+JeOmlmWeC8oghE3XethMZ3LsVaoY=;
	b=nCBljsNI8reUQem/AovPx2GU2Wb6JMj2QFz2eXZg7jOK85rnkNtoQ2aNcxnymhzpUGMy2o
	NWFkeRsIUHrG7BHgE5kT/MH8GlpVunDcJNVk7kMt7nEIPcyFvjPKW4CMSS698Ve8kJhg1/
	zgnYr9dA2dKsXXvuB3WMRbOs6+vJFi4=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yuzhe@nfschina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6EERNHBRDGLUVXSC6HO6DJPGPEAAV7LJ
X-Message-ID-Hash: 6EERNHBRDGLUVXSC6HO6DJPGPEAAV7LJ
X-Mailman-Approved-At: Tue, 26 Apr 2022 12:08:32 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6EERNHBRDGLUVXSC6HO6DJPGPEAAV7LJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I agree, this patch is better. And I have tested, no sparse warning anymo=
re.

Thank your for your help.

      =20

=E5=9C=A8 2022/4/25 20:50, Sven Eckelmann =E5=86=99=E9=81=93:

    =20

>       =20
> On Monday, 25 April 2022 13:36:35 CEST Yu Zhe wrote:
>       =20
>>         =20
>> remove unnecessary void* type castings.
>>
>> Signed-off-by: Yu Zhe<yuzhe@nfschina.com>
>> ---
>>   net/batman-adv/translation-table.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>       =20
>       =20
> If you send a second version then please use `git format-patch -v2 ...`=
 to
> format the patch. Now it looks in patchworks like you've resent the fir=
st
> version again. And please also add a little changelog after "---" which
> explains what you've changed. It is trivial in this little patch but st=
ill
> might be useful.
>
> Regarding the patch: Now you've removed bridge_loop_avoidance.c +
> batadv_choose_tt instead of fixing your patch. I would really prefer th=
is
> patch version:
>
> https://git.open-mesh.org/linux-merge.git/commitdiff/8864d2fcf04385cabb=
8c8bb159f1f2ba5790cf71
>
> Kind regards,
> 	Sven
>     =20

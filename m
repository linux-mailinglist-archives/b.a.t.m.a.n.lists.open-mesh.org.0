Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6035B69957
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Jul 2019 18:47:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2C6C581240;
	Mon, 15 Jul 2019 18:47:38 +0200 (CEST)
Received: from mout-xforward.web.de (mout-xforward.web.de [82.165.159.35])
 by open-mesh.org (Postfix) with ESMTPS id 4A55B8058C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Jul 2019 18:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563209254;
 bh=uCMTEuR8PjxZh4FeLqxHdPoXeTbRwvJkKns7bYz7GR0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=AFdiWij7UegHnr4mvMJ/oRvbR0A+M1NEja7e1PAm1Bs9V5tT2U0uWErooA+GvEJhI
 vrcSGIZBKD7MuHXqTb+aIL81fYb/I8PYD7mWKFnQMWF2iECo+nArWdZCzu+z1XfTNx
 gZZWOnDuU19DUeyAwDgxGm5eSS7mAg4Yok17XN9w=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.102] ([83.97.23.29]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LaTaN-1iAoFb0bwF-00mLpH; Mon, 15
 Jul 2019 18:27:28 +0200
Subject: Re: Unknown symbol cfg80211_get_station
To: Stefan Bader <stefan.bader@canonical.com>,
 Sven Eckelmann <sven@narfation.org>
References: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
 <91929546.yq5N1g86sx@bentobox>
 <e8205d24-56d7-14fd-6cd8-367791c2c003@canonical.com>
 <10352586.3EjdGBoHHf@bentobox>
 <af494410-d3a2-4602-644a-1eab1536f9b6@canonical.com>
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a812be07-c2b8-b58c-2d31-f76747402344@web.de>
Date: Mon, 15 Jul 2019 18:28:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <af494410-d3a2-4602-644a-1eab1536f9b6@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:OJdK/RKseH9FbkOzqDTDcA1BWMzk3qL+0felxPh8Cq4bW+yY1/J
 G41jYVeTOC8TkzO36MNvjKALCOBIRe1EKbrT4EyBhnjm0iHXgx+7Lf6/+weSoAWZaq8gIk3
 xJSjrraIZJ0HFQw5+UrKfSoQeaq14gCgkgFUHyEK16xttsiE9VWxS2vQoUsrFrezMs5EsQ3
 b6SogKup6i1Y8rhAYmGvg==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:63M/GLq7KHw=:bwMli7HLna2ADQTq6wDCcCDA
 k8h41uIoDLjPW1Jxip+Fb4FVh0JyHPF0Zbi2a7LD+kZUVqd4lPXpwM1qt5iASd20cVHg3GoVv
 JBUVkOQbCfaHTiaeG65hVZbIs5L1jF1VHkgUBT9Z272gbE4XyPuoerwl7MF8e/iNBA+i9PzG4
 qzzPc/rkGemYAWVUS0Ao0QJ4LWvbRH5euqL8i8zbwD0EGDN9YfGugux2E1V/G1SRxj5X1V7p7
 18IlmPqHQb9ESoLQLicKGvAmJNVygAhf7l0vszhcVyBoj8rKbvf7Q756z6SZ+8uFa3lC7LYMS
 tg9g1xEy07ZdD139gW560zF+EnFb06JZuxbVbhELqDhlUZ6r8Pee2rglQV/4tGC8EuoYnus3v
 MWxlxUAVBgyRLZRdGKq9cAYMEWRCLob+eD9VTBOibacaKVPNO+zjWa+2I1R2oQyJd/KRcY953
 2zY9R53lIYy0hR8TJVn0hsO7YoVNA9LlbRrvaRzdoVEQYu1y/NMGtNuo0pIvzIsDBI8iqXaKe
 0O9ED9wg6pnYvlU/pQb6nxnjW70hJIaXBC4xH9Wi2KWtUA6HIgMIL8QX+Ro5wZLc/e76Kuo3V
 hBD5D2Wdl8sgIxBm6Vge6RS2tUgsfIY0hogfO71xCIl7imLBOUU67ElE3xPi6S8R4AFX3VTIj
 s8uGK9wWZ3X4zWaGg4pY8c4ey7+nvL+2OBC6iFn/JHvW8S8LAL9PwddWnrg3gIdM67uaMlBba
 AdoVZA3J/oKjQWKLCs4+xkQtrxpiWqs3yFUu92tGZ2oYwUJyRINvAqTCIULpBsmEuwx8DsAbf
 Ivjjbaw0OYRHb6yJLxGStUB5vOmbJM1zo0WDTnp4JGw0tRk8R3jBnyvxAGtoDcAVA1J89Qi3V
 djG4VxqBupYY0T5lVsX/ixDhBaYlyHL+Q8X9nLSlqHuaLmbaveBfIXHgaZGrkrmEw1XGbFfkJ
 /xdKkJNVKLIWudci+Rg9q64nxZGwnYmDcddDqWkiOomH6K5lvsYfw/rtrHevg2XTP0akuncBr
 WePj9jfPhboTtA10n043du/Hu75Yf/dcRaot4FBn7sMSkf28WopFWG3HAwGSBN2EtulqoXIFV
 DkUYa+MVRyo+PQSP8txHwvIifv7L//5bJ7AbvkzacZyothuffkT7c5g==
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>,
 b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Yes this is what I meant. Thank you all for addressing this.

On 7/15/19 6:04 PM, Stefan Bader wrote:
> On 10.07.19 11:56, Sven Eckelmann wrote:
>> On Wednesday, 10 July 2019 10:56:36 CEST Stefan Bader wrote:
>> [...]
>>>>> As Jens pointed out the missing modules are in linux-modules-extra n=
ot in
>>>>> linux-modules (the former is not installed by default).
>>>>
>>>> Who is Jens and where did he point something out?
>>>>
>>>> On Saturday, 6 July 2019 17:22:01 CEST Moritz Warning wrote:
>>>>> The module linux-modules-extra-4.15.0-1032 installs the following fi=
les:
>>>
>>> Sorry, I meant Moritz ^
>>
>> But he said something else. Or maybe I misunderstood him.
>>
>> I think Moritz meant that he didn't find the cfg80211.ko for his kernel=
. And
>> thus cannot run batman-adv due to the missing dependency (which was int=
roduced
>> because the kernel was compiled with cfg80211 but the cfg80211.ko was t=
hen not
>> shipped).
>>
>> I also just tried to find linux-modules-extra-4.15.0-1032 but there are=
 only
>> following packages in bionic:
>>
>> * linux-modules-extra-4.15.0-1032-azure
>> * linux-modules-extra-4.15.0-1032-gcp
>> * linux-modules-extra-4.15.0-1032-gke
>
> Sorry for the late reply. This was discussed internally now and we will =
be
> working on getting this resolved (by starting to ship modules-extra for =
aws, too).
>
> -Stefan
>
>>
>> There is none which looks like it is for aws (something like
>> linux-modules-extra-4.15.0-1032-aws).
>>
>> Kind regards,
>> 	Sven
>>
>
>


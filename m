Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050561523E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Nov 2022 20:26:08 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CC23B81680;
	Tue,  1 Nov 2022 20:26:07 +0100 (CET)
Received: from mout.web.de (mout.web.de [212.227.15.3])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B5D518109C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Nov 2022 20:26:04 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1667330764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3GP+HnI0Lwkks/RHSiuzHCTYaztHmBgz1yrn1LuyrNo=;
	b=YGtx78oiBFwb23DNht3Sx2mzqeWzXnySrPgfsDU3eeG4acNPlczv5w4/+tIsMJMO0HOL4L
	Q4AJDhvb7d9bPBWWPnxXA0YloiS7IOtg8Jrs1YkCIpcTodCgIj9ClC+TKyPG0u9ky2oUFQ
	KsQPqCGHEH9mj/hHGvdr61e9Fvwu6fg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=web.de header.s=s29768273 header.b=M3p0WKDD;
	spf=pass (diktynna.open-mesh.org: domain of moritzwarning@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=moritzwarning@web.de;
	dmarc=pass (policy=none) header.from=web.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1667330764; a=rsa-sha256;
	cv=none;
	b=jSvcB/vaqYvRrdSzDP4Jb1o+dQvd9s8tWhTX4tTb1HNOSY4+TWlqVcgReihSyvZ+8Tj6NA
	RC0XIEXB5pdVtuV0vLKK5xl5OsAf6by+y8ZLIQlU6wh+/gAev46YmqyvbZqJN96Pe+9+NZ
	fsaKfeUCSZ28W1C0k3A3SBz/7wH4CBE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1667330764; bh=MbP8imVtffvXo5gZhdX0YOTnOykgW+cCY4EHa9/5kjI=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=M3p0WKDD2Vz1CeFC54w+zzHqHdz/f6eb7Q6DebEQcdTEtSrGzVQZ+y2cmCpe4kfJA
	 px6GS8XQWEsuPhxNKOAehapAAIDM5bEwTbOUBdwxQWfLlZQa7k8bOJIhzQuad4/vJn
	 hx1SDki8dbtl6VGqS+XFgru0/X6bh8LcWLCr3SFUJBPDaGZp+ho+hu7ZUp72GZylMO
	 2utGB/6xEALTR1xsiu6/iMwHihgoWat0DqtU1wDHZQaEBVc7uvHGQuSSqdefO+nA+L
	 EBViL70PK47aa6H17Yf+liAkXZeace8vk8HclrqN9NKM0+hNsa0KFj/HkshJhUnYYs
	 zd8F7uvjjKveg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.0.6] ([95.91.245.111]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M1rPI-1os9oq14Om-002JgT for
 <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 01 Nov 2022 20:26:04 +0100
Message-ID: <852bdcd2-f7e5-531e-8602-28f966df558a@web.de>
Date: Tue, 1 Nov 2022 20:31:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Question about batman for ARM
To: b.a.t.m.a.n@lists.open-mesh.org
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com>
 <3826484.QQW5a1qdB9@ripper>
 <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>
 <20961862.b4RiU9qLUR@ripper>
 <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
Content-Language: en-US
From: Moritz Warning <moritzwarning@web.de>
In-Reply-To: <01ba01d8ee22$bc00d6e0$340284a0$@creonexsystems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:SAZ8XWIxTGSKCXlbGLpv34oghnzBUoK72i++gGnLbm1sDp7s0Te
 Rp/Q05CBqBe8ekP/HyYQ/IyCTERbDAwRlw5OvAJmE+IuC10wvuRGjvvsmXbTXgaiIrEsMmN
 972qpo9Lev7EGdQaIcDmxeVC8eS9iOQGqv9DGn3uQAJn6I/VV2wZlYkOzNG6T5kQ/fPGErL
 OWeeU6h+1GxaEagr/7NYA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:mA/f8WdcNMk=;Xw10kzHjDGn5kJLUZoUbKCTigaC
 q8AEy4V1D95u4F9CrFyuW51HiChdZjLihrb5o/SWjWpNLWY8uyPp2iSRZdjbgLkiO6/JS13FV
 KTtbHdIGXNDHNThDPCC/foKl1/LaAU0BPquYcY/8twWt4GF3J2scUQlTGTOOkOmsC66V9PrsK
 J/iFMBThOaWM0xvuz057byZH2Y5RHfCexzwjPdudu+CD9CAji7W1UHdQS+WDcYzVg9kzv0wHt
 84aERv0O07wg4kPclVnNs1VWqAoVYw4ll9BlOBT9adnyQZFzsyHpI2Y/+lWdqbr5iwM2XE3/4
 VDaFv5zqC/aAAz7e9jdKuYWKT5TyHV/z7FAQntGPKAOrkAqAsPNwdOWDvbzLQsYl+hcTzsPHc
 s8v6c35r+zATR9BXZa58peG9VDj0MTg6fgCcQ8Gr82276OQO1KaR40T5mZ4sHi8LvljAISlnC
 28Z1x1rcR3li+LwUjBkngEOWR9/ICWI8soN7zAMaJX1DVl4hz5SAcqe/84I5/c6cSxuHe0GAz
 U4/J//faA7Y/6IcaarzouqNYb6ncnLQSKms+nfchfc7qSiIKbwgV1rTsQ/Q2UY17USmDjogX/
 8UksdBIfgmbXkU8bZ9xcaHM+2Yn1ifAxuHvcRqEd5QsBOyqzbmePNhbVaDaZSWmzJB0DNbgkg
 8zD7iVSVz33rXutiP+HFSaW9jjKSKlGxBTamCUh+yxADu5k42g6kWRHrhtTc4sb+VXsiOuAgC
 3ObTNjYOIv7pW0v9vKfwyVY9yqv0hsAJ4yE/fsysDvaOsQcg78DEVVdKK9qAZDraZ5z5OMNCf
 JSw2PY5AOFt8n+sRxL+L/AlaGFIyVTe/eP/VLbiGGn+2dpgq09jMc9pGR4wZEbzd1n/P4JgoR
 H5U/wWk0p2gzLFpDgcazwwC+H2vERfWctpFg4EDZfqQn+lqt5hVakMyJKf9i5+Tb2cMmKzVce
 CpUDLrqSwiSBgI/fbiFTBNNWQEI=
Message-ID-Hash: FZQGHNKADAGEJ5HZPER6UHGX22FJEI3R
X-Message-ID-Hash: FZQGHNKADAGEJ5HZPER6UHGX22FJEI3R
X-MailFrom: moritzwarning@web.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FZQGHNKADAGEJ5HZPER6UHGX22FJEI3R/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Charles,

batman-adv is part of the Linux kernel. So it might very well be present o=
n your system already.
But you might need to install batctl package to enable and configure it.

On 11/1/22 19:49, cchien@creonexsystems.com wrote:
> Hi Sven,
>
> Thank you for your past suggestions.
> We are now looking into getting BATMAN working on a Zynq-7000 Xilinx FPG=
A.
> This FPGA hosts dual-arm A9 cores. We have successfully loaded up Ubuntu=
 on
> this platform and it is running
> Linux version 4.19.0-xilinx-v2019.2 (oe-user@oe-host) (gcc version 8.2.0
> (GCC))
>
> The above line is from cat /proc/version.
>
> Can you point me to a BATMAN installation for this OS and platform? I co=
uld
> not find any resources online for this.
> The way suggested by BATMAN home page does not work for some reason.
>
> Thank you for your help.
>
> Regards,
> Charles
> _____________
> CreoNex Systems
> 2625 Townsgate Road, Suite 330
> Westlake Village, CA 91320
> www.creonexsystems.com
> (805) 558-9687
> This message (including any attachments) is for the named addressee(s)'s=
 use
> only. It may contain sensitive, confidential, private proprietary or leg=
ally
> privileged information intended for a specific individual and purpose, a=
nd
> is protected by law. If you are not the intended recipient, please
> immediately delete it and all copies of it from your system, destroy any
> hard copies of it and notify the sender. Any use, disclosure, copying, o=
r
> distribution of this message and/or any attachments is strictly prohibit=
ed.
>
>
> -----Original Message-----
> From: Sven Eckelmann <sven@narfation.org>
> Sent: Monday, June 20, 2022 5:51 AM
> To: cchien@creonexsystems.com
> Cc: b.a.t.m.a.n@lists.open-mesh.org
> Subject: Re: Question about batman for ARM
>
> On Monday, 20 June 2022 12:20:19 CEST cchien@creonexsystems.com wrote:
>> Does BATMAN ADV interfaces with the radio via the network driver or
>> does BATMAN include the network driver?
>
> As said before, it is interfacing with the generic ethernet netdev layer=
 of
> the kernel. For example in:
>
> *
> https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b8=
9025
> 2a865efa91:/net/batman-adv/hard-interface.c#l727
> *
> https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b8=
9025
> 2a865efa91:/net/batman-adv/send.c#l108
> *
> https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b8=
9025
> 2a865efa91:/net/batman-adv/hard-interface.c#l185
>
> There are a lot of other places when it uses the abstraction interfaces =
of
> the kernels for ethernet related communication.
>
> For B.A.T.M.A.N. V, it is also trying to get throughput information via
> various generic kernel functionality:
>
> *
> https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b8=
9025
> 2a865efa91:/net/batman-adv/bat_v_elp.c#l67
>
> There is also one detection for wifi interfaces to decide whether broadc=
ast
> messages should be repeated or not:
>
> *
> https://git.open-mesh.org/batman-adv.git/blob/caa1eb0cf7bf8ebfe43bba06b8=
9025
> 2a865efa91:/net/batman-adv/hard-interface.c#l877
>
>
>> Can you provide some guidance on where the network driver or interface
>> to network driver is located within BATMAN?
>
> It is not talking directly to the driver. It is always using abstraction
> layers. Either the normal network core, ethernet or cfg80211 abstraction
> interfaces. But these don't abstract the requirement for ethernet
> compatibility away - the underlying device must provide this either dire=
ctly
> or via a wrapper. Just perform a `git grep -e ETH_ -e eth_ -e ethhdr` to=
 see
> that it is build around the concept of ethernet packets.
>
> Also things like originators and the complete translation table only wor=
ks
> with ethernet addresses.
>
> Kind regards,
> 	Sven

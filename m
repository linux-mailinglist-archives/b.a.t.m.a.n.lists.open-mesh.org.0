Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 345541AD414
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Apr 2020 03:23:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C0DCA810CD;
	Fri, 17 Apr 2020 03:23:44 +0200 (CEST)
Received: from mout-xforward.web.de (mout-xforward.web.de [82.165.159.35])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 28B3F80014
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Apr 2020 03:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1587086622;
 bh=rfQeirNKv1oKg0Po/VU7yeuCz0qFvVxYW5EDmLCimdk=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=IYC9KgjbhbyrN4nMldSZ+vShKGTRhsDqcZM6Xss5QohyS0zIKTZD294Cx3+/igF5n
 VffRdGU7cpXpr04FD8bRofLakfix/7I9IMYE1HcOHYrTVD+Hddk7N3rGwpYDm8yczv
 0H/mCXYZIUmJP3zHJZTmra6LQg2nV/wa5C9+8vE8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.202] ([83.97.23.29]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MQ6PP-1jL97l34Gx-005Kvm for
 <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Apr 2020 03:23:42 +0200
To: b.a.t.m.a.n@lists.open-mesh.org
From: Moritz Warning <moritzwarning@web.de>
Subject: batman cpu usage of multiple instances
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <97bf748d-16e5-d088-118f-6f3678300191@web.de>
Date: Fri, 17 Apr 2020 03:23:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:gkkibos7flOER/iIZq4HuYiB1ZsqvmDt31ebFmZPTZ2YOdOT4cM
 f8oal9Vqx0IQ7wd4L4Rfu/9RVTkGBL45vHb82SigYOcoDxYSRC6LhaSOZ6iH/99F1yrUKEG
 0En80VSqDLqnbzfBPUUFKBhzlUqBXweqbSlYd7jjjXI2ZrGsrn4vYa/zPBz4TFVW0YYR72T
 oW2BQU+qW0tnu3MxZY81g==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:Pa4XCiNBPpc=:0qRgeP64X7uJI1LYMX8HtIrT
 BPIYx1VrFlvbeVtmHvtLf1Q7KxBfi5FdkOxiuFw6t7EYcNo7IdfzegmQIKBWKw3bxaf48EzLc
 BivxjNRPxjcjnL0AlQ1Sn+Cw6CFHorV7QpuH2nWHEsxrUaRB8Cs2bHaOT9/PLl8AJhvgn7mid
 g29op1YWQwopXmeUg2S9Zqc9/NOt4noOJZnKZgddt13gi662IBR+n5jou12HROFGPbymZ38Xa
 rM676CdzE6PzLfa34HtVMZSHGZ46CrNYLTEu0ZL0Lp1BqThc7ytoT+jnuwS5SSDO0nAibcKfV
 KQt4aOd10IYEASIpRJ0Wnhwy3UsueAUZ1YZ2q4H0kWjWBKXl74xDFH59em8rjSznsxGNicoFi
 7qJihMP4XRd/RIt8grhsktOM8q1BMPxSMFgAzeAnoWbo5YwlBYHZy+gqZlfgfkRJs714OVl7+
 GA2XyFb2UISN60nKQ7DJpMydLe2ycuLpPlICUb4oGSzygjOdP6wAub+x99GSVrub4M3V9f61I
 QVg0Edj3ohR2WDTiAaoN6p+6no0+vRt3Q8VhhLPbLcdVVdlvlFW/yaYUgviSUzhascD/zPTCP
 bVNm4yGBlnW1tlDe5VyzC7qEjR5m3+bH8Qm7FYzoLKSF+nx4Jf8JC7pwSsJ3sqYUsIehLMW/f
 RAOSyfH1aktuJGOHyTGyhopoIAIHb2rRx+sSzg0Eqh4Jiry4iRdEAOTJ+u5CwmUcJ8XOpHzhV
 a6tEG9woUqrYR3JW7OPodKjJCnxNnVLDrJUvkoe9qEYABjzTGzSFeP/AguPFsCv14IHl9A/aB
 Ilf4k15Cc5w9PLaPM+5A1/wiHrfYdfuzmSfzJBNukvHCbqNl+ecPz+FSJU+bX7+dluvImuVhs
 HslkfpQ5DawO/9Qckh1q/0JvWrGUsUSOIrEnj12iF2I7dTGriYTxnrTzB6FtUBAKTXB19DMpJ
 3sRG1zTq8CHL8LNE3W+vYflja/QqRBBPvcOejgLdI7jV8uXR+oj92wA8DTx4GoULkYDXLyEde
 9vHlYcRr05RIMQz1kpre2XVeO3FodrbK1olVxuBYmn+GMHogAMzRByUyzDkOtaheqsXqwh9OG
 zualHj56dl/tlqUi7DrOdf8NaLD0q3wTR1q/N1iHAr/00aZUIy8z+KI31VvIlwUwaDSw3XLTK
 DgH6DQK0eLyp281nGIzdY28/S7w/ys4kaMWuIe2SMQSat1Jh5vC+cnRuS3t/L2k7yipwikIxw
 rSLjdChB88rGz991FE/Cefxp17UUQ5dTOPHog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1587086623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature:autocrypt:autocrypt;
 bh=KzVyP+3+bRjQJToVl79bPOHqPIpG2VoA2eT0H5sCMzk=;
 b=c0+QaOxoNdETJp9JsXYcuTRw4zL/4A22azAaQgr5ahJDoiF2Ab2SxVdfSqJNg7qC8UTEZ4
 l5lSnDoDN9S5svs1mDE8soyy51SCI89NEma7u1MVAj3lI+i4eS6hO9/uTZVv8ZCkwPXMcG
 SwNIkix32pdCoZ1JOZvr0azBwsf0Suc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587086623; a=rsa-sha256; cv=none;
 b=ow84ORvFbYGv92rG0PMABoVcdQ6lH6JJRLzkKiZUch0BW9KcTSPBHpXgR/ZPmh51mFAd8c
 spSY5Xi3rzU1OksqNYFk4OOltb4SVurYZoHz6do+UrKgauZLiUNutX+Mpo7AtmW009DlEB
 Jl0FrckoeDjx+YHalWFuO80UhQ+Q6pk=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=web.de header.s=dbaedf251592 header.b=IYC9Kgjb;
 spf=pass (diktynna.open-mesh.org: domain of moritzwarning@web.de designates
 82.165.159.35 as permitted sender) smtp.mailfrom=moritzwarning@web.de
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi,

I have many batman-adv instances (~1000) running on one computer in a Linu=
x network namespace each.

Top shows me that a single kernel worker is handling batman-adv:
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMA=
ND
29251 root      20   0       0      0      0 R  99.3   0.0  18:03.27 kwork=
er/u32:3+bat_events

Is there a way to let those multiple batman-adv instances make use of the =
other cores?

thanks,
Moritz

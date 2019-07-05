Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C3597608CA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Jul 2019 17:11:30 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 22DF180C26;
	Fri,  5 Jul 2019 17:11:24 +0200 (CEST)
Received: from mout-xforward.web.de (mout-xforward.web.de [82.165.159.34])
 by open-mesh.org (Postfix) with ESMTPS id 67F5B80A2D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  5 Jul 2019 17:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562339480;
 bh=1Y9aV8gfrw7uoMHpXLoTzE66CJYxGSXSxLoLGC+dn2I=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=ML/GqMeQMZBR8BvAraNBCYW2caH/StI9+f/+GCRNZlvEzm+6AJ9q8jEWQ1CK2eGEW
 3vNYo4Bf2edCxkNCFyPs8dOjUBxpAA93np803PU/U9Nt0N7Qf9/3jeBkELabBlbR5t
 7bHRl10efm28UIu0K0w3NToF/TubYdNcK+AQbPaE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.102] ([83.97.23.29]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MN4Gi-1hcpzC1RiC-006ifa for
 <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 05 Jul 2019 16:51:18 +0200
To: b.a.t.m.a.n@lists.open-mesh.org
From: Moritz Warning <moritzwarning@web.de>
Subject: Unknown symbol cfg80211_get_station
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <cef22736-91db-6a22-6da4-35a4d53a4adc@web.de>
Date: Fri, 5 Jul 2019 16:51:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:gHQNsteLLFFJgMvjcTKqpMa63Mm8gFr8ZhZLYOUSwbxAAZg/TzN
 Yf+Bm7Y6BMu61t4sD2YdwYmi10fyN5SyuLL8EcIjRDaviKJFZFxnPT9QTaZhck9CPO+e1AV
 HQp4Kv9PqZOU+xSXausENyvItgqD5UZOWPaC7QddM4AnIzmcNyNCF3js90+gkwkJk7oRWjv
 p5LGmUG6sepE8CSrudbcA==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:brvw/XwtMj4=:P/tZnkq2hl7bZpbpi6E8G55r
 cw5phj5jfiP9odqhBK1Khh51cp+WxmFcrOsUY8EoU4opsfTH13L2yUwBI4tI4EoZ/4m2zsTbF
 RQ4MUn9y5rpaV+yjqe02cI5+WQP9xH3EoyfEb9DccPdDKyjv32DxAskTYKAhCn1K5v5kMLpe7
 UjYCc4YMzTNs9+/rbQJHKFWstyCqGDR6nhcIBsg+GwfDTER4oFxKWvD9uMDfLgti7UGZWnzhA
 engNzJA3ZOMjh6c4KuK0FjWWcx9XCVhjhcN19Jicdu0xxadTmuzxrcOgez/pstYboEylbhVG2
 NeJGrX0WpVQXP/5FAOOA6PEoUEQ3+y7Coo7zlr/eztzfJPCAxO/+ywaC9nrQRtmZQYW8/KDLq
 qnKGp1BsLoSxyuZptv/7zaca2ywX4xaN+a6WggwfuiO2DDIiTjctPfmsTYTDRmhJinc3Bny/2
 GCTrWmMM7QWlg30N5qI8kKMtYlSrGukAvk8afcL+Gz0nRFjFz1z322bj/PG47Wm3lGg+CLNaK
 Bv2jPGv9cKdwnyjWLNoBZ1Xsel0RNGPz7C37JICUAg55/Pd3WVoSFR1RjUwbPdVpNRQm/D2a2
 zULDBMoT+rSHE4oTCZm7Kf78+nUnLX7vyoj7YcQ0ZRsOOmnYdqMUxtvIqUdA17KNrKmU1RmE3
 e4D+8svLh05wdpdRBVmTTlr6E1+Eqm750gwK4T9ZvPOyeK/UT8zh0I1MHmxm09IpLVz3Sh+Ls
 zaUpxxoh4NUD2PNgV11qm+XKHpUeqBK0FfkIKygmgTC0VzNuC9lF37kY3CqIGlFbbVVFNnpz1
 WwW8lQvPaxAaXsZQSPi/sE/Rehvfs9djVDDykX/LhO9QapK2B1TLUpqKywhVEPA9cjX6xehw0
 dsMmZgKRqcO5nhnZ8M5uS8xN9/svBWq26eF4XE9IixHu6vJsHD7mo9j4GFLm1euZehjC1xEg0
 h/damPNo1MV5Lhb+BCh3rTAeH6L/HpMBnjaU08Di1CqBm049Eqe8WUomyeok8LWEMyrtOgEOM
 6CmfvMJaQGRIFW6VjNoynb5F4nfWrWoKNNdn3JsIcSAdvBfiIGd2LCbWJaE78uyIF4FfmUlbl
 NdQ5r8An9PmWVTGkwb611f/9gyKjgSthBQzE5Ii/UmOhtDpPv5lZIUg==
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi,

on an AWS server I get this error:

$ modprobe batman-adv
$ dmesg
...
[ 1310.125438] batman_adv: Unknown symbol cfg80211_get_station (err 0)

$ uname -a
Linux ip-172-31-47-217 4.15.0-1032-aws #34-Ubuntu SMP Thu Jan 17 15:18:09 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

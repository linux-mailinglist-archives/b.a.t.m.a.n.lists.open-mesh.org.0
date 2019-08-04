Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D6080B17
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 15:20:36 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D27C582481;
	Sun,  4 Aug 2019 15:20:33 +0200 (CEST)
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by open-mesh.org (Postfix) with ESMTPS id 2ED45805E4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 15:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1564924830;
 bh=/eVxKis4Gj45orxcb9iTFCfJ2iFWpUGnIr8EanwtOIQ=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=ANUN53nQ+zMlaE9qxbb571G1Jxx5KT1H+7zw03h9qMNbaGyir147RvEaGZ+pZ4gm0
 t29p2fd9B/8EYmQm7sapMCrTa5i1GC+nCOWO2aMW+o2gYXml8uS5q/SqUPnp0azbUT
 GdT1QWJks0t6lYS6nvAxnTzqsSU7KCb6VokmFfys=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.154] ([79.218.129.226]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LjJH1-1iU8ob04lT-00daPQ; Sun, 04
 Aug 2019 15:20:30 +0200
Subject: Re: netlink error with openwrt-19.07 branch
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <9e7c2d2d-0dab-f03d-1868-d8a3a59f781c@web.de>
 <7826622.ItRAI9TNZf@sven-edge>
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <77e73938-e782-e02a-5175-fd9e8fddcf83@web.de>
Date: Sun, 4 Aug 2019 15:21:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7826622.ItRAI9TNZf@sven-edge>
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:0C5Hu06atAHZ8WxiQrmVRebMu4AKOXvOuRvr+niAa+6XVhxz9is
 h6a6Dm0UFIeGVoJh2pWLMOvNrW+wqv9r/zrnO7sRe1iw/GJhTjlIaFzdX3Bwc/HBgzj4JJE
 +mb7FEk5PReF4rfnVpzEifBrC2ZvIf247Ul3kl9GIs1NA/fBzgC4F6mTypEF5AjgJKe8LgI
 nOH+03q+KcNYNBSJVH9Pw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RbRDwTXLb8Y=:Xf4dl51QEdgkpvukZi21mi
 Y2Ijx1BN/zU7/8rA3frnjLXo5lpI1CLjDC6arpHaQR7OCQUQ00MznPe9xHK/LSY1/hWdPLx/3
 fmaREiq8pBNVtd8WfdbQPN4RSVmCeTHcNt0gq999ztJJRuKSFl6GpsaJ+CWpdzFBgzWQcT7uW
 k1gq3PMr1R6s2qY0ZLtz9yUYANPpGztK2a2QFqnIf0KT1ZXtpWN2eHKTkxmLE3leoMsoPHN9y
 CWJzyss6vbJ38YsjWtolTUNBwSdQQ2Yz7PoW8fgnRrxpAYqeOxoq94J6GCantkpHXr/Polazs
 KABo6Fxpg6uAQtesbU3j/GDzXCR8cscVC99/mHYDlpqLiqBgtIuQzleiGkhNtK66gVcMeO4Rd
 QrWENtS06ciYL529YQxhwufiDjUnGoZ5O7+xkJqSnl7L5lvqDMtd/3GzSZ0blq/8J2hCPyxIF
 3lQDJ/VQLhhQHowMRQXnSc8/ERsEW+1rKR7At8Yva7WUpLNstxdFpQr9tY8TWQLg1ZKW8cgCA
 ITpFfW1q0dOAxAX7v5YLyChUdTzojfTa+IXNcI99NeSECEDn5UPnX5sppb0b8IhD1vNb6COxj
 fXTr21KodreeRWy7HOohLOhYkDeSY+4dvQdJH7Lb3NHk8OzLqkAwSfuo4hQBpozpJIXqP795z
 1SN59P1lDE9BWew4BC2LVx9uqF/J8y+mruptEO8Im8hsJel2EVFpCBezviD0NOgW9Aybzu7ZI
 0mrsZXmiiPJzJ1ZYSro3m78CHdEXDIMig2uF9LfppoHXc1ab5ZFfh9AOjTKjwDvpKXdEjvz3I
 8zQ7zkMI30eMicwh5o5k1N3mGODhQ1qAvFZizE6hH4zAbNBtRkLo8f6nPiYkqfD6Ih9ZX1sr8
 EF/B8xpe8Vtuno2sTDjERHl26bRHZjKmSLYIAZAAMva8eDlMhP/kTDR3jCX58WKVjHRFHqwiC
 ACqedWqaP2ZdHxDrCnzZfTsKBo1MGYR5N4KaL9DbwD6uXqJbAcvqDsWa0Yq2ojo5ZxRWs3A1X
 0QXTHWJnEEdU5R4kZQzb0a+9pJuNSrmUX8OQC6C8VHe3IYQjTxn46PPkcinuJClYuHAK8ETqL
 6GJRX5qiv6ygTvTNnvYTQFVc5/7ksq6znFqHcH8wH2kaNEDO33uQbn1V4kQyNJtVZN2kWxeEk
 ZcGIQ=
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

On 8/4/19 3:05 PM, Sven Eckelmann wrote:
> On Sunday, 4 August 2019 15:03:42 CEST Moritz Warning wrote:
> [...]
>> Is this a known error?
>
> https://github.com/openwrt-routing/packages/commit/b04d24313d57b80b0af67=
f759d855619a2fbd768
>
> Kind regards,
> 	Sven
>

You are too quick Sven. ;-)
- thanks!

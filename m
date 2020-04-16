Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B75A71AC12F
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 16 Apr 2020 14:26:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA1A78108D;
	Thu, 16 Apr 2020 14:26:50 +0200 (CEST)
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 3FE9C8028F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 16 Apr 2020 14:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1587040007;
 bh=zjKNyPFMdzGFkcbiy+fkwwRqkgyAyDOD9Z5QbdgI5jQ=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=Ssjpgc+loeScz/mL2DvgWuHx+IZ26drv8e//KuQeD8KfWL/h4M32TVhAYYCwMV8SS
 lJZ+MtUKqPRYxkY9xiXQDDWqlZK2x9GWH7fQUR9pR7kPc9yz9XhP9xoD6Q6CSMaaCn
 A4ypOk8kgO/mCO6eITck9YbMu/bFzfRSUDSPTj+4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.109] ([91.3.167.116]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MTuQz-1jphAs37gn-00QjSE for
 <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 16 Apr 2020 14:26:47 +0200
To: b.a.t.m.a.n@lists.open-mesh.org
From: Moritz Warning <moritzwarning@web.de>
Subject: maximum hop count
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <db951dbb-7ec9-6938-faa7-bf2b46eeda30@web.de>
Date: Thu, 16 Apr 2020 14:26:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:Z/8ij8PjCjezTv0BCEa9u7RgQ438pUM3E/hVGY9Fm7lVA3XTbcn
 3O+xnmsOs8jyyiaERpZRABQj/YUuR6HwWZCAHmxKZQuTv8+BwMmOZ4/UNcMIUSzEHi+1tMg
 k0xDzzxbCjgjWVZLKEWeHp8O0R6H8OzMq6isYKwc3L7XhtPOO/R9DRbvKGkwEq7BnR6jJ0o
 Bb42pxGMs+X68KGVB39rg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2p3w55BaTVY=:y9FA0ExlEKetCsnF9hkMDV
 syBTdrye8Bok/lUf0SUeMOSn6TfVxcpzjCvktkNhTtfX/7ParNfPOzDzyS55sAbs/GB+d/snt
 Q3Tu3hpDitRoivyQ9MJq3nqv3PTCGmToG9UJdbI2peRYKDgT6W3IrEmRBZk6BUiilRgpI3kl+
 YnINyF2mPSquoC2SR2TEooe+taoxNw2g3hR+gmDh4k8diksItY4fd/0WSwc3Uk+amda55nK70
 a+vuDOzP1tH7aDpNv/c79d/+gj0ObTDq3tBgxhklGMa/44Ndnx79+TVBgheYAcyIYc9Is/qQH
 aPcx4v6WnFAguLVV0pPH07x44utumtvWMl4FEhtIVrz27vswyKzxP+npZtP/dGAAAAcqmno/k
 r452FqVXuWvGHpC216NGV2fsIcFQ5dLTxm/a636Y+eZ/mClp/HYymyrGNfXb5mQprYzqvzpmQ
 G7+p3oyZOgtw0NNZeLBi4x4eeqDSOrMfptvIPd+7OdD8z3/Gog1Zr4G+M1FwUbGA7Tz3phOkU
 sNjyVKvOGM8kf6BUiLpy7PsdruwuwhUpPHPoJXKO7DA7NrsCRutT7y+1J7GFj4/RhlIaE/ILP
 nFnYGGQ5HZEcG/QID+d4z2Kh5mto/UW91Dll8fBMmQpMxQWXMoCCbx6OprgBIbv1uKS7qw+mi
 tPIhqqU0oKDD4uiGkaRWYCzGqjIRoVNGd5cvnKAGjtsOTTOTfEImkH2L0LDfpcLEaZCqN89Hm
 fAfbF0tM9KG1rNIEVK14u+i8oLihFI1Q6GMdwzknb3B/RLSW+CERBgGrpzIuyp5mYzIVWlMBT
 J9zCbn+TliZkA2b1yikf1/bfg3zHR4K4bny7M7Wa1IHXNs6TtUhgj5gQ7t/Krtxli4GIjt+T/
 jw+Ul4rvdtAzMoRfuhi5NiLRk9z2x+49VNv9CEFO+56j+LpGDai73KdTUORQwl8vD/r+azl9e
 GLi6nACQkDuH2/mQc7oSpnB5usyIjLkaZR6iknI1wTGVlXHErWEaZoUs5zQl11wjIUihmspJF
 FPshAxT5HyfvBnVCXgnfZ2YAFIJncOHzxnRAveYsVTD4tfYCGZKwuLq7dm8AlwiCbQGBehfMN
 /AxOw2sJxhLKXaNmAjl6f1aifw0Csmo1RNLWNgwonBiqvZAACWJAEqmoerQqaKn25lp09yGYr
 fW8k85AOy+prgEKNkmABeQbleFlrJzFBEqygzJWYe+LSicXSbQPbFRyvCIaWCX7ZruWWLX3HE
 Zabm89iqHI2WzHDB0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1587040008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature:autocrypt:autocrypt;
 bh=zjKNyPFMdzGFkcbiy+fkwwRqkgyAyDOD9Z5QbdgI5jQ=;
 b=VkRAjV3bcTfxbRMMoQT/tfzaTOVfOSoOKySKxyOtcIWOxT+ScpFnH3xeMVKfDIDcJmShJF
 7Rq8H+kUhdC6tiOFtXqexW32o5uOFgrc13PSV66TPKEq5lVPcGL+QNumtLSJdH5nx3ciqM
 Cens88z+cDcs/egQzXSrXJmvu3aG/9o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587040008; a=rsa-sha256; cv=none;
 b=HimR+G2jC9NZgv1aELh9MfQac3ZrRw5m5x+uOCKZpZZ+84T++b0VRg4b3nI50B5bgmjoUh
 4Ng9QyDsS9ephthhIJO402AyJGBIlI41937MHWiQM3rUm2Gq3/nLgzaNOR7gswzXXBrtM4
 tQtRIHDmGK4Rt2PTk/GpKMMqM0g7MxQ=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=web.de header.s=dbaedf251592 header.b=Ssjpgc+l;
 spf=pass (diktynna.open-mesh.org: domain of moritzwarning@web.de designates
 212.227.15.3 as permitted sender) smtp.mailfrom=moritzwarning@web.de
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

I run a simulation of 50 batman-adv instances connected on a chain topology:

[node-0] <-> [node1] <-> ... <-> [node49]

Despite there being no packet loss, the nodes at both ends (nodes 0 and 49) only see 32 other nodes.

The second outermost nodes see 33 other nodes and so on until the nodes that are at least 18 hops from both ends (nodes 17 and 32), which see all other 49 nodes.

The OGM TTL is set to 50 [1], but from this experiment, the TTL seems to be 32.

Can someone shed light on this observation?
The batman-adv version used is 2019.4.

Thanks,
Moritz


[0] https://github.com/mwarning/meshnet-lab
[1] https://git.open-mesh.org/batman-adv.git/blob/refs/heads/master:/net/batman-adv/main.h#l26

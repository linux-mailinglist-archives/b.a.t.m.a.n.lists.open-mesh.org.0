Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B6E86CEC
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Aug 2019 00:06:22 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1818280757;
	Fri,  9 Aug 2019 00:06:18 +0200 (CEST)
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by open-mesh.org (Postfix) with ESMTPS id ECB0980873
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  8 Aug 2019 23:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1565298318;
 bh=crTCTiPRoHMOvfGlXjKeS8GbJdDwMQqvlJTJps1/mtA=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=C7EMO6Us5arcfTScd+jCIlqLEgv+tByquwMdFw113jkU9TjDBHJ6coEPehFNyUmnD
 F3KEJ4lugcqrRxHOZrgrIoh2Tsw9UTAxWmq8KYoj/ecTYlsAI72RmE+kufrvLW+HWX
 eAO2oLaf3VB3VkOtzck1AqEl6AIcuVs9WXzJ0ulA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [172.23.43.123] ([195.160.172.42]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MGAG3-1i8nlp1olL-00FD1Y for
 <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 08 Aug 2019 23:05:18 +0200
To: b.a.t.m.a.n@lists.open-mesh.org
From: Moritz Warning <moritzwarning@web.de>
Subject: batman_v default throughput
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <dc998970-a36c-cbb5-8de5-2ed2a3833d57@web.de>
Date: Thu, 8 Aug 2019 23:05:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:/ZjxgGnSe5ejzl1sR36Xf1lCPimLFhhnrozJcE8lH2E1pVQkqHP
 zTWI14QXH6QYAX2ETA3QOh7x5StDJqfcu8RIz/D+PiWerncxZxTLpYmuDoohUQ6U1hxELze
 oC1G+V3PlmKMFcqsIJJSt4u3JSBAGp67+4Hi3qQJKfg8Gq3bHMTwxXRCNMvmi+QNdMKbu5P
 QTjBBUHphlC14Bt0CgDrQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1NjyyzLjiU4=:ay7AuYYkjfHtXqgIBTOPOn
 SoAXSeNXce94AahcNpfs99ndHO0Ue5fds5kRbvQxHJTk/LlKihgmgZ191j+yCqxJGeQ/GS+Un
 QdzG9p5AiOmW0kf8e+D93DhNhwOewBPw1ixb/A1guSRirO1Mhg0HlHOoOTF6lx9zNaaNLcS4i
 Q6JzOqW6QQ1egvxRewITpSI05BsWfkX6JZ1ZbAS2jQOELsnnFIbumy3NtKF+n88O1vFEwrxXh
 9gvvfrs4b9y54lSobKXtOJV8PZM0naUPL2cqxI3jqcruQA7QLNyiCy9DwvhshGrpN0BgPms55
 uzL2wv5DTbIHhJ9JPzoesJv2/6lMzrWEZvk+tBvrCPLgtzFP+NVPjFM2/O/GsAHHYnrkHQFgh
 5Dg/O7zlp6MjfEAcmXbsq0e/sKhrpmdHeb+7h2EK8AnsUSv07oVC/dj17x0aWNnx/AvZyRx5J
 WxLpjk7tglNu9YYpAgBr3JyJus6sPz3j/8mAN13HISem7uJU16L3x8EHy9h4vhPY58oygKiKA
 YY77OGX9Roa2UBX8TTNEu2FFs2Cn1vFErcjnZpilhbJnbDPnW7ogFav/kWHg7k5MwWDf15jHy
 edtpDK3enCpHNxh3GtZIk546ys6Sx16TB6+mPIDqhsrTks/0AFqV4s1EMbqlkfrkjbpw9GcaR
 6KTbzlXSYdJngSQJtGZKsYSAV7/rKmK+hf3ioglA9gSwQpxfNFKS7mWGNMiTFZjTTqQC2UxeV
 1BU3C0nijtF34pqYuL8D0uLqYx+S5PUnN9lImlA7RxxwmrZvJpuESnuGFThT9eW5eog6xT1C3
 h1523DO9lS+kZMuit88QS46/IK90C7iPV92u/nSeyRSnZ1J9Zo9ZPGVQlTSKgtGuvyBnnn6Tn
 m2L2v2VW+Fz37pHCg/n2DHjdmpVgvTuCxLQ9pRmrZLLmVUaW4GEG/l9NlMN2ggPcY2k4fa4BJ
 xtwGHvSOxxqOZMgj/dZCP4Uvzpxz9cCacaOFAE/JCljHhJi4kZWtx58L7bhVkWwfL8sfJH4V9
 iy67QkjJ91mA7hC7E3mxWXfocbG6f9hZfneIkO4aU/nUuBHQujX+fueSIK4E7pGz3ayG4htqG
 XWeX00klUm5BE0b04AoX0GSMYmWhMapNs/sSZVEdEJTVQxCTm53SkTH1p41m+HhMvrm80sOvo
 X89uw=
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

the Freifunk network in Ulm has a batman_V network of >80 nodes. [0]

For the map, we use the link throughput value from batman-adv to calculate a link value (capped at 40 MBit/s for 100%).
The default for VPN connections seem to be 1 MBit/s - when batman-adv doesn't know the throughput from the driver.

Is there a way to the set this throughput or can batman-adv measure it?

Thanks!

[0]: https://map11.freifunk-ulm.de/meshviewer

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2641A9BE2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2020 13:13:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 92C918107F;
	Wed, 15 Apr 2020 13:13:41 +0200 (CEST)
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 70F3E800FC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 13:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586949015;
 bh=Uyc/JgUYUF0x93fiBIrjjRttso5hxJiBBi8LdmVxlcM=;
 h=X-UI-Sender-Class:Cc:Subject:To:From:Date;
 b=YNf8jj4pPjHUp43E/roe/4iEoezLUctJcdCTPTbJuiGJqjPUF3zowchK7rDdzn4F2
 soLcUY4wT7xFPRUXFVQZ8wxZtmNclVe+r9ign2TDcqIlShL0B57Z66bIUpANwfvCA+
 gPLoteEf//PfdLyjqqznywLG+p5ynS/a9DO+TODI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([78.48.133.192]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lmcf9-1ip3rh3cbD-00aHGp; Wed, 15
 Apr 2020 13:10:15 +0200
Subject: Re: [PATCH] batman-adv: Fix refcnt leak in
 batadv_store_throughput_override
To: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <afea6694-36c6-bbae-dcfd-f6f6efedb05a@web.de>
Date: Wed, 15 Apr 2020 13:10:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:mkQolI8XcWr8+vLOs8HJMBFqXy5OGBb4+jUbWRZrMI+YPsOlT27
 9ENpzFA7j1QixKKBIScLqTaDF1sCyTXitvqjgLV8jJ3Pophih2rDY2v/UTyZUkGEsDWnMCi
 ha8JaLFOxXSpmNWcZ166r0wvfJuSYk7bw8OPotc7PVL32UN83YeSsqU9gVdYF6rDqTdhr6w
 2d5WY7liDt4XZM7YGUbxQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fhXCi2r++Kk=:KbI2y5i2O4NtAa6CBoD/zo
 O9LDdK7GcbDHvcWMKVhtWTSYyQPpleAvQHrdGfW3zFc7UKGaq9HSyahaHucn9vcnHOTFtY9zX
 IHoS5BLQ2XR+DTOq1fHdOi2gnEURUb6tKR+50DxOQ4ODANGk7oLQ0KTGOOTuv/qsBYkz6WDHx
 MXKTx7rYG4eed0Z+6I7ui2muCO76adlmbxbbqPPURE4NFe44a5QF3fMNsPVMh9p+co+0wIwSF
 sj5M7WNKhyfwoOE4krSrbrxv9Lh1LNTZ+nmJCEcDX0TKWPYMIJQfi83j7WpYLJ++se+ZxmaEo
 nCi82UvHwGYMoNNeRZux1bKB/+O+8wplVPHIDMZOMRSlmsuP/lpor4dUA/psskbR2A4T2FQip
 EeMQPoLVZevB7O5BmU/E3cSxrLQsUFWxrAwfl1/F9B0sBxC0B/COctVNq49ZJyaqrVKYvXtf7
 qSDo9rWpoNgnuCq/e2UM8eu9fje0CiiEeeL6xMyAB+6m5ac4DNAgmjGOmsMLyV9PYdF55/BCm
 tr9TBpkKVbtnpVQOZrmtoPzClFkE8jX4bI3xmkGKbixV8RQNF2jbDWl+RhoDA2qfQIiAoht9H
 ql3wQ9+KznRQShXxL5O+CwZi26fppJh+8Zcd04pylloUghVWrgfWGiCJjLtKRj1qzA/y2jfmT
 2TLMQ5Na2TBjL8rIHVXK0EQpTdG3G4G98emywocsQ75LW0jzmFgbdxhatmbu5VjO+PjjJ3pbq
 3bWRevmauA92U44OHV0pNP5zw+nGgdmudatXXovCp7jKnylg3guUyISNgzHGSpZ7eVn65VaPW
 HESzwHLYvTuWRwJP/yvd9r//ziYU/fFGac+MI10QoUeJMjzzysJMxtKtgOwDDAzNHZTlWoegJ
 znsT4hcbj8VZe0EJfy34qUoD3j2wl9fSr9/NfzNMNdHcLbthpiWbz/5HTUL3S2zLrmM+JrjfP
 /cq9igjlnAxUnN3vfeenKmgEhrjOCKmjb9qrOhzFCnbAKE0uUC/ScEu7+x7d8eubgUnkBOnp5
 wkHhuv959dMia/nABilKGt1fbfRH3ii3o3IZ/J9sCcmJoZNZRHQmQp9/MwnCmYgRrxScs/CVr
 3zksueJO3qnJJ3nPmdrTAAZbY4Ke8oIqH60nrMmUDtQivkY/7vjFkXBIZ0osaMTtFjO+biyfn
 MSxNnFTrApfUWeAZyeFZ1UwXej4gov5zejFRz6DfrhIrIFlOHKzcyDC7Y2BnT0TK6rcbe8aix
 BNPEWGUvKVvmhbvks
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586949109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature:autocrypt:autocrypt;
 bh=Uyc/JgUYUF0x93fiBIrjjRttso5hxJiBBi8LdmVxlcM=;
 b=qUN7xJX/R8ooKrmxw27O14lD87TPZdFtSRRrMIvHA+zVbx3KDDu/TseUxdv1nxrWTEamwW
 /oAP2TtSwM1dCjgPJQ3aSptU/QmjEo0D4oUIDFJN8pkoyKWmoCreH5c2dKADzXs26bfY3D
 wgcgjNFqYpvN5PxBLq0JG1FimfrlX90=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586949109; a=rsa-sha256; cv=none;
 b=tFFzTIDroP1ksgQkEaxDhDATbdLoD3ukYsn5ej2XHLH145rCJTCBG0zkITmw8vWDBaZcNb
 kafB1ScCJjnR3pG7H7o7j/lMa5w7djlqbnadE5WVeHy+QQmWO0kh6FvccLupprUD7t4qC2
 RK0NK1IBUavA8EeGsQBdcgS+msE7954=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=web.de header.s=dbaedf251592 header.b=YNf8jj4p;
 spf=pass (diktynna.open-mesh.org: domain of Markus.Elfring@web.de designates
 217.72.192.78 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:13:34 +0200
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
Cc: Marek Lindner <mareklindner@neomailbox.ch>,
 Antonio Quartulli <a@unstable.cc>, Yuan Zhang <yuanxzhang@fudan.edu.cn>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

> The issue happens in one error path of
> batadv_store_throughput_override(). When batadv_parse_throughput()
> returns NULL, the refcnt increased by batadv_hardif_get_by_netdev() is
> not decreased, causing a refcnt leak.

How do you think about to mention the terms =E2=80=9Cexception handling=E2=
=80=9D
and =E2=80=9Creference counting=E2=80=9D in the commit message?

Would you like to add the tag =E2=80=9CFixes=E2=80=9D to the change descri=
ption?

Regards,
Markus

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD88949C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 12 Aug 2019 00:10:29 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 09F1F80F03;
	Mon, 12 Aug 2019 00:10:24 +0200 (CEST)
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by open-mesh.org (Postfix) with ESMTPS id 771718065C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Aug 2019 23:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1565560627;
 bh=G6EuwTI8AYXOaSvQJKCb66nM68/Zm9v+fcexgEr1YCo=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=iVObIA3UGNGNU84IPLk41d8krrfJk8L7VpvRSqKNOzgcCgQw4vzpNsr4JciQKXNZU
 zrHpr8AY1QFPhEbpEuV9Xc75hvPorYMkH9ZvNdjGei2ehk/+RsjLH8JLG73Y4QvYLN
 uPE62mMSkBwvAgPVdSrjUWXoLdZ2nP5iJLf5ReWA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.154] ([79.218.129.226]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lud4y-1iNIRP1dom-00zq9G; Sun, 11
 Aug 2019 23:57:07 +0200
Subject: Re: batman_v default throughput
To: Antonio Quartulli <a@unstable.cc>,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
References: <dc998970-a36c-cbb5-8de5-2ed2a3833d57@web.de>
 <44509c82-e60d-c94c-e686-faf08e0ec875@unstable.cc>
From: Moritz Warning <moritzwarning@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9ff7477f-8d1f-9db4-8415-2f89b571532d@web.de>
Date: Sun, 11 Aug 2019 23:57:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <44509c82-e60d-c94c-e686-faf08e0ec875@unstable.cc>
Content-Type: text/plain; charset=utf-8
Content-Language: en-IE
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:jy/gQ6LS7gjqz7Op3mcicQewNgf7WKzVKVhCCJ/EiZXiOC1HSkA
 kOKR5G0HbbH3UtdNs7gAtUBtE4Mwq1LH9JfMwMcRWcO2XCc3HYyM5TS9wQNm30hv6/JWTqj
 5Vfm//m27sjNT9vpwrmy6K40OeKblaxIWivzOfm5FrpK19wzURBKqoAT8l7rSjQ2NsgWyqx
 r5dIdBrxCX2wnHc3tP1vw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sfcPO8H8jCY=:z8hKNPJSIw6Ys1uX4FetqZ
 HTJNdlHItLkLhcMSI4g0cF5vglF0NoS/KpdHlU4Jpluw8FkHZ3zXOk9F8BHD3nXdH/NDTtNMe
 xev4vobx0dcgoWLH/9XCzMEPNBsTSVlVpnMNe8tVd75Hu7Hng5bgxgQwEkEP9mIM1IjYZOr/Q
 +uAOAGM2Yg1i4ERhfpUwgFOVyEDwIZY6Uzz1C2aIlIzaddFfjmrVyt02nE2+QUpW8ohi4GZ/k
 vnNDsErOr8jf/Zey4gIZMqPr2WB4SH9epVsiLzSp5/zq3LUbBQAYPTLVaG5fhLxw20PwKzYS0
 o7KNdJ5qOg58ZFAuLYas1XNx+6nk+l3N4cL7qs1j7GURo2kZrKbhwekFAGlbRZrHyci+Swi+v
 S4cP6saUFugfgpVn7OzMH9DA26kEzGGuYASIjA2nfC2Yy0II2JC1Wk+inclTt+EZhRphsJ1R5
 yXUNkfz/NAhGcrRsBtieI017J/2qL8d2OjfHKKR5uzD735HPTYxs7GRdB/PPXE7FFrcCBIXiC
 dwrZndFMI0coiys12TrpoMlE8aUtM8qJ3NWSpRam0DPVbvsiUUG6WQBy4txLrNiHNSTDhX0+X
 gCk5y0395kb7X5U4SiSJK1oZIovCw75PFyMwaQ5/BpC0NgTgkzqY/1T+jW45mqWhP2tD/eiqs
 uJkovCCTFH5nL9V7Zi6Bw9j/T3aR4Z7WfYuTAN1kGllUjyznEXrNCeUq/e8N3B+3rTB3BfRKF
 DPJkXa5N6eq3zWZ1dfQz04qH2X0F1AArMa1YVXCRClOI4IsQKNBkyT+F04byn/Hd1ydALZqm6
 lVW3RfXgVuVXJZiaP74wEWwYiYRflcV8ApkKIzgMNjm0UpwDKB3WTl/LhRxRYspCBDAw0nCti
 q4fIcZcvIMHvUHqOsbala52H6BrxtTIAzTu02m++y4YFg7Rfx7qhf7dqk6NP5p3AxMN+DPAsy
 7re21sUcm6FZHZNkbTQ5BV0AFRtyuMAuaLB6slg784iI+n3wxkP0C2GQ5SaYup+WWN+Jtyybv
 QMDfrrNYFp+2sBnEy+4KHjkPW2jC+xP2HM3T25ciaFdWX7l6aU7V3lyLEGL3wj8LTaMdgm1VD
 ErmEEUBhSHDjMJ5ai/lTMDIZUnWRsxdniUVX+5FRGT46jc7dpdf8axAu7B/ByN7AHQS3ovbKs
 Qjmjc=
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

Hi Antonio.

On 8/9/19 10:26 AM, Antonio Quartulli wrote:
> Hi Moritz,
>
> On 08/08/2019 23:05, Moritz Warning wrote:
>> Hi,
>>
>> the Freifunk network in Ulm has a batman_V network of >80 nodes. [0]
>>
>> For the map, we use the link throughput value from batman-adv to calcul=
ate a link value (capped at 40 MBit/s for 100%).
>> The default for VPN connections seem to be 1 MBit/s - when batman-adv d=
oesn't know the throughput from the driver.
>>
>> Is there a way to the set this throughput or can batman-adv measure it?
>>
>
> I think we discussed this topic in all its details (with Marek) during
> WMBv10, no?
Could be. I do not remember what was discussed..

>
> However, if you need to refresh the concept, you can look at the
> function that takes care of selecting the throughput:
> batadv_v_elp_get_throughput() in bat_v_elp.c
>
>
> The function is invoked for each neighbour/link across a given interface
> and can be summarized as follows:
> - if any throughput_override was set by the user for this iface, just
> use this value;
> - otherwise, if the iface is wifi, ask the wifi stack for the
> expected-throughput (computed by minstrel for ath9k and other SoftMAC
> drivers);
> - otherwise, ask the ethtool module if there is a known link speed for
> this iface;
> - otherwise, if none of the above worked, use the default throughput
> (1Mbps).
>
>
> As also mentioned at WBMv10, Marek and I had worked on a patchset that
> enables the tp_meter to measure the speed of a link, when no other
> throughput is available (i.e. for VPN or other virtual links). The
> patchset is still pending here [1].
That might be a nice fallback instead of employing a cranky iperf setup.
But (imho) it should be off/not compiled in by default and maybe only perf=
orm the check once, so to not to scare people into thinking batman-adv con=
sumes too much bandwidth for testing.

>
> We suggested you to manifest your interest about that patchset, so that
> the discussion could move on, but it seemed you were not motivated
> enough (at least back then).
>
> Maybe you could take this chance to revive that thread? :-)
Hm, I do not have that email in my email client anymore.
But it's good to know that there is a patch set that I can apply.

>
>
> Cheers,
>
>
> [1]
> https://www.mail-archive.com/b.a.t.m.a.n@lists.open-mesh.org/msg17833.ht=
ml
>
>
>> Thanks!
>>
>> [0]: https://map11.freifunk-ulm.de/meshviewer
>>
>


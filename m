Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2413B2B8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jun 2019 12:06:32 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0300B82700;
	Mon, 10 Jun 2019 12:06:28 +0200 (CEST)
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by open-mesh.org (Postfix) with ESMTPS id 97ADD80A68
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 12:06:25 +0200 (CEST)
Received: by mail-wm1-x343.google.com with SMTP id s15so5108520wmj.3
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 03:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=measite-de.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=adHWU59yE0TZidT9gra+cBI4ozd2IIBzQZ77GcgEF90=;
 b=13tMN9+/ETQqPf6AmPqupq8+4Th/bhYFoT6cQJkkUrPCTdxkQm/DyGeG5xnv6vT3vV
 1UjSd2GfvEI7TklYV3h6m+mpSv6GV3voc6HxiQ2Zpq71ge2+3EHtm0QzSr4Y6H4+Sdgh
 egqLttAWdw42fsFgpMQzpT6gpFdUJ4I1MwUFLW5VklPqO8CdpdwOw/fAPqQ+giFwJS02
 KRBb8x8Dg5a5MRlmlg6jOsMxDSGxPXzRNxh/9rorfh4wMj0MDzrlIjcl538BfNC4ofX4
 XJNB2TbSC8eYZCqLnnM5u1X7+1nfD+ZMhQVE3/IJ2wnPQ3s4VqdyInN7WRh4mEvy+BM1
 UcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=adHWU59yE0TZidT9gra+cBI4ozd2IIBzQZ77GcgEF90=;
 b=f6+2VT4/OLK0y4pF5j+gRln+r9n5+b7F68z/JJdl1fYUqHwQTCJOE2ZOmiIIEsN66z
 7BOczAHXSIF0D/JoUzprmM/SEwXmgARsv0GVf/nPtI5aB/qSp1hdx3Jb3H3ytitGsy8U
 zbmiNFG2SbtKbEJq//HayWNjLwClfyYDKHzmbR+Ch6tfUuYECt2F/Q3fQGCNvES7Ox1C
 pNrptckYHsyCrH36H4v+tyPh9jF4bxCuNTz5I+N8LX5p32j17imy/FiMgkYnGLlSm29h
 K92gIElRPul9hcS3qZ6A72FAzD2jrgE1IkDYggCE+lApXJeMILua2w0lk1HcvIzsOdIH
 w0bQ==
X-Gm-Message-State: APjAAAVBUxNF4/6Ii3/5v6mhuzNpmmm4rYYSkwgsV3LZLFJFwraHwLBZ
 6Kc1uB5ApiuGyFQH4S5wF4xltwua15Fg91fM
X-Google-Smtp-Source: APXvYqxeGkEJu0oygxECY0lSNFBDMK7vtOAj/SSpQkJsTEU3VPwxI30ywWJlWpsLAjHyxbmLfUFYPQ==
X-Received: by 2002:a1c:a544:: with SMTP id o65mr13015948wme.84.1560161184673; 
 Mon, 10 Jun 2019 03:06:24 -0700 (PDT)
Received: from ?IPv6:2003:d2:63c5:a600:cd48:d9da:7c1e:dd5d?
 (p200300D263C5A600CD48D9DA7C1EDD5D.dip0.t-ipconnect.de.
 [2003:d2:63c5:a600:cd48:d9da:7c1e:dd5d])
 by smtp.gmail.com with ESMTPSA id a81sm4772851wmh.3.2019.06.10.03.06.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:06:24 -0700 (PDT)
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
To: Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
References: <20190609101922.2366-1-treffer@measite.de>
 <3224708.U1DPrJmi8S@rousseau>
 <accc8852-ded3-188b-b72e-313d1b462d18@measite.de>
 <4907494.lMUJSmCnaO@rousseau>
From: =?UTF-8?Q?Ren=c3=a9_Treffer?= <treffer@measite.de>
Message-ID: <8c0c76dc-5c6b-da84-8e11-700222641db8@measite.de>
Date: Mon, 10 Jun 2019 12:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4907494.lMUJSmCnaO@rousseau>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Content-Language: en-US
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


On 10.06.19 05:31, Marek Lindner wrote:
> On Sunday, 9 June 2019 20:45:06 HKT René Treffer wrote:
>> I am testing this on devices with ath9k (2.4GHz) and ath10k (5GHz), so I
>> was looking at the estimates I get from ath9k. Here is a dump from my
>>
>> home network on 2.4GHz/ath9k and what rx/3 would give us:
>>> signal  tx     rx     expect  tx/3    min(tx/3,(rx+tx)/2/3)
>>> -77     13.0   43.3   6.682   4.333
>>> -57     130.0  117.0  44.677  43.333  41.166
>>> -53     117.0  130.0  42.388  39.0
>>> -82     43.3   6.5    13.366  14.433  8.3      (!!!)
>>> -63     52.0   86.7   26.733  17.333
>>> -58     130.0  173.3  29.21   43.333            !!!
>>> -82     6.5    43.3   2.197   2.166
>>> -48     104.0  65.0   40.191  34.666  28.166
>>> -69     57.8   13.0   20.49   19.266  11.8
>>> -58     86.7   52.0   33.507  28.9    23.116
>>> -58     52.0   1.0    37.994  17.333  8.833
>>> -56     115.6  144.4  29.21   38.533            !!!
>
> To confirm my understanding: What this table shows are raw tx/rx link estimated 
> values ? None of these numbers compares to Minstrel HT expected throughput or 
> actual throughput ?

Ah sorry, _expect_ is the current ath9k expected throughput and that
should be minstrel, right? I pulled data from my ath9k devices, e.g.

> # iw dev wlan1 station dump
> Station e8:de:27:70:0e:bd (on wlan1)
>         [...]
>         signal:         -56 [-59, -59, -80] dBm
>         tx bitrate:     117.0 MBit/s MCS 20
>         rx bitrate:     144.4 MBit/s MCS 15 short GI
>         expected throughput:    42.388Mbps
>         [...]
Those are the potential inputs (-56, 117, 144.4) and a desired output
(42.388), or as a table

> signal  tx     rx     expect
> -56     117.0  144.4  42.388
I then computed manually the tx/3 (39.0) which is lower than
(rx+tx)/2/3. The full line would be

> signal  tx     rx     expect  tx/3    min(tx/3,(rx+tx)/2/3)
> -56     117.0  144.4  42.388  39.0
I hope this makes sense now. I wanted to get close to the current
throughput estimation with worse inputs.
I would be happy to check more inputs, but the tx/3 turned out to be
pretty close and usually slightly lower.

>
>
>> Cases where the rx/tx estimate would be higher are marked with !!!.
> I also don't quite understand what the '!!!' thing is trying to indicate. What 
> is being compared ? But it may be due to my misunderstandings above. 

I haven't done an actual throughput test, and I would expect the outputs
of my heuristic to be worse.
So I wanted to give slightly lower values than the expected throughput.

The other way to think about it: if you were to replace the
expected_throughput input where would you over-estimate the link quality
now?

>
> In my small test setup with one ath10k device meshing with ath9k over 2.4GHz, 
> your tx / 3 formula seems to be quite accurate (had removed the rx part). 
>
> # batctl o (your magic formula)
> * ac:86:74:00:38:06    0.930s (       45.7)  ac:86:74:00:38:06 [    mesh24]
>
> # batctl tp ac:86:74:00:38:06 (actual throughput)
> Test duration 10440ms.
> Sent 58393512 Bytes.
> Throughput: 5.33 MB/s (44.75 Mbps)
>
> What would be interesting is how the numbers produced by 'tx / 3' compare to 
> either the actual throughput (can easily be tested with the throughput meter) 
> or Minstrel expected throughput. 

Comparing with actual throughput sounds like a good idea, I'll do that next.
Right now I don't know how well estimates on both radios hold and how
well they are comparable.

>
>
>> Why bother and look at rx at all? Asymmetric routing should already
>> work. I was bit concerned about highly asymmetric links, especially
>> those where the path back might not work. It might not be worth it though.
> Generally, the return path might be entirely different. Batman-adv does not 
> enforce or even endorse symetric paths. If there is better path for the return 
> route, batman-adv will choose the better path based on tx from the sender and 
> if only one return path exists, we don't care anyway ..
>
> Cheers,
> Marek

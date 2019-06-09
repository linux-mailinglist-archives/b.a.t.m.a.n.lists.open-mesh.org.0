Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id C88543A594
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 14:54:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 09D4F82081;
	Sun,  9 Jun 2019 14:54:17 +0200 (CEST)
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by open-mesh.org (Postfix) with ESMTPS id 439FF80170
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 14:45:31 +0200 (CEST)
Received: by mail-wr1-x442.google.com with SMTP id x4so3783805wrt.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 09 Jun 2019 05:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=measite-de.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=WF/BWG5K08D1iEBYteTnaR4/DwIVUSbmJgH+vWzdyyI=;
 b=w97drCHUCqq5Sm5Oa2+lcMLDB6zPiGdu/HQNlc4TCEhHloOKE+eJVBbdlyeKMzCPyb
 UFxqwiBx7Q35GuNJ9coo9Ccbem764Vma6d9xQEmOVa00tq6w1/K6TKNNDefywIeYB6bZ
 OwMGH3uYiPJmJjcfbHWSa5lNKt7w+057CyhnpKUguKPOn5vASJu3uEZ6v+eG+mKca36G
 WpY8HQs4cW9ZU+ZBSPF44Vi8F+2pcS8iPmXEUfv8q/gTds6rtaGXnhBPO9D4aFE8YgIF
 R5RB3Es4b9hLhG7fcDAXDcde0udG0wu0jYy71epZG5hyYrAz02TClgW8znueRtgBKC9p
 eWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WF/BWG5K08D1iEBYteTnaR4/DwIVUSbmJgH+vWzdyyI=;
 b=MGh1i9wKaXeSqbz/jilqITOamx7wjLRhkiQ6HVAIStWTbp2pwo/iB1T34Kb1PiO9fe
 Ed6YMJM+8s5y+cNleV6ooAf+LIft5OvVLRvhslo2lFn0ZPzrc0daADGJWkrIKnW0ONad
 IqgZuIGz/iwGIWC+nJP9mBfI+XLgJrhtuLdP3r5stjTmXf9DzXV8wSLOCs/YMw2C6RKi
 0AXmNVBnmragaoptpYx5xOQNKN2c/F9A5svN4+ev7NBt75R/hkQbH/eo4XLT0cTPS5kW
 zHwecf6YwwfiPDS4g1wxXYaURuYsF9Ngeiyltr8CNK3QDrpgQGttMp7AL2thwSZk2RpU
 2Jcg==
X-Gm-Message-State: APjAAAXwN4f8ROSk6Mt+Aur5ddPnKS+t3w5HN77AwCvE24roMHKA4Gda
 bktdPx1Dpj3/hPtb7szR2NK+x/33UTTKI//A
X-Google-Smtp-Source: APXvYqwJELQ+C3wqrWRTqmMjAfKZY/p6RMl8EDVSSmYTuO2Df7EWc7jRQMT0tsl7QoTO5IiMwoNKDA==
X-Received: by 2002:adf:e691:: with SMTP id r17mr24528363wrm.67.1560084308044; 
 Sun, 09 Jun 2019 05:45:08 -0700 (PDT)
Received: from [192.168.2.207] (p4FCA28A2.dip0.t-ipconnect.de. [79.202.40.162])
 by smtp.gmail.com with ESMTPSA id f2sm13850113wrq.48.2019.06.09.05.45.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 05:45:07 -0700 (PDT)
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
To: Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
References: <20190609101922.2366-1-treffer@measite.de>
 <3378734.H6Auf9Yjlj@sven-edge> <3224708.U1DPrJmi8S@rousseau>
From: =?UTF-8?Q?Ren=c3=a9_Treffer?= <treffer@measite.de>
Message-ID: <accc8852-ded3-188b-b72e-313d1b462d18@measite.de>
Date: Sun, 9 Jun 2019 14:45:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3224708.U1DPrJmi8S@rousseau>
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

On 09.06.19 13:40, Marek Lindner wrote:

> On Sunday, 9 June 2019 18:37:54 HKT Sven Eckelmann wrote:
>> No, we are not interested in rx rate for tx throughput estimations.
> Before ruling rx out, can you explain your thinking behind this magic formula 
> (if smaller compute sum and divide by 6):

Sorry, I should have provided way more context here.... The formula is
min(tx/3,avg(rx,tx)/3), which is tx/3 for rx>tx

My thinking was
1. it should be lower than an expected throughput measurement (play it safe)
2. it should still be roughly in line with expected throughput as
implemented elsewhere

I am testing this on devices with ath9k (2.4GHz) and ath10k (5GHz), so I
was looking at the estimates I get from ath9k. Here is a dump from my
home network on 2.4GHz/ath9k and what rx/3 would give us:

> signal  tx     rx     expect  tx/3    min(tx/3,(rx+tx)/2/3)
> -77     13.0   43.3   6.682   4.333
> -57     130.0  117.0  44.677  43.333  41.166
> -53     117.0  130.0  42.388  39.0
> -82     43.3   6.5    13.366  14.433  8.3      (!!!)
> -63     52.0   86.7   26.733  17.333
> -58     130.0  173.3  29.21   43.333            !!!
> -82     6.5    43.3   2.197   2.166
> -48     104.0  65.0   40.191  34.666  28.166
> -69     57.8   13.0   20.49   19.266  11.8
> -58     86.7   52.0   33.507  28.9    23.116
> -61     57.8   72.2   29.21   19.266
> -42     65.0   72.2   31.218  21.666
> -58     52.0   1.0    37.994  17.333  8.833
> -56     115.6  144.4  29.21   38.533            !!!
> -65     39.0   72.2   22.338  13.0
> -55     58.5   72.2   29.21   19.5
> -65     65.0   72.2   31.218  21.666
> -59     86.7   117.0  35.705  28.9
> -78     7.2    1.0    4.394   2.4     1.366
> -22     65.0   72.2   31.218  21.666
> -49     72.2   72.2   33.507  24.066
> -68     13.0   21.7   8.879   4.333
> -56     52.0   52.0   24.536  17.333
> -66     43.3   52.0   24.536  14.433
> -63     26.0   39.0   15.563  8.666
> -42     65.0   58.5   31.218  21.666  20.583
> -60     39.0   26.0   20.49   13.0    10.833
> -63     28.9   58.5   17.852  9.633

Cases where the rx/tx estimate would be higher are marked with !!!.

Why bother and look at rx at all? Asymmetric routing should already
work. I was bit concerned about highly asymmetric links, especially
those where the path back might not work. It might not be worth it though.

Anyway, there are significant over-simplifications in here:
- Is what I see here even representative / does it apply universally?
- Is 5Ghz and 2.4GHz and their modes even comparable like this? Across
drivers/chips?

Regards,
  René
> +               if (sinfo.filled & BIT(NL80211_STA_INFO_TX_BITRATE)) {
> +                       tx = cfg80211_calculate_bitrate(&sinfo.txrate);
> +                       if (sinfo.filled & BIT(NL80211_STA_INFO_RX_BITRATE)) {
> +                               rx = 
> cfg80211_calculate_bitrate(&sinfo.rxrate);
> +                               if (rx < tx) {
> +                                       return (rx + tx) / 6;
> +                               }
> +                       }
> +                       return tx / 3;
> +               }
>
> Thanks,
> Marek

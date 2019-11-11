Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id A96F4F6C0C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 Nov 2019 01:52:27 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7349C8051E;
	Mon, 11 Nov 2019 01:52:18 +0100 (CET)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by open-mesh.org (Postfix) with ESMTPS id 8DAAE803D6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 Nov 2019 01:52:12 +0100 (CET)
Received: by mail-pf1-x433.google.com with SMTP id p24so9479056pfn.4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 Nov 2019 16:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=AaSu/cjait1Ya/P7mlJow8/tgIQwTHuhGxxTRvEARn0=;
 b=SXhA2cD7HUjv0s7aNbNXQ5ppXHEx7QtuT05c5lI4/d2T6k0wq533BbhBGUyYMXU4Ei
 curJvbOX6YqGbD+WuohivlM5Gj5O21KfKN1OcwCwwiE/pnEkwqNBqKNkbXIsata2JOpY
 Iu2U+hmkoikau19hOAxh+oiWfL/jGfzu9gLUScoaCTNJrcofHqLvvG0xB7LFFE6rBxAx
 eYb4S4Kz9VqBLak6iJPDfjIW1yvYKY8tJsLG24UPV4cwgXiU/kWNPQwgJmBZnhAbTprS
 Y7RxkJEThYUblMWsDc28wnQvv2HTBVHd5Jh8B15HUZErh57pQkiUMrGF2jIcYNDNo+Ry
 5lUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:from:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=AaSu/cjait1Ya/P7mlJow8/tgIQwTHuhGxxTRvEARn0=;
 b=b175wPmnWW8hwBu8UwBLXaTGEdS9/OIEnFbmaVvhrRXP23WgcZza3uwKCDpWduxQjB
 dc4ZpHxwAWPua+RtxAsMgKhe9gjsHDqUX90jhZb2qCe0JCSjtmPhB/kzG1E6hy0YCBFC
 CLLMzOcVX5hwPr3Pfn+3oZrCmgDx7AdxVRoICfVB/HLqXEn2HkVssyA8t8aubzzJ9xU7
 SVXbtkhKORDTg4mj+CF/PlUpOZOCJ/dePQkWnjnUQAax/sch7AQU2VHve1dPFUoJvujS
 1sr3e8U+unJ9aDKvOU2woEirmHp8QXThA2+J+rSYw+F1U+hA2q4+jA9miWSpWbrz+W0i
 bRMA==
X-Gm-Message-State: APjAAAV8bB4egV0gOdhXQrRAAYM+KfdqnVl3C/vrUhyjFOJu+ZwNaS5N
 KKu+A1LMdGZNozOONzur7BI=
X-Google-Smtp-Source: APXvYqwGiylegKZ9NuKKssj2ccJBq2deRyHqW4umVGxUE5r0C/7nYC/cFQK/fhzFzmxYsBvHA44Rsw==
X-Received: by 2002:a17:90a:e90:: with SMTP id
 16mr30490583pjx.65.1573433530416; 
 Sun, 10 Nov 2019 16:52:10 -0800 (PST)
Received: from [192.168.42.10] ([157.245.207.76])
 by smtp.gmail.com with ESMTPSA id q34sm11143502pjb.15.2019.11.10.16.52.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 Nov 2019 16:52:09 -0800 (PST)
To: b.a.t.m.a.n@lists.open-mesh.org, mareklindner@neomailbox.ch
From: Xuebing Wang <xbing6@gmail.com>
Subject: Any suggestions about configuring batman-adv gateways + modems
Message-ID: <17dae71f-1ff8-a6c9-c2e5-fec78db34b29@gmail.com>
Date: Mon, 11 Nov 2019 08:52:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573433532;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=AaSu/cjait1Ya/P7mlJow8/tgIQwTHuhGxxTRvEARn0=;
 b=NwSRWI3LuUYzFG6GIIMxicpvJ3yJBJePGZUOSHdbPz8x6YNXj7+PSmWhQsSWCv/BSngccs
 0dIWN7Sjbz1A1OoJEBajd5bh13lMuKZeNPANYs7HxOnqUPQSV65mTH4gZ6PGgAkT8TI+cM
 mh150nu1GV8ATr0tql+klcoRJJP4o/w=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573433532; a=rsa-sha256; cv=none;
 b=J5SYcgYGaRyfXQktpnYdIMGz3Oo0z6GSe2/ENPSdKrTbyFMZLJpF1ikb2ByhlAKAaQNipl
 T67LJ3Az3u7eqhsYpcQrPWiGLicoZnfuCtaXYexkTcqx6uQRCBGgPzfw9AImy9H55m1Sko
 iG3NAUk2XyTN/aCMoKlONwCtCodeFvM=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=SXhA2cD7;
 spf=pass (open-mesh.org: domain of xbing6@gmail.com designates
 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=xbing6@gmail.com
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
Reply-To: xbing6@gmail.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi Marek,

Thank you for your help, as I did not subscribe to the mailing list, I 
did not get your reply. I subscribe to the mailing list now and I am 
writing a new email thread.


 >> We have been building openwrt 15.05 + batman-adv mesh network for over 2
 >> years, they work great.
 >
 >hopefully, the batman-adv version you are using is newer than 15.05 ...
 >
 >
 >> 1) My first thought is to use batman-adv gateway (with 4G modem
 >> connected) as dhcp server, and forward batman-adv interface to wan
 >> interface (modem).
 >>
 >> 1.1)  But, there is an issue with this setup. Once a modem is down,
 >> nodes that are connected to this batman-adv gateway (with modem) can not
 >> automatically "roam" to another batman-adv gateway (with good modem
 >> connection).
 >
 >Why not ? What should prevent nodes or clients to choose another 
batman-adv
 >gateway ?

When modem (for WAN uplink) at gateway is down and loses internet 
connection (but batman-adv connections with clients are good and dhcp 
server works good), can batman-adv clients know that internet connection 
at gateway is lost and "roam" to another gateway with good internet 
connection?

Thanks.
Xuebing Wang


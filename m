Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E92DE45CC1C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Nov 2021 19:32:41 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AD57184483;
	Wed, 24 Nov 2021 19:32:40 +0100 (CET)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6903A807D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Nov 2021 18:43:18 +0100 (CET)
Received: by mail-lf1-x12f.google.com with SMTP id bu18so9447150lfb.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Nov 2021 09:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=HaFcpK/P/GGsknj1HL812X9ZdJDmKc2b6kicKM3XERg=;
        b=VIuEhf0iRw2Yk5ATNVLXlqFx3lDuSFDLdKrsl/pWwxrquwVRMzO/fO85W8kVjSxKrR
         fOaU21uR4K5y9fWA3HZ8+W7J7StqXDqFr+XKipq1KAwaVgTBb27xPEkYyqr1mpR3MY1B
         5u5z06CURxeptEzBkuk3Rr383Cr64v4DMHG1zNeDr93M2NOWxFEAjIQjvdgff72Anu9r
         D6XYEy5r/NkyrUvbaM282gRpt2AYz56+0mo3QZ6UHwpHrGOmkUlg9H53pITiXKj3V9U2
         2sfa5oGTuNJ80ssdH5so4G7wjalQG8haCbnaRqwyv3BvR2sWhkEZdBE4jzvK+NqXaNb1
         1MCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HaFcpK/P/GGsknj1HL812X9ZdJDmKc2b6kicKM3XERg=;
        b=s84io9YDK2+zwW3UG3rtN/wjBdHvIhfw6X5poexDox5I+9wJoP4DCngesDLxOk7g7g
         55rB0P30Dqg99r7X24uoAnaraihslBRk5kbaEaP0bYNnOvLqw3YINHOpy61PGyBs3TpX
         ZNoABgvW19CEVgV0JrL6sA34F4A2A7K1wQ+nvvf83FU+iLLSTX5dcKm2IpATTProT7/1
         4J+aOdApNfQKelpk4WOdfMnxj9CheiVMTszjhrEMLBEJsVkiJpg5Z0hN0P8jhK81tDWV
         8JFHzRHuqttSkF4coNYP+7YhRw4AAIHdqQMSrB0Z89TLdUdaf2x1COcBdhCXMBtOmaHS
         Vaag==
X-Gm-Message-State: AOAM532YJ+47KVimuJARcxbTGDjtc9ZKmvJLJhzskwkPiwZ7SwabPS1C
	TLdGpSTOXTC1qnrPmMv4GfA=
X-Google-Smtp-Source: ABdhPJz2AdPeAnDvJ7NGF6iYGbDdqLkFASTmqUMDU+WcZZ1wXrsHr7fvkSRXg4XxLG0fZ/R3VjGXcg==
X-Received: by 2002:a05:6512:a81:: with SMTP id m1mr16200807lfu.306.1637775797333;
        Wed, 24 Nov 2021 09:43:17 -0800 (PST)
Received: from [192.168.1.11] ([217.117.245.63])
        by smtp.gmail.com with ESMTPSA id b12sm44026lfv.91.2021.11.24.09.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 09:43:17 -0800 (PST)
Message-ID: <3233c950-3bec-99c8-4afe-efe6392c929d@gmail.com>
Date: Wed, 24 Nov 2021 20:43:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [syzbot] WARNING: ODEBUG bug in batadv_v_ogm_free
Content-Language: en-US
To: syzbot <syzbot+0ef06384b5f39a16ebb9@syzkaller.appspotmail.com>,
 Jason@zx2c4.com, a@unstable.cc, amcohen@nvidia.com,
 b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, dsahern@kernel.org,
 edumazet@google.com, fw@strlen.de, idosch@OSS.NVIDIA.COM,
 justin.iurman@uliege.be, kuba@kernel.org, linux-kernel@vger.kernel.org,
 mareklindner@neomailbox.ch, netdev@vger.kernel.org, praveen5582@gmail.com,
 sven@narfation.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com,
 willemb@google.com, yoshfuji@linux-ipv6.org, zxu@linkedin.com
References: <0000000000009f52f205d18c60a7@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <0000000000009f52f205d18c60a7@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637775798; a=rsa-sha256;
	cv=none;
	b=t+fAW7lNxRLu6WLIiviT9EM4/KCQkif7bidV0yenURYtIf2iS3yMV/MDDvO/UDfeHa6mKn
	UxiL/vMI92yfHHaqbm9boeU6dAN5IxvrmSYOhstrwW91IlBp96Wurim8LluRuly8XMVNkJ
	OE/AO4f+T4tz4yTFYZ5t98rHxYobs+U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637775798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HaFcpK/P/GGsknj1HL812X9ZdJDmKc2b6kicKM3XERg=;
	b=BXjiu4AK8UzAftaYAtP62m4C+rg5NsyG/D2wg45sCabPyzF2l/EgXoT83JO7xAPB8RGjnX
	KJXMeqZQCv6SOrCiQN/bZ9L+flM0QCPkqKJJJ5keZgUg17CnBNG8ukKQQTG+syWhMpxdLe
	9V9SGez1ROc/gWVgNcyT+C0pEEn0PXY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VIuEhf0i;
	spf=pass (diktynna.open-mesh.org: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6HVZ6AP27V7UAKO4PQUWBREKHP5R4THK
X-Message-ID-Hash: 6HVZ6AP27V7UAKO4PQUWBREKHP5R4THK
X-Mailman-Approved-At: Wed, 24 Nov 2021 18:32:38 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6HVZ6AP27V7UAKO4PQUWBREKHP5R4THK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 11/24/21 20:42, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f68cd634856f8ca93bafd623ba5357e0f648c68
> Author: Pavel Skripkin <paskripkin@gmail.com>
> Date:   Sun Oct 24 13:13:56 2021 +0000
> 
>      net: batman-adv: fix error handling
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=114e3c16b00000
> start commit:   cf52ad5ff16c Merge tag 'driver-core-5.15-rc6' of git://git..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=9479508d7bb83ad9
> dashboard link: https://syzkaller.appspot.com/bug?extid=0ef06384b5f39a16ebb9
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17af7344b00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15dc02fb300000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
> 
> #syz fix: net: batman-adv: fix error handling
> 


#syz fix: net: batman-adv: fix error handling

Looks valid


With regards,
Pavel Skripkin

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E02AA1A9BE0
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2020 13:13:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D70268104E;
	Wed, 15 Apr 2020 13:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586949216;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=2nv3D0Abr4zKdSydMO+roUcWlzOXAxepXFbuxjukJgs=;
	b=cLM07TB0f5QmPyYT0WpVe+TnsXhY7hpWOK2OoGwjhXsiioOkG7H1im616C8pC9AQGWl3lu
	Ws7znA7Mxp4dERZvogD/BCRWIap5FrtcM7EQEhOsjW/VzP6NeLZjH3LrKH0K4f56gyn91J
	i/KvY42lHZMyIww3k8lm7CziuNcap24=
Date: Wed, 15 Apr 2020 19:03:30 +0800
To: Sven Eckelmann <sven@narfation.org>
References: <1586939510-69461-1-git-send-email-xiyuyang19@fudan.edu.cn>
 <28340414.QPzbqP6r4N@bentobox>
In-Reply-To: <28340414.QPzbqP6r4N@bentobox>
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:13:34 +0200
MIME-Version: 1.0
Message-ID: <mailman.12.1586949214.26087.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Xiyu Yang via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>,
 yuanxzhang@fudan.edu.cn, Marek Lindner <mareklindner@neomailbox.ch>,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 Antonio Quartulli <a@unstable.cc>, linux-kernel@vger.kernel.org, kjlu@umn.edu,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============9176553382813258036=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============9176553382813258036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9176553382813258036==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <xiyuyang19@fudan.edu.cn>
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.73])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BA2DF80048
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2020 13:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:In-Reply-To; bh=EQJkaChu07Wb5zNeSc4Q2eAuqN9B
	/MkelX8i1XndZjM=; b=jMjJteDBHiV26NRygYKv2+f1aO25a/Jmf6v70ZNRfyIS
	RM7fBjQAWWEGsDc9XBZsKpD4JAncQ9ifL5l0Lh/GjMIox6KkO3MYIXTPAPKCb2BU
	+9pQXiV0CcNDjI7YTfJtW1Inm0s2X79JIiKsMWvE+O34ugmSLtsi8HoPB2zhQv4=
Received: from localhost (unknown [61.129.42.58])
	by app2 (Coremail) with SMTP id XQUFCgC3mV4D6pZe0LRaAA--.5091S2;
	Wed, 15 Apr 2020 19:03:31 +0800 (CST)
Date: Wed, 15 Apr 2020 19:03:30 +0800
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Sven Eckelmann <sven@narfation.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <a@unstable.cc>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
	Xin Tan <tanxin.ctf@gmail.com>
Subject: Re: [PATCH] batman-adv: Fix refcnt leak in
 batadv_show_throughput_override
Message-ID: <20200415110330.GA71449@sherlly>
References: <1586939510-69461-1-git-send-email-xiyuyang19@fudan.edu.cn>
 <28340414.QPzbqP6r4N@bentobox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28340414.QPzbqP6r4N@bentobox>
X-CM-TRANSID: XQUFCgC3mV4D6pZe0LRaAA--.5091S2
X-Coremail-Antispam: 1UD129KBjvdXoWrurW7Xw1UGr17tw4UZF47urg_yoW3KFbE9F
	s3urykKa4vkF4UA398WFWrJF43GayrXr17Jw10vry3JF95ur15uF93CFn7GF1FyFZ2q3Z8
	ArnrZ3s8Jwna9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb-8YjsxI4VWxJwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVWxJr0_GcWl84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1lnxkEFVAIw20F6cxK64vIFxWle2I262IYc4CY6c8Ij28I
	cVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx
	0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402
	YVCY1x02628vn2kIc2xKxwCY02Avz4vE14v_Gw4l42xK82IYc2Ij64vIr41l4I8I3I0E4I
	kC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWU
	WwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr
	0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWr
	Zr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr
	1UYxBIdaVFxhVjvjDU0xZFpf9x07jzbyZUUUUU=
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1586948617;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EQJkaChu07Wb5zNeSc4Q2eAuqN9B/MkelX8i1XndZjM=;
	b=qnzhDedsZmnOsuFw0vov1GUfAWShj0I/3Ua5pyUU5vpNPmI0oFmDxUw25MvW149T1+Tfen
	ofCHLwmYSEWqxVUt7I1sN4H9MNoZutQO7k7G/fLEcxvnli8Tu/6mwXJG2tfLNU/IYrtqbj
	tF51ub0l9yxX3fMnYVZ4nikuN+5t+54=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586948617; a=rsa-sha256;
	cv=none;
	b=21uF3jKkzgKReRJ6Qy0wuQIYxoDs68n6Suh7xAHHhs32XrlpMhlq+V49U0MDXy5c21PwlX
	fKPhUhMyeHf/LOssIgQaPYXt4McyFcMvYquPQzlV/Ae3kMKie9beyLF4AYsw1NCiSLYjXO
	TMJVXs9Sw/LjqMEvW2AUfVAYWv8b97U=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=fudan.edu.cn header.s=dkim header.b=jMjJteDB;
	spf=pass (diktynna.open-mesh.org: domain of xiyuyang19@fudan.edu.cn designates 202.120.224.73 as permitted sender) smtp.mailfrom=xiyuyang19@fudan.edu.cn
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:13:34 +0200

On Wed, Apr 15, 2020 at 11:04:02AM +0200, Sven Eckelmann wrote:
> On Wednesday, 15 April 2020 10:31:50 CEST Xiyu Yang wrote:
> [...]
> > Fix this issue by calling batadv_hardif_put() before the
> [...]
> 
> Thanks, fixes for batadv_store_throughput_override [1] and 
> batadv_show_throughput_override [2] were applied. I've also added the missing 
> Fixes: line to both patches.
> 
> May I ask whether you are still a user of the deprecated sysfs interface or 
> did you find this in an automated fashion?
> 
> Thanks,
> 	Sven
> 
> [1] https://git.open-mesh.org/linux-merge.git/commit/cd339d8b14cd895d8333d94d832b05f67f00eefc
> [2] https://git.open-mesh.org/linux-merge.git/commit/3d3e548f74fe51aee9a3c9e297518a2655dbc642

Thanks for your confirmation! We are looking for some automated ways to find this kind of bug.


--===============9176553382813258036==--

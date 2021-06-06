Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B41939CFF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  6 Jun 2021 18:09:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 629A580043;
	Sun,  6 Jun 2021 18:09:54 +0200 (CEST)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CFC52801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Jun 2021 17:48:32 +0200 (CEST)
Received: from fsav103.sakura.ne.jp (fsav103.sakura.ne.jp [27.133.134.230])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 156FmTO0051098;
	Mon, 7 Jun 2021 00:48:29 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav103.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav103.sakura.ne.jp);
 Mon, 07 Jun 2021 00:48:29 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav103.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 156FmTRa051095
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 7 Jun 2021 00:48:29 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Subject: Re: [PATCH] batman-adv: don't warn when enslaving hard interface
 failed
To: Sven Eckelmann <sven@narfation.org>,
        Marek Lindner <mareklindner@neomailbox.ch>,
        Simon Wunderlich <sw@simonwunderlich.de>,
        Antonio Quartulli <a@unstable.cc>
References: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp>
 <99650324-734d-54ed-cd9a-e7b55b8f3630@i-love.sakura.ne.jp>
 <19096778.Bt7unJmvIX@sven-l14>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <e43b78ae-7a4c-3dd2-d4a4-554f0280efa8@i-love.sakura.ne.jp>
Date: Mon, 7 Jun 2021 00:48:25 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <19096778.Bt7unJmvIX@sven-l14>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622994514; a=rsa-sha256;
	cv=none;
	b=iTjcfwJJnpiY19O+WVhY4WE+/7VUbyw5+MW5koWUSXbKOsTfMtbsDGsdqplQR7Qdai+cJy
	FhA6tJjbMB9OgLt/ithW4oWatalWVMys+gz3dvWrOHIi7d53GJFF09GVFzwq9wym0VEngz
	rWIIvCtmOOoFIfY8pnUHPIWFNPrVXNs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of penguin-kernel@i-love.sakura.ne.jp has no SPF policy when checking 202.181.97.72) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622994514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tdEHoBq3wE2lvptKF+L17ghrokPvQ4nruT0EDw2AvFk=;
	b=FbaA4tRCSzCjBTX2Yvq1n1rJJIJprZ50MC6SGKF6KP/na9gH4AMn7+iHKSMNFlwrTVBQyA
	noHNE09amfH2x7edh+JQmH+TpTLrpnSzw0uYI89KrGBYrsBLVyT3UeGytEuTYXAdOdtT5W
	/hoK829vm5NNZ1gQkYc5akpRL+/IRsM=
X-MailFrom: penguin-kernel@i-love.sakura.ne.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: YRBAKKUH6WH4XRGM2GU6LGL24WRFD53Q
X-Message-ID-Hash: YRBAKKUH6WH4XRGM2GU6LGL24WRFD53Q
X-Mailman-Approved-At: Sun, 06 Jun 2021 16:09:53 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YRBAKKUH6WH4XRGM2GU6LGL24WRFD53Q/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 2021/06/06 23:35, Sven Eckelmann wrote:
> Please rebase your patch in case it is really needed.

Oh, I didn't know you already applied that change, for that commit is
not yet visible from linux-next.git as of next-20210604.

> 
> And the explanation you give seems to be bogus. Or am I missing some error 
> handling in batadv_hardif_enable_interface [1]?

I told syzbot to try https://syzkaller.appspot.com/text?tag=Patch&x=100b083fd00000
and the response ( https://syzkaller.appspot.com/text?tag=CrashLog&x=1456f0ffd00000 ) was

   batman_adv: forw_packet->if_outgoing->soft_iface=0000000000000000 forw_packet->if_incoming->soft_iface=0000000039fa85b7

indicating that if_outgoing->soft_iface was NULL, and there was a memory allocation
fault injection immediately before this result.

Since if_outgoing->soft_iface becomes non-NULL if batadv_hardif_enable_interface()
succeeds, this situation indicates that batadv_hardif_enable_interface() failure
caused forw_packet->if_outgoing->soft_iface to remain NULL.

> 
> Kind regards,
> 	Sven
> 
> [1] https://git.open-mesh.org/linux-merge.git/blob/refs/heads/batadv/net-next:/net/batman-adv/hard-interface.c
> 

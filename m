Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F25314931
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  9 Feb 2021 07:58:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 62FCE82F8D;
	Tue,  9 Feb 2021 07:58:12 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E9CED80605
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  8 Feb 2021 20:34:15 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7C1964E85;
	Mon,  8 Feb 2021 19:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612812854;
	bh=Hda5g27XxqDzZGVXPj20TU+wNYDR/3oc+nq5MIWbJuY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hX6hakVR8/ylyM+DRkC7mcD39vnes0+aIsnHMwcyNjPwSpnrg+bhkWNiBLlWJNg6/
	 P/G1MzQyq5w1c0P7N/3xigpWW4eGhZFpalNL/lJ+6iVzg5UnkwNYWiAUlySdudtLIj
	 xW+RouCLlKAKV1aO1llRKtos+W1bi3sJfSQASMm32ZyPnwEB3rUT1ZLxvy/axe8eeV
	 wwKmhHOF8J46XTwfEgvVibpMm8eONZbg08OUb/b8nVFR7RxoMoDbArFwKq/+2ULQqG
	 avZ8CuXoCF09arzDbm1BndT0A6VabaXY96Y1qznHryFwF8mMPQ/7tfIUqTDHMkE5lc
	 /aHKZoEFZFDqQ==
Date: Mon, 8 Feb 2021 11:34:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 0/4] pull request for net-next: batman-adv 2021-02-08
Message-ID: <20210208113412.519c9704@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210208165938.13262-1-sw@simonwunderlich.de>
References: <20210208165938.13262-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hX6hakVR;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612812856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OkgUDBbPS1s/FK/p5UvOGJauwNgWMHZeJsGGYQVFhx0=;
	b=Zp1nyht3ZW5hoJf0vcxjm8pYPHOiimws1Z5J0Ovqd+HDH8LBCg7GJKHnT/+dqATwKv9qSx
	6SqE3d3SJXXOJcZ8Wultl43y9Q/N42AodfJaVnT7y6q/F+Ey2odGmIB8zUJBlXBN/UK/vp
	RcmnB7vIKhzSXN6cT3z5J9bZ9l4Juds=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612812856; a=rsa-sha256;
	cv=none;
	b=o3UPWq9+eC6PzwKafn1zmW43SShji4TytOmid+gH87w0sJdNntpQFAL6Kpk2Yq8WkW5bvS
	hG43nOv4bcdiG6AeExMMfc6SS2qxYU7R2b0OnGVqkHWZ9ESYrib/9ERSBAVhKhcGgYhqBg
	PGVjQoePvydY5p2hbbkwNWALmWgayHs=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: IUD6WYVZJNIXRF7DLM4YTLDVKOCPGDHR
X-Message-ID-Hash: IUD6WYVZJNIXRF7DLM4YTLDVKOCPGDHR
X-Mailman-Approved-At: Tue, 09 Feb 2021 06:58:10 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IUD6WYVZJNIXRF7DLM4YTLDVKOCPGDHR/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon,  8 Feb 2021 17:59:34 +0100 Simon Wunderlich wrote:
> Hi Jakub, hi David,
> 
> here is the updated pull request of batman-adv to go into net-next. We
> have updated the first two patches as discussed (added justification
> for the first, replaced the second to remove copyright years). The other
> two patches are unchanged.
> 
> Please pull or let me know of any problem!

Pulled, thank you!

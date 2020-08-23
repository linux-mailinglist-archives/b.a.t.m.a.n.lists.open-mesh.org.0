Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2DE24EBDC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 23 Aug 2020 08:46:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8FA898134D;
	Sun, 23 Aug 2020 08:46:47 +0200 (CEST)
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 698B88004C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 23 Aug 2020 08:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=1iYJuhG0tzrB8Bf5m8FYNXArkap6cTu6gz6CcWPiEaM=; b=j70cSftxZD51A0uurzxPZFPwrF
	N59RS0imdn+RgiHKWjt6E7L0GnwImKxG4mKJSyXQvCxdaQK+zBdyymccg+4Gt8ngosKAsDytoyLSv
	JHQG3pTauFjWnnZ3NWKVJyuJnGmcldwF2UyynPfTFFh5ZWqFA3ZpcvBb/w8bOiLT0KAa4hRhnpysZ
	uX4Ohd7n8dxozKvUf/13A/eTvJVg1xm3+X3V/270FjHlcrf7XTi1ldTRpN4Nfr1QN0P9eIPj32atm
	iRd7gTwvvmfEoBAMOhI1ILs5zKY7mc6jylmKVB7RkuI1zCPSCK9vBmtmvyJL0lbQHu3E25B9U3Yr5
	eyId3mcg==;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9j7y-0007PV-9B; Sun, 23 Aug 2020 06:05:15 +0000
Subject: Re: [PATCH 0/8] net: batman-adv: delete duplicated words + other
 fixes
To: Sven Eckelmann <sven@narfation.org>, netdev@vger.kernel.org
References: <20200822231335.31304-1-rdunlap@infradead.org>
 <1676363.I2AznyWB51@sven-edge>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <37b82a77-fc58-9a7b-8996-a6bd030ee7ef@infradead.org>
Date: Sat, 22 Aug 2020 23:05:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <1676363.I2AznyWB51@sven-edge>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598162731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1iYJuhG0tzrB8Bf5m8FYNXArkap6cTu6gz6CcWPiEaM=;
	b=XkuWnp4iX893nTsaEytI/ZTG72Sz0LQsvzfZta7cKmnWJkcERRKZdA+RoFAg2gOm0/uM0W
	KGmDhuE6nPGLwVlv1mgAQgtn9Ud+H8PQf0Wui1nO5f+woBXjbU+zuzYDrcjciyxZclr8X6
	30ECyHqReidVsqllVaP5Ca2P4NFVoUs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598162731; a=rsa-sha256;
	cv=none;
	b=q9juexDBK/zbh4/FLjkzAbp0Re5RDJs4PtlaaYniyvA7htfKyzh/n9X4o5wHwHFv9VnI7g
	MREgKQCeZaMhmtFux2f0Lj+l0CwYZCoYmNmY2Ik68o0eo9ju6NA6BAk0GjyiNV1Mh0HzGX
	AG2sZj6lLN95h+frEcdwlEQlwEcZfec=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=j70cSftx;
	spf=none (diktynna.open-mesh.org: domain of rdunlap@infradead.org has no SPF policy when checking 2001:8b0:10b:1236::1) smtp.mailfrom=rdunlap@infradead.org
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: M37OLXIJJLJ73GMFMFL7M5PJBWSFSACA
X-Message-ID-Hash: M37OLXIJJLJ73GMFMFL7M5PJBWSFSACA
X-Mailman-Approved-At: Sun, 23 Aug 2020 06:46:46 +0200
CC: Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, b.a.t.m.a.n@lists.open-mesh.org, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M37OLXIJJLJ73GMFMFL7M5PJBWSFSACA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 8/22/20 10:49 PM, Sven Eckelmann wrote:
> On Sunday, 23 August 2020 01:13:27 CEST Randy Dunlap wrote:
>> Drop repeated words in net/batman-adv/.
> 
> Please rebase to only contain the changes not yet in 
> https://git.open-mesh.org/linux-merge.git/shortlog/refs/heads/batadv/net-next
> 
> Kind regards,
> 	Sven

Ah, I think that you have everything covered already.
Glad to see it.


Is this git tree included in linux-next?

thanks.
-- 
~Randy

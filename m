Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6B0311BF9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Feb 2021 08:28:04 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 707F782800;
	Sat,  6 Feb 2021 08:28:03 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D5192815E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  4 Feb 2021 20:58:39 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A98364F38;
	Thu,  4 Feb 2021 19:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612468717;
	bh=u+6crpBq8Oq+sKoX2+GL7qm2xUVPXcP6Fd0cRAAhjTo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=thG8nnM8kWSZZ6YCcjlM1YxV5z+hcu7V9AGSlulpk7hYJKGuIrjzmYEtlHqawB0h3
	 o/P7rGZ3RmEI0AWse9EqKBt6/vfUpn2fwXxSUhn/OcUMsuGNaZy6JeFd2ZheAADfhu
	 RpDfDNtfFjysfU3i7icFO1e2bi4yFj9W9wSHpjkd7XpJLVMHEqLaxGtHz+WIaw3NUM
	 E/ipcTqPNAtP7/B0y2YXRX4uesSZOkYDiLe1NpngL4Nt2fSnrBlu9xnstj0LgKnDXK
	 6qWXDD3Nc9LWvoz+lOKJmrlzCKyUxgydqbQs8ol9Bysrz2iFufwHbIOvIjKEucUqPL
	 9VFXUupaVB29Q==
Date: Thu, 4 Feb 2021 11:58:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Message-ID: <20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <3636307.aAJz7UTs6F@ripper>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
	<20210202174037.7081-3-sw@simonwunderlich.de>
	<20210203163506.4b4dbff0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<3636307.aAJz7UTs6F@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612468720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3v/nkbWj7sofPnc8zTky7i5IymE9GaNLAgdRuTHGUI8=;
	b=hlnUeKFT1iNVqI7uzh3hX+d7tsbTVAdep/YkZK8TsbAT1ZaKO0C8PIP5AX2y8uYizW+fyD
	7ET7bzSDsocIaUtYWO7W5bn4DcqPYoaQtmSzUCdj4CSzsYqfMLv1Ep3C+GaiolfUhG6jdi
	rPXFIB3TzGdKaxWGfKTTctwO5QNTa0I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612468720; a=rsa-sha256;
	cv=none;
	b=vot6V73T1FyL9O6RtsguR9/0zV6aioTi6otSFxXBN/RZiVoUIn3wsE87eRgmBHs5+Vk3QK
	B7C9Fpkn3Vv9MrW2LsbVuKU44H8dvg66i4XO3YuCZrtIyXdyePnOFXofvlY/3icHsKYI4M
	W0h9NzA38vilQs/Xsmuwr0HGhyXULPM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=thG8nnM8;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: XYDF4BUE5HHAUEEIRON7MECVEXQH6QVE
X-Message-ID-Hash: XYDF4BUE5HHAUEEIRON7MECVEXQH6QVE
X-Mailman-Approved-At: Sat, 06 Feb 2021 07:28:01 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XYDF4BUE5HHAUEEIRON7MECVEXQH6QVE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, 04 Feb 2021 08:54:33 +0100 Sven Eckelmann wrote:
> On Thursday, 4 February 2021 01:35:06 CET Jakub Kicinski wrote:
> [...]
> > Is this how copyright works? I'm not a layer, but I thought it was
> > supposed to reflect changes done to given file in a given year.  
> 
> <irony>Because we all know that the first thing a person is doing when 
> submitting a change is to update the copyright year.</irony>
> 
> So we have either the option to:
> 
> * not update it at all (as in many kernel sources)
> * don't have it listed explicitly (as seen in other kernel sources)
> * update it once a year
> 
> I personally like to have a simple solution so I don't have to deal with this 
> kind of details while doing interesting things. The current "solution"
> was to handle the copyright notices year for the whole project as one entity - 
> once per year and then ignore it for the rest of the year.

Back when I was working for a vendor I had a script which used git to
find files touched in current year and then a bit of sed to update the
dates. Instead of running your current script every Jan, you can run
that one every Dec.

> And I would also prefer not to start a discussion about the differences 
> between the inalienable German Urheberrecht, pre 1989 anglo-american 
> copyright, post 1989 anglo american copyright and other copyright like laws.

No need, we can depend on common sense. I hope you understand that a
pull request which updates 8 lines of code, mostly comments, and then
contains a version bump + 57 lines of copyright bumps is very likely 
to give people a pause, right?

If you strongly prefer the current model please add appropriate commit
messages justifying it and repost. Right now patch 1 and 2 have none.

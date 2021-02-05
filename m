Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC6F311BFA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat,  6 Feb 2021 08:28:08 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DE6D583B68;
	Sat,  6 Feb 2021 08:28:03 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A9E9A8051C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  5 Feb 2021 20:37:04 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66E0464FA7;
	Fri,  5 Feb 2021 19:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1612553822;
	bh=/gX0OD27ow5lqaz6csW9tzgTNpjlDXPHR9Qsl/CpQiQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z0L5gRUsftDjgSMx+rscQWPCvGd/74vohM5tbAg107JMu8pKJDJ0RqtHS37EcN+4T
	 gw/wNxME62LPY7wzKxQ2KiDzrsjKUkKgT/5ufmZp1LY7KgLVHKinb63d2mBGNr1ssU
	 EMRc58MnXr7P9sxSzbDoUQ1CIwc68UL5WGPBTGifc0wjceeqaGar1zK1EmLu14HJBf
	 ZJx5O154gspkHmDaCAISGbEuukWTq6eVOrnzesinaqma/uFpCYH1YfrNBSQ6ko1nO3
	 XeUcYXQDjdXG5SKKUd/doBoo+6OGma0HLB+4ElHaMu4DmVM1pP2Q3jt0bx4ZAIsKBH
	 P3EOlPp/Qc/pA==
Date: Fri, 5 Feb 2021 11:37:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 2/4] batman-adv: Update copyright years for 2021
Message-ID: <20210205113701.4ab0e1a0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <4678664.8dpOeDNDtA@ripper>
References: <20210202174037.7081-1-sw@simonwunderlich.de>
	<3636307.aAJz7UTs6F@ripper>
	<20210204115836.4f66e1c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<4678664.8dpOeDNDtA@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1612553824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IYU9ndSmkYcPINFbi5VxGEI9DNVQ4lE+t89U6sv2MT0=;
	b=PuswT7qEJxqheF/qJAxUSvFr5L3SH2NiVF8bq0kcQvdOKUs+Pihv5RETX13rnbIFly28FO
	lVopeglbSLv/ZGyw7hrBEwbAYuooJrRQ0X8IeIBfOJ14wjptBBDAX8/y4d/4gt3BMmTdCM
	wG1+EcphXiFMIezkyWyozuKZJA/aIAU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1612553824; a=rsa-sha256;
	cv=none;
	b=juIX1b6P7JrkCyTDO//iTU6M+9LE4i+gYLN61x03/iTCQj0OR6LAc8kujdwtuuo1yujzSS
	OZ4Acqr1wGYR6LIkUO3FlQqydesDpkmO/D0WiBfEPef52/IAnp7vzSBulvwoQ2hJ1r5m1Y
	xdY1AxHkbPZpCOdbo0hmx11zfZyiPtk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Z0L5gRUs;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: Z4E7BWN3MI7CJDIKUSTWBM4VCS362TPM
X-Message-ID-Hash: Z4E7BWN3MI7CJDIKUSTWBM4VCS362TPM
X-Mailman-Approved-At: Sat, 06 Feb 2021 07:28:01 +0100
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Z4E7BWN3MI7CJDIKUSTWBM4VCS362TPM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, 05 Feb 2021 08:47:38 +0100 Sven Eckelmann wrote:
> On Thursday, 4 February 2021 20:58:36 CET Jakub Kicinski wrote:
> > Back when I was working for a vendor I had a script which used git to
> > find files touched in current year and then a bit of sed to update the
> > dates. Instead of running your current script every Jan, you can run
> > that one every Dec.  
> 
> Just as an additional anecdote: Just had the situation that a vendor 
> complained that the user visible copyright notice was still 2020 for a project 
> published in 2021 but developed and tested 2020 (and thus tagged + packaged in 
> 2020).
> 
> Now to something more relevant: what do you think about dropping the copyright 
> year [1]?

Interesting! In my own code I do option 1, copyright protection is
longer than the code I write is relevant :S 

3 seems to be what US lawyers like but frankly in the git era they are
probably overly lazy^W cautious.

Option 4 seems nice as well - it's really up to you(r lawyer).

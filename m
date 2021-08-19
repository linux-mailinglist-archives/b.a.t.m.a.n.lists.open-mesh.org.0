Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 000033F26ED
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Aug 2021 08:41:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 48E2082654;
	Fri, 20 Aug 2021 08:41:22 +0200 (CEST)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A491A803A9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Aug 2021 22:52:41 +0200 (CEST)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A5ECA60200;
	Thu, 19 Aug 2021 20:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629406359;
	bh=wdL8a/fXPWpVp5mfgdFlPXoXUvv9vnXL6JSjBLeymuA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fAiHeT3YvAA2PDxj2uln6KTyXKsqvS1Q7M0MsIjyuP0Z3OQCcgjajHVxwJPkdyE8G
	 NN8L6aaHNVimj+xOGnS1m5NW8Pt0Z0fdLI7NSBpKfZJszK1C3ubFiAbYrLHeXRCiJt
	 GJYQQHKfV/x/Z5bOsaryf7ogxJos/ajVRKEqHl6A/3LROdeoFiCoIZGbtwzyE3d89J
	 g6iD/dYRatDTFbwgFFW0iu63WmFuVh+2iAmxRTspzWUc8PiwfFnAH/ARAH+3mKHEVW
	 NXXTv3ZdKdLnIYOIghhA9jkzUoK/HHKwZSgA8siuNM7nXPlxTHDeVQxyVVDDulrEtO
	 SLlokJTA/fwug==
Date: Thu, 19 Aug 2021 13:52:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH 2/6] batman-adv: Move IRC channel to hackint.org
Message-ID: <20210819135238.354db062@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210819153334.18850-3-sw@simonwunderlich.de>
References: <20210819153334.18850-1-sw@simonwunderlich.de>
	<20210819153334.18850-3-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fAiHeT3Y;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629406361; a=rsa-sha256;
	cv=none;
	b=T//D6oR12tiKQBcaS7t8aWfNDObiVuCt7BeleJ27Q5F+nzfH3nVo2w/POXg58Paid+t+mF
	pCNeMprGtI0eWkylBDMhn8uoIK/QZAIlg7c8mwd5NrLobG0Lg4kPRcI4RDts0BtLG6kqT7
	oCPUpMQ6YJKet+6JutjFJT4Dhnyqsb0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629406361;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eNVn574/G732fdQgC/XuoDt1qUDUPq4fxcB9a5UsW1k=;
	b=sEEs+gHxfscHjXFVuOxM/1BwX5jCo4Euj2f5T3hoaWgpX3DwWJxEerTV8b5inAzB1ulydm
	GPMPQsmc6HwtpgENEXgZv7sGHOfpxbVkSqT1b0rCP58vdYbtLmRT2pJuaiTiXunmEwf6nf
	xeXbBm3Y4gPjaLSlg5FuMHSSif13iJQ=
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: OTQXPAMDNDVMJBCATC5HCC2D62YLVN43
X-Message-ID-Hash: OTQXPAMDNDVMJBCATC5HCC2D62YLVN43
X-Mailman-Approved-At: Fri, 20 Aug 2021 06:41:16 +0200
CC: davem@davemloft.net, netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OTQXPAMDNDVMJBCATC5HCC2D62YLVN43/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, 19 Aug 2021 17:33:30 +0200 Simon Wunderlich wrote:
> From: Sven Eckelmann <sven@narfation.org>
> 
> Due to recent developments around the Freenode.org IRC network, the
> opinions about the usage of this service shifted dramatically. The majority
> of the still active users of the #batman channel prefers a move to the
> hackint.org network.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

This one is missing your sign-off:

Commit 71d41c09f1fa ("batman-adv: Move IRC channel to hackint.org")
	committer Signed-off-by missing
	author email:    sven@narfation.org
	committer email: sw@simonwunderlich.de
	Signed-off-by: Sven Eckelmann <sven@narfation.org>

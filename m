Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 231B4A86C53
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 12 Apr 2025 12:03:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EE7458434A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 12 Apr 2025 12:03:15 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1744452195;
 b=VWEj7p5A0x++zWF1xCR3mOWGM0Lat9eXU3FXMuBEf+wgWNt6NrCD0B5B+0zbZTHxSsGBm
 RioJns/7kOK3jJsrU5IPEAFv2YCZqLQMIsVUDJQ+PkzxZ/aZ7Ga7wUFTy6yWKM15YhO4NAj
 VrAGIUeqkGRBnrWahCh2pRKcnhoecj0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1744452195; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rc9LLxtxnBXqlOh6v74ZpGs57b3CT5+NJGJU/qkFrrs=;
 b=dJwn5GRHFtVxr7z/MA1h0fOAeG3eRAcALcPxnEFw2UxpvOpSm2zpY7ttj2t/23tF2e0Ia
 rvbsYegUqHaA6WftbKdWlnaIC7se5fqR8SWdRIt21IDt7ha3X7kIL2JLcTDVc9FrAxq4f8D
 DbeLqOwAeWEZKyXdD0N6DBpcrNu7DYE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6EA1E81AFD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Apr 2025 17:12:37 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1744384367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rc9LLxtxnBXqlOh6v74ZpGs57b3CT5+NJGJU/qkFrrs=;
	b=MupRDyQ808uZCi0m2rZt+/PERhcpEyKKJSBGYo6tMk6YFnydkbnJ2hEwI7x3ObeyC5SPwP
	Rjz0f/KvwaNIT2IiCF9K1yRK6b2N4P7uvNutJIglEtsO4IO5BhZq/dhxUSeHaTaL7hNcqd
	kTY0i7LrWn9Wr+sGRX9bNJOAcM2pAjk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JS2UHcAo;
	spf=pass (diktynna.open-mesh.org: domain of horms@kernel.org designates
 139.178.84.217 as permitted sender) smtp.mailfrom=horms@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1744384367; a=rsa-sha256;
	cv=none;
	b=09mXRmp7nlpTsVYXX4ls2cJw3L8aGn0WFhFM//o/6BgWPHml+THPKKLzRFdwSz6JdgFKal
	IKtJMv4NbizjTO+0Nq/qNYNWcnTPrBBbYKAcK/bLMz4LLFxjYlAdxD0e8fX2/3v+6vXVHA
	YgN1t7DlFxAbvfp4PftHU8/6+ucsd9A=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 057F85C6584;
	Fri, 11 Apr 2025 15:10:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6183AC4CEE2;
	Fri, 11 Apr 2025 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744384355;
	bh=vvzSwkKhtLdyZ9hXI/dUojub6tRyU46DlobIzZ40CJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JS2UHcAowbjl6gyq30nE/oqcS+j3DYyKHWffRwavmfko1FaPF7EIAT7noZ2bmby8u
	 uUR24a5i3AAQMIvN3oCwrB+IYUPrZz/FY0wUcOUsq9bk3lSADRUj8r6mAvDmW8w19E
	 lmUmc3gHRy5qvcoJuhvxo9xpJjXBmkBFT6VJO4jxK+IifOBr5ogtnh/jHctayNezjd
	 5ej/xZoNnjhwhbvQeyWS2hrHMuz3wBS/lh3qlXV2cfx8EEpUNIdHvveLlkS9muYmWB
	 uV5k5JslWVbXXm1iyfEZ8TMzUHPjhijJBy8+Yk/Tdt/X2Zz1hPWCh4DJHRkBimnMqY
	 QXdvMez9FVy8g==
Date: Fri, 11 Apr 2025 16:12:31 +0100
From: Simon Horman <horms@kernel.org>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Cc: Marek Lindner <marek.lindner@mailbox.org>,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Antonio Quartulli <antonio@mandelbit.com>,
	Sven Eckelmann <sven@narfation.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v2] batman-adv: constify and move broadcast addr
 definition
Message-ID: <20250411151231.GI395307@horms.kernel.org>
References: 
 <c9d8fd3735ffe10d199ee658703766bcc0d02341.1744222963.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <c9d8fd3735ffe10d199ee658703766bcc0d02341.1744222963.git.mschiffer@universe-factory.net>
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: ISTZYQEOFIW4D4VQHQSXAEKNSEPUEEWH
X-Message-ID-Hash: ISTZYQEOFIW4D4VQHQSXAEKNSEPUEEWH
X-Mailman-Approved-At: Sat, 12 Apr 2025 12:02:34 +0200
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ISTZYQEOFIW4D4VQHQSXAEKNSEPUEEWH/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Apr 09, 2025 at 08:23:37PM +0200, Matthias Schiffer wrote:
> The variable is used only once and is read-only. Make it a const local
> variable.
> 
> Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
> ---
> 
> v2:
> - make variable static
> - remove "net: " subject prefix to match other batman-adv commits

Updated version looks good to me, thanks.

Reviewed-by: Simon Horman <horms@kernel.org>

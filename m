Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E14A403B8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Feb 2025 00:48:41 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 98A70842C9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Feb 2025 00:48:41 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1740181721;
 b=K5l2NRBBP8Seh+T655pcaxFrkvjLoefRJo1S2iNVZq1X9byeVO9pslW8QFJys574j+3t3
 45pT5i7mWpNT6azrOk/i+B/nHy/N7szdYTqbq6OEu+dOlZiL+BFBKy0QFvNXtptssUK+vTl
 p0mhJoGccU2GuNsY7KWPDww6gfA5CVk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1740181721; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=g++xEBC2pAcMMG2YjDMwFnRBQLf2OVRj4BZ5ICpHhjg=;
 b=YwNqaGnwcaZ4+A1drt1ou/k6d/FYj1NNbslgExh+i9mt/hrI74XgMft9cubebtw+ESCWG
 d5kVJUP2itzGeHRsyVwkm4RQ1DBzsqXiRQ9Ucr2S04garwFdx94C3L+JhSbvatrs0C5pnyU
 HMTvyXfWYlToem2wzSHv6nb7X3aYb2c=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F2CC78176D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 22 Feb 2025 00:47:54 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1740181675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=g++xEBC2pAcMMG2YjDMwFnRBQLf2OVRj4BZ5ICpHhjg=;
	b=nyGjGDG8RtWVWVBMV2VRBC6+0+O5li3vcnFh8owfulY+FNahCRAnXljNpu1wwN+f6K6JWD
	W2naQnVtiaIAjRmWX93YM1zUTlw8Y0PevllRp64AePXLDrL79GhrhKdVq0wo/XcllL/D0+
	3PeOLwhaNAqRgAdLudzTYAiV6XjtDFQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1740181675; a=rsa-sha256;
	cv=none;
	b=rQndXiAkm/7ER2/IUARltF2qD3wqNEKcI2jPsCa+jxtoRlS3026bf6+zx2zF7ikZWqz3Dt
	Cit1SqR6OZFHjYWyNdkqkxXl86M0IOzAM5lCqqZ+7PMSrnBbaKOgcxQ1wpsB2q4P2n2ORh
	XZ8jR/Jwd5HDmBoMYLEyvrnj2O8kVmg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="KM/ZfJRW";
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E9415C2720;
	Fri, 21 Feb 2025 23:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 305A7C4CED6;
	Fri, 21 Feb 2025 23:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740181673;
	bh=YpqZyI6XQkE+I/cz0HVGo821pG3xUv+i2G8tH9sw4Ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KM/ZfJRW4Ao62YReF/CByxvaytS6eCg7A62ykfem1F7ZlcxARc/ttMS+Eo7QSiRoC
	 L/Yjcd2caMn4ObZZCnCGyEuo9xgC6WZot/rpFAy5wigXVK3ut+VHILxglTeHRYA9kk
	 k60pF94LnYZ/h3hrEAauaHfon//iQu4AioNB3aq2W2kbk7oEuocz2/ygkH/nvqljBK
	 2J+2++rVJPifxTn81/PKTdrWtLY/Om1L+itbDoBh6z+E8Cwe1RdbvdUeamo4+pUpWj
	 /c4yBKxGb0jQHXag71qQxP+sWONgV0p8K4pbQVmHScKyB2/E2s11Z7gaJWVk4E/s5B
	 mJf6Xz30VzUiw==
Date: Fri, 21 Feb 2025 15:47:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Cc: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki
 Iwashima <kuniyu@amazon.com>, "David S. Miller" <davem@davemloft.net>,
 David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon
 Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter
 <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan
 Schmidt <stefan@datenfreihafen.org>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Steffen Klassert
 <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-rdma@vger.kernel.org, linux-can@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org,
 linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com,
 linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 bridge@lists.linux.dev, linux-wpan@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v10 00/13] net: Improve netns handling in
 rtnetlink
Message-ID: <20250221154751.54318ae5@kernel.org>
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: 6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK
X-Message-ID-Hash: 6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, 19 Feb 2025 20:50:26 +0800 Xiao Liang wrote:
> Patch 01 avoids link name conflict in different netns.
> 
> To achieve 2), there're mainly 3 steps:
> 
>  - Patch 02 packs newlink() parameters into a struct, including
>    the original "src_net" along with more netns context. No semantic
>    changes are introduced.
>  - Patch 03 ~ 09 converts device drivers to use the explicit netns
>    extracted from params.
>  - Patch 10 ~ 11 removes the old netns parameter, and converts
>    rtnetlink to create device in target netns directly.
> 
> Patch 12 ~ 13 adds some tests for link name and link netns.

Nice work, thank you!

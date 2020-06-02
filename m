Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF421EBBDE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  2 Jun 2020 14:40:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2ACBE8011B;
	Tue,  2 Jun 2020 14:40:31 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E5BA68011B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 14:40:28 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 6C18E404B1; Tue,  2 Jun 2020 08:40:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591101628; bh=iMG+0ft8/K3FhKthE4Yf+YdQyFwM8RR46dd+TasUY2k=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=ZMraQ4MMYWJ84Ulkn8cSRzeaOZvIo6H8EZaABiaYJdmLRblybyvNDFk0Tj7kGiR4d
	 SiIE/KR4upIAljIHFLH8LL41Q/YA/dtKn5nYlFg4f6juq950ZhFhXIu9lirapMN1HJ
	 v63N2CW97Nqe1Ijy0h5M9biEP1GjxIMxjgZigl7E5kgPkjdUOfAsSM2shJ+cogMTXI
	 MNDKGdhJgJIkaISkwqbDnW9RLO1Q941vUdaeo3P/feRreqZsCEq8f/zDX/l775TLQP
	 77ZiQ4DZXqgvkzFGug28exQAoCPpwRrghqTLlJQHd5N4xA8ui/DQ3t0TjCfc4VU6Hl
	 wDgOHFO5Wnv7A==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 1AA9F403AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  2 Jun 2020 08:40:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591101623; bh=iMG+0ft8/K3FhKthE4Yf+YdQyFwM8RR46dd+TasUY2k=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=MtSCdiCWCATSeP7WnXYdCNsYMFle/U+DvGZxDE3jDWVa9KY1HdvpmY+NqgdmrKy9x
	 1qPkPeyLBiLbtJbe/re8dEpD+jb9gbMf4KlOeMOr0l5oX3dzUwmuY3rkx3kxavsuWa
	 RWU5DKjr1Wz8i0aDKpoWy2DRkGlogw3O/2b7nR3aaxV0iDASiNhIbmOwXYAdxe8Qj6
	 tw/oemArqgYcX3Zw+GsycPfrjE8W2e+IXnYR7ETZBSBP71hqKwKeqgpe/3d7prUTMm
	 rogCKoLbIIot6dcKtL0FXR2OEBFrZZJJFTkauXHWXNekY86VCgFUBIgZUTrF+AI/2h
	 7TL2P96TUgKFQ==
Subject: Re: Network stops passing traffic randomly
To: b.a.t.m.a.n@lists.open-mesh.org
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <1970963.L7oaDoOIKM@sven-edge>
 <04932e2f-d727-46ce-ef68-2c79062cf196@coolheads.com>
 <41ed807d-5bbf-8cd0-53e8-0951c84b4889@candelatech.com>
 <1f7b4548-d4b1-2063-dd73-fa866d195efe@coolheads.com>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <c310a314-91a4-64b2-494f-f3d559de230e@coolheads.com>
Date: Tue, 2 Jun 2020 08:40:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1f7b4548-d4b1-2063-dd73-fa866d195efe@coolheads.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591101629;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=iMG+0ft8/K3FhKthE4Yf+YdQyFwM8RR46dd+TasUY2k=;
	b=jQERrD7bdjK1ydsIRBkdeNaUShHK5Wr6C7LjQxDqRtkaFo1ri4kfshiktwvnTDBfnQ1bsH
	SxeGzaVHPBGl345LmTjCZz+uDHLQP3dZN/AM2uPBQdDDIm089d9Ihe2sprQwHDjQO3UNAv
	ABH+oHBhcPLTPjwgaXjmNlRhKjxiL9Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591101629; a=rsa-sha256;
	cv=none;
	b=K1Cyh6hx96c5JrQAIXwl/BiSyGl4/VhCdxBm2lgdbfIVfAwoUuQblGaBTNoppoZWPRN6Y8
	zzeW/+wjRuM86WW3McRFb2zoeHOYvx4skxWdhvj2LJJDeZOjGpgsXAdFCuOrw5gza+Wwlh
	GlbK0QcY/xuco57G88ohFSLNft/uUP8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=ZMraQ4MM;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=MtSCdiCW;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AM7SQUIAQWIJ6SYYZ4LF2A4XYEDO7G6J
X-Message-ID-Hash: AM7SQUIAQWIJ6SYYZ4LF2A4XYEDO7G6J
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AM7SQUIAQWIJ6SYYZ4LF2A4XYEDO7G6J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Never mind.=A0 I shouldn't have asked, because=20
openwrt/dl/ath10k-ct-2020-03-25-3d173a47.tar.xz!ath10k-ct-2020-03-25-3d17=
3a47/README.txt=20
clearly states:

This is a copy of the drivers/net/wireless/ath/ath10k tree from
the Candela-Technologies (CT) 4.7, 4.9, and 4.13 kernels.

This package may be useful for people trying to use CT ath10k
firmware on LEDE/OpenWRT, or other custom-built kernels.

The ath10k driver has a lot of patches, most of which are to enable it to
work more effectively with the ath10k CT firmware:

http://www.candelatech.com/ath10k.php

To compile with some help:
./build_me.sh

To compile manually:
cd ath10k
cp make_all make_all.mine
chmod a+x make_all.mine
# Edit make_all.mine to point to your compiled kernel
# Copy ath/*.h files into ../
# This header file stuff is not obvious, sorry..but it helps us compile
# properly on LEDE/OpenWRT backports infrastructure.
./make_all.mine


For full kernel source that these drivers came from, see:

http://dmz2.candelatech.com/?p=3Dlinux-4.7.dev.y/.git;a=3Dsummary
git clone git://dmz2.candelatech.com/linux-4.7.dev.y

http://dmz2.candelatech.com/?p=3Dlinux-4.4.dev.y/.git;a=3Dsummary
git clone git://dmz2.candelatech.com/linux-4.4.dev.y

Please send bug reports to:=A0 greearb@candelatech.com


On 6/1/20 9:41 PM, Steve Newcomb wrote:
>
>
> On 5/28/20 5:28 PM, Ben Greear wrote:
>> I've tested DFS in STA/AP mode and that works fine on my=20
>> driver/firmware, possibly
>> due to us setting the regdom as a fwcfg option, I suppose.=20
> I wonder how I can set the regdom as fwcfg option?=A0 I don't know the=20
> procedure to try that.=A0 Do I need to cross-compile the firmware=20
> myself, rather than using the OpenWRT package?

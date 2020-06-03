Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4225D1ED578
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Jun 2020 19:56:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 135FF81709;
	Wed,  3 Jun 2020 19:56:43 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0DE98019A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Jun 2020 19:56:39 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 7DDBA40316; Wed,  3 Jun 2020 13:56:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591206999; bh=gfFuZqwN8+bpwL+yhxMVvs+mwWD2Otu+W9//aLeI1dE=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=fGJdrK5gkICw6x2GCjVx9zXEMX8Q+G7LZ+NLdoE3vC4QrHq0a7mLJ5dodSU4P7gCN
	 GL7fqD2OmV0NPzm9JJ+CH/+aZIEfaHJjzKC7pgLVWfPMrYOZS1TS2GAIdt0PmMHZu1
	 qztc8S59px2p0DX3lcG/YKNx6y/JXWgRPVqI/yXw1qWxiQhs0BceNmvU3UA0MX4MTl
	 DSCvMMJmu+pvh83Ce7bAV7tuvywLmD/3EotC9TqVR/XYY69mAPIeAnz54y1DK3JgPy
	 Axa6MtnOuHmJM6JSWQWcMOTqi1I6TuBrIi8XwRW8RuxJh2SzmK6+uN+mCPilWlXRDk
	 bAPgn0RHX389g==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.2.88] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id A462E401E8;
	Wed,  3 Jun 2020 13:56:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1591206994; bh=gfFuZqwN8+bpwL+yhxMVvs+mwWD2Otu+W9//aLeI1dE=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=yvhqS+2JUzMRTJ8aeBYO5gRroUZY2d6hMItW16ta6kSXses1llTbU9o74VX5vBPX1
	 WzjTZJJ+smifOSEFOIl0FnXTV8hmqn11/aGA9+UY6zIbZRkqWouXPzdHTO5h7Y/RHv
	 GzCiU5pmkyJHsm4BvRnqydlxOPo4Mi7LJdmBbq0ihVdXQfrDXdQigpH65J07d90+1K
	 k579cbxLbdNkQWJlKddcRNQ/ifuhkeZQZlYw4W/aFO9cOjKABjVyBGVi4Sg6XAgbTV
	 +zR/zvGNyXNtBCzo9wSrE/OJZEs8iF0kbkiiWSHOsw3E37Ira7Eqz+Io80+m4QQxfl
	 UCsQg4/T165Bg==
Subject: Re: Network stops passing traffic randomly
To: Ben Greear <greearb@candelatech.com>, b.a.t.m.a.n@lists.open-mesh.org,
 smartwires@gmail.com
References: <c022e032-f283-8432-2d3e-3013cf91773b@coolheads.com>
 <20200529001302.832.66710@diktynna.open-mesh.org>
 <174b4bab-d84e-899d-3ecf-34bfdccff4fd@coolheads.com>
 <8cb674e5-26b2-e992-61e6-5969cc50358f@candelatech.com>
 <f99daabf-2081-c6af-779d-580f8d352b59@coolheads.com>
 <92655f2e-4ec4-5e1b-4ea9-b1df87a88aac@candelatech.com>
 <c917d6e6-d3c1-61f5-1846-794f6cc06824@coolheads.com>
 <3659b31b-1f8b-1e21-43f5-b47f6e11d338@candelatech.com>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <310fffa6-ff96-cb48-355f-00e773c1a4d7@coolheads.com>
Date: Wed, 3 Jun 2020 13:56:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <3659b31b-1f8b-1e21-43f5-b47f6e11d338@candelatech.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1591207000;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=gfFuZqwN8+bpwL+yhxMVvs+mwWD2Otu+W9//aLeI1dE=;
	b=RpHAzXprJpB8ZQI8CxvlcOJkEgYq1l4B7+Hsm7TFj5CNkABIaC0V8yudFc2O+r1z1ry78i
	NzXfsdobrPEyJy8UkzubC4kHUZdMQPfSzg9P9X5DomvhGceqkAdWiTnKhNw5sPXf9nzcjO
	VCvFiKRrmBezFRSJopz2oR0Y9dyrj5s=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1591207000; a=rsa-sha256;
	cv=none;
	b=vIRb2GdsCmvls0u9C1nDsUwkqFU1Kro82wm64cQsx7GPjy7+sSmkFDMvvIE3eAOPZh2oFr
	5hd1MgNx2ab0u6orLjw81mAQe3ACcBSIohd3Ooo6ZgxbyGl+bbJyECGNRAJe3/RShbBehz
	UIjkGVBC/DfgBQ2bp612bE10Z+8sEzc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=fGJdrK5g;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=yvhqS+2J;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: M7WTEP67G5D4QKWWAHI52TTN4WTGY3AI
X-Message-ID-Hash: M7WTEP67G5D4QKWWAHI52TTN4WTGY3AI
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M7WTEP67G5D4QKWWAHI52TTN4WTGY3AI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 6/3/20 12:42 PM, Ben Greear wrote:
> If you are trying to lift up a broad swath of the world, then you need=20
> scale and vision, and part of that is how
> to make it self sustaining.=C2=A0 Giving a few crumbs to folks is less=20
> useful in my mind than helping give them the means
> to make their own bread.=C2=A0 Think someone starting a company that wa=
nts=20
> to deploy 10k hotspots with 40k satellite
> wifi mesh nodes....
Your vision is deeply correct, but so is mine.=C2=A0 One difference betwe=
en=20
the two ideas is that yours is top-down, with the purpose of offering a=20
service, while mine is bottom-up, with the purpose of developing=20
community and neighborliness, regardless of service provider(s). =C2=A0 (=
I'm=20
an admirer of the late Fred Rogers, and I'm not ashamed to admit it.)

But you are right, too.=C2=A0 I'm also an admirer of the Indian cataract=20
surgery guy (can't remember his name) who insisted that all patients pay=20
for their surgery "because charity doesn't scale".=C2=A0 He ultimately bu=
ilt=20
a mind-boggling practice that, among other things, presumably now=20
manufactures most of the world's intraocular lenses.

>
> Open source software (and maybe hardware) with high volume,=20
> affordable, and solid hardware
> is one of the core aims of TIP.=C2=A0 Think of a price and minimum hard=
ware=20
> that meets your goals,
> if I find someone that can make such a thing at such a price, I'll let=20
> you know.
Fair enough.=C2=A0 How about a *delivered* price, i.e. an out-of-pocket c=
ost,=20
of $50.=C2=A0 Obviously a minimum of 2 radios, 128 Mb, and reasonable CPU=
=20
power.=C2=A0 Since we're forward-looking, here, with support for the new=20
channels now presumably forthcoming from the FCC.
> If you want wave-1 ath10k to mesh, my advice is to use 7 virtual=20
> station vdevs and one AP on each radio.=C2=A0 ath10k-ct
> firmware and software will support this nicely.=C2=A0 Have those 7 stat=
ions=20
> connect to peers' AP vdevs.=C2=A0 Do routing mesh
> magic through this topology.=C2=A0 Then you don't care about anything o=
ther=20
> than STA + AP working.=C2=A0 This might also scale to other platforms
> that don't support IBSS or MESH well.=20
Many thanks, Ben.=C2=A0 This is a helpful idea, and I daresay not many pe=
ople=20
could have come up with it.=C2=A0 (Certainly not I!)=C2=A0 You have just =
given me=20
some homework to do, and I'm grateful for it.=C2=A0 Bravo. If I get anywh=
ere=20
with it, you'll be the first to know.

Steve



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A243FEE43
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu,  2 Sep 2021 15:02:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DE3828073F;
	Thu,  2 Sep 2021 15:02:42 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C9D468073F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  2 Sep 2021 15:02:38 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 30F4F404D6; Thu,  2 Sep 2021 09:02:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1630587758; bh=Iw/69IKgmP0qOIjGtI5u4ENpwAhWxt1Xgm38Txts0ts=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=kmpZ904ndtlrsbNiplLcxCvFJz1Vy46YEJIPS+TPmGJIAue2AsnHgpEj73tI5slBQ
	 y6L36nF/E9fWAMb55wf5scH5kiyPpNgGF+bfeLLYc3FAhsFiv/I1F+R1FQ47iiq0Qh
	 0ECVBa1UnxMC5dJSbi2ZHVlZFxy8rOUMXE00MQcXlSAH8HEylInsQxLsLPQqKlyXG6
	 KF6GO8j6KmKR3DyX4GT1zs0W/uekzGev+2gRueQeB2IL/Dj8DbZx90W0wYkex3gmFP
	 XdGS4SsPDEeLNJzR7f70L3D+ShYDJ2/aKW6t2ET4o3uEJOFOPm7i1+uWY5+zr6q538
	 6B+96nwQzciYg==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,NICE_REPLY_A,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Received: from [192.168.2.25] (unknown [38.21.218.194])
	by ory.petesbox.net (Postfix) with ESMTPSA id B6D0C4019E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu,  2 Sep 2021 09:02:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1630587752; bh=Iw/69IKgmP0qOIjGtI5u4ENpwAhWxt1Xgm38Txts0ts=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=GNp6ypHgad7ZI/Fi/G4OwyCea3MLOX4C5WdOwl8F2+pLP9Q8LExwJ9qj48tiFeXx+
	 L83b/zWV4WNNHz8yO5iM1b/NPU409CAN5XxLbw0zqdCfjWH610/wLyAYmTqUrkZgEl
	 CQU6NJeFpL7X8fM5tjWF++H/bl4v45QOsnzw3S+8GQoaLm3kpsJ1Xi6b9vsR0JQGDK
	 XJxAIShdSALsBqS8MlWAAAnAU3CM+P7u9AAfg9J3+++2KIej3uSNAKkkmn+9FQjXZU
	 qRYKJYjxAGbG4P5hhNoXgJQ9NSIvtO7tya+SFfWUU3TFLftpClIobP0XCbgSZivikH
	 BdYqPcjtvB9fg==
Subject: Re: Dynamic DHCP server assignment and spin-up on batman-adv mesh
 network
To: b.a.t.m.a.n@lists.open-mesh.org
References: <20210831172841.1195.74688@diktynna.open-mesh.org>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <c323a80b-b663-05fa-33b2-9a545ff2676c@coolheads.com>
Date: Thu, 2 Sep 2021 09:02:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210831172841.1195.74688@diktynna.open-mesh.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1630587759; a=rsa-sha256;
	cv=none;
	b=CRLnXW8FwQOV+ITaODJme4+meN1BQYAmWrDJTC98OAPgbY0cA9C7x8IErj1ruxhYATRXRH
	1RugtDQX4uLgWpesmA/kdONJO/liAQzhbzJKpPEBC+b1pOBxQXd0yyzJ5wI7g28qcu3Y+R
	39mV0J3HWqtDxirs0cGOpQnr37ILdbs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=kmpZ904n;
	dkim=pass header.d=petesbox.net header.s=ory header.b=GNp6ypHg;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1630587759;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Iw/69IKgmP0qOIjGtI5u4ENpwAhWxt1Xgm38Txts0ts=;
	b=JzvIUr1zk1IsPiE2aqd7b03NJleyNwZjFfl6ED+9Y3LYUt+Ttv+lteo/AhEhyjnqSbpAB+
	mhREtnFoS0iz4kWKNpS5Dwv5IbcWaXVJuX5KYuzKyxIhprlGR5JrnIo8ADDh4STd383Whv
	Lx94v/w32pZsynTV3KKjo7bRy9+Jm9Q=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4DZ5MVKXZUEWSI5GPJIDBPXE6TW7QXGT
X-Message-ID-Hash: 4DZ5MVKXZUEWSI5GPJIDBPXE6TW7QXGT
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4DZ5MVKXZUEWSI5GPJIDBPXE6TW7QXGT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>



On 8/31/21 1:28 PM, tanner.perkins@cnftech.com wrote:
> I don't want to have to statically assign IP addresses to all my nodes =
therefore my first thought was to use DHCP. The problem arises in my scen=
ario that any node could come and go in the mesh network as they move in =
and out range of the network. Therefore manually allocating a single or e=
ven a few DHCP servers isn't realistic as that DHCP server may drop out o=
f the network at anytime. Is there a dynamic way to reassign the DHCP ser=
ver based on the nodes still within the network when the previous DHCP se=
rver drops from the network?
After trying everything to cope with reliability problems that ensued=20
when I attempted to assign MAC addresses to the mesh radios, I=20
ultimately found myself forced to adopt a hybrid (partly-static and=20
partly-dynamic) approach.=C2=A0 At last I have reliable performance, but =
I=20
was unable to avoid the bookkeeping involved in knowing the MAC address=20
of each batman radio, and the IP I had statically assigned to it.

(Aside: The native MAC address of a 5 GHz radio in an Archer A7 or C7 is=20
evidently an emergent property.=C2=A0 If you assign a different one, the =
mesh=20
will work for a while, and then die mysteriously. Perhaps this has to do=20
with the fact that the hardware in combination with the stock QCA=20
firmware is running an 802.11s network, and BATMAN is running on top of=20
that 802.11s network. Maybe if you just use the hardware's native MAC,=20
the two implementations don't clash over the question of what the MAC=20
address is.=C2=A0 That's a guess.=C2=A0 Anyway, it works quite well that =
way, but=20
not the other way.)

As annoying as the bookkeeping is, it's do-able, and one does have to=20
set the credentials of each node in any event; it's just another tiny=20
chore to configure each node.=C2=A0 I've now scripted whole configuration=
=20
issue in self-defense, because it takes too much mental energy to think=20
each node through individually and then debug it.

The dynamic part is that each 2.4 GHz radio can administer its own LAN,=20
providing its own independent DHCP server.=C2=A0 Originally I had a singl=
e=20
DHCP server for the whole mesh (actually for several meshes), but this=20
proved impractical over the long term.=C2=A0 More to the point, I had no=20
choice but to make each node's LAN self-sufficient, because only then=20
could I go near where a mysteriously offline node was, near some=20
building to which I had no access, and then reliably get into the node=20
and find out what happened via 2.4 GHz wifi in the normal way (which for=20
me is an ssh tunnel).

Steve Newcomb

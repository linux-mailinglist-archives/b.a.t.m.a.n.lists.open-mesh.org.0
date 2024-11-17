Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AD82B9D037C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 Nov 2024 13:09:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CFB9483FD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 Nov 2024 13:09:11 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1731845351;
 b=AwuhZJIBLhaA4Lh5QvktGwzwglSM9iafQhvGM+POvbBH2RoKeQDuASYASuCkQ19fChr/L
 tTYtYWrVZWxTQz3LKuTb5fnxygalyuKTzoYyOjV8Ma57PMiYII0h6DBo9Ced3Hw7Td66VPk
 lCXL67ePQkbI2RePpmdd+vuY4t9hbJk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1731845351; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=tllPr++YWNmN/ICehcrJsGBTpJU5ev+6G1o94E8aVEA=;
 b=iZ87Ryp4kk4ocy50Z82ccksVtSphqNMm4KiS+5kuX8mmJkoSZ5m7Skm+Sdp6HrNtopgUl
 l8VejrCqbjgI4Cw0zwC8jnJ/AVFUWgWT+kCeXAFSbKThaGJlvlP5iZRocpBQSbXmIC/G/nC
 mUOrud6dktixA8zVxpJdeoVdhKURN6E=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=ellerman.id.au;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=ellerman.id.au;
 arc=pass; dmarc=none
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B9CF480BB5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 17 Nov 2024 13:04:38 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1731845079; a=rsa-sha256;
	cv=none;
	b=SB6JRkooeA+TesJW71Jgdk6Y8w0m49YkFTrh8RLM+IgdqP/cfPhGDdEXQcStPwIUAYuBPY
	dns6pTN6WPKbAHsCjUu2rmFh7uKDO/2V8rrbLWsvixqc4HcbSQfVyFKpDkKuzILi2Sp3Ih
	cm1ygzCTz4jxojducpx8JIuDG4xrVE4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=ellerman.id.au header.s=201909 header.b=bHCwnzmC;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of michael@ellerman.id.au designates
 150.107.74.76 as permitted sender) smtp.mailfrom=michael@ellerman.id.au
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1731845079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tllPr++YWNmN/ICehcrJsGBTpJU5ev+6G1o94E8aVEA=;
	b=cX6VWeCV27fAmAohqDaaFLQN7Yhr4AAGukqQT6UmRL65ZLfQn3EnFK+Y360+lUZg3OPgfi
	cDn2kJYtjXT/0ESbLq6JxIF9iAY5lt09+Ig9gpAzZAwsKFH8RBv3p1ptr+931OwNPyj/Ab
	D3LEb5nJz4q78r/8DonCJvFdQlXB4Os=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1731845059;
	bh=tllPr++YWNmN/ICehcrJsGBTpJU5ev+6G1o94E8aVEA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bHCwnzmC4Wn699TTaIvMmA7oqAQUCB0vBZAcYQFnrPziGiTbunbYU+CXdS38yDvH6
	 YU112WNOjKnnI7JSMJzmw/a0svprG00zS9a6LPP4NJJT/jjzlFbVdAm/RM/h/U+tns
	 TsykHb5IN7FOSJM573KL+qqNfifuTL8r1hG6UNvh5joUZD+KBNkc1Fn7IYJrs5Ptwk
	 QPaqtA4agDbcLESUFhw4fys+mFWvc6kPxuKH/D9lsAIxlZt3ypiZTruEU9Mv61lufm
	 a1hIO9QaUkphJcq/soI8cLFSVRrGlaI+MEFOmOa7tMCM3TlCNsxG9p8p3+SqPMR261
	 Neh+mkXQjvunQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4XrqDc2cRjz4xdS;
	Sun, 17 Nov 2024 23:04:16 +1100 (AEDT)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: linux-nfs@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>
Cc: kernel-janitors@vger.kernel.org, vbabka@suse.cz, paulmck@kernel.org,
 Tom Talpey <tom@talpey.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Olga Kornievskaia <okorniev@redhat.com>, Neil Brown <neilb@suse.de>,
 linux-can@vger.kernel.org, bridge@lists.linux.dev,
 b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org,
 wireguard@lists.zx2c4.com, netdev@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-block@vger.kernel.org, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Naveen N Rao <naveen@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, kvm@vger.kernel.org,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org
In-Reply-To: <20241013201704.49576-1-Julia.Lawall@inria.fr>
References: <20241013201704.49576-1-Julia.Lawall@inria.fr>
Subject: Re: (subset) [PATCH 00/17] replace call_rcu by kfree_rcu for simple
 kmem_cache_free callback
Message-Id: <173184457524.887714.2708612402334434298.b4-ty@ellerman.id.au>
Date: Sun, 17 Nov 2024 22:56:15 +1100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-MailFrom: michael@ellerman.id.au
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: FWTGO4XWFGUHXGYPX23ROMEUTCIWN5TL
X-Message-ID-Hash: FWTGO4XWFGUHXGYPX23ROMEUTCIWN5TL
X-Mailman-Approved-At: Sun, 17 Nov 2024 13:08:44 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FWTGO4XWFGUHXGYPX23ROMEUTCIWN5TL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, 13 Oct 2024 22:16:47 +0200, Julia Lawall wrote:
> Since SLOB was removed and since
> commit 6c6c47b063b5 ("mm, slab: call kvfree_rcu_barrier() from kmem_cache_destroy()"),
> it is not necessary to use call_rcu when the callback only performs
> kmem_cache_free. Use kfree_rcu() directly.
> 
> The changes were done using the following Coccinelle semantic patch.
> This semantic patch is designed to ignore cases where the callback
> function is used in another way.
> 
> [...]

Applied to powerpc/topic/ppc-kvm.

[13/17] KVM: PPC: replace call_rcu by kfree_rcu for simple kmem_cache_free callback
        https://git.kernel.org/powerpc/c/1db6a4e8a3fc8ccaa4690272935e02831dc6d40d

cheers

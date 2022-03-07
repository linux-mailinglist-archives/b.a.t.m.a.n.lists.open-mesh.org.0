Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C8B4CFD9E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  7 Mar 2022 13:04:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 94C5D844BF;
	Mon,  7 Mar 2022 13:04:19 +0100 (CET)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DAF3D80356
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  7 Mar 2022 13:00:15 +0100 (CET)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 10640B81178;
	Mon,  7 Mar 2022 12:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41496C340F8;
	Mon,  7 Mar 2022 12:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1646654413;
	bh=uoA/yLVU/b+oLbGKfCPcOcNL/NpocL53c2UhSxUM5X0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=n7lbew84IjCUDVuL0t2kMi5mLKdOSr79LSw2Ss5xBTXI24X0W5PZovs4iVr67fqKe
	 ENER3ae6dBsUhCt7gr3Fgm3Sj2/h08Y0B0qCjREhpVjNkqrI0M3YnQ6DZqhZKM5EMM
	 5klvwvQs/fZhtCAiQk07dTA5HlyC8yOMBLjkCK8uswJ8KnItHOTK9AcUfuGfb4Rn4B
	 QhKGYDHHpkBPec7j92J9gB3YLzrFTfZkwCuIANFdcqZbMNKhJ+6ZfIQsaBUpIkUSgo
	 8QAVqy+QVrmIr7FIHZq+qIZlZ4He+HnxW4UmMdNVhY9QQpSlBa9WyWM6KkWLjC8pkH
	 5Yok8HKf71u1w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 1993BEAC081;
	Mon,  7 Mar 2022 12:00:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next 00/10] net: Convert user to netif_rx(), part 3.
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164665441309.23552.3596500663864763691.git-patchwork-notify@kernel.org>
Date: Mon, 07 Mar 2022 12:00:13 +0000
References: <20220306215753.3156276-1-bigeasy@linutronix.de>
In-Reply-To: <20220306215753.3156276-1-bigeasy@linutronix.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=n7lbew84;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of patchwork-bot+netdevbpf@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1646654415; a=rsa-sha256;
	cv=none;
	b=Ldk9CdE68EvW2KEow3WfqtcqV5S01JuYle1Lxd9snXPmQgPdbJaVwjTLMjf2c/vj1J1/Vq
	+1JILf5ECr1r9UYtBBGULrozOMS0w6wYUiqme3btnHhtAFlMtnf36Co39WIXK3ii/9UyRq
	AB9St/jFuLFgzrNUZ4nhZOmvCqjkV5k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1646654415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=F17ZpUqpMTjXj+SijHTWCe9eMH1CjLTdUtnfNhGb4KI=;
	b=1vMPsUZo18Rd/07sbKAa6U4ti7fUAdVsDFuUy6MPr0yjM7E560KFo8ePoFji8Ar7JViPFU
	hnvHAk03DY8hf1nN+mGbey6O/Pz2MUoZGzE2H7pMcdCgVbPV+kNwhZEOOQrZmBs6dVESbm
	ahhmShNfYql+GvzPwksKOtxLat/VhOA=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: UUJBK6BRVOHDB2CM4DSPYKOOM5HMFELA
X-Message-ID-Hash: UUJBK6BRVOHDB2CM4DSPYKOOM5HMFELA
X-Mailman-Approved-At: Mon, 07 Mar 2022 12:04:17 +0100
CC: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org, tglx@linutronix.de, agordeev@linux.ibm.com, wintera@linux.ibm.com, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, borntraeger@linux.ibm.com, Divya.Koppera@microchip.com, gregkh@linuxfoundation.org, hca@linux.ibm.com, hkallweit1@gmail.com, johan.hedberg@gmail.com, jmaloy@redhat.com, linux-bluetooth@vger.kernel.org, linux-s390@vger.kernel.org, linux-staging@lists.linux.dev, luiz.dentz@gmail.com, marcel@holtmann.org, mareklindner@neomailbox.ch, courmisch@gmail.com, linux@armlinux.org.uk, svens@linux.ibm.com, tipc-discussion@lists.sourceforge.net, gor@linux.ibm.com, wenjia@linux.ibm.com, ying.xue@windriver.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UID3FTRYJRJTCZZMGLJSDGI5R3YCA6GP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Sun,  6 Mar 2022 22:57:43 +0100 you wrote:
> This is the third and last batch of converting netif_rx_ni() caller to
> netif_rx(). The change making this possible is net-next and
> netif_rx_ni() is a wrapper around netif_rx(). This is a clean up in
> order to remove netif_rx_ni().
>=20
> The micrel phy driver is patched twice within this series: the first is
> is to replace netif_rx_ni() and second to move netif_rx() outside of th=
e
> IRQ-off section. It is probably simpler to keep it within this series.
>=20
> [...]

Here is the summary with links:
  - [net-next,01/10] s390: net: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/a70d20704ad5
  - [net-next,02/10] staging: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/4bcc4249b4cf
  - [net-next,03/10] tun: vxlan: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/3d391f6518fd
  - [net-next,04/10] tipc: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/a0f0db8292e6
  - [net-next,05/10] batman-adv: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/94da81e2fc42
  - [net-next,06/10] bluetooth: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/d33d0dc9275d
  - [net-next,07/10] phonet: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/63d57cd67454
  - [net-next,08/10] net: phy: micrel: Use netif_rx().
    https://git.kernel.org/netdev/net-next/c/e1f9e434617f
  - [net-next,09/10] net: Remove netif_rx_any_context() and netif_rx_ni()=
.
    https://git.kernel.org/netdev/net-next/c/2655926aea9b
  - [net-next,10/10] net: phy: micrel: Move netif_rx() outside of IRQ-off=
 section.
    https://git.kernel.org/netdev/net-next/c/67dbd6c0a2c4

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


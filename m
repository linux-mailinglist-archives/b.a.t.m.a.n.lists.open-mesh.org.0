Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9135AB207E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 10 May 2025 02:30:51 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ADE6683EC6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 10 May 2025 02:30:51 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1746837051;
 b=iDCTSm1NJ+9Si9SLL66j7N1ZlDYURLmkawUGx1Pr+3UXr/yj2J0Hjmq1Klfpm04ugX/u9
 I29/uXknkcXV4WLFat7tHapfLQ/TiTRSMHvEPg/7YD9Z1YUgxK+/b7Kk2pnUV4W+NOJdaGq
 6kKxNue4K/6NaI+YkjDmIkEftCM54Xk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1746837051; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ASdjOuWAAp8o3Y0uMdw7hRCbwoz8fddVivZPOKPKOpQ=;
 b=icJSE+ChN4A+bGTWBRT5JwIxcqH9rvngBuLwfjHTO4enRqcbjJRJYosTAeDnANxoc1oDD
 IY9Y7tSQ7U/MRE8PKakq6pmcg/uOynUhzOZFdlUuCh13em7sB/6Q3OovsiU4ws7YkhcccU/
 Rabt8XfmHjq4aVsuDnexW4rH3+93rrk=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7E56C84030
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 10 May 2025 02:30:01 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1746837011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ASdjOuWAAp8o3Y0uMdw7hRCbwoz8fddVivZPOKPKOpQ=;
	b=sZ9iy7c/4ofXPctK0uP77wZ9Q2VLpizPTLFhdCvst8lSmbIC1havmR7BHNDG9Z76ZH/yHv
	7izAzHQfH27eI743eSt0lOx/Pn2f30IndQCYufFo1tc6D+1qNJ+WtNcHYFRxq0PhEn67Xl
	8n3nrRYn0ubGto92o7GyRy1NlvZlKLg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iZ0s0aeR;
	spf=pass (diktynna.open-mesh.org: domain of
 patchwork-bot+netdevbpf@kernel.org designates 139.178.84.217 as permitted
 sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1746837011; a=rsa-sha256;
	cv=none;
	b=q+fNHZVe0wYlGLGDkWJ2Rk88tNM0QN8QtzBI25DmAVCRggUziBI9VTk6iqjTXzm8Skj9yR
	q+HyqgIPDdH/B2SPaNOuLqva2Cs1gwlDWL18oEhU01XQcz1dnJMYtjQ+vm60E/HkmvME7e
	kGrBne/j3NumDVL4LWb3kRrSZQm4SJI=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 69AD55C7105;
	Sat, 10 May 2025 00:27:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5730CC4CEE4;
	Sat, 10 May 2025 00:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746836999;
	bh=c7XqTLSqPZNa0TlLOhnuTYHLUQd3oJKRhOPZCIqcXVE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=iZ0s0aeRaLN/dnLFSq1Rk17l98qP8tXVBULcYgfgumnOEBjMH6z7kJ0rMA6aduUv+
	 kn3Y2Rjqb4UmXXQH6X2AO1Dlbhz7eGGkwbiMPNBZq++wUsMZA+BJojqOPGdan+0KnU
	 /wEQCmjOP1AFUcheLyMxGI48/+K6tqqW9AoGiIACn46nLuRsbIcW71xpbigisNrU+p
	 Uf/jDHxiU1NVeSBOb9C3Ud+erod9SRHLiVDJ18wWYljcTh/EiJEN6YcFQ6hiRC257L
	 i4tgEWp5COXn+7RSM/HwRcGjV6BkpMoZdsgNbDZhqkI+N88J6+JUDeSUptzvOLvAjC
	 XG31EE7ZqRIMQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EABB2381091A;
	Sat, 10 May 2025 00:30:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next 1/5] batman-adv: Start new development cycle
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <174683703749.3851370.18436694245732853832.git-patchwork-notify@kernel.org>
Date: Sat, 10 May 2025 00:30:37 +0000
References: <20250509091041.108416-2-sw@simonwunderlich.de>
In-Reply-To: <20250509091041.108416-2-sw@simonwunderlich.de>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: kuba@kernel.org, davem@davemloft.net, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org
Message-ID-Hash: L6DZZWNULUUYNTY36BCQDROZKMGZ3TVZ
X-Message-ID-Hash: L6DZZWNULUUYNTY36BCQDROZKMGZ3TVZ
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GVAEZADDF2M2YWMLOCKFNX6BRJGN4SOY/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Simon Wunderlich <sw@simonwunderlich.de>:

On Fri,  9 May 2025 11:10:37 +0200 you wrote:
> This version will contain all the (major or even only minor) changes for
> Linux 6.16.
> 
> The version number isn't a semantic version number with major and minor
> information. It is just encoding the year of the expected publishing as
> Linux -rc1 and the number of published versions this year (starting at 0).
> 
> [...]

Here is the summary with links:
  - [net-next,1/5] batman-adv: Start new development cycle
    https://git.kernel.org/netdev/net-next/c/4a1cff317d95
  - [net-next,2/5] batman-adv: constify and move broadcast addr definition
    https://git.kernel.org/netdev/net-next/c/d699628dae07
  - [net-next,3/5] batman-adv: no need to start/stop queue on mesh-iface
    https://git.kernel.org/netdev/net-next/c/8a7bb74a79d4
  - [net-next,4/5] batman-adv: Switch to crc32 header for crc32c
    https://git.kernel.org/netdev/net-next/c/a608f11d3a3b
  - [net-next,5/5] batman-adv: Drop unused net_namespace.h include
    https://git.kernel.org/netdev/net-next/c/4e1ccc8e52e5

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



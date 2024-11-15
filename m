Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 666389CFCF2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2024 08:15:43 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5148A83F52
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2024 08:15:41 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1731741341;
 b=bV9QpobavoFcT5DGSDkcdhMBIBT3Ze0netnDEhBTrjjAKxvC08XWlkn9idPjoWsm59nuq
 Brm0A5MgUzjfC7kl0OpoHxwLQSFUzAA/wHLRjVO0fV9PI/3yzcBiTvcKe42wlSggmA/Nqpo
 Blg6P7bhG/lpXREnN+HTRhmrZjYcsWs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1731741341; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=CioXGk5O9hbiOt8YrCbWfTRXjcMFFUolPHaEC8cfUhA=;
 b=AfJgpjFgmpIzbPgPSusXnlUJZns0QSva3u9ie+v7nxe/mlINTtAjSj2Sr9OJNanJTJMOz
 LpK2K8Zh1XRRvHcTtCIUXqtCiQqLk4FuJCoF1pT4ma0N3d09+fV1lg6m9ix4504vmvUfVPG
 PePiphuV2TMdOX+oNSOJX30ZvCrzlzU=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=kernel.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0149D80B7C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Nov 2024 00:35:29 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1731713730; a=rsa-sha256;
	cv=none;
	b=VO8aVvIUodUeuvw+sy7sNByK5/uUfm6rkI8VMIZI8coamhRweW8drqi8trhwacSWrRayHR
	GF+91zxyN46ykpkOctpHjiUACmsjORO3GAlKQRVrEgmAj5Wp/0KkOhP9uBz3SfwFXiEYH7
	Cj3R2IQUUllhIZf/kRMBqfmpimQijz8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=SWd4Fyxc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 147.75.193.91 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1731713730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=CioXGk5O9hbiOt8YrCbWfTRXjcMFFUolPHaEC8cfUhA=;
	b=acnqOtsTWKdYS0RoL7SrqLHqsKTUrrZSU81AMwsq0uJB+XVzL5Q4wQ+htORJmU5q/1nv9R
	EhGkBu0msgkcCJFoBjTbSzh/d4DoB3X6HY9VsQLC4tdQwGz9QH3+RsVjTzNQILguKoKw34
	Lqp0Yi2SfiULwwJOic3cuPEvPWR3zZ4=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B8971A42810;
	Fri, 15 Nov 2024 23:33:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 018E7C4CECF;
	Fri, 15 Nov 2024 23:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731713727;
	bh=+0nSqXJMNPJie6Agi0DCflpUksVQqJLNIcznPm67J68=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SWd4Fyxcy6vkPAs/DoAyKv+eu9nnqiy9VDr1E7w6DAOPjGk3sTNyu3CQVJ1ftQ1Vl
	 KQx7V76ZwBrflcMdU07dZ08pvCiVuMniy4GhDYMkJ/3vahjg0pawSvaX+3JhHfGywU
	 5B5tE+7wI6tq8XfAriVL28lj/YBhGHcMmGeFVzCIrjSd9YzsgSS8omaH0MLx3DWaMn
	 /8V/Hup5AfF5QtyTL3sde4ia3ZIuFa+PC0Cl0GrtcqcB8u0C+PbGN/aNnGXfwN1oRZ
	 wKyFrTPI/2pLhWCxOGsAbPXDBSZL+32gxSUIudNzbcxe8lV0SDX6LcluNtG1LiyPmb
	 wMVTTXTFPHQrg==
Date: Fri, 15 Nov 2024 15:35:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Cc: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki
 Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido
 Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon
 Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko
 <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>,
 linux-rdma@vger.kernel.org, linux-can@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org,
 linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com,
 linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org,
 bridge@lists.linux.dev, linux-wpan@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v3 4/6] rtnetlink: Decouple net namespaces in
 rtnl_newlink_create()
Message-ID: <20241115153526.3582ebcd@kernel.org>
In-Reply-To: <20241113125715.150201-5-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
	<20241113125715.150201-5-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF
X-Message-ID-Hash: CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF
X-Mailman-Approved-At: Sat, 16 Nov 2024 08:15:14 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, 13 Nov 2024 20:57:13 +0800 Xiao Liang wrote:
> +/**
> + *	struct rtnl_link_nets - net namespace context of newlink.
> + *
> + *	@src_net: Source netns of rtnetlink socket
> + *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified.
> + */
> +struct rtnl_link_nets {
> +	struct net *src_net;
> +	struct net *link_net;
> +};

Let's not limit ourselves to passing just netns via this struct.
Let's call it rtnl_newlink_args or params.

The first patch of the series got merged independently so you'll
need to respin.
-- 
pw-bot: cr

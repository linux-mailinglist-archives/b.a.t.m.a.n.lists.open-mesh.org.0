Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E734798F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Mar 2021 14:27:30 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 16A2580A11;
	Wed, 24 Mar 2021 14:27:28 +0100 (CET)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 35BC3803C3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Mar 2021 14:27:25 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EA42F3EB50
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Mar 2021 14:27:23 +0100 (CET)
Date: Wed, 24 Mar 2021 14:27:21 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: Batman adv selective broadcast mechanism
Message-ID: <20210324132721.GC2174@otheros>
References: <20210324121616.1198.15914@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210324121616.1198.15914@diktynna.open-mesh.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1616592445; a=rsa-sha256;
	cv=none;
	b=3803aJq40tvpOaAm/oiuO47gPbIYLiMDzqKsphHuCuqBqjlT1JgD5KE2uIPG5tD54xJGrV
	xf9KQEffqMnnHYN1SYA4KVtIQLxH0IaAKJusRXkGl45iZZsjHCy3uFBiTmhgQ2/53EWk0O
	H4NJDzxqWU8gtosIIXkpXUmbOA0QznM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:c2c:665b::1) smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616592445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HuG0MMFy8Deeyf2LE6XrGZVibN820PFZxrvxhtWduyM=;
	b=PDxsDz8bN6LPbP5+OyvzyIYDH+4muD8Aj5JfK7kWQL3q18Xy548zChBy7sb9S/Pm8jC+wE
	BbmDlpNqnjzLnFg6O0+h13VOjnK7AwD6qys1/CnmLdMF+DqRG1V3OeQeIqBQ9odvVpz1wE
	yPryiap23scrgmpGIoUBUNRBgaNlt4U=
Message-ID-Hash: SME2YPZBVRCUCYO2TTVD2AQXJ3H3HV5N
X-Message-ID-Hash: SME2YPZBVRCUCYO2TTVD2AQXJ3H3HV5N
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SME2YPZBVRCUCYO2TTVD2AQXJ3H3HV5N/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

On Wed, Mar 24, 2021 at 12:16:16PM -0000, oytunyapar@hotmail.com wrote:
> Hi everybody,
> 
>     As I check, batman-adv protocol, sends IP broadcast packets, to every slave interface, including the slave interface from which the broadcast packet is received. Is there any way for preventing the batman-adv from sending IP broadcast packets to some of the slave interfaces (etc. the one which the packet is received)?

When there is just a single neighbor on the interface a node
received the packet on that batman-adv avoids sending it
back automatically. E.g. this case here:

https://www.open-mesh.org/projects/batman-adv/wiki/Broadcast#IIII-Single-Neighbor-Is-Previous-Sender

If there are multiple neighbors on the receiving interface then
batman-adv assumes that other neighbors might potentially not have
received the packet from the original sender. And will therefore
rebroadcast on the incoming interface, too.

If you are 100% sure that all other neighbors received it from
the original sender then there is this old patch which isn't
upstream though (including the discussion with why it was
rejetected for upstream):

https://patchwork.open-mesh.org/project/b.a.t.m.a.n./patch/1380030033-11533-1-git-send-email-linus.luessing@web.de/

Regards, Linus

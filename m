Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC8A1604D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 06:16:34 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BBE40834A8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 19 Jan 2025 06:16:34 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737263794;
 b=EGl1xd6sYDP4MIdap3PvvqsUp4LKptogR4eZPECq126+3gja5NhgA0XF0t50Izb4W40co
 hhrBwuP5jI3+0SS2cZDupx99Tu5BZTnAUJpRoB6alf4DrWWNGVpOnN+HNm88Y4zSu4NVqms
 mv8Gj8YWfmRt8aZssLWIaqYlGM4IsTw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737263794; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7MGApJ3lcAQmxY+qMMQCodvG1EfllhUNERJAJTIr8cM=;
 b=agQFKzwG5i4BIhW2a5M3zwh2tCqzIxhqPZMAgR38kD2hoRwT/LtnPxHXDfKCzBI8uYs3x
 o93okAphnNx4yVwL20ATJlgGTTfOFG91TczEnOWR1VsSt9ZWzWE7WLcnMvJH27zdb6oRYDX
 TZOig0Swc3UvYo69XZoHEKYMUoQgsW4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4BBFF8200D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 19 Jan 2025 06:15:52 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737263752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7MGApJ3lcAQmxY+qMMQCodvG1EfllhUNERJAJTIr8cM=;
	b=nTYMYC8ohxgKR3fP1HZJJ29fUELkfhkN+jmoRlSJYHnUQAROvzkOaSMtnQltiWqPoT7cIV
	QB43inakiTl7Rx8mlvE0SfK44PptJwdTN2QhW+3d4F6vNj/RPx+ipPdW0TaeSDqCPJy07o
	cjGnzcsSEvIRz+3sG124+041vj/PsoI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737263752; a=rsa-sha256;
	cv=none;
	b=gpa8rxJEsY93OewNAPASpPXXxbX1pkw/v3rFn5QqH0ugjevStE9HLQpYs7D4x7OYsvEJjO
	3aRCtTtU4nXQa5mtAR3fgYFMhDvg/Hx2rx6d3kp5ynb7/otYRXc3Kajx2UECbl74ut1NN7
	MImuXUc9IfcXp0F7twDGwEbe707z8NA=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 4EE66540FD4;
	Sun, 19 Jan 2025 06:15:51 +0100 (CET)
Date: Sun, 19 Jan 2025 06:15:50 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Marek Lindner <marek.lindner@mailbox.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org,
	=?utf-8?B?UmVuw6k=?= Treffer <treffer@measite.de>,
	Andrew Strohman <andrew@andrewstrohman.com>
Subject: Re: [PATCH RFC] batman-adv: BATMAN V: use/prefer 11s airtime link
 metric
Message-ID: <Z4yKhoN0x_Ckdu-u@sellars>
References: <20250118003528.6843-1-linus.luessing@c0d3.blue>
 <CAA8ajJnqXBuUmBzAHVjyEchD2CU9E7SmqJXXvy0V7QAQF9536A@mail.gmail.com>
 <6131569.pqZb4hCDXM@rousseau>
 <Z4yIKYsFvLyGpmjt@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z4yIKYsFvLyGpmjt@sellars>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: VB2APQPNNSSQCPKIWYXH7UIKXLYIM5SG
X-Message-ID-Hash: VB2APQPNNSSQCPKIWYXH7UIKXLYIM5SG
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VB2APQPNNSSQCPKIWYXH7UIKXLYIM5SG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, Jan 19, 2025 at 06:05:45AM +0100, Linus Lüssing wrote:
> On Sat, Jan 18, 2025 at 05:59:56AM +0100, Marek Lindner wrote:
> > FYI, expected throughput and also 802.11 throughput estimation are taking 
> > congestion into account.
> 
> Are they? At least in minstrel_ht_get_tp_avg() I don't see it:

On the other hand, if the channel were fully utilized then this
should likely, indirectly reduce the average transmission success probability
a bit. So in that case I guess congestion / channel utilization could
indirectly be factored in.

But still if a channel is 90% utilized / has 90% airtime usage then this
wouldn't mean that the expected throughput from Minstrel will be about
90% lower compared to an fully free channel, I guess?

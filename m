Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E99058D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jun 2024 18:32:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C8B9182E8B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jun 2024 18:32:03 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1718209923;
 b=qZgFbkYWVZgvr/eVFtM1FfaLO/8MAyVwIMDBlSlLIR9sx5OYs9gTX+viiqOXHFlTVqMQz
 aksewCoEe8GgKyaY33v9Qr22LE6JcNG5mMtDEduus3TaOTkEfexOIwQrs9BVnWV27xXotEH
 MwLXwUvEucJOmxQ2Q5A6l3PxQfrvHWo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1718209923; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Gl/uW5z81EQ9LLKAEN0DIg2T9m786t3BMQR5oiMWySs=;
 b=1NBXAYemp3V2EUv4rLYnvVWIcRJQr1h/Fee0A8xn9hCVMqyZ3MXvWGDqNv/Dl2gUPYl96
 KFGlHvNHi25chp5BHA/nRzgzugj51085ILBMfIjdN/m+IGfsYhJMV512C2+/pJRBgzDFVtI
 nkmWQzirSq0dOpJ5VR3ZcIp9muOD+OE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 75F96821AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jun 2024 18:31:59 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1718209919; a=rsa-sha256;
	cv=none;
	b=eHtbjmqW0eezmqT/Bvm9NKnFHad2/Z88HFLp1EJISN8o3BlzFabdS1nRnrFpk3nssizF+7
	ivjzGucDZb3SzJuU5DL7WCqIKIXZ6KLASFs4cfnl+q3pNoh53jfoq4ZbSnNISgUgnzEzwS
	dMsMj1UoMJQq6d7IUHMPvTyVV3x74OU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1718209919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Gl/uW5z81EQ9LLKAEN0DIg2T9m786t3BMQR5oiMWySs=;
	b=r905FlihbvdrbpKN9LDzYO30ZOTzckHCFIDJYSw9MzJGpGMXG2MrON4HVrS7bISl4wPV6n
	oyFAfFKmF4kIPI8Pde+vFT8XtQ4eH0FR9RGJg+ZAJsRl+U3KxNrhtz2q3FW4jYnmnnQSwM
	OqpVMoiDAe6xJ2GDGoJue8Xgxb2ybuc=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id B1C193EF21;
	Wed, 12 Jun 2024 18:31:52 +0200 (CEST)
Date: Wed, 12 Jun 2024 18:31:57 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, Dmitry Antipov <dmantipov@yandex.ru>,
	netdev@vger.kernel.org, rcu@vger.kernel.org
Subject: Re: [PATCH] Revert "batman-adv: prefer kfree_rcu() over call_rcu()
 with free-only callbacks"
Message-ID: <ZmnNfU44NekafjA_@sellars>
References: <20240612133357.2596-1-linus.luessing@c0d3.blue>
 <e36490a1-32af-4090-83a7-47563bce88bc@paulmck-laptop>
 <ZmmzE6Przj0pCHek@sellars>
 <Zmm2uTHTge-i3eCM@sellars>
 <020489fa-26a3-422c-8924-7dc71f23422c@paulmck-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <020489fa-26a3-422c-8924-7dc71f23422c@paulmck-laptop>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: M4NV7PYDWHYJMY3QRLML7FEJOFNTS2LR
X-Message-ID-Hash: M4NV7PYDWHYJMY3QRLML7FEJOFNTS2LR
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M4NV7PYDWHYJMY3QRLML7FEJOFNTS2LR/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Jun 12, 2024 at 09:06:25AM -0700, Paul E. McKenney wrote:
> We are looking into nice ways of solving this, but in the meantime,
> yes, if you are RCU-freeing slab objects into a slab that is destroyed
> at module-unload time, you currently need to stick with call_rcu()
> and rcu_barrier().
> 
> We do have some potential solutions to allow use of kfree_rcu() with
> this sort of slab, but they are still strictly potential.
> 
> Apologies for my having failed to foresee this particular trap!
> 
> 							Thanx, Paul

No worries, thanks for the help and clarification! This at least
restored my sanity, was starting to doubt my understanding of RCU
and the batman-adv code the longer I tried to find the issue in
batman-adv :D.

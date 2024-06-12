Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1299055DC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jun 2024 16:54:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A774A82DCB
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jun 2024 16:54:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1718204094;
 b=IOkdP37+3qoP1ps662UnAWcDCcKlF2+jNKpysrTipbuoYGilWkiM1H3j3BkohStEalgOp
 50OLNqQi0bwGJe1Mcd7HdiMJ4CpKgLUp7HZ8CIZpK8/BOnavnkHv4WyZrLXBj3eIWqkoit9
 7mImbFt8wPzwZ3OS0zkmJaruP537AfE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1718204094; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=sijAOv3ME3m18PHTNNTnBOrfExdlqygStzo6f6uV+go=;
 b=giaav3RC9BPKcqrZmB0TvtYuMfpIn210TiFRTPgLmbZ6W8sKY3BdRrHoivyPB+LbFzz54
 QkVLG6Xrr6TAU2zHeTCjIXH/nnjdxlS/Zg7cIYIVTJGDYkl5a9fCxENqR1hVqCyttklTIob
 psYowrfZy8fwK6maQCpOBm1VTwlHMdk=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9020082175
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jun 2024 16:54:51 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1718204091; a=rsa-sha256;
	cv=none;
	b=Teg6Rri6rTAbvGEaezX21e6oDCUVjljOghWfS2+7gK3/z/dRauzLElGb2SAPPYycUk1uuf
	Sz0h//4bC89M96gONIU3AB+5fuqm7/8/Y+1d1625GjtOHRwk/5SfkB59lhIUyS9Sx+RG/V
	yxzwFa0sWu+dX12V6PKJIIcf0t7z4ng=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1718204091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sijAOv3ME3m18PHTNNTnBOrfExdlqygStzo6f6uV+go=;
	b=p5GnyajsCnol4pn3Y65E6VSfY9BBFopK3cc7H2aiyhG1clRF6k7YnTc8cr9l3tVISaPjam
	S2OEAYlfnYi7yp0s2NGxjRL2lD/SlQbmZQIQ0AJ00PRB42fUk/3qc74be0kPLgwb+FLuf1
	JxYDmPmXeX61sZKZ++pdCgeeNbtRTig=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 13C193EDE0;
	Wed, 12 Jun 2024 16:54:44 +0200 (CEST)
Date: Wed, 12 Jun 2024 16:54:49 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, Dmitry Antipov <dmantipov@yandex.ru>,
	netdev@vger.kernel.org, rcu@vger.kernel.org
Subject: Re: [PATCH] Revert "batman-adv: prefer kfree_rcu() over call_rcu()
 with free-only callbacks"
Message-ID: <Zmm2uTHTge-i3eCM@sellars>
References: <20240612133357.2596-1-linus.luessing@c0d3.blue>
 <e36490a1-32af-4090-83a7-47563bce88bc@paulmck-laptop>
 <ZmmzE6Przj0pCHek@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZmmzE6Przj0pCHek@sellars>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: RXUAKGU4DBOGF3TVXLMNPOUMO54CIDVK
X-Message-ID-Hash: RXUAKGU4DBOGF3TVXLMNPOUMO54CIDVK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RXUAKGU4DBOGF3TVXLMNPOUMO54CIDVK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Jun 12, 2024 at 04:39:15PM +0200, Linus Lüssing wrote:
> On Wed, Jun 12, 2024 at 07:06:04AM -0700, Paul E. McKenney wrote:
> > Let me make sure that I understand...
> > 
> > You need rcu_barrier() to wait for any memory passed to kfree_rcu()
> > to actually be freed?  If so, please explain why you need this, as
> > in what bad thing happens if the actual kfree() happens later.
> > 
> > (I could imagine something involving OOM avoidance, but I need to
> > hear your code's needs rather than my imaginations.)
> > 
> > 							Thanx, Paul
> [...]
> As far as I understand before calling kmem_cache_destroy()
> we need to ensure that all previously allocated objects on this
> kmem-cache were free'd. At least we get this kernel splat
> (from Slub?) otherwise. I'm not quite sure if any other bad things
> other than this noise in dmesg would occur though. Other than a
> [...]

I guess, without knowing the details of RCU and Slub, that at
least nothing super serious, like a segfault, can happen when
the remaining execution is just a kfree(), which won't need
access to batman-adv internal functions anymore.

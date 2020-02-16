Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD9A1604AA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 17:00:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5BC7480766;
	Sun, 16 Feb 2020 17:00:16 +0100 (CET)
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 43014801EF
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 16:52:52 +0100 (CET)
Received: by mail-pg1-x544.google.com with SMTP id z12so7740755pgl.4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 07:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iPFMbfU6diExASqyRYQaLYTU+lXefr7fxHQr7uWuD1Y=;
 b=dFOD3H1/B31VEchMzaUoJ9SUKJtUO6Ioafl/z7DDVOwR6NtDtBMs/13RMPQQzMJ18Y
 c5C04QkzccXncDGICuf/5t/aIGwm7HczFeWtMY+Jo3fy/YcQCQRsbKRTbmcFsW15LoeS
 5M5xHHjjHalh62RK5nUwazqACK6SczFYM1kEOfjlJRCmKpAnWL3N2Dep6gnyRcSdCy0j
 drXeDHCcx1PHXAG2jqXie+iYrkyxLoed7F+tWrFY6O9hhTv2nZuJnslWCSQRk5+QSpNy
 sE6STD6lqxoHPqpbLU3HpctlWUYllldWX66W6Xuc8lCiNKK33NnaGyAvPFFaJicEiWcX
 AudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iPFMbfU6diExASqyRYQaLYTU+lXefr7fxHQr7uWuD1Y=;
 b=M9LOv3jYXZyOaI5uPEzwm6rTXyLKo3+GtjhfcFCgn2KTZ/rsEDfOyi8IRPGWixxrC5
 gRwp3HFTTfMj97bFxZ9LANpsWnD5MbmLt589jO6DcpLFlpZ5xHIp72ZFeijukQzAOLut
 Mrj8N76sQwb5RpNgCpO9Gfri2X9ToWbjn3+Ho2814vA4z9T8xpA3Gb+X3rg0ZUSOjYkf
 f7ZdCAbn1G1G3FoaVjI0dZeIYXs/6cUUXyb4ZiQQhB2UiWEtNb/CwIvyoDd72RBz/4h1
 s5TEc0JgnyUUOZitGA9FcrQOTeVLnUTgh4r6JpVlB6qu/eIn+y2+vk/7iEDpQL83ejxf
 +3ig==
X-Gm-Message-State: APjAAAURjhVD2tfy252fI6Zf1Cmg3Iuq5Jvjfg+w8YDr/NYUdEdmE6L9
 jfSD9vo99cfutMYz/jErHg==
X-Google-Smtp-Source: APXvYqx4ANLkD4bX8522tWsKbJuWTodQcLty70mtlhDXz7killP931Qu5hSGCSz5PkBfEfbEtN3CHw==
X-Received: by 2002:aa7:961b:: with SMTP id q27mr12847463pfg.23.1581868370704; 
 Sun, 16 Feb 2020 07:52:50 -0800 (PST)
Received: from madhuparna-HP-Notebook ([2402:3a80:d03:50cf:14b2:4950:fe83:57e])
 by smtp.gmail.com with ESMTPSA id c1sm13631769pfa.51.2020.02.16.07.52.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Feb 2020 07:52:50 -0800 (PST)
From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
X-Google-Original-From: Madhuparna Bhowmik <change_this_user_name@gmail.com>
Date: Sun, 16 Feb 2020 21:22:44 +0530
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Message-ID: <20200216155243.GB4542@madhuparna-HP-Notebook>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
 <3655191.udZcvKk8tv@sven-edge>
 <20200216153324.GA4542@madhuparna-HP-Notebook>
 <1634394.jP7ydfi60B@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1634394.jP7ydfi60B@sven-edge>
User-Agent: Mutt/1.9.4 (2018-02-28)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581868372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=iPFMbfU6diExASqyRYQaLYTU+lXefr7fxHQr7uWuD1Y=;
 b=jR11XP2H3dPJqK2USutKjbMJVoAGaEILr7Ed/xE7t71AvgVsPzKVNzDg7B1dpEQ3CCn7/J
 dFv40iCZLzzh25D8fWDS/u1S+nNegdjrYjAGfPJFiyAyhQVbAITQIGAUW29dhXoA5Wr/lF
 FBylzUIvUeda8heKfnSk2VxZcNHR8ZY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581868372; a=rsa-sha256; cv=none;
 b=SEqQ0MviOtqRruVJX/x+Ht6t4UeMtz5AYpjDz0lMCgURMKk9do8JUftZfCMncALzgmZTKA
 vthv9Z8ahCJ5b9HMPqwETEdMCzkUcmz3moWNbGT+kzy9RLreF5Pwg7ux/+iCIkXWl5YEK9
 f8E1AbRFtpGU4y8uQ05ZCZjcm5id8uE=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=dFOD3H1/;
 spf=pass (diktynna.open-mesh.org: domain of madhuparnabhowmik10@gmail.com
 designates 2607:f8b0:4864:20::544 as permitted sender)
 smtp.mailfrom=madhuparnabhowmik10@gmail.com
X-Mailman-Approved-At: Sun, 16 Feb 2020 17:00:14 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: mareklindner@neomailbox.ch, netdev@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc, linux-kernel@vger.kernel.org,
 frextrite@gmail.com, Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>,
 joel@joelfernandes.org, linux-kernel-mentees@lists.linuxfoundation.org,
 davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Feb 16, 2020 at 04:35:54PM +0100, Sven Eckelmann wrote:
> On Sunday, 16 February 2020 16:33:24 CET Madhuparna Bhowmik wrote:
> [...]
> > > Can you tell us how you've identified these four hlist_for_each_entry_rcu?
> >
> > The other hlist_for_each_entry_rcu() are used under the protection of
> > rcu_read_lock(). We only need to pass the cond when
> > hlist_for_each_entry_rcu() is used under a
> > different lock (not under rcu_red_lock()) because according to the current scheme a lockdep splat
> > is generated when hlist_for_each_entry_rcu() is used outside of
> > rcu_read_lock() or the lockdep condition (the cond argument) evaluates
> > to false. So, we need to pass this cond when it is used under the
> > protection of spinlock or mutex etc. and not required if rcu_read_lock()
> > is used.
> 
> I understand this part. I was asking how you've identified them. Did you use 
> any tool for that? coccinelle, sparse, ...
>
Hi,

Not really, I did it manually by inspecting each occurence.
Thank you,
Madhuparna

> Kind regards,
> 	Sven



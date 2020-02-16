Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EE84E16048E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 16:36:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8FD98806F7;
	Sun, 16 Feb 2020 16:36:08 +0100 (CET)
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 09F3480039
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 16:33:33 +0100 (CET)
Received: by mail-pf1-x444.google.com with SMTP id q8so7519527pfh.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 07:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XIEPrOUEc1xxULTMEXHUWg4Qjw7jq42rfdXNd7KhPm0=;
 b=BHr0jtmdSFo5SLeKbPpnFJoeBLATA6KiCLy+hyrRGKN8KbNvjxZ/J43HsJYCVHOzMd
 Q6OAkwpSXJZFKMuHKPtxMF1X2hmBPsxRa8lhrm0kiUwG00ub0kvx6+9wE8oUBEec2njr
 EPuMwg4LhYMpTptmi8w7XmTHRl4SDsa/QVMzN/543SyYgSHGN7FhJOve5/uD9Fsc3fXP
 leQOPbLTa10oqBFxnrYs1Ynxc59xc7a/nJ7EDhydBtaGVk/kJSgPZ7ZGp8IrUnZO1TN9
 pb8jXvat/htlqWdzY4I6MZdXNjjKe5a8HL6txN9iArq59JtTbjOkiFoUcuYVTNC0PH85
 t04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XIEPrOUEc1xxULTMEXHUWg4Qjw7jq42rfdXNd7KhPm0=;
 b=B7X0tVUnbCRveptk5UmnsHYvq20nWwQUC5T1jDMeOBBeOgiIS+AAmVTcrZXxi4Qbwa
 SMPJz9dQHHyBTTpoGMFl28KIj53vZzvyaRO3wsCVIfH62mkAjItL3g93bLgv5O6YYpxR
 iG4a/luQjzwrY+GOaVmY1rTdSnVxwASHa5ftviSbzmt0KZdwxXh+aCissIo0wQsZ3Kf4
 w/xwK2GeKswNDLBzk5SThu2QJ7kjJSNNAXpjplAzsyxckzjymax5DoBOiOSdvIkZoCuR
 15Fbv797J4v3PB1LMbZWeRTLYBeksUciNwqB6dJCft24xRcmexuqvW+a3K6eWkI57OzR
 r7DQ==
X-Gm-Message-State: APjAAAXTvxWPI/+ylOeRq+xqurpoTHpaA1Sg8WRs2sXLVdMyupDdMgPF
 HYxwYhIlDcu/AILZCqWe3A==
X-Google-Smtp-Source: APXvYqxt6ISJAda/OBTeJGQHGHJPXLd2MKMKC3TChnw4o2Ef3kJeSPKe0NBrjzvD4aZJzBf/m1Xw0w==
X-Received: by 2002:a65:6147:: with SMTP id o7mr14233461pgv.442.1581867211415; 
 Sun, 16 Feb 2020 07:33:31 -0800 (PST)
Received: from madhuparna-HP-Notebook ([2402:3a80:d03:50cf:14b2:4950:fe83:57e])
 by smtp.gmail.com with ESMTPSA id m15sm14347484pgn.40.2020.02.16.07.33.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Feb 2020 07:33:30 -0800 (PST)
From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
X-Google-Original-From: Madhuparna Bhowmik <change_this_user_name@gmail.com>
Date: Sun, 16 Feb 2020 21:03:24 +0530
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] net: batman-adv: Use built-in RCU list checking
Message-ID: <20200216153324.GA4542@madhuparna-HP-Notebook>
References: <20200216144718.2841-1-madhuparnabhowmik10@gmail.com>
 <3655191.udZcvKk8tv@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3655191.udZcvKk8tv@sven-edge>
User-Agent: Mutt/1.9.4 (2018-02-28)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581867213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=XIEPrOUEc1xxULTMEXHUWg4Qjw7jq42rfdXNd7KhPm0=;
 b=qcIgFsm31Gi3P0VAwDb+4/Rq9UoWChW2xJvxW4CWj9RQ09N/Y/V81ZA/vBii+XshaVX359
 zR/PownV6GxU3hu8/mOwEkpwpwFbwxFltCtzSeY6lyQ9QwfR0RAo5gQ81bNAYxvZFDe6wU
 d3gGq0UY9/0+mekfH33UjxXhiPt5On4=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581867213; a=rsa-sha256; cv=none;
 b=RLSBwf38zcRxoGSuz710M3lPZvPvladr37RZFWqN7O72Tkat8skzXSryRiuu+HGQvJmsCW
 j3Uasx3aeW+5tyaa3m0Io36yv9eofe8y5kLkHo5A6Kxj6cyGeca53FKqSXD1XQI0pef+kp
 Yxn2M/4swRTccWCOa9Lyq0R2pG566hw=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=BHr0jtmd;
 spf=pass (diktynna.open-mesh.org: domain of madhuparnabhowmik10@gmail.com
 designates 2607:f8b0:4864:20::444 as permitted sender)
 smtp.mailfrom=madhuparnabhowmik10@gmail.com
X-Mailman-Approved-At: Sun, 16 Feb 2020 16:36:07 +0100
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
 frextrite@gmail.com, madhuparnabhowmik10@gmail.com, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Feb 16, 2020 at 04:22:51PM +0100, Sven Eckelmann wrote:
> On Sunday, 16 February 2020 15:47:18 CET madhuparnabhowmik10@gmail.com wrote:
> > From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
> > 
> > hlist_for_each_entry_rcu() has built-in RCU and lock checking.
> > 
> > Pass cond argument to hlist_for_each_entry_rcu() to silence
> > false lockdep warnings when CONFIG_PROVE_RCU_LIST is enabled
> > by default.
> > 
> > Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
> > ---
> >  net/batman-adv/translation-table.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> Added with alignment and line length codingstyle fixes [1].
> 
> Can you tell us how you've identified these four hlist_for_each_entry_rcu?
>
Hi Sven,

Thank you for the fixes.
The other hlist_for_each_entry_rcu() are used under the protection of
rcu_read_lock(). We only need to pass the cond when
hlist_for_each_entry_rcu() is used under a
different lock (not under rcu_red_lock()) because according to the current scheme a lockdep splat
is generated when hlist_for_each_entry_rcu() is used outside of
rcu_read_lock() or the lockdep condition (the cond argument) evaluates
to false. So, we need to pass this cond when it is used under the
protection of spinlock or mutex etc. and not required if rcu_read_lock()
is used.

Thank you,
Madhuparna
> Thanks,
> 	Sven
> 
> [1] https://git.open-mesh.org/linux-merge.git/commit/967709ec53a07d1bccbc3716f7e979d3103bd7c5



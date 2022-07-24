Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AA357F797
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 Jul 2022 01:13:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C166E83D37;
	Mon, 25 Jul 2022 01:12:59 +0200 (CEST)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BA6358075E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 Jul 2022 01:12:56 +0200 (CEST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9CE26B80D6E;
	Sun, 24 Jul 2022 23:12:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6132C3411E;
	Sun, 24 Jul 2022 23:12:52 +0000 (UTC)
Date: Sun, 24 Jul 2022 19:12:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [for-next][PATCH 17/23] batman-adv: tracing: Use the new
 __vstring() helper
Message-ID: <20220724191250.2097b8eb@rorschach.local.home>
In-Reply-To: <8828005.nfsgNN4c79@sven-l14>
References: <20220714164256.403842845@goodmis.org>
	<20220714164331.060725040@goodmis.org>
	<8828005.nfsgNN4c79@sven-l14>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of "SRS0=0Aet=X5=goodmis.org=rostedt@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=0Aet=X5=goodmis.org=rostedt@kernel.org"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1658704377; a=rsa-sha256;
	cv=none;
	b=sLGsD1J0gLo3xAJEnYjBHGHq4UHIjITAw3tYyuVErdqxbz3GPX5Mq+T62cYWk1CHbbBFyS
	/dUliKE15Sh70kQ/kDtKOMMBZYtiBRKh3Bh4+qA6oV60p98ebuT12zS03D78os6kqfihyE
	wTrdKmT2MyXs53H1RQS9So3Vun7KPyc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1658704377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ab+Q8ZySQLnAU7mKUZMXWVmunaI8JF6wTxFKdZ4Om5M=;
	b=bj5CTzNbDg7ciEH/bLUGLHjaagVMDDkLMc/5g/9tTvPWfIYAkPzhsv3c6Yk7jEXf0IWjaJ
	t5orhydhT8JEkGw7iiTfDqzKVMk7l6gasljKGN1LXVRbsaEEj1sgcCkz191yCC2hM+bDEF
	qUZtn7eP7hckdETM1t5VklqNPRfwC4E=
Message-ID-Hash: Q6W2Q7G6Q2CFGG4WE2SHNHHBKAYCSDDF
X-Message-ID-Hash: Q6W2Q7G6Q2CFGG4WE2SHNHHBKAYCSDDF
X-MailFrom: SRS0=0Aet=X5=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: linux-kernel@vger.kernel.org, Ingo Molnar <mingo@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Marek Lindner <mareklindner@neomailbox.ch>, Antonio Quartulli <a@unstable.cc>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q6W2Q7G6Q2CFGG4WE2SHNHHBKAYCSDDF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sun, 24 Jul 2022 23:31:01 +0200
Sven Eckelmann <sven@narfation.org> wrote:

> On Thursday, 14 July 2022 18:43:13 CEST Steven Rostedt wrote:
> > From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> > 
> > Instead of open coding a __dynamic_array() with a fixed length (which
> > defeats the purpose of the dynamic array in the first place).  
> 
> Please also make sure to remove the define of BATADV_MAX_MSG_LEN

I usually do not like to rebase my for-next and just add on a patch to
do something like this, but for this series I'll make an exception.

-- Steve

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9162D1BAEA8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 22:03:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 63A518102A;
	Mon, 27 Apr 2020 22:03:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588017817;
 b=EG8bqOgWTTh0ETWOROubR2YFHRCsmunCP/vCFrJJ2Strhc63vtIxsPOCtG/PiPHbEkOAe
 1QEU3NTbg5QlPLrewXLdyIv3aoVOWtlGKbH8bHTtFF8TjW+a0IgCxihJ3yJuc2w0Jru4WjS
 gDjB+UL7u7eXREgEVQQN4DMIpuFDS7E=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588017817; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=VemS6jR5YA36sEj5BdWB+8kG7U46bnATWvWBGVGli+E=;
 b=N33eFOb1H/YgTefSmEZCmUJY9/rzkZ0jd638v4j7eDYfTSZeXVwJVUpqbEuJjsVcoAQen
 ojYurUiUwmb8+bSTC9ACxwWeKyPxc0f07gRlTL1uVdJ8U4Zd46iD8V98uCz03PyCUwkErUe
 7+wMCk6ivP1gm0NUAXJOXfCa2fi94H4=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail header.from=davemloft.net
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=fail header.from=davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9D942800AD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 22:03:32 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id DDDE615D6797E;
	Mon, 27 Apr 2020 13:03:23 -0700 (PDT)
Date: Mon, 27 Apr 2020 13:03:23 -0700 (PDT)
Message-Id: <20200427.130323.976439318095795210.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/4] pull request for net: batman-adv 2020-04-27
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200427150039.28730-1-sw@simonwunderlich.de>
References: <20200427150039.28730-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 27 Apr 2020 13:03:24 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588017814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VemS6jR5YA36sEj5BdWB+8kG7U46bnATWvWBGVGli+E=;
	b=wBMpuWHRExwBSySXCZ/lSYCfhJg9FOt5FQ4oIY2ziNAEOILZLX7B3kt10Vgyux50e8i7Ta
	iIpFHeM57Z1uLvOcBJVXA5uXOMcHz14aGlv/HvEQKm1tQInXIOJPhixqwgHkmiNKd75CFV
	Pax6GwqwqlyPlUUUWOr5MS2MmlDBL3o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588017814; a=rsa-sha256;
	cv=none;
	b=mNykKCMu63IyO0XmmwBI4sMK5u7CIsXgGW6AE0MAORISRxpTeGOkqSxVn0tnNi50cwWPyX
	29zS9FnxSQSghX9ydcppbU34OPGAS0HcFwZvEgMl8uadPdkNmsoT4EeW4My7bppk5l+C/r
	LgJC8mHZdeR43MtxJ1MHjY7SvMhyMS4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: YDWWSBYZZBZ3RMS22H42VZLE7EB6VQ6V
X-Message-ID-Hash: YDWWSBYZZBZ3RMS22H42VZLE7EB6VQ6V
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YDWWSBYZZBZ3RMS22H42VZLE7EB6VQ6V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Mon, 27 Apr 2020 17:00:35 +0200

> here are some bugfixes which we would like to have integrated into net.
> 
> Please pull or let me know of any problem!

Pulled, thanks Simon.

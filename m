Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D035E1B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 13 Apr 2021 16:38:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CAEDE80632;
	Tue, 13 Apr 2021 16:38:21 +0200 (CEST)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2289D8051D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 16:38:19 +0200 (CEST)
Received: by mail-yb1-xb32.google.com with SMTP id n12so18367265ybf.8
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 13 Apr 2021 07:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=khnW0cl8zCiPB5jhEf7/5wGUNhbhMCdajyCYUQieRdY=;
        b=MyhpRuE9axbGwP6lyocPmG65OEdG2gkQ5ApToizXMrUc/fdnE23XXaHjefji73G9uX
         ViULrMzODxU8FktZ7h0Aq7WRKEVRO5r34Uc5g2L/SsAAl6MIoR5QGKr1SZzWoF4sQvnR
         gA71rO69Bj8/ZGAYi+JToWYmjchlSNTQhBd3vPYLAxvW5yGIuPO1pF0HRusdWDdwUSK/
         0jZp+VGftkRH5Rap4nfRPWYE1Y+Oau8qecHhqvQFuLRb5WL9Zd+11Mecpr7CYaMtUzmB
         TjZqKobTCD0hAi8PBwwJY+MnfE+2KsGVYhvvqd6c/HT5wCJrtyPejuIredggsFJY8GNl
         qMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=khnW0cl8zCiPB5jhEf7/5wGUNhbhMCdajyCYUQieRdY=;
        b=C3bK+Q7ppjJ8Nd7zi95rnPApawxt/LF3ppCdTLHcL/Ghoy7YGWoXCFXx1xp/tAYL18
         JInusWFYmtePx1a+t8580doYk2PrCH3pXa3Mmux8lpMPbzuI5H8A376hq3AGEoENauJa
         FIqOmWqtUa4K+YK6igIFNTTb66dXuiSAAZrt8QbPCPY8SAcQXBMr8NT7K8ejQ+8PST4U
         BtdTGdyxneE/fKtHMAJJeejlj3rkqjWl1k1Wk+gOVZ5cApXE6amZ2lzu9zDoZzh5nf4i
         Us2JJhEhIicLpq/HU6qoTlHoakd855aDBNU/vn+VQ52is1esNpGrGMIYsa4GeUpvda/o
         go8w==
X-Gm-Message-State: AOAM532NxEwcGrW3YO6j/+KXITFNw3a78yElQxSVR9oNzipcXbDFSeRe
	hggwDBMIfo0xQKu7RNMwO/aeku3LrlpeZ3o89aQ+bER0
X-Google-Smtp-Source: ABdhPJze8XC/judxm8Hg0vmq4a1BBPkI0lmfRKgaJwxz5TIMnI59ikVxgb1qHaqetGt2MNyq1KO2Znxanfu4Thhga38=
X-Received: by 2002:a05:6902:4d4:: with SMTP id v20mr11714647ybs.420.1618324697574;
 Tue, 13 Apr 2021 07:38:17 -0700 (PDT)
MIME-Version: 1.0
References: <3542676.qYy7ulQ77K@prime> <20210410003953.1234.9147@diktynna.open-mesh.org>
 <6830943.IaFvOplyQc@prime> <7463417.qeE93hC4D1@ripper>
In-Reply-To: <7463417.qeE93hC4D1@ripper>
From: Andi Depressivum <andidepressivum@gmail.com>
Date: Tue, 13 Apr 2021 16:37:42 +0200
Message-ID: <CAEX-Y1YnNo7OsEhmRiBSpJ-1sEw9ZiNSNu95HNn67217+ocP9Q@mail.gmail.com>
Subject: Re: Problems with Multiple Interfaces
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=MyhpRuE9;
	spf=pass (diktynna.open-mesh.org: domain of andidepressivum@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andidepressivum@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1618324699; a=rsa-sha256;
	cv=none;
	b=KVvaLkm+CPsX/6eA02HZX9cgApPHRbsQMjFbjOmK6xWPOznJhW/l6GZNrGZ0QwvY3a+6wk
	xoK/HDyedJsawcgLdGL8PjvgQIeffkDOpjKiHRuuvCW0Vryt5tMEq928MfP7deceYucpiU
	eF3Q9xV2OIVC5qrPdZHpcdyh9DAyWxM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1618324699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=khnW0cl8zCiPB5jhEf7/5wGUNhbhMCdajyCYUQieRdY=;
	b=Dg2DSOVaK/QEKBhC7ApBa9n54uEMAr3QeZP1kfj+rmVfgZRrLxMLN0jmIVZum963skXyIH
	FTwzO4fbXxlI1vcQEP8231tqkMxuzTHjEs8ark+ZbWxMsG8n7voFpgaTrCQSOjuNZ4Ew/w
	hb3ZbpRxbM8ba1uBovpFAtOPHh5moqo=
Message-ID-Hash: XED2OW4E4DFRH3Y4YQG4RNJTROLYW354
X-Message-ID-Hash: XED2OW4E4DFRH3Y4YQG4RNJTROLYW354
X-MailFrom: andidepressivum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XED2OW4E4DFRH3Y4YQG4RNJTROLYW354/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Am Di., 13. Apr. 2021 um 14:03 Uhr schrieb Sven Eckelmann <sven@narfation.org>:

> Please avoid the ath10k-ct firmware. And for ath10k, please make sure to set
> mesh_fwding=0 on the mesh(point) interface.

This is true for Wave-1 chipsets (QCA98xx) but Wave-2 Chipsets
(QCA99xx) needs the ath10-ct firmware to get 802.11s running.

Haven't got stable results with BATMAN V in a home mesh environment.
Nodes could ping each other via batctl ping but IP ping often failed.
Maybe some issues of mesh routing when many routes to the same target
had nearly the same link speeds? I'm using a dense setup of many
routers, so every router is seeing at least 2-3 neighbours. The
preferred routes (marked with a [*] in batctl o ?) switched quite
often. How is the BATMAN V metric affected by link quality & hop
count?

Regards,
Andi

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5E0355DFA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  6 Apr 2021 23:34:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8C596802F5;
	Tue,  6 Apr 2021 23:34:06 +0200 (CEST)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1E895802F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  6 Apr 2021 23:34:03 +0200 (CEST)
Received: by mail-yb1-xb2e.google.com with SMTP id 185so12264753ybf.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 06 Apr 2021 14:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=lpbM/ir9a0O9xMIcfZG0xBZfjNfYcSZ6bqHu/hulYG8=;
        b=BU8tG3asgOsEXZpeRpTpvZJlVjwKQ40u7SNGawQCIIzMt5RXMB9o7HF9yj0Bwupje5
         +iq3xlawyMT1CLQEcMPKIlbnrxO8JYN6hTwUKk6KdE4bPc/uyG7VYVYUT4DXlCcrxkk/
         hGufdEEty6kyPAdC+LryqjByvuaqNHEnP2X1b3yoBS6nPYMKt69hzl2nd51mceMdY8wC
         3AyxCdiN4inee3yppTYHgfWrB3e5v6DMsK/H5Bw/TC2i1+9jZat6aDUzUNgg7rJ24Skc
         dYDXWiK1d6lRECR5tXorFHdYY2dGmCLca6FFp5uL0oBf3CHqW4hyG5DIVATYfREzbMMS
         ivdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=lpbM/ir9a0O9xMIcfZG0xBZfjNfYcSZ6bqHu/hulYG8=;
        b=Udf2LwG11K32m6LLfWO35ZQN9Y5AFQ+O7E59i/jIRs0Rdlfe29UzRydhl7EyQ7q/Nx
         ecTbYpft0xIABotzPHecNq1vnSJxR5KKVvhDb387wHHFFPhXShkh7OUi5YgwG3EZtpEZ
         3VPxLnDtRrmjH2JjajR73LQir45LiMomQfpizJGIQKzQ8o2soqA91c8JDP8Kk8npxiBF
         VGCWpjxBKGnACOreK0mq+Hw69JItBeCKBWTm+xuOYYrsP+GFYUxChNdhFoLpPDF/9LQF
         ogvBP3XccWeuCIZUQjC3zsVUEArXSDJzTo6q89DlIzAVaN9jlCpws0eimC5fmop3ZXoI
         Vt4A==
X-Gm-Message-State: AOAM53351cFiT9yarmTTC8xzZXFSgE0r1bkq81lVhqsNFE39W9m+BOBp
	YkHbbhmZpexayx8m5/Vt++DZqFCVLQKCsu/d2Dhdtc84Fm4=
X-Google-Smtp-Source: ABdhPJxKb5T7iOWl/HZq+MVxp3z08Xt343BdTyYCH8c+Y0zrU/ndThWWQMENgBi3Jl3flBv1lDmOOjK4AGS+bVABxeo=
X-Received: by 2002:a25:244c:: with SMTP id k73mr184339ybk.352.1617744841450;
 Tue, 06 Apr 2021 14:34:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
 <20210406195122.GG2742@otheros>
In-Reply-To: <20210406195122.GG2742@otheros>
From: Andi Depressivum <andidepressivum@gmail.com>
Date: Tue, 6 Apr 2021 23:33:26 +0200
Message-ID: <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
Subject: Re: How to mesh over ethernet VLAN?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=BU8tG3as;
	spf=pass (diktynna.open-mesh.org: domain of andidepressivum@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=andidepressivum@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1617744843; a=rsa-sha256;
	cv=none;
	b=2IfLPCIcWlViItETC7E7bY+FLdMtZ9ViFDcqYukujg1+FZWFZbhWSUAb3sYchOTbU3gggr
	d0EoVxwAy9QS0TTUPkYyJ/I7X2bhGXuWK/We5wk9ZQKstgN8x2MWns69jRzFrwQwd9w7Cn
	pc8Mdiw94idgKUxBeRNx84hGqHuQQLs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1617744843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=lpbM/ir9a0O9xMIcfZG0xBZfjNfYcSZ6bqHu/hulYG8=;
	b=pxVhNq3NuNRlqYkhnR5LOB7dodbRFLF6DTrSDLQ2jM1Aq12Anp2Z9S+B1DfS589bdSBY5q
	K/tj493yrF20cnvF/wK7Pulewfu+bgod0dcMUOfnDc8+280TnXKn0K91ouCOCr2PoCggzl
	DUkz64FjWO//iA0rTE/OnzRARizKK3w=
Message-ID-Hash: HMJ4DOIE2IZH3ZWNP3NP7NUVO236TYSW
X-Message-ID-Hash: HMJ4DOIE2IZH3ZWNP3NP7NUVO236TYSW
X-MailFrom: andidepressivum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HMJ4DOIE2IZH3ZWNP3NP7NUVO236TYSW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> Right, that is not supported. That goes in the direction of
> creating an encapsulating loop. It's best to avoid sharing a link for both
> the payload frames and the mesh layer.

You're right, I've missed the encapsulation loop when thinking about it

> One option could be to add an extra VLAN, like VLAN 4, dedicated
> for the mesh layer with the batman-adv frames, parallel to the
> VLAN 3.

That's the way I've configured it before thinking about VLAN-sharing.
Works as expected except the virtual interface for the mesh link needs
a different MAC address to the payload interfaces.

> Or if most/all hosts are running batman-adv, so if architecturally
> batman-adv is forming the backbone of your network, you could
> run batman-adv over this VLAN 3 only. And then either run
> batman-adv on the servers themselves or bridge the servers into the
> batman-adv mesh on their adjacent mesh router(s).

That was my very first configuration approach but it's rather slow
(about 200mbit/s over a gigabit link) compared to native VLANs. I've
tried to set the MTU size to 1536 for the mesh interface but for some
reason the MTU of the interface stays at 1500?!

config interface 'mesh_lan'
        option mtu '1536'
        option proto 'batadv_hardif'
        option master 'bat0'
        option ifname 'eth0.2'
        option macaddr 'f4:f1:6d:37:b6:85'
        option hop_penalty '5'

Kind regards, Andi

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A249E372F5B
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 May 2021 20:05:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 372B780603;
	Tue,  4 May 2021 20:05:02 +0200 (CEST)
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8CF34801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 May 2021 20:04:58 +0200 (CEST)
Received: by mail-yb1-xb2b.google.com with SMTP id v188so3251102ybe.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 04 May 2021 11:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=PWYJnEyOMMoCL5GEjJKQzh9tT6dkmfNbD5X6e8nRd+o=;
        b=X4iMlvwg+YVZuiYaMpqwDI8SuGPNUZyJp5DwgL/D7F70RhktNnIQj2/8pgwv4rWCUL
         Vu0Zz+0491ZjmuxLroZCITGARlSVYLKk1V/zz4uFvzllH10SEvzePGKAphOyjLz3kRSU
         CQ2pyxKXKiECsf5w79mDfjLoP4nMDzNRmfleqE3Ay+eB1prLb+33dJ3wl1JBhAwBSzfx
         LcKth1CMUgw3UG5d49ZpxVBBNL7eAD+/B9QsQ8CUWSLvDaVOJbuSlmll34UVrNb4ZEGJ
         d+R3lsabZDcgHg+ZmvL2BNlBEuY2PPNmsu20o6zvJJD0VSg2rm+bpp34U53IoEIlp7KW
         kJYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=PWYJnEyOMMoCL5GEjJKQzh9tT6dkmfNbD5X6e8nRd+o=;
        b=VbbFAL33RPxHbKWIrc5M98BVJHpFySXZ6Ng8RYKDBr5Jn/3Er3fuL7P6JNjwVNVh02
         VcDrcmeXWukr1qtuzUKPLFAxSik3MA7EQbL179dny3f4PdyddfxWFug/s0GJvcivA0A2
         WAI+VWkHVDDlw4wFwn45iiBpG7y/zO0vKlzEFrEiJwnVLF6hDeNghZ6wnNcjcnvW1Qxs
         ecHTItaAigUBmoahcg9IO74ULHJtxRgQ5XXdMyp/GmjcGoenAO97FOTIee1J1tEt5YyA
         SlWHU+MfbuOc1Ywc1OWqWj8QMp/075ywzH1m+N10a74qhjsmSXoPNwuy54ycs6/VcB3d
         EtJw==
X-Gm-Message-State: AOAM530GQrXt0UV1JSyWKHQ4Q1DBFEYv5f9cANE9q1ojmFVZAcFTdH65
	0Lw1ACseXhNVnAvR3CbyLwIbKI2SK9rhmjDRZ7+P/le9
X-Google-Smtp-Source: ABdhPJxIc5OwQgmzJ/71nZ/J/yOu/ZYSRR/HKYqzFj4G/rSEC15Oh9vEZjb+YQEiWInmCiCpQpYnyi8zM6A99ta5lcU=
X-Received: by 2002:a25:e443:: with SMTP id b64mr35007709ybh.379.1620151496666;
 Tue, 04 May 2021 11:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAEX-Y1Z8vHvj_TD-EL-Y9AiSeKV9WHb=BxJMwJx0h5z0xfk5OA@mail.gmail.com>
 <20210406195122.GG2742@otheros> <CAEX-Y1YfhoLgcwMJAg11H7f785kum6LUrYq=YrKg0C-9vXZ-ZQ@mail.gmail.com>
 <20210409112432.GJ2742@otheros> <CAEX-Y1ZnouWOpjrT4n8q4BVaRWSP30GLMbT_78Kn3_KoFELp9g@mail.gmail.com>
 <20210414113553.GA4886@otheros>
In-Reply-To: <20210414113553.GA4886@otheros>
From: Andi Depressivum <andidepressivum@gmail.com>
Date: Tue, 4 May 2021 20:04:22 +0200
Message-ID: <CAEX-Y1aFntqW7DTZJJrTsK4nxdwdkXK7MNkH2Z-LF50ynf_Dyg@mail.gmail.com>
Subject: Re: How to mesh over ethernet VLAN?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620151498; a=rsa-sha256;
	cv=none;
	b=LBeEEycfEG0hFld4I8kfCpEL4flue4yzjFP3eatDZAAb8hO85IDQRiN/xvtGzYYbM3l/Xs
	mwjaZsCU6Mep4pNMHPdASq6y51b0AlmeLChr8/qnWpysZaHlmA4heEw4bLVUWEhj3kjDo/
	G9E3SBR/A9heXGrfKRsyQGDivjMeILQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=X4iMlvwg;
	spf=pass (diktynna.open-mesh.org: domain of andidepressivum@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andidepressivum@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620151498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PWYJnEyOMMoCL5GEjJKQzh9tT6dkmfNbD5X6e8nRd+o=;
	b=0TPkwYEwkJ9fkNuz4TDorY4pjUnKpSPaAhZFBdEBJ2qLwkRWnedasL+AZ+LcwmQdUpTdAL
	19DVC7z7g1LMwb9bCocKl32JGXEEcGTM6whmTtFmB2XidQlJtCbK9oaqQJZpUK/3FbvQda
	L1/qnBfLDdzul0m9XqiX9bVKXCBNAS4=
Message-ID-Hash: PNGYKAIX2A23FUWEGPBVD4CHD3SX5M22
X-Message-ID-Hash: PNGYKAIX2A23FUWEGPBVD4CHD3SX5M22
X-MailFrom: andidepressivum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PNGYKAIX2A23FUWEGPBVD4CHD3SX5M22/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

What's the advantage in running BATMAN also on a separate VLAN when
the ethernet nodes are already connected to all switched VLANs? In
case of using BATMAN V it seems to brake rerouting when the cable is
removed as the link is already shown with 1000MBit/s.

Regards,
Andi

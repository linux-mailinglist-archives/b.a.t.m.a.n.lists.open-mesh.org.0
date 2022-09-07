Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC495B0CD6
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  7 Sep 2022 21:05:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BAE2A82157;
	Wed,  7 Sep 2022 21:05:29 +0200 (CEST)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D59EE8072C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  7 Sep 2022 18:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1662566473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bb3nI/bWVmCMagHckP0ncEAEW5knUD+/s554XzBSy8Q=;
	b=VEtbDaHVhRvR6Rn9GhrruBXhgiAKQlv/lk/gswCvGAgq7NE0SdNGXQHQeEzp6kvF3Wtazi
	K1VfMj5vAl2ZvOmJJvNiBpuU7zKE+dPlMc9osNKvc2nRBNLjllu3raJ2y0O4iERVWuZIgO
	q9JbHz1tXhSwOz9ThZcvyiZuCrwuKao=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-631-QlWcuicoOG-s1553lAa7iw-1; Wed, 07 Sep 2022 12:01:12 -0400
X-MC-Unique: QlWcuicoOG-s1553lAa7iw-1
Received: by mail-pf1-f197.google.com with SMTP id b25-20020aa78119000000b00536a929d8e4so7678469pfi.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 07 Sep 2022 09:01:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:x-gm-message-state:from:to:cc:subject
         :date;
        bh=Bb3nI/bWVmCMagHckP0ncEAEW5knUD+/s554XzBSy8Q=;
        b=qIvvbtifOQPa1pPgWIaafCOBJgC/G4XCqnYQDYwVTldgVlgAWDxqDkN9P037jBlsXM
         AsrLWEN9HqzyA91REmwr3A3mP8TSKZ2xas1twA7GuFR9LRdJDXhm8k03K3fkQ9XTKdVQ
         U/1Bs4Z8ihA4L+bhO02W94r+pVegtDpzbGzdSqFY+eSVTnHKaSYiWOI4tGpDINHIVo2r
         6nSFFtjU9GJsC/zHYaNvVVOb2gjPvFRuZ8Xh5y+bwM/bWyStStRIrOU2rV1ARFYRrJLz
         rajcEzn1CCKFzIZfi+WFt0LIf6+cnEsFO/KoZO8lqiBsAM2TBMeVY2xTbZx4WiWiyFhv
         vYyQ==
X-Gm-Message-State: ACgBeo2i0rFrJktoLdgN9AwCxLhriwwBheG1g9CJF5HPb3CxnucdJF55
	4nA13fsvBqa0+2BJcak5+Op8qn4PrGi6xdHfZSQ5kTG4NUx8PFfTlwP1h3C4zwD56d07BkPYyC4
	CEgZZnwXlVmoDcT36xU0JJOodp8+i
X-Received: by 2002:a17:90b:33d1:b0:1fd:6e9f:548c with SMTP id lk17-20020a17090b33d100b001fd6e9f548cmr32245244pjb.137.1662566471356;
        Wed, 07 Sep 2022 09:01:11 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5w0TlpQTaZ2Ko9XfCN734oiu46xXdNWpFa388ApWyERn/Hez/P1sLI6h/zK1eILUvChXyCsQ==
X-Received: by 2002:a17:90b:33d1:b0:1fd:6e9f:548c with SMTP id lk17-20020a17090b33d100b001fd6e9f548cmr32245213pjb.137.1662566471018;
        Wed, 07 Sep 2022 09:01:11 -0700 (PDT)
Received: from localhost ([240d:1a:c0d:9f00:4f2f:926a:23dd:8588])
        by smtp.gmail.com with ESMTPSA id mh16-20020a17090b4ad000b001f8aee0d826sm14786150pjb.53.2022.09.07.09.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:01:10 -0700 (PDT)
Date: Thu, 08 Sep 2022 01:00:37 +0900 (JST)
Message-Id: <20220908.010037.1643964170435041362.syoshida@redhat.com>
To: mareklindner@neomailbox.ch, sw@simonwunderlich.de, a@unstable.cc,
 sven@narfation.org
Subject: Re: [PATCH] batman-adv: Fix hang up with small MTU hard-interface
From: Shigeru Yoshida <syoshida@redhat.com>
In-Reply-To: <20220820032516.200446-1-syoshida@redhat.com>
References: <20220820032516.200446-1-syoshida@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 28.1
Mime-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=VEtbDaHV;
	dmarc=pass (policy=none) header.from=redhat.com;
	spf=pass (diktynna.open-mesh.org: domain of syoshida@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=syoshida@redhat.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1662566475; a=rsa-sha256;
	cv=none;
	b=cSxaDRowNaDDw1UFRJy/4aBGbWICtq+tI4SazWoall6Ma5GqkMyMhzKkmGvEOg2H9Uu3DY
	dHgwZSF/NPVxUyRCcNv5pk3tNukQHYYwcFSXk5lduevz7LgVtDWUKa4az4NmtM8djCWuA9
	UrNhwy55PU91VZIj2dIdDVCdaWl9BOM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1662566475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Bb3nI/bWVmCMagHckP0ncEAEW5knUD+/s554XzBSy8Q=;
	b=QvYPOaxz1VnzFovAg+4DYi+//ZOc2Jg3tvoHXX5ogrT0bcMvSwe9WEpCeOVhJXV4+0gQGM
	C7avua3gei0FmledMhC1fedq4dUBj8YbHMRY7bGpL+nb6f6fCf7wxdREjDlLzdYzOn1Q8i
	QpAJqjvWCRfRlIcEaQuzwNe6+R7qcs8=
X-MailFrom: syoshida@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 55YK5X2VHBKL2O57SUCFTJH5ILX6F6T7
X-Message-ID-Hash: 55YK5X2VHBKL2O57SUCFTJH5ILX6F6T7
X-Mailman-Approved-At: Wed, 07 Sep 2022 19:05:27 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org, syoshida@redhat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/55YK5X2VHBKL2O57SUCFTJH5ILX6F6T7/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

ping?

On Sat, 20 Aug 2022 12:25:16 +0900, Shigeru Yoshida wrote:
> The system hangs up when batman-adv soft-interface is created on
> hard-interface with small MTU.  For example, the following commands
> create batman-adv soft-interface on dummy interface with zero MTU:
> 
>   # ip link add name dummy0 type dummy
>   # ip link set mtu 0 dev dummy0
>   # ip link set up dev dummy0
>   # ip link add name bat0 type batadv
>   # ip link set dev dummy0 master bat0
> 
> These commands cause the system hang up with the following messages:
> 
>   [   90.578925][ T6689] batman_adv: bat0: Adding interface: dummy0
>   [   90.580884][ T6689] batman_adv: bat0: The MTU of interface dummy0 is too small (0) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
>   [   90.586264][ T6689] batman_adv: bat0: Interface activated: dummy0
>   [   90.590061][ T6689] batman_adv: bat0: Forced to purge local tt entries to fit new maximum fragment MTU (-320)
>   [   90.595517][ T6689] batman_adv: bat0: Forced to purge local tt entries to fit new maximum fragment MTU (-320)
>   [   90.598499][ T6689] batman_adv: bat0: Forced to purge local tt entries to fit new maximum fragment MTU (-320)
> 
> This patch fixes this issue by returning error when enabling
> hard-interface with small MTU size.
> 
> Signed-off-by: Shigeru Yoshida <syoshida@redhat.com>
> ---
>  net/batman-adv/hard-interface.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/net/batman-adv/hard-interface.c b/net/batman-adv/hard-interface.c
> index b8f8da7ee3de..dce5557800e9 100644
> --- a/net/batman-adv/hard-interface.c
> +++ b/net/batman-adv/hard-interface.c
> @@ -700,6 +700,9 @@ int batadv_hardif_enable_interface(struct batadv_hard_iface *hard_iface,
>  	int max_header_len = batadv_max_header_len();
>  	int ret;
>  
> +	if (hard_iface->net_dev->mtu < ETH_MIN_MTU + max_header_len)
> +		return -EINVAL;
> +
>  	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
>  		goto out;
>  
> -- 
> 2.37.2
> 

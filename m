Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9825B0CD7
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  7 Sep 2022 21:05:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C11FB821C0;
	Wed,  7 Sep 2022 21:05:31 +0200 (CEST)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C3145807CC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  7 Sep 2022 18:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1662567962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IpRcSEjb5EFxGfzHz+GWr2U/0UjWu0SzaZNMoqBv2RY=;
	b=PB17JnJFiIeLYQrOg0HzqpxfTEU2DtuTRtH7lTOSZCe4QYkdC689aqkvdP1hx5mc7nYt6a
	CIQhKsJp9Unrzp8qmpnEwsI6JApwpctDAnuERCZ8yRSswNsodxHg8oa7BlDtMdQLe3lSN7
	uPpnfUlNxU3GkAstZ3NMEW/A/B9aup0=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-376-nZ1pJHmDM_qiI03gUhg5tA-1; Wed, 07 Sep 2022 12:26:01 -0400
X-MC-Unique: nZ1pJHmDM_qiI03gUhg5tA-1
Received: by mail-pf1-f199.google.com with SMTP id dc10-20020a056a0035ca00b0053870674be9so7799515pfb.12
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 07 Sep 2022 09:26:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:x-gm-message-state:from:to:cc:subject
         :date;
        bh=IpRcSEjb5EFxGfzHz+GWr2U/0UjWu0SzaZNMoqBv2RY=;
        b=GvAo8vfYXP/ofykD+ienqEbYoF6e1XMmkQrn9I5J+YwjUiCBgFlhJ1pnUnAO/GyzV8
         DVT6iPKdYK80xLoeY8GfxfkN/Go8+f/xKNBp8obbsq2XoGMEuPriGMRkeD6saMGsZ9b5
         jgONsOx4p73kgLUr47AlhypN/aOJCLuOVw6YnOFXRUoUjT4QyWCBcbCVVztliDeDuPhR
         wwVVldw4pptTTQiTFzAvjjhHgUVE4TfZaZfaPIV1TKcluem5q2jfd70oYsIGJCh3WHpH
         mg17tkp4jopSEiOnJGt5kgQbcOgVD3xpMmiSIXrFfU9HwJBZZZzUkRM9vLepFAFhEFZN
         6ahg==
X-Gm-Message-State: ACgBeo0NwaKZEHwt1BW37C/LTEoclQ+436D8++zRuxso/C8diYBcRKi/
	fPTQEvHQcz93q9er3hhtZiYxd+F9U/p60dNi+OskMXxkAlQXfO2+K6+6D8W+DVY6/HPxoJfvLUM
	dIPDjzHVbgrBMaJaWRHhhlySEthaj
X-Received: by 2002:a63:191d:0:b0:434:4bb3:e016 with SMTP id z29-20020a63191d000000b004344bb3e016mr4186531pgl.133.1662567960406;
        Wed, 07 Sep 2022 09:26:00 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6eEwwovNfgE+y8ahTg/s4MoHLKu77bE6/7AuVXsn/mNT13uNFKTeavslC0p5M82+XxmK5z8A==
X-Received: by 2002:a63:191d:0:b0:434:4bb3:e016 with SMTP id z29-20020a63191d000000b004344bb3e016mr4186514pgl.133.1662567960128;
        Wed, 07 Sep 2022 09:26:00 -0700 (PDT)
Received: from localhost ([240d:1a:c0d:9f00:4f2f:926a:23dd:8588])
        by smtp.gmail.com with ESMTPSA id f4-20020a17090a654400b001faafa42a9esm9245843pjs.26.2022.09.07.09.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:25:59 -0700 (PDT)
Date: Thu, 08 Sep 2022 01:25:56 +0900 (JST)
Message-Id: <20220908.012556.1223002692465040215.syoshida@redhat.com>
To: sven@narfation.org
Subject: Re: [PATCH] batman-adv: Fix hang up with small MTU
 hard-interface,Re: [PATCH] batman-adv: Fix hang up with small MTU
 hard-interface
From: Shigeru Yoshida <syoshida@redhat.com>
In-Reply-To: <42632958.r4OcKK3suL@ripper>
References: <20220820032516.200446-1-syoshida@redhat.com>
	<20220908.010037.1643964170435041362.syoshida@redhat.com>
	<42632958.r4OcKK3suL@ripper>
X-Mailer: Mew version 6.8 on Emacs 28.1
Mime-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=PB17JnJF;
	dmarc=pass (policy=none) header.from=redhat.com;
	spf=pass (diktynna.open-mesh.org: domain of syoshida@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=syoshida@redhat.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1662567964; a=rsa-sha256;
	cv=none;
	b=gJIEHcaPWRDVgajkU57K4dr11DRmnvAEI4izgVa2PDNMyC0idEWH1UPF7xkDtqaCsNKpnR
	lMpQ0gz9y3ituneoqsorcWAcxgvvHDlU7/vyt72ugDNu62d1NJ9zWDkQouGkmdihAL3+WC
	vYP8y5tfPMvCoz7eMlHBsVRn4jjdLRE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1662567964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IpRcSEjb5EFxGfzHz+GWr2U/0UjWu0SzaZNMoqBv2RY=;
	b=rwfQCrYw5jzDXRNZAVTrTgCxYWDDHvXTIvqtnVLAp2oTab5EOtoRTKWlVWGupmSNUbuy9Q
	wWxe5l3U30ByyScttpypjXQcW3API9a+LUMddyWBjc1Cq6pbLfJXRhHXDgZW0YWWHgIslG
	B+K28pTX+r3aRJ3g8bXIt3Xisq26xwo=
X-MailFrom: syoshida@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: OPWAQKSZ7KC66R3WW6JVTV5ZET4CKL5V
X-Message-ID-Hash: OPWAQKSZ7KC66R3WW6JVTV5ZET4CKL5V
X-Mailman-Approved-At: Wed, 07 Sep 2022 19:05:27 +0200
CC: mareklindner@neomailbox.ch, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/OPWAQKSZ7KC66R3WW6JVTV5ZET4CKL5V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

On Wed, 07 Sep 2022 18:04:09 +0200,Wed, 07 Sep 2022 18:04:09 +0200, Sven Eckelmann wrote:
> On Wednesday, 7 September 2022 18:00:37 CEST Shigeru Yoshida wrote:
>> ping?
> 
> This was applied a while ago:
> 
> https://git.open-mesh.org/linux-merge.git/commit/b1cb8a71f1eaec4eb77051590f7f561f25b15e32

Sorry, I didn't notice that.  Thank you so much!!

Thanks,
Shigeru

> 
> Kind regards,
> 	Sven

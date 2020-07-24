Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A1122CF58
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jul 2020 22:24:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 803CB800FE;
	Fri, 24 Jul 2020 22:24:01 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 80009802A2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jul 2020 22:23:58 +0200 (CEST)
Date: Fri, 24 Jul 2020 22:23:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1595622238;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6NDeAWDcRB+BYNtPRcd9nTe4ZAHEdefAU1tadROBSzo=;
	b=PzFU3ScePlIX7J9njxNWe1c0jBsZr1fybcwbw7OC++Scdzm6EcxxDOTIOxm86XFILVhbMY
	JDwab3UrVNAzWi/WHtEQYuyNWwAY/TdowXIPcwtaJhQ/+anNvvXJrmof0RO5TlWZz3nKV7
	PC5CYRt5TsxIfoa0P1khYuN5x/IMn65KdX6YRp0HpIXceORO73PY2u4RXtz1ntqeqEIi+3
	11Tt95wQbr52a+v3xgFfsRaYc3kLZDAYP9joH7PK/Yhjaw1yj/n/Dz2Ms1EWjKuSaRYGau
	E43f8imUVNdmkgL54A6wyR1sYpb+u4HPzeRtnjI4dA1hhHW8UcHOb/1KA14zzw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: lavincent15@gmail.com, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Batman_V Originator Loop Issue
Message-ID: <20200724202356.GB2357@otheros>
References: <20200724100249.GA2357@otheros>
 <20200724150033.30286.98915@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200724150033.30286.98915@diktynna.open-mesh.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595622238;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=6NDeAWDcRB+BYNtPRcd9nTe4ZAHEdefAU1tadROBSzo=;
	b=klOMkyHuPLiy3tXBUUSrvLT8lADI6ObUYX+IXdmicLDjCchTr4GVtpnmPh4gkyr7Glghit
	Qmb5gvTSICgR2nl0wZoIo9h5PEDmsIpG6yJuAghMhqy8QEv/HEEaofbejmvMydO1o/MG6S
	gYEDDIEam5rwcMQnqCgW8MBpIqAJccc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595622238; a=rsa-sha256;
	cv=none;
	b=nql1Ts2SDz+s7Lz+2GCgZpeoGx4LLPKpjvkrqC+bSt7dW4OH+ULWk3kpaZQywKgORQhiSC
	mCZT/1KGbXzaJH0aqISHJzKrdlahe8dRSMyABnwahlKSZXvXjrybF6iBZFJlkm88PmqEDw
	KPh2UGni6siQjsqjtAQXSmzmQBLyEgA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=PzFU3Sce;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Message-ID-Hash: 2XNVOKQKDGXOJW6WJ6WSNSLT5AX47CTU
X-Message-ID-Hash: 2XNVOKQKDGXOJW6WJ6WSNSLT5AX47CTU
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2XNVOKQKDGXOJW6WJ6WSNSLT5AX47CTU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri, Jul 24, 2020 at 03:00:33PM -0000, lavincent15@gmail.com wrote:
> Linus,
> 
> I have a working network with aggregated_ogms enabled and DAT disabled.I just tried disabling aggregated_ogms and the network continued to function properly. I then enabled DAT and the network continued to function properly. So it seems I just cannot have aggregated_ogms and DAT enabled at the same time.
> 
> Thanks,
> Luke


Hi Luke,

Awesome, great news, that intensifies the suspicion that the issue
in the aggregation code is the main cause.

Would it be possible for you to try the patch from the ticket and
if this allows you to enable both DAT and aggregation?

https://www.open-mesh.org/issues/413
=> https://git.open-mesh.org/batman-adv.git/commit/0115502eab54a80f2c05884efce6ee164ed3cd9f

Cheers, Linus

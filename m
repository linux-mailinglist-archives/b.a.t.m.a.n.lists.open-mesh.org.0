Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 7334114BE69
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Jan 2020 18:19:33 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 34FE180715;
	Tue, 28 Jan 2020 18:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1580231965;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=l6HN9v0k0Up5qqIhGhmJv7aoXGoq+rd1hP6B+y/H2i4=;
	b=KajjDbbQ9YxGN1WflQiTKxxyZ+j7axD6n5agmnnaa9VGzH29X+2FuhwnlM7RpMwkB2pCOE
	EdJ8XQY8o9vSrf+Efr0cyjS0CPLdU+cPDWtmuT55q1UUqGYScYCjjCGTAJjp/Y7qpxACDL
	w5xxbyskjDiZjlFBneAM+rPDw+LawH8=
To: Sven Eckelmann <sven@narfation.org>
References: <20200125180745.19517-1-felix@kaechele.ca>
 <3489864.0R65RLHByN@sven-edge>
Date: Tue, 28 Jan 2020 12:19:16 -0500
In-Reply-To: <3489864.0R65RLHByN@sven-edge>
MIME-Version: 1.0
Message-ID: <mailman.0.1580231961.510.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Felix Kaechele <felix@kaechele.ca>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============3651156704105864127=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============3651156704105864127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3651156704105864127==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <felix@kaechele.ca>
Received: from mail.kaechele.ca (apollo.kaechele.ca [54.39.219.105])
	by open-mesh.org (Postfix) with ESMTPS id A34FC800A9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Jan 2020 18:19:19 +0100 (CET)
Received: from authenticated-user (unknown [::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: felix@fetzig.org)
	by mail.kaechele.ca (Postfix) with ESMTPSA id 9BBA5191D6D3;
	Tue, 28 Jan 2020 12:19:17 -0500 (EST)
Subject: Re: [PATCH] batman-adv: compat: Fix build on RHEL 8.1 and clones
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
References: <20200125180745.19517-1-felix@kaechele.ca>
 <3489864.0R65RLHByN@sven-edge>
From: Felix Kaechele <felix@kaechele.ca>
Message-ID: <2187ec70-4276-5178-b7ad-d029bd8561fb@kaechele.ca>
Date: Tue, 28 Jan 2020 12:19:16 -0500
MIME-Version: 1.0
In-Reply-To: <3489864.0R65RLHByN@sven-edge>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1580231960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o/XWezhPKQVAEt8DOkHVVJVbi3V+9sRMxV5dcHm5x5A=;
	b=nSBlczuqSIb6yQh59sa1Rpv6B7Nu7DLz3dxigRH9PxWMyGPNIo42QwCY1F+u4F//sm+hiK
	hNQ3jtLpkDMcvud/J3LVxpvWf3SY+/bN9ed4souRUYrQP44pBlxBztctEzNY3ZhX3MTE2O
	MYxmVxYKE+Igy809Ke3pbDk1rx1FyGo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580231960; a=rsa-sha256;
	cv=none;
	b=uG8c7KmB41UVRQklH7JfHO9gOKsxbAhvzWhT09iUvHwZgw5NMQODOtK3xghr5k4qzE0aWY
	J0gV1zoQdyHh9jmykBMueHlTHk7bxUSJgRgEwpB3GN4LeO5PBl01LD/N6CLW74Y/aAYFzy
	8vJRWDOVFT9AcexZv0yDvmI0W8qaxjc=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=none;
	spf=pass (open-mesh.org: domain of felix@kaechele.ca designates 54.39.219.105 as permitted sender) smtp.mailfrom=felix@kaechele.ca

Hi,

On 2020-01-25 2:17 p.m., Sven Eckelmann wrote:

> I am personally not really happy about supporting all kind of weird Linux
> kernel forks.

No worries. Just saw that there are some provisions for Debian (which I 
guess is what some of the maintainers are using) in the code. But I do 
see that all the Ubuntu specific stuff that backports has isn't in there 
either.

> Anyway, if you really want to maintain the RHEL support (for reasonable
> versions which are based on reasonable new upstream kernels) then I would
> propose to avoid this RHEL_81. Instead it might be better to just add
> RHEL_RELEASE_VERSION + RHEL_RELEASE_CODE [1] to
> compat-include/linux/version.h. And then just use them like the backports.git
> is using them [2].

I'm not interested in maintaining this upstream indefinitely and I agree 
with you that carrying around fixes for all kinds of weird quirks is a 
burden on maintainers.

I'm happy to just carry this patch in my DKMS RPM packages I maintain 
for batman-adv.

Regards,
Felix

--===============3651156704105864127==--

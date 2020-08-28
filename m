Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B853F2562C2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 29 Aug 2020 00:01:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8991C8039C;
	Sat, 29 Aug 2020 00:01:39 +0200 (CEST)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 70660800C7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 29 Aug 2020 00:01:36 +0200 (CEST)
Received: by mail-ed1-x52f.google.com with SMTP id b2so408565edw.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 28 Aug 2020 15:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XzA8inqc5ewJXOAglW6SVQO9ocOyECo8CznQOJry/oM=;
        b=eX5n/DIulRBBnBf0wfdrXuuYBrHXkrQBMd+FupyrqrQbN9XyDGOva72Irj9ETnw6m8
         IZxZTZC+XAZ0uinfWW0cgv4O0ruJ5tP4gdN510NeqbIIC/mrDjkuXCJaFarTuiiLcXvU
         atQR6DdPRxVCGavWWvJreoWu8pAbV1Afu3JztqYV81eXKQWm+Jevb69Lkvw0Ehfm3p/b
         nyGQVEAZfWnnJRl1quxFzrL91aJcIRH4I8h2reXBqjZeew7c1WHM+c5AUwBIJBtYmzki
         FQt7+XFsyiWE7HxnxJDJ3SLQieINsu334psisw/R746SfuXspxw0W+vVbNuEeufyl3ej
         3CiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XzA8inqc5ewJXOAglW6SVQO9ocOyECo8CznQOJry/oM=;
        b=lqsirNUMh86fTXeLTjkpkEny+THUUilxTyZlrqGtNmmbZZNm2XiVPtVAcRmuiTDsGN
         wXvFXF19k9BFXoNidE3VhA64/XgZw8S7G/MjevjBSm/NuorVjTK1nNV17yiacvISGo7Z
         gom4TYDg5ll3uQXVh7/n7aoSYXopRQlstrmejPHO90I77UhO0iZ5ZgzkNu6zD4e8jycU
         w8pARYfh3B9ZisC1IIW3/ImHMBCLVDxpKjilL7recX3nJ3wm8iwoix7VTYUR5qGU0+X3
         05RtZ8fKmpV6RL2mvpiJqrXuG7rkLTD9BY4RJqIEoqJd2u+Wy4zTkbiVlQ+wLwYa67Gc
         248Q==
X-Gm-Message-State: AOAM533+G0/B/E6lUJUcKdQgmO5nsoudQy0Ie5RiduC/miMM0SoUy1l6
	IaZexlB9C2CKx/v7FTxI+mlZ6tle20X4tkxU5oGXSXiPl50=
X-Google-Smtp-Source: ABdhPJw/dRrNeS2GaYNwhOkN1lJdPqBypEiVFvSujxpSRFmeNnkg/czTBs2ESsDPSDt7+Fvz8MT/2IgGBpLn/f0iJ5o=
X-Received: by 2002:aa7:ce15:: with SMTP id d21mr828092edv.55.1598652095810;
 Fri, 28 Aug 2020 15:01:35 -0700 (PDT)
MIME-Version: 1.0
From: Chuck Ritola <cjritola@gmail.com>
Date: Fri, 28 Aug 2020 18:00:59 -0400
Message-ID: <CA+RexfHNV+HY28OiuHKNy4Rn=MM4gxOU0xCiVG0z56dfnv_z6g@mail.gmail.com>
Subject: Is it possible to send all batman-adv traffic through http proxy cache?
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1598652096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=XzA8inqc5ewJXOAglW6SVQO9ocOyECo8CznQOJry/oM=;
	b=jyJoQ+aaWZQ69A7iaHawi8j8C5EcixhbNRKEColLFzP1m/bIiCGV7GL9n91GLfbGRbIZok
	hqaG3vmW1Yd58tbAutycH0Ffzxp7BeKpgMpKMW+GYe9tH3ku7NcfQhPJsItH/YAOWW8Qix
	TYBI5gradn+zMYuhtfqBpMWdXSAJ6mk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1598652096; a=rsa-sha256;
	cv=none;
	b=fexAPuELzbAsWnHtgFMFnvKV6VN85DFY2LpCDyswBPzWbY1WOXZzb1dHKBArcbo60FixS4
	o0jr1foUxiynZ9pyCCQPDkDaeZyJFWTxsfy33cFxav6lfg8knHEqQWP3GEQ41DjZaKV+2u
	pUXNs/9CUM1XYUtjBBzHJGcx8etZ4C8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=eX5n/DIu;
	spf=pass (diktynna.open-mesh.org: domain of cjritola@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=cjritola@gmail.com
Message-ID-Hash: VCPKGYULWWKBXH3BGVRVPQCHVNULAXZX
X-Message-ID-Hash: VCPKGYULWWKBXH3BGVRVPQCHVNULAXZX
X-MailFrom: cjritola@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VCPKGYULWWKBXH3BGVRVPQCHVNULAXZX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Is it possible to send all batman-adv ethernet traffic through an HTTP
proxy cache such as Squid?

This is for building a fairly large mesh network on amateur radio with
some links having limited bandwidth. To improve performance a proxy
cache would be installed inside each node, which stores to cache any
HTTP responses tagged as cacheable and sniffs for HTTP requests
through said switch for requests matching any cache entry. It then
blocks the request from being forwarded and responds to the request
itself with the cached data.

I'm having difficulty figuring out how to get batman-adv to pass all
of its raw ethernet traffic (presumably with mesh headers removed)
through outside software such as Squid before performing its
switching.

Another consideration was ALFRED but it doesn't appear to be easily
integratable with existing software.

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC50209FB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 15:23:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF4D880743;
	Thu, 25 Jun 2020 15:23:00 +0200 (CEST)
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E93798010C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 15:22:58 +0200 (CEST)
Received: by mail-qv1-xf2f.google.com with SMTP id h18so2747982qvl.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 06:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ravToqLMphDJeQayg1WGMbrPp4ImjCVG9fAs8e2RHI4=;
        b=lBI58FRdlMwZq6rGrImbB4Tb4SItzclZ4fUCa5ra89EeKiJGc8tr5mLoC/Uztv1Qlf
         4NWkWSFf35qSC5M+R13KLVm7NutcnGqQaax7jPt2MhbZh0Ouzqqf+NO5gqTCzXBlKn3A
         /MoWlAYy9wKdUUuDQNLAMI/gnyjA6tsDZL0swMJSMJp4TJKKdl+F5EnH/y9CJnQcmFRs
         UI9v91Dkgg42D7iK5TPSvweaKEXejYQErMMLLzdn7LpCnSFHuk/XfSnrbhTLzRAePONt
         E3BuD3sSGcsfyEviy5wP7puAs4G8w1jQ3eN4xv49oMNGWEmrWnSg3H5UF92Qu2TJe1FE
         nyWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ravToqLMphDJeQayg1WGMbrPp4ImjCVG9fAs8e2RHI4=;
        b=DE2L9h9vRGutsU6sVZmgqZZlqQG9Oo9PiiBwYLHWSuaYxNayHR+eRaY1csP0tWgLyn
         uOUaBT+OmyajOXVQyvHQUeURuBDMJWFJmzQiPnBsh1F0KfMezOrEObvfiTqh48d8ApNS
         yqk55q/fk0ro4FBD9wqUr5ffffBIplKXn5lstXsYSLSNbSJ5xiLTxcCIj/QbB7A4Swvy
         j+Fn/y/62Bly5kauBS0DXhyzQUIdEKaYro2TJLtN9BZynYWfSJ6iL9SkyRLPTkLttQbP
         OZYJe9E0IO7FB2deYpePwiJaDxSqfyTypYLq/2yGD/rRMpjTtvQfUSaLzUueiUKR/YWW
         dTDQ==
X-Gm-Message-State: AOAM531s7/elbhQoAa7aAE5ikecSD+MKj9H2hGr5PujQvW9TNqlhwC48
	N3lUa5A8LBBMbaQZ2GVnMZse/tglSPujflhmZkHasZoX
X-Google-Smtp-Source: ABdhPJxYU4uxnPX+SgQFfmPD9d/zKVrVrJmtdUvHOzZMWxeh+vRM/ZsljnypQQV80Dc+y/9I6J3ca7pRmKaHR8mMTxE=
X-Received: by 2002:a0c:ea4a:: with SMTP id u10mr35489614qvp.225.1593091377265;
 Thu, 25 Jun 2020 06:22:57 -0700 (PDT)
MIME-Version: 1.0
From: Rahul Bothra <rrbothra@gmail.com>
Date: Thu, 25 Jun 2020 18:52:46 +0530
Message-ID: <CADhofF8ExwW+kYPDTX1W4ZZz_6gs3zEvzu_7oe1WrkP3-+fpiQ@mail.gmail.com>
Subject: bits 10 to 15 in OGM packets
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593091379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=ravToqLMphDJeQayg1WGMbrPp4ImjCVG9fAs8e2RHI4=;
	b=MOvMs0RUaQjgrRgiwuBLSQiF3EaleijhcYoAsR+hOouqF3oP5j49jZKJecCJTXYQ8oU7R7
	GSpKsdH9UkDtKp8ZrDXetS+L8T3GcekoryFxhyLk8luElNPK8eK3oW1jalrxh/3I4+m029
	rT6w9WDJDryCGTcxjDShQvJ9jNXwGnQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593091379; a=rsa-sha256;
	cv=none;
	b=GXVSjs220sfF07S63x+ZHBagl3VJPYo4Rpah8ruOOdUPFIDO4Pjwu9czxCAWMKSqbYkMll
	OASo1g5ifgdn6ZNhz1MSL6ZRUK6+otiYO6i6+UNyn68m3XkiMY+sXU6ctmFZ0cRP/pr9VC
	d0WWcNOwkA/lDEuhv3fVgq5Ih4wzLiU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=lBI58FRd;
	spf=pass (diktynna.open-mesh.org: domain of rrbothra@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=rrbothra@gmail.com
Message-ID-Hash: XS2246RLINNZJY3A2GAIKYNDP6FIEKFK
X-Message-ID-Hash: XS2246RLINNZJY3A2GAIKYNDP6FIEKFK
X-MailFrom: rrbothra@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Tom Henderson <tomh@tomh.org>, tahiliani.nitk@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XS2246RLINNZJY3A2GAIKYNDP6FIEKFK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I was going through the Internet Draft for B.A.T.M.A.N, and wanted to
confirm if the bits 10 to 15 in the OGM packet are supposed to be all
zeroes always?

Thanks

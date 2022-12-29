Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5462E659170
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 29 Dec 2022 21:16:08 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C353847E0;
	Thu, 29 Dec 2022 21:16:07 +0100 (CET)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BEA7080223
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 29 Dec 2022 21:16:05 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1672344965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=jhh4r+LIyjCmusrC7jZstfnn4i/KaxZHnYYuL4dqLa8=;
	b=P/H+ofolDO+DLKNGyENZ2XPZpKQclmkTlt+b2w5Z8NYZg+Ip0cU1mzu+jONDMXFk/u1gkZ
	lY0cUi3ytwvnJ7jHZo3QB2Q/GYugppIIPteHSS7uouyd2xECaWiLs0+g9H0mOLr/40w6V0
	NczEOp1kJdvEa0mRxujiic1ch4EWxNU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ptEdO0ZL;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of dandenson@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=dandenson@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1672344965; a=rsa-sha256;
	cv=none;
	b=lKQbcnMsCXiSuOL6UZs/TUHvwAvwYEEqwTKr9XLzTei73/0t9XXNLe+z5+fo/+mFOraxPK
	1VwY12XpmEr0vX8Fd0GDWWLk8eHNmldcMUGeNFStleaqQNXdcQS6uzhbTkdOPo9GyzAqph
	dLX1JGRR0Dh+7tm8YiL6eqNG3E/tK6k=
Received: by mail-yb1-xb2e.google.com with SMTP id e141so21691267ybh.3
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 29 Dec 2022 12:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jhh4r+LIyjCmusrC7jZstfnn4i/KaxZHnYYuL4dqLa8=;
        b=ptEdO0ZL3FJeg5HZ2ZQ6IMh8W40cCMwU6z0oKxRPZ4pU6R91w1yStDQRSHFmP3VWy7
         4Vh7Gg5cYJi7gGfXqFIoGgjNrEsTP/nC68Y9iRgHw364/XdIjeiyCfbVILmuO2xbyRAB
         6GHRPsM89FQfWz6L4pthKtbODgAWU+rZN2I/HT6eNX98VQovwtRB3vrxncvkbq2MjACd
         I41nAc0nGEdUoiDBeQsk3OJCtoXkFCCErjFoUjNP5FBghYRDQ3f/ihmFxLljindBpknO
         CAC65xUUxke3lbd/KNC6L4tOa+/lHFPdg7n93nwiRnf8moaf3JwrBdWYHIOZBeP+cCpZ
         vbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jhh4r+LIyjCmusrC7jZstfnn4i/KaxZHnYYuL4dqLa8=;
        b=x0S6AHrfanYkX/mKS0LFJ05z4c6zL4YDKnIPkGsvDzJ6/sAMfb1O1hatoJJzpZmzTS
         5fdQZVB7k0i8hZXZgxxDmmSiCZSsmgs8JVtWgh+cjzxmHxDB+/D0cM22Ko5qcG/hFJyy
         9uueWjYztHN80XhnVRXi3t/cB7tRR0QqyqUZwQ6ypX7Rga0I8JqWQTmqQmc1iwRIz3/Y
         6qAl6S5D4RzvYMxJ6hrOiURWEUV9MMoNK+lYW0I4orMULk6VGCxrS6v0EZMXlOcFODyj
         N4XBuODwddcS03FXZLyXut3K/uwNbPcmN2habfYeokHXb3FMj5BzaAvNs5ReIZcCT7PH
         spXA==
X-Gm-Message-State: AFqh2koW9ZB8eI2T30+pFOzU3mDLVr0BwpD8XRlG3XF8Z9TrnBBSF5Nw
	3AWXltKTtW0ugRDuBe2pHN6o95aprrJfQs1DRNdsSSKiNwE=
X-Google-Smtp-Source: AMrXdXsOJ3TYb32KikGYiyMWLBoGKw9KlR7d3SnZQDW0z+YS0p7b9KK+uqnZDRXh4UZP0yGg5HtSU5ttvkOnRJS5Vaw=
X-Received: by 2002:a25:d311:0:b0:6fa:40a8:5952 with SMTP id
 e17-20020a25d311000000b006fa40a85952mr3146803ybf.594.1672344964058; Thu, 29
 Dec 2022 12:16:04 -0800 (PST)
MIME-Version: 1.0
From: dan <dandenson@gmail.com>
Date: Thu, 29 Dec 2022 13:15:53 -0700
Message-ID: <CAA_JP8ULjMoUymX6M-Guz7Z0AcXZd8TOm3R_E8K-LTyiaNEOgA@mail.gmail.com>
Subject: using alfred (or other means) to collect link data
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Message-ID-Hash: ECEZQGEKBELEUOJWME3PBCYF35NEUPDH
X-Message-ID-Hash: ECEZQGEKBELEUOJWME3PBCYF35NEUPDH
X-MailFrom: dandenson@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ECEZQGEKBELEUOJWME3PBCYF35NEUPDH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I'm looking for a way to collect link data between nodes.  My
google-fu has failed me on how to get node-to-node data like latency
or throughput etc.  Is there any model built in to batman-adv/alfred
to poll this data?  I only really finding the batvis data which is
just returning metric.

I'm mostly wanting to see how traffic is flowing, where links are
being more heavily used especially if those are not shortest paths
(suggests I have something to fix) and to keep track of a sort of high
water mark to metric ratio.  ie, this link has done 260Mbps with the
link metric <=1.2 in the last 48 hours and it's currently doing
105Mbps at 1.08 metric.

my current plan is to run scripts to find 1 hop neighbors and either
so an arp-scan or find IP and ping directly on a schedule and store
that in alfred or just push it up to my database but this is a little
brute-forcy considering batman-adv is doing some of this work to
create the route metric in the first place.

Any advice appreciated.  Thanks.

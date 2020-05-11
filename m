Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B012D1CD074
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 11 May 2020 05:33:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 73FC3805AC;
	Mon, 11 May 2020 05:33:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1589168031;
 b=v7zYxfBykdHlMpVo3mxbRlxZE1Zo9Gj4At7/okHln7I3HxgOYxlueL/lBFxge/aspGDAu
 bfYk01UZgl9B0FjsHWMXG3BR4EIATAqjQQdEXWekZYwG027OUwIpZ/CfmeFzsyrmttX64A0
 2j/F9CH+0p+mZrZt6v5dk2g5hE/KzHM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1589168031; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uv2fnV/21ksNmjJGh83c5MZeEOrMiSVZgcbon+P8OIQ=;
 b=1NC95R2xHcrnP0enh/JxyLtmVd05R/xrRI/iLbUsVYUI09ALnuor4BwRfqxWYDYdpaLup
 2VlRRRRuLTVKGGx5cH2QXKRbMWiYy8RjQqjUQdyQ/MJdNffwfjBEsrkz8VsGb48G2pE31sc
 SznqjCjzUQn6RXp4BheXefqIGOXnPXY=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=pass header.d=gmail.com;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=gmail.com; arc=pass; dmarc=pass (Used From Domain Record) header.from=gmail.com policy.dmarc=none
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A508380371
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 11 May 2020 05:33:50 +0200 (CEST)
Received: by mail-wm1-x330.google.com with SMTP id m24so6851175wml.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 10 May 2020 20:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=uv2fnV/21ksNmjJGh83c5MZeEOrMiSVZgcbon+P8OIQ=;
        b=CFpKfmgy9OV32HYEikrBaItNv6Wg0134/2ZuWSWj96K9LYVyzR4e/O1nrBvXVI6tG1
         Gl2D4arHtmhNWmJL5MUbSFTSeoztQ4FG/hGCzDRhiOPQ8/klEVDefVv9Vw/vGQQQIUrP
         kiVfihzvJYFYsIzOjTL9b/tV3bt+8Z24GF5Ppj8wFTMQoTHq8HUwtv7lQySq2JTXtEko
         uLv50tR/bHSP3F3W5EHr2Dld2upaLhhN+7dJDqlozXummenMdiaj0lEL3tP1qISFZWSK
         S9g2+9WynPS0bl6bIxUnY/hgW5+5YZIGIx0Jpvpz06CNd6WFwzut+rdYMa8GCBKzL4H5
         d+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uv2fnV/21ksNmjJGh83c5MZeEOrMiSVZgcbon+P8OIQ=;
        b=Lpi9s2B9o4tLfyJoSNAQMWKJcbfNJS9P7ikBAtyug2bAtJmSWvTQNsHATzIaL/mfvP
         5JMwdBMcEBLUv2f/If8saeCVafRa9belVGXHyOo7jqtulcTbMMZpDUO6U3ydhGxf5uiS
         IINW4MxytIQa3+7tHLUsjRovtS5BXFvydZS6mFw9OoY/B507QbzRMjcY3+oIQVc39c74
         gwGMhAKVUtUv0pOTd+aoH9IcArwvPBoIH1MB/mZuXcqrFUPKiaSfoGhZQbDAlWwZv0uP
         htZx7BAQrk99sLjqHyCiki2pIfW8L75AN8UwrNwlYdPfQVtAoGK877SNjCRgOFMFWB38
         dJkA==
X-Gm-Message-State: AGi0Pub6jqLgv1aG4MUD9LD4dRutiL4cQWwlJfSUKvxi/UJr1GCU2YM4
	zNu+WA49OLihe2+9dFeW/ePay5jpedcxQPoqa6uXm+wh/47FnQ==
X-Google-Smtp-Source: APiQypI9s/IH3a96I3BMH0LGREwCIqnl1v5lp0se4zibJF34Dbi/cysYLbJ1b6IQRUJ/+x0w0Rbg4gljt+GBTDrcSwk=
X-Received: by 2002:a05:600c:14d4:: with SMTP id i20mr30306028wmh.118.1589168030356;
 Sun, 10 May 2020 20:33:50 -0700 (PDT)
MIME-Version: 1.0
From: Xuebing Wang <xbing6@gmail.com>
Date: Mon, 11 May 2020 11:33:39 +0800
Message-ID: <CAG5qQ7j1FzdwTqcAPcG=tBp5YTFm4UiOgVdSuk0qL5-pT6KB+A@mail.gmail.com>
Subject: QoS over batman-adv
To: Simon Wunderlich <sw@simonwunderlich.de>,
	The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589168030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=uv2fnV/21ksNmjJGh83c5MZeEOrMiSVZgcbon+P8OIQ=;
	b=cw1TuPx5WvKlp8892UNz4/kXJMq2rXFS/E5bbIkm2IZTD68rbQelMzae0Wr06wqfoIx/su
	OKr7LyE638Q6wg4Gp09AdlwgN49fYqtfroA7/av+7SIW5Ijij1Hi3Lx8RNTjDtbDieBWho
	XeDH4ca6UnWblHwc6pvlQckwrrF1214=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589168030; a=rsa-sha256;
	cv=none;
	b=DoJC9VHM8DUkvl43BZb5xkA4Ad580fPSmzgQyBMWACrrwIWiodPU2VXtlQ+YZjgIbR9Amm
	Jgj/0+JKQySoGVQ6uDTwRzIrLBNWC0kHmjVyG3XCtB7B7gM8+EVgZJar9Hbvd9YL4fCUA4
	GGS0sLFsCbN5jkmVhhjZ8Elo7Y0jLVk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=CFpKfmgy;
	spf=pass (diktynna.open-mesh.org: domain of xbing6@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=xbing6@gmail.com
Message-ID-Hash: DCYIIAUDIWO477TRVIITGIF6YWPXY2AB
X-Message-ID-Hash: DCYIIAUDIWO477TRVIITGIF6YWPXY2AB
X-MailFrom: xbing6@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DCYIIAUDIWO477TRVIITGIF6YWPXY2AB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Simon and community,

We have been using batman-adv on OpenWRT 15.05 + ath9k chips for over
3 years and it works great.

We are exploring the idea of QoS over batman-adv to transmit small
quantity of high priority data. Any suggestions? Thanks.

Xuebing Wang

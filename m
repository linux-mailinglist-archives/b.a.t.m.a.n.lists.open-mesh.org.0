Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CB2160548
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Feb 2020 19:20:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EC53480890;
	Sun, 16 Feb 2020 19:20:53 +0100 (CET)
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 1669480099
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 19:20:51 +0100 (CET)
Received: by mail-qt1-x844.google.com with SMTP id v25so10571979qto.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Feb 2020 10:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2GwTjPSP8ty1zU+vYGA0R1kvw+Rq1dPw0taVso46Z9Y=;
 b=pSA7GxljnfcuBISiIDX1CrgQa5+JeY4T957G+XmhjYgB4xb4iqbgrmrx5cGFvVquTJ
 aPgwLOtxNWKPtnZnN5H9/Rz+4txEKXMyMwzj/417oDR7SI++nwbQrAcG+7DSjhDZMjpU
 yqrZEd6BMkxKEx1TlEZi3OzPErixdfkZHwP3sHn96r7PHS8YxLct+cX5cQvxuFj5xPZ9
 5J0RDhOoablyEmHrOjvv35EqQdh7mGCq+AapL470eRN1N8meRdeFaUe6ym7iRx/62yCP
 5Q7/rAx1r4Em7p75qYOe1J7vWYdAKSzuIPmh9OopLs0mt1kwfpXJzbr49DZ0DjENoJFV
 4ePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2GwTjPSP8ty1zU+vYGA0R1kvw+Rq1dPw0taVso46Z9Y=;
 b=E1VhIhklx/g3hsdApxlbbxZJ+/L9KSxguhlBDGRfarcr6BQGNgKl5Bd9YdS85ISO1o
 KPLzxL/rgCb+w5evUIb5AFiMfwuhB9jxWAt6dnrtsFcw2ENK73ALt8uxiptefZmNFdps
 2ggjsEHDhoUnN824xlZd/ZMlMnXkEVPt3HRoUieb76y4uR8ZnWWCF0yCgzsRr1QxZqap
 zHxE6Tc7RDN3J5Ri51V+u+gbXKWAXaHtGFiJ2PjCifE3wClIi5B6TWhjigS3vKvHkIyv
 RmtQvVDkkOOkYRcguh/Ixzz5QxmapA0iIC/Yw7ad030K7qK+MpjIMSa+1uIT7jbQ+xBJ
 MoaQ==
X-Gm-Message-State: APjAAAV2fnzO5MBwd25cy/eqqCKn5dO5g8aOZplvfRIM3m9Vm82q5GSB
 xSGBM6y0AmSAE4qqhI1YWmfprHzhtiqSMhl7we+8MoeB
X-Google-Smtp-Source: APXvYqxZpxoxEcJMxHC80Lj7IvM19ysFv9+Nf+/5EPPi4Y9r99PYx6soUF6YUDX0omfi34ehgl9NO7SO4MPW0xlVcMo=
X-Received: by 2002:aed:2bc2:: with SMTP id e60mr10625881qtd.115.1581877249700; 
 Sun, 16 Feb 2020 10:20:49 -0800 (PST)
MIME-Version: 1.0
From: Emilie Meyer <emiliemeyer1016@gmail.com>
Date: Sun, 16 Feb 2020 10:20:41 -0800
Message-ID: <CAFF9uhp7M94yAPhWnpUkBwLzQa8rgxMGdBYU2CNQ203QtJZs9g@mail.gmail.com>
Subject: Issue with bridging LAN and mesh network
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581877251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=2GwTjPSP8ty1zU+vYGA0R1kvw+Rq1dPw0taVso46Z9Y=;
 b=copNS0WAuksrV9PFi8hDa2U9DpP6DnpUHKXz4D4iCag6+d5VMuOIZhsZRA8lQJH22WvRMm
 8FmSpO86M1D029B1f0cgGGaSp13K7eTlPdE4UWaGORQ1XHFlfOIcDqcvorrPzzxzQABaUh
 s1NhFU7kY0WVtS+cUmQseGxPy+Yqtms=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581877251; a=rsa-sha256; cv=none;
 b=kJweZje4XX+2DE/hipgRIsXm8S/GKgOO9+z1Y6fk5v7YmSMHyFvIkemESN092YQdkMbs8O
 QzjiCwq84yJkHt/csBBllwhO/4mZ8GzX2GfPAt+nV0ppUm1vfNlodaxdfOu7P+9WLosyHi
 6wFr1ImzhBpUNLqlfLHhpVMyNfLoAKY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=pSA7Gxlj;
 spf=pass (diktynna.open-mesh.org: domain of emiliemeyer1016@gmail.com
 designates 2607:f8b0:4864:20::844 as permitted sender)
 smtp.mailfrom=emiliemeyer1016@gmail.com
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi all

I have tried to set up a mesh network according to the following tutorial:

https://www.open-mesh.org/projects/batman-adv/wiki/Quick-start-guide

Everything goes well until the steps for creating a bridge between
eth0 and bat0.
When running the command as shown below, it fails.

root@OpenWrt:~# ip link set eth0 master mesh-bridge
ip: either "dev" is duplicate, or "master" is garbage

I suspect that the ip version (BusyBox v1.28.4) I got does not support bridging?
Sincerely hope that someone can please guide me to solve this issue.

This is my HW/SW:
HW: TP-Link TL-WR841N and Ubiquiti M2 Bullet
OpenWrt 18.06.4, r7808-ef686b7292

As you see I have not the newest HW so that's the reason why I have
initially tried to use OpenWrt version 18.06.4 and not the newest
version.
Anyone that have experience with Batman on these wifi devices, please share.

Many thanks in advance for your help.

-- 
Regards

Emilie

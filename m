Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC01172230
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Feb 2020 16:25:17 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E43B68067B;
	Thu, 27 Feb 2020 16:25:16 +0100 (CET)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 0D9EC800EC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Feb 2020 16:14:01 +0100 (CET)
Received: by mail-wm1-x332.google.com with SMTP id t23so4010899wmi.1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Feb 2020 07:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tivhq+y5CVW+PBD1BTXe8Dk35F95Crr5VDp5Yugzmq8=;
 b=oZ01RYgaSoemVrmwBLmern3/GAi7WJ2Yk9Zc+wBjU/7qitdUPKeXj1e0xZp7is2xnk
 TtvVqH6vp/xHbMISUcExJPyL6Xed48hvOoWQkGqGl6oZVG6csfOH04k1cOH4Ni/QiCS6
 F5saI7PAXwvmOGaaH9nB98iJyD4rXOObG8ghuyMthRPR+9zCFjGKldm8o+g0ZC57ivDk
 9SqPHeretCw3zXWyhgCQxbkCy5/G8WOtRlo3GhSFN9/g3x6CY66qko3cVNvMksG1jnDw
 1atBfwGlzH7TkIaQJiTGDxrJtiLyJRoMldtvbHBezPKArKnYHAsteB4iImMw+L9md0fk
 A0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tivhq+y5CVW+PBD1BTXe8Dk35F95Crr5VDp5Yugzmq8=;
 b=BHNm+izS6CdcH9fHizYkM1Ao4MFHvXBARQ5cuhGNMxYjRSo3u6pfpMwUGC8bGUKmgv
 ocXiXWsUalwJT6mcYvcghNTrddnN/qSsPgaxlonsvN0nVbsAzL5g2lKO0HsjEIPW22I4
 ICu5oQcNL/QWif9sToM808muste3G5hn+1lYi6iwfdeV9KN+ve5YTIihvRGSLpwbD6k8
 a0r4kd/LZ4YUVKkgZc3Fz3vLYh2gFCf4WmefFstqNiiV+UVi0dzuuwVmzFnoiXHrJrk+
 5ingZU5DAmyYBycDNRGTea4OvFz9WcKnLvL3vF3rsr8LcuJOkBPOvzOn6v+1BpwX/yLu
 cNDg==
X-Gm-Message-State: APjAAAUl2ch7sQO4FjUE00tQ4drDksBlztLQ0xR//3ej2xLJVVcSx6hL
 QcuXAPHR4/mfjjV3vd+a3f1ll2qiilMkNo2hYlvmgFTqVg==
X-Google-Smtp-Source: APXvYqw7ol1tzedsUok3grWJKMIrQr9CYSsdzqrLwjBkX2SsqqqLLx+WThruRDP4VjgjfGHDVjYgctQtSJnAuUSpfHc=
X-Received: by 2002:a05:600c:21c6:: with SMTP id
 x6mr5611726wmj.17.1582816440327; 
 Thu, 27 Feb 2020 07:14:00 -0800 (PST)
MIME-Version: 1.0
From: Zach Barnett <zacharyc.barnett@gmail.com>
Date: Thu, 27 Feb 2020 10:13:48 -0500
Message-ID: <CANdV1hR-=nwrXkZTAh7C9LjW7MRbxEPeCpV4V7odiUV2dk0QcA@mail.gmail.com>
Subject: Node AP's
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582816441;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=tivhq+y5CVW+PBD1BTXe8Dk35F95Crr5VDp5Yugzmq8=;
 b=NEA8OztWV5WMoGI8f47R9nX9jHEK5Qg4y7LgwvXF6qZBYGocSkDjXdpsUD96RgDsXZ+bw5
 bOI8GVNUy59uzWLAbCGeEMfs6e0KGLBvbEg9txApv9MW1w483tlonCIW1OtDeRssX0m8ZX
 vqAyIUnhzQqVcTnAHXdwZSWE5KFqF+I=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582816441; a=rsa-sha256; cv=none;
 b=2h16xZBHLU9nebZCpQx7h+81pXYwNXtMl/mftB1Nao2oRs5W2G+7j4LzY2+bWVmNKwhQTI
 PyD2Cgak9fjNtBNmGpJ7suDrqVy6g7NSCt2/Pnbu18lMUEE8v4WWAXCnF82gvHPLd/I/bJ
 Xoq4i4lM3KtVR9JD9+FCVO6heM+j/Ys=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=oZ01RYga;
 spf=pass (diktynna.open-mesh.org: domain of zacharycbarnett@gmail.com
 designates 2a00:1450:4864:20::332 as permitted sender)
 smtp.mailfrom=zacharycbarnett@gmail.com
X-Mailman-Approved-At: Thu, 27 Feb 2020 16:25:14 +0100
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

I looking for clarification about the following question

How can I connect non-mesh clients to my batman-adv network ?
Does this mean that for an existing batman node to allow non-mesh
clients to join (I.E. cell phone, wifi camera, etc..), then 2
interfaces are required?

For example, if I have a pi-zero W in a wooded area, and I want a
camera to connect to it, then do I need to add an additional usb
network adapter to the Pi.  One Interface for the Bat0 Mesh and One
interface an an entry point for non-mesh clients.


any information is greatly appreciated.

Thanks
Zach

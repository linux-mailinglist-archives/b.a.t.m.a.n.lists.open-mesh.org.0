Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DA33D15840
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 05:58:06 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1DA0881F4B;
	Tue,  7 May 2019 05:58:03 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 03AAA80757
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 05:58:00 +0200 (CEST)
From: T_X <tux@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557200909; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=9446z3sD7FPxMGvgW8D2Niz+rniqOp0CJEFy13hi05s=; 
 b=WI6wGC+bqqnifuRn0XUyj9vcpFNLDwoJ9BQNsNVROgjyovsbCasIHH2F9GeeTrLSka+1Ew
 I5H1xSpL1F0SQPmpRR5TdfvhPmYIORz37SmBHaFVLFGP4ogkXv+UUIogCR5NnfNqOefaAV
 b0oIy4d/EOo90qty41QjrNwy5KyYhwkSeGlFWiiVZCK2u8e1S4aR5Lv5Smjgi8EeB18gIx
 BI6QI7aZBRBOhLbpqeLxZ0YeW+5Xl/v1BmFUqRIpexDRWBtpXD2/4MuMpS5pYDvtSIW5hW
 MbCHMAAapOTv7J5AltikqknT4ZwLz2yzoMvxLlY3vIsGSfxIVxtFo8eoRSs8uA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 0/3] batman-adv: routeable multicast preparations
Date: Tue,  7 May 2019 05:48:21 +0200
Message-Id: <20190507034824.3362-1-tux@c0d3.blue>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557200909; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=9446z3sD7FPxMGvgW8D2Niz+rniqOp0CJEFy13hi05s=;
 b=Gg/+tLafQK+rgMRUGzIuqEfnBLDcA2mfINmq0+05ZBxBRUZs8m//GpkQBF6w0JeTRxnwGT
 P3ghiJOFZ2wG932/8QRnWFEq5yOccN4biO4ZopGz0TQtRgXQ9TG66pWWCtK/2girsHkTyb
 DG0lTVDuOKS7F1mE8+fO20C0mV9Q17MSnmAw/TxxNkcE/1Mf4hakBfcuGCAQxtsJFbQrDq
 GmQz9HBxfuSZE7G0rgN+8FELo6y3zQdqEW4Cf9oYnY1dLOWsloL6OX8y2821L9dFGcsw/E
 aFo77368xCzALlpuTIBnCW2pint8H4WudMgNrJAuYK3PypAwHzEc/FC3JIsDbg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557200909; a=rsa-sha256; cv=none;
 b=RgHRWMVZc/uS6wEq5adoJsY1AeyjfEjTtbL4Uwt6uljfGAvCaVPJAvO3SWBALnYuVhMLU9
 NvvRvr4atWpv+Xbe/lxHdCS5wTc68EcDxz5VBC+oVTdhZTpHSEy7iykleWwUyD4DEaF6/Q
 hPg1UFYgYPwhHTP6+Xfy3qaeFlmV6GWRKLvX2ORfJkTsTB82kznDWzzXDS425hC+nc8eoG
 tJWRst4l4Q9lfmITlv4pMvoCEqfuKQ+H5fsfij2yad3625MlDmk0BNmTv+3ZsKFnhYoCjy
 H2h5uhc01hcAlw4lePBPrbrfWewp7dUbQv12YvpcRgqrxapi0XUCWRRg4+SO8w==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

This patchset provides some code restructuring in preparation for the
support of routeable multicast addresses.

The first one adds a slightly cleaner separation of fetching and
updating. And by that allows shortening the newly introduced spin-lock.

The second one swaps the kernel MAC multicast list with the equivalent
IPv4 and IPv6 ones: This allows an easier filtering later.

Finally patch 3 is a first application of such filtering and allows
omitting some redundant address additions to the TT. Later, the same
will be necessary for routeable multicast addresses.

---

Changelog v2: 

* rebased to master
* removed already applied patch
  ("batman-adv: mcast: fix multicast tt/tvlv worker locking")
* split patchset in two with the intention to ease reviewing
  (no code changes, just omitted the last two patches)

* kerneldoc: alignment for batadv_mcast_mla_flags_update()
  [PATCH 2/6] / [PATCH v2 1/3]
* fixed compile issues due to a duplicated member in struct batadv_priv_mcast
  [PATCH 2/6] / [PATCH v2 1/3]
* kerneldoc: added missing @flags for batadv_mcast_mla_flags_update()
  [PATCH 2/6] / [PATCH v2 1/3]
* kerneldoc: @flags -> @tvlv_flags in struct batadv_mcast_mla_flags
  [PATCH 2/6] / [PATCH v2 1/3]



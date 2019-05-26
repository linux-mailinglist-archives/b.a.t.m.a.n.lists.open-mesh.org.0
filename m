Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 0796E2AB3E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 26 May 2019 18:36:33 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 58CB5810DA;
	Sun, 26 May 2019 18:36:26 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id F210E80343
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 26 May 2019 18:36:22 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1558888582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=wo+f9vx3FzGLCLfT7q0I4j2yznn5Ke+WfRJzPztN6jk=;
 b=GAkR8q/CYrhc6JPl7G3bPXeYapYivlv2WhqddoqWlDTYuCvlCPqLNRv7WgAUBvlZs5Dpvc
 A0EbbQtz4QVQVKBJ2md8iRrk19Ox1PmL/E+xA3oRskArkplUtBTrIa7yygTBGBHlYuT7IQ
 g7DnjLmhw8awlV+xyMAZATnwsntilRrZGPkJ0+ZKKgqpfQXEO9JlQJdlgAGSWlK8/4fLl0
 6MErLbBcZfwNdashqf7QlWY5b/bzNZ78MC4KTigQM19Sxo4IMzqxesMDEmpMnihBxY/+n9
 itPnlod5RTYDcw3YMPJODQrjEZpkHUpYqo2HUmlTIu79Sn5xIiBf9+dnxomxZg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v4 0/2] batman-adv: routeable multicast preparations
Date: Sun, 26 May 2019 18:35:48 +0200
Message-Id: <20190526163550.4073-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1558888582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=wo+f9vx3FzGLCLfT7q0I4j2yznn5Ke+WfRJzPztN6jk=;
 b=rwT6QvZZTuuHaRGA2v8RrKcpkAIJky0GdzH+zcsUe6d+/uAIqXVPrAiWYu/fi3az+qDY8r
 rB0KYbEhXaAUd0QG1kF1QBqtmRLbq+jJtc5vm2TymAwxLC6ZwInn/weewkW7gjCSDvSrHX
 OR2787O7fY6qYJ1hLjnmZbzm3qVET5gU/6HHRrVA0DMLajTHhItiYvpdYHM/ECnQoVeynH
 vxV8AWKA5u6CDhqkRERNvNVHKECrD9JTBsm8meOdn2kFTSiINSOmR566InMi5GLbtE8Mub
 W1j8JOytWGtuZLPSK0Q/lcemzCU00pcbTX2za3iiqtBeKOErKqrF2m0gdOumAA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1558888582; a=rsa-sha256; cv=none;
 b=jK+GMkS++D9Vv6WpaT64PIVtj9oCltcHp9u7UZ/jswB01+l3jMc0QZvIjNdzTJKtN6N9PX
 wPWKzkULW22lN1bVFzeoMX8TMjvsN6rJ1cRTp831XgB6S26Sj3AGUb8v6NFXeatuRoD7H7
 VayOXbtTnP0AxMOh3QckLxQt4dYVlOFvGcp0WqMPYorSk9eGebBQ1yRFOrZzsdLe/FIAQV
 GloQz6qjpKcd0UVruMyFIuT5qiQpdMu7vLetjEcyMKS04RRHLl/5dpSeY65Svu8vIKUba6
 SuFT4eYPOqBHUYbJDaMaPO6O4s5I5uRLbNhbHJIUDiJotoeb7UFpb+NuvdjlBw==
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

The first one swaps the kernel MAC multicast list with the equivalent
IPv4 and IPv6 ones: This allows an easier filtering later.

Patch 2 is a first application of such filtering and allows
omitting some redundant address additions to the TT. Later, the same
will be necessary for routeable multicast addresses.

---

Changelog v4:

* rebased to master:
  -> removed [PATCH v3 1/3] (now applied)
* fixed build issues with CONFIG_IPV6 disabled

Changelog v3:

* fixed "From:" address in mail header

Changelog v2:

* rebased to master
* removed already applied patch
  ("batman-adv: mcast: fix multicast tt/tvlv worker locking")
* split patchset in two with the intention to ease reviewing
  (no code changes, just omitted the last two patches)

* kerneldoc: alignment for batadv_mcast_mla_flags_update()
  [PATCH 2/6] / [PATCH v2 1/3]
* fixed compile issues due to a duplicated member in struct
* batadv_priv_mcast
  [PATCH 2/6] / [PATCH v2 1/3]
* kerneldoc: added missing @flags for batadv_mcast_mla_flags_update()
  [PATCH 2/6] / [PATCH v2 1/3]
* kerneldoc: @flags -> @tvlv_flags in struct batadv_mcast_mla_flags
  [PATCH 2/6] / [PATCH v2 1/3]



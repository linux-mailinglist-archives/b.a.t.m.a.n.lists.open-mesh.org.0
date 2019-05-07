Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B874115843
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 06:08:39 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0739981F53;
	Tue,  7 May 2019 06:08:34 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id DB43680529
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 06:08:31 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1557202111; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt; bh=puoglqIvb6yKaKzF4cUpMMXmKXOsapFgoEPWKs3l6QE=; 
 b=ESe8OmFClzHTlj0TCh5T+DPVx9YhF+WC/XuRmpoGlX3jrGHD6oFtAAvOi5tStVmiMfLPv1
 DrcvHv2o54lfkFbZXtTxEicp8k8W/E6AL7DMGHUPJEB8OxNelbAxJ++BVf729mpFfLld9z
 BkXm6aH5ZlRvr2b5xBOn2f7HJLMIAoxlZnxCxfmPQjls+Go3omL2htURq/xN2U3f+msc++
 zuaAaNN+VQ5LTy6zNKis6Yc5Po5u3gplm/nzXJLr18S3LESp4sB1McOupcxWbYkNprmUrp
 V/FLMNlYkjIfjleXCp7SD+yN0m/gVGKv37u34Merd0vvLX5IImhKsVihfJiJJA==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v3 0/3] batman-adv: routeable multicast preparations
Date: Tue,  7 May 2019 06:08:25 +0200
Message-Id: <20190507040828.3927-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1557202111; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references:openpgp:autocrypt;
 bh=puoglqIvb6yKaKzF4cUpMMXmKXOsapFgoEPWKs3l6QE=;
 b=uPGB7Jjgd6lqhLuMcWeR6hohDcHjcA+rrvMcHqSFOTIcxr9ssxzeQ81WzT+DOaq4OB1ju8
 gmnJYSgCDSrb0uzJYH2vKBeonfdVhmpEDx+LobxpeXx0QJNH/dyoPAfXbH3Xu63qAeSj0Q
 PdySN5Iq1W50XtcimN7epPaWm0n7F8mD8GaONW69QwnbXazqj0GQ4+t1qfEFaD9632j2ae
 TphDm9H59yclsad7oFQHNNLBOBtE4iVFZYYcuYLGqs8DolDvMY7o6eZOwbTcrSPTvzQSGX
 vZhI/62xYuf9FMaz3ONqteBkvFgDW1M/p1Tg+7IE0R0cVciYYXWf0m68OLKMxw==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1557202111; a=rsa-sha256; cv=none;
 b=YK/p5a32PTIYEEbhb1MXiWjB5N4ui2pMO4WswzLY9Ku2ZpYyfRLMRs4gJqihhGSM4bOJIW
 QUgWdJWtC9a52iVU8LxAYCLPhgXA4yRVgxlYAeTNNgp5YPs6vrsuWdLNHwmT0pdPTQlivB
 qNEGc5aSt+1qnmwoP2RNOme/168/iSeu0GZ95RkHy4I2MUr3DxKhzSk8qZ5f88Pq+aTG4q
 BTI3ZiE3MMJjNd+ettthzUYdXZPiRXgxORE8UUcUIyXGLnw3gbBnRlION/XaKXq+8F+x5U
 u2vErHWoK5rBCIByrO3ozGHTx0JfO805tHayzzpvO9etTnixxvPfKiYDi44P4w==
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


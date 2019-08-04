Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E644E80BF3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:06:52 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0785A82679;
	Sun,  4 Aug 2019 20:06:43 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id A042981558
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:06:36 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564941996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0Yxrnk+nMJQNZyeV9oKVZq1Lpe7+iuEfwIgXUGmKyeM=;
 b=vbkpMUd6//GEd9fTbjgiCb3S98iBodSEq5F/6hfqOOMk8+f7Ta/xZNK+25CiWvO9n+xAjz
 nw0V+ymCIL/8ozV4dofWEZ+Ne2u3Qc7b21yFfFXM4LN+14Yjc0WyPN7bC1mucWCoc9QDr7
 UGOqJQlZ6vZ+l9ofv+6nu1s2ye6BShpRNFPjV7UAbuG+t+24RAemBl+V/x/GBx4aaV0Z/b
 dyJrNaeLUTwHXppYYqfx+b78BRQePt63b/iFJoY8ik0o5PEo1ro6TldkMmNtVt20PS1OIY
 UIz/hD4BwAzJYyAmgQv7K2hnZhfkHDQJcr8kGbVqhL8DVX4iGIJctJA/1Xq/rg==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v2 0/2] batman-adv: BATMAN_V: OGMv2 packet aggregation
Date: Sun,  4 Aug 2019 20:06:30 +0200
Message-Id: <20190804180632.489-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564941996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0Yxrnk+nMJQNZyeV9oKVZq1Lpe7+iuEfwIgXUGmKyeM=;
 b=UpJ+XX3VgC5LIZATlP2Bp96CaMcugfyLQWazGDCdd7bunBAJ/cbu9Ord4f2niai6jaBeza
 IYVNb6mXAnggD6zffAKtWuqRBooy52MVnMtSn1yGvZsNHVLv7pcFFGXEHhkh7I6xFjTTdt
 Ktd+Yjf8Srfco3NSukSDKbTkVHx8Ga72+1AmkSmEiE3C6dza05nFBhbCDAMomutUAa8uqR
 htC8fE6iefYiK+xUxFjhzh+5HQEUFrBUJEPV6tJbeXhTpGHisgabMhRDcK5zr5q37jpJaK
 wkqxaMyyHlFtMMCn5r3s/v8osahRqWikO3m1q22JVYLwHsC55OU6QhIDRAnHvA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564941996; a=rsa-sha256; cv=none;
 b=r/FSqpUL4N+yydfHhL4+vd7nn89DiGnC3Vfa1mg+WgV9s2oIA3szQVtoNf9LOS9THiaHOI
 n84eh2PL2KMv+3XPgDXu+kXQCBBc9q6YD32qVpmU4OkXVkEFXpj3H/O/hNEgVQzZDalOpd
 P/Y/utNz3EYTBMkOiE79t09qlCdsq1CZ8i0EhIQgOaPQl6ZpFiEZxBeIyADsKU73JhVTRy
 P5LKqqirozYhiTIZY3/VnWimwLXm3uT11cY1OHbQ1LW5DW0p8R2nySMhqEH5tYebcRsIj+
 2c5bhnzFOIfpVCamKd/d9EpqB9tSNJMSTDY9y0Z3mYs2x86Cr6hEDbxT8MsAEg==
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

Hi,

This small patchset implements the transmission side for the OGMv2
packet aggregation in BATMAN_V. The receiver part was already
implemented and seems to work nicely.

The first patch implements the necessary queueing mechanism, utilizing
skb queues.

The second patch then implements the actual OGMv2 packet aggregation for
the queued packets.


Opportunities for later improvements (left out on purpose, to keep this
patchset simple):

* Reset queue timer on full queue / if flushing in batadv_v_ogm_queue_on_if():
  -> to avoid sending small aggregates in the worker afterwards
* Remove BATADV_MAX_AGGREGATION_BYTES (512 bytes) limitation:
  -> not needed for BATMAN_V, would break compatibility though...
(* Increase BATADV_MAX_AGGREGATION_MS (100ms):
   -> BATMAN_V has less averaging, therefore could use slower OGM intervals
      and therefore slightly larger aggregtion time window)

Regards, Linus


Ref./obsolete: Previous, generic aggregation patchset:
https://patchwork.open-mesh.org/patch/17013/

==

Changelog v2:

* PATCH 1/2:
  * added lockdep_assert_held()
  * fixed aggr_len kerneldoc in types.h
  * fixed alignment in batadv_v_ogm_queue_left()
  * added missing includes in bat_v_ogm.{c,h}
  * fixed @hard_iface kerneldoc for batadv_v_ogm_aggr_list_free()
  * removed unused bat_priv in batadv_v_ogm_aggr_work()
* PATCH 2/2:
  * unchanged



Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id AF67A80943
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 06:29:23 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 7915882002;
	Sun,  4 Aug 2019 06:29:13 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 86A488065C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 06:29:09 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1564892949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sGcPVOdHf1YQNg/8JWJbKJYHZeV/+g92ffg2cSh1HDY=;
 b=i0yfX1Os6IHvGJUWCoNqYRXwz4f1Yqab9kMoZgZDA7ATO6+HzmtqEnUSccwFC7HiRYGig/
 bPCbSsJ79pygcoDxUC2I25kE25NpwSW+20qoTN4aBzlPA5EXgDKdJ4d9eSpq6AHHD74FAV
 ghnkw4bAp3PgsHb7jU3qgTzNj73JJ58ehaAHFG98IuXanAwmk3FwWMM7Z4RLEZT31LsQou
 iWPCFso50oPcBPQfnxoCwaPoBDjwkPkh7k6VDBWIGJhGL8dg/y9tNFJ6o1MAX1siej7Wok
 /dG+1RweB41zFNSdysXuKg5Mx4an/Boi5C1LEd6hxI9jVTA9JIR/xUF7FB6v0w==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 0/2] batman-adv: BATMAN_V: OGMv2 packet aggregation
Date: Sun,  4 Aug 2019 06:28:53 +0200
Message-Id: <20190804042855.29327-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1564892949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sGcPVOdHf1YQNg/8JWJbKJYHZeV/+g92ffg2cSh1HDY=;
 b=b7e/bRzb6Fr4ZVK/B4qD38YUJLQRw5y7EZ1vKhS6kLJaAl0GZML6dtKjpJRILuetc9npit
 uDjsBPqpo/2g+IzREku/tKnbilkHF8etnWVCrh4ctMEQxXH6hZzL0/aMaAafmmFkdo00GP
 qrp/8l0dONSwhvMrlWZ5mxirfRD9Priv2gtCKuSgCgFA/juIlKZDw5tUSBg2GFbW4HCxzL
 rHdmUGcdX57D6QreIi2B//6lJNYNie0SCAst4c2qb5aTncg+FvEaH/Kc6526ddJxjCnve5
 7kclKNnKfjobiVryQUE9BWukkQP5EiW08SWf03ZrCIEcpBMuDaOly0BpGYi6uQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1564892949; a=rsa-sha256; cv=none;
 b=fE2M7cGZsxwJ0Og963aGbZgF3vF/NJ5M0nECIBn6WUSUN/CUJpoPV+wTq0a6SgLhUMOr2q
 mZjDY98qeMwUlslVmOKlWP/AP5JbFUfE0zqZbqQ3BYI6YJba+phXYjpAXODWwvfEWJuHWK
 RBgQSVMyz9ikITGems3jZhNcbDMZclQR+F/GCCEFlzCkExutIirmtAEZMiHzIUB30f7K+q
 618kQmHo/apBPkQ5UY8YnI+qwmRTaG4/70/duLW53a7jZPLFowG9LrBywEhRx6YeovpMBF
 eLK0jjN4rmpzmZbbNWiz4LJUD4onRCiOfT9kEKLcpnSLfmTzk5WWIpjd6mFJEQ==
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




Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A66A3A80E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  9 Jun 2019 18:57:08 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 3347782153;
	Sun,  9 Jun 2019 18:57:03 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id CD7DE80516
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  9 Jun 2019 18:56:59 +0200 (CEST)
Received: from sven-desktop.home.narfation.org (unknown
 [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 279081100D0;
 Sun,  9 Jun 2019 18:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560099419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=q/v3vjZJUd5ys1W0wnVkG0D5K39V7PnrwbeiMY34P7Y=;
 b=vprZ6Ndnrx9vVaAC7vFwWhSt2ewlWMQx+AWXlJye5N6asr8Xw54TaoDMErclvpwI6x/8DH
 2Ko4H7RmDEP/Xxt4IaM9YE2yhPY+R0mPXkohz8/rVouujsd+dv2j2NzkA3HCxXtJ1QKOmH
 SR156SyAkkzqSpcZfYQgKd3t1hePDTY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH 0/3] batctl: tcpdump: Add support to identify missing packets
Date: Sun,  9 Jun 2019 18:56:49 +0200
Message-Id: <20190609165652.12841-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560099419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=q/v3vjZJUd5ys1W0wnVkG0D5K39V7PnrwbeiMY34P7Y=;
 b=qL5UaQNracx56IIGONoZZ2hEVg67E+GVasFTLxa9kT1+qNhMmUp7qX6nn25MKCJNMR3ygE
 kSSBNcOKSHrAwk7DnIyPORleX+3JLr+V0SBdLHgvXqctxWquk6DOfBhcFpLrkCM4JFpNiA
 wOnS3LfJ9R77v3UCCPYwtoZjyv906yA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560099419; a=rsa-sha256; cv=none;
 b=bqjm45By1NJZZhXRP8jyUJltDZQ5yuDHEZZ2tOBiuE3l+Po1UKzjj/QuAqjrgkC2KjMka/
 vp696/3zLSBVGDxX/R19+Vh+FZakBlP+reZL4mWYNDgViXcDsGoD5uSecx/7GF32+7FKb7
 KxqFGOG+ztTSr2CBISLdy6nlwGnHxeU=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
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

when running batctl's tcpdump today on a normal batman-adv slave interface,
you will see warnings like:

  Warning - packet contains unknown batman packet type: 0x41
  Warning - packet contains unknown batman packet type: 0x02

This is caused by missing dumping routinges in the tcpdump implementation.
Since these packets (coded, fragmented) cannot be decoded/reassembled
easily these packets are only identified and some basic header informations
are shown.

Also not all TVLVs in the header were shown. The mcast part was dropped and
thus the debugging of the new mcast feature flags was not possible with
batctl.

Kind regards,
	Sven

Sven Eckelmann (3):
  batctl: tcpdump: Add support for MCAST TVLV
  batctl: tcpdump: Add support for unicast fragmentation
  batctl: tcpdump: Add support for coded packets

 tcpdump.c | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 tcpdump.h |   1 +
 2 files changed, 110 insertions(+), 1 deletion(-)

-- 
2.20.1


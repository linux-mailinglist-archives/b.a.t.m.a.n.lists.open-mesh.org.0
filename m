Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A10129F5C
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 24 Dec 2019 09:46:18 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D42F4806E2;
	Tue, 24 Dec 2019 09:46:06 +0100 (CET)
Received: from qq.com (smtpbg458.qq.com [59.36.132.13])
 by open-mesh.org (Postfix) with ESMTPS id C2FC4801EB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 24 Dec 2019 09:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1577176634; bh=ISngcmpzQWdiT4oNl66T5SJsbKHr4ZEcqhBhoQPPlFo=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=d8Qxe00L6hFrfCrBD5JsJvdFrV0ENWDiCJFwjmxZuxYV6mhzx+SvoMoFxZCe+uAC9
 xp4hUZt+mrSw7MkqXWY6i7xi2C5OBkzK4fIfkWif17/9dm/BV5SaoC1E+iVEv7Oml/
 9kUY4V4mEFlU3S2mU7cSjl6tpInLNN2k3TorOoJc=
X-QQ-FEAT: OmmVAYxKzJudpa67c0zEqPVRZZn0IzhqD42q06VkWVphTu9/f1l89TO2UYYvZ
 ONlM+9T9zlsZs3X33CL4FfvMbdXLKbfMVgJppmNMWEsa1g7InrgxsLu1vsV0pCkhpmnFwmJ
 RVkX8qsyc7EqrnO/YW1a74hb2BRQGxOdPSWMXRCOKPCaQyMns2fllEvdR8fU6j0jLSi2LwY
 qCQGEA4+h6hug/p/OYkSygXTf8ISye2se5FkcWYgnoNu/uc/t/9Rkw967nLfK4adSqSN1Vl
 2erA==
X-QQ-SSF: 000000000000002000000000000000A
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 219.140.30.57
X-QQ-STYLE: 
X-QQ-mid: webmail308t1577176633t2939626
From: "=?gb18030?B?1cXF9A==?=" <1805692831@qq.com>
To: "=?gb18030?B?Yi5hLnQubS5hLm4=?=" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: openwrt batman-adv
Mime-Version: 1.0
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64
Date: Tue, 24 Dec 2019 16:37:12 +0800
X-Priority: 3
Message-ID: <tencent_01E5105A2CC20B1B047FF188EFCF47E55D08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 24 Dec 2019 16:37:13 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1577176654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=ISngcmpzQWdiT4oNl66T5SJsbKHr4ZEcqhBhoQPPlFo=;
 b=MC0qTTK2MNSeNvkouj0UeXRPvlkXSpDQ3fMkSvLaEUjkgM3Uq6n9xfbjLxRERDg29jBcMN
 3JS13wsLHgCqwvSV71tO6bqJ/2B+kvgMtOoMuXZGSAPFB3cyjsqVfCSLbX4LyA98P4rlAL
 2BUG3cin3c+bUWUF4QSooGJewAuJJJM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1577176654; a=rsa-sha256; cv=none;
 b=indQHM76er7qJHTYwgIgUccLj9peV5UaSVVsWnuffSjagendH4vFwg8aBYY1CkFk88d9ph
 /SItdR9LGpmKAdqIcLnbkwG2B8M58vrd/Ft4SnKtPfk7/SI3gY2iqII8dSfLUm2sbut+fM
 oDu6Rz0P/Pl0pOgf7fNHAwrIaNABnxI=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=qq.com header.s=s201512 header.b=d8Qxe00L;
 spf=pass (open-mesh.org: domain of 1805692831@qq.com designates 59.36.132.13
 as permitted sender) smtp.mailfrom=1805692831@qq.com
X-Mailman-Approved-At: Tue, 24 Dec 2019 09:46:02 +0100
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

SGksCiAgICBUaGUgcGxhdGZvcm0gSSB3b3JrIG9uIGlzIG9wZW53cnQgbWlwcywgdGhlIGtl
cm5lbCBJIHVzZSBpcyB2ZXJzaW9uIDMuMzsgdGhlIHZlcnNpb24gdXNpbmcgYmF0bWFuIGlz
IHJlbGF0aXZlbHkgbG93LCBhbmQgSSB3YW50IHRvIHVzZSB0aGUgbmV3ZXIgdmVyc2lvbiBi
YXRtYW4gb24gdmVyc2lvbiAzLjMsIGJ1dCBJIGVuY291bnRlciBtYW55IHByb2JsZW1zIGR1
cmluZyBjb21waWxhdGlvbiwgYW5kIEkgZG9uJ3Qga25vdyBpdCBXaGV0aGVyIGl0IHdvcmtz
ID8KcGxlYXNlIGhlbHAgbWUhCnRoYW5rIHlvdSB2ZXJ5IG11Y2ggIQ==




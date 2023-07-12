Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A957507F9
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jul 2023 14:18:39 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1C71A81F3B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jul 2023 14:18:39 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1689164319;
 b=1PgZoXsen1VPjs+nacZQsosj6ey5md3/hEMdnUjGquT3H5ZUahsJml1aLPLU2T66srzHU
 n1flDEQ92tmoLEwwx44B6Yw5HaTTagy/928HJx/iuAsJgXyjptzBzm/msIpb5KVmKkjGE0X
 BKW4aj+gEzUzTH/N+yhcGZPa95gRDyg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1689164319; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=vJr4cpGGwdddE6zNjzVAzDHzgM+zBO70xy9MS9lOZ+U=;
 b=awoWJakKmvOIfT7ImvCKQygWSt8WsKd8tftl3vaTuXSuLT/hIj3VgovlCtlsGy5pH882P
 csSZYnWxdDhwMv0Wed7MMsI1WjsMGUEyHyPYbAIeUysGRjsoFtQfzwrJQC1FlsnBYWyhszG
 z2iZL2OIx6VEVjRdRVR3m1IimKRa4+M=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D25BD80C32
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jul 2023 14:18:14 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Using BATMAN over ppp interfaces.
From: "Peter Milani" <petermilani80@gmail.com>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 12 Jul 2023 12:18:14 -0000
Message-ID: <168916429485.1040.15229763759954264535@diktynna.open-mesh.org>
In-Reply-To: <10972843.BaYr0rKQ5T@prime>
References: <10972843.BaYr0rKQ5T@prime>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: QFSVHD2FB62EFBQT2XLHSR5RCBNJBENR
X-Message-ID-Hash: QFSVHD2FB62EFBQT2XLHSR5RCBNJBENR
X-MailFrom: petermilani80@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QFSVHD2FB62EFBQT2XLHSR5RCBNJBENR/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Thanks Simon,

So to clarify, PPP relies on a higher level layer than what BATMAN uses? So you have to create an ethernet layer 2 interface using l2tp. But are more or less restricted to point to point routing in that case which l2tp will be travelling across.
So there's no alternate method you're aware of that can make use of the general broadcast nature of the underlying radio... e.g.. from an application perspective, I can transmit a serial message from one radio and pick that message with multiple receivers?

cheers
Peter

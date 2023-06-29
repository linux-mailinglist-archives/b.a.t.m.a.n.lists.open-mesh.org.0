Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E28742A9A
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 29 Jun 2023 18:24:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8583C8197E
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 29 Jun 2023 18:24:24 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1688055864;
 b=xCbzKo4q2LA2usSM7kgvEP2if/8qeaGXpT356lJSEPC/n4PLqTtDkuwLXxCHoxy/jaIqj
 db1D+T2AScVNx2I5FNzvsmmS9blPRp+4TgjC5dPHidNKJ+gNWRZdKHpQty452/Sj3Gye5CZ
 Tbsm1i7mLsHkkTl+Ir/CSLbSFUEsOck=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1688055864; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rnABMdJQOwKsm5+9RVU/JCW4/5mwoqLSYrM8dJdsRj8=;
 b=ih3tflYy0/g+tpbSJGEVPfF3ueZTT0gn+bKdW4bNlCTPpyBB2aPQ5zBcOmuFoN/D0wB+X
 5T5fD99c1iSgkG1MkHcnYg2jfg9fVOkLEg4TrvEBtpQ6RqIFIrSs31UY3oJePXn/IAU9sf/
 gIUijTCNE+cjPGxjwDf9Tn71/r43soU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=draeger.com
 policy.dmarc=reject
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=draeger.com
 policy.dmarc=reject
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4A1E48045B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 29 Jun 2023 18:13:45 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Error - mac address of the ping destination could not be resolved
 and is
 not a bat-host name
From: "Mark Mundy" <mark.mundy@draeger.com>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Thu, 29 Jun 2023 16:13:45 -0000
Message-ID: <168805522529.1021.1017359053159590210@diktynna.open-mesh.org>
In-Reply-To: <4515269.LvFx2qVVIh@sven-desktop>
References: <4515269.LvFx2qVVIh@sven-desktop>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: mark.mundy@draeger.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: I7XENRHG5I223RVRYR5Q3AMDSS7BIAZP
X-Message-ID-Hash: I7XENRHG5I223RVRYR5Q3AMDSS7BIAZP
X-Mailman-Approved-At: Thu, 29 Jun 2023 18:24:22 +0200
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/I7XENRHG5I223RVRYR5Q3AMDSS7BIAZP/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sven Eckelmann wrote:
> On Friday, 9 June 2023 20:55:24 CEST Mark Mundy wrote:
> Btw. this has nothing to do with batman-adv but is just about basic (Linux)
> networking.

I took this to heart and went back and checked everything again. Not too surprisingly, you were correct. But that's what you get for putting a Windows Developer onto a Linux box to do networking.

I finally resolved the networking issue and used a shell script to configure the batman after /etc/network/interfaces was fully completed. 

I will call this issue resolved, and start a new thread with my current issue. If anyone comes here as part of this discussion, look for my next post to see the current state of my configuration files. I know I hate it when people forget to post the actual answer.

Mark

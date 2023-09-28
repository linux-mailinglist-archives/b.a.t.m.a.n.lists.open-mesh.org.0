Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F4E7B216B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Sep 2023 17:33:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9A1028336C
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Sep 2023 17:33:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1695915234;
 b=2ICVwhJMjFvEn1JK/QgPtCh+EqrdA5QdgnK6bI/cbnhKgwmph6b8AF06QDlkP5Ad8ANNt
 MOHHqX9x60pDnE7dwIzh1fFgOxkVBic2kLbFXQrHTAUS0eBMbVHy11E2ziVR3Wv0ndCBvEy
 PfUkXrM+GlVhvpQCY39qGCkSCCwQEHY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1695915234; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=R+j1kYEdGS4E+lkoi7J4pFHIJq//7ONGWzTVPrn/hXQ=;
 b=O3CALy5ZBF2lX5dPzW21roo19kvlK8akl2JBAeqFKq8P1rdo1GM1YYkxepxnneB+B1KtB
 IapGiBJQi+evcvJpewELodbVnTvHupoNbFeRy27fZQ1gCN6id2fqOkUQZH353aunKUA9C/R
 Jog4Ul3ntnOKEp3hFGww6/RXmnxl6i8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D6BD380467
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Sep 2023 17:33:50 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1695915231; a=rsa-sha256;
	cv=none;
	b=nO5JF6/AuuVQGw9lHniRiNTrTDoMSitLAtxGJ3Kjt/3EHWiKS0dvPRQO68jWV4BgzFni3F
	HObkqp2BepHZCRByLe75ob4g8XOvvQCtTUTAiRWE40B5n7wFrcZQwdl9n7kF0dG+vckXiS
	f4Keul7T3dWtxim8ChpCbS7vBZpMPls=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch
 designates 5.148.176.60 as permitted sender)
 smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1695915231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R+j1kYEdGS4E+lkoi7J4pFHIJq//7ONGWzTVPrn/hXQ=;
	b=ff9/kqTmHREvTk6ooQxO6/wxiOSe9G9Jcyv6oTguijSELZoKbFcItUyz0HeWeJRexe3T7M
	kHlI9cQdpl3MF1CW0BRYrwH8ch9rYeBWwnXEo8tIlcaW34uj0QqUpmKrw9CuGFD4kVxLYv
	yuT27q3kd+QFztZL48eXD80y+Uqu0ds=
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH RFC 0/2] Better throughput estimation on half duplex
 interfaces
Date: Thu, 28 Sep 2023 17:33:46 +0200
Message-ID: <4312005.ElGaqSPkdT@rousseau>
In-Reply-To: <cover.1695904299.git.repk@triplefau.lt>
References: <cover.1695904299.git.repk@triplefau.lt>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: M6N24QHMWI42ONAU5OSOJ7QIQFADZKIG
X-Message-ID-Hash: M6N24QHMWI42ONAU5OSOJ7QIQFADZKIG
X-MailFrom: mareklindner@neomailbox.ch
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M6N24QHMWI42ONAU5OSOJ7QIQFADZKIG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thursday, 28 September 2023 14:39:34 CEST Remi Pommarel wrote:
> Then Orig1 first adapts the Orig0 OGM throughput to T01/2 then forwards it
> on same interface it received it. Orig2 receives it and first thing Orig2
> does is checking if T12 is lower than the received OGM throughput (i.e.
> T01/2), and if that is the case T12 is considered to be the new end-to-end
> path throughput.
> 
> The first issue I see here is that Orig2 does not know the path to reach
> Orig0 has to get half duplex penalty because it is forwarded on same WiFi
> interface on Orig1, only Orig1 knows that. Thus if T12 is lower that T01/2,
> T12 will be chosen as the Orig2 to Orig0 path throughput (i.e PT02) and the
> half duplex penalty is lost.

I am not quite following where you see the problem. 

The half duplex / store & forward penalty is for situations in which batman-
adv has to forward packets from an interface to another. In your scenario that 
only is Orig1.

Why should Orig2 need to care whether Orig1 does store & forward or not?

If the direct path from Orig0 to Orig2 is better than the path over Orig1 the 
metric should reflect that.

Maybe you can add throughput metric values to your example and then expand on 
what you find problematic?

Cheers,
Marek




Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8407C92E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 14 Oct 2023 08:04:16 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 09E2882FE8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 14 Oct 2023 08:04:16 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1697263456;
 b=vw9YlxVbaW702hDTJYyFbCgx78dP24BSjXKRbvDd6A/fBo6EFPWHWr4Wg1NPM6wKdeOH3
 89+21vr2/uqNV45dIqZs3PjZI3USz5q7AC0GOWYBWZKhR/Lhrn7fUkF75eZjFoRCoxyDOSv
 weFIJJGgmsORFi5UFL2FLfVZDtvG6qM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1697263456; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=61vT8aWzsgmT9R6IwsLp6xlAIby650NQruyfs5HuqOA=;
 b=TiDKcY/SJHrhnilBL0UOZoicDlmAuhW/dRr4l7t4p5eqBL8aloH3xLqxJFjfgp5ppuNXg
 8+PQ5BwZingSD2F0yrQ/kqSlbgze56ZngWo3hqEh8JGcKA+dp5oQ+xEUMChDJt+DU0LRN/n
 n1VMQZEvGqjNIie0+7PLvjWYlmwGKiI=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A789B80BC0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 14 Oct 2023 08:03:50 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1697263431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=61vT8aWzsgmT9R6IwsLp6xlAIby650NQruyfs5HuqOA=;
	b=V4gsPYuMUqcnie8bZHXlW4vmmy9DiIdBvXp4AIpA5n/aUU+gG7m3ZgRH+8eu/njMNSvC05
	CLkauRKmcP8dsoa3QDURUGDsoQv91F+Q9IhTSvQPnvep5RzDejFR+jA7fl3epN4SAkiJAX
	BHDMqGNgD6Gl8iBR/+et8gtYG9x56/o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1697263431; a=rsa-sha256;
	cv=none;
	b=UIYD60SPp5VKpGPKbMSEtxU18MBHSy6pJl1TbOImE0MBPNLqqfZfor+Qd1xu0KD9JPsAdc
	f5BeTnOpUBLsHH8cezqtWI5Av6Y3+FaS7eAZVGGp3xbTF88cYNa6k/exBJG/Ef7YSzoTda
	kbrCh3+WFt2jWFTC+2qowoAtrq64nS4=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id F2E673F03B;
	Sat, 14 Oct 2023 08:03:49 +0200 (CEST)
Date: Sat, 14 Oct 2023 08:03:47 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH RFC 2/2] batman-adv: Better half duplex penalty estimation
Message-ID: <ZSonvL2bJUx3qyBO@sellars>
References: <cover.1695904299.git.repk@triplefau.lt>
 <09c086e5e68055e52d1f92ba17d0e921084107e7.1695904299.git.repk@triplefau.lt>
 <ZSoixFsJi5vYCRxh@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSoixFsJi5vYCRxh@sellars>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: 256TD3ZFGTIM7NWBWCKKJ3ZYGO6SFABC
X-Message-ID-Hash: 256TD3ZFGTIM7NWBWCKKJ3ZYGO6SFABC
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/256TD3ZFGTIM7NWBWCKKJ3ZYGO6SFABC/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Oct 14, 2023 at 07:10:28AM +0200, Linus Lüssing wrote:
> In the following scenario:
> 
> +-------+  ch.1  +-------+   ch.2  +-------+   ch.2  +-------+ 
> | Orig0 | <----- | Orig1 | <------ | Orig2 | <------ | Orig3 | 
> +-------+   300  +-------+  30000  +-------+    110  +-------+ 
>                      ^                                   |   
>                      |                ch.3               | 
>                      +-----------------------------------+ 
>                                       100
> 
> Would the results on Orig2 to Orig1 be these?

Sorry, I ment "on Orig3 to Orig0" here.

> - via Orig2: 300*110 / (300+110) = 80.5
> - via Orig1: 100  <- selected
> 
> While it should have been this?
> - via Orig2: 30000*110 / (30000+110) = 109.6 <- selected
> - via Orig1: 100

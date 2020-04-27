Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7041BAEB3
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 22:04:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0A8FC80E76;
	Mon, 27 Apr 2020 22:04:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588017893;
 b=lssfqTpTqJ0+VD3qS6HKxmPEPfewzVQG7QOHCh4rS+woybHfLWm+p6SVJ7xXx3nIZvS4J
 SDDqE6ScsKGfugPIYHPsoyi0wEh+LAyjrl726HtQmi2A4TJNiJTNqNWZP1iiZmEU/75pQ2Z
 W0AE9j5Wm1J2CVdE2H8EMm6wtZ0dwqU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588017893; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ItL0FOzEIaMPoPzD4FE+SVoeqMocyAiMQjJOlWt8gpU=;
 b=t52Ruib/qZ08l7xnAbT4Ub6yJDKYWNeEqsdU3yLDpX04A0MA7EGd/JK7YRpIr2rPI7JJJ
 HA5ycqaHP6V1Ht8pXW1B+bVELK7dbLGmFN3q1npVW56/905JFXLEq6v5GwFM3wMZiDsqcom
 tRC7UWkRgPgwqVlszPSEn4kRAPLfNLc=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail header.from=davemloft.net
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=fail header.from=davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net [IPv6:2620:137:e000::1:9])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id ADB078080B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 22:04:50 +0200 (CEST)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 0959915D679C4;
	Mon, 27 Apr 2020 13:04:48 -0700 (PDT)
Date: Mon, 27 Apr 2020 13:04:47 -0700 (PDT)
Message-Id: <20200427.130447.1235579121316146606.davem@davemloft.net>
To: sw@simonwunderlich.de
Subject: Re: [PATCH 0/5] pull request for net-next: batman-adv 2020-04-27
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 27 Apr 2020 13:04:48 -0700 (PDT)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588017890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ItL0FOzEIaMPoPzD4FE+SVoeqMocyAiMQjJOlWt8gpU=;
	b=ikryZgommWfUNVqAl7RUR+g9yb4cgYf03EydWn6l/HreTZEdwRRFX9/vOo+7Uz53UY/ALQ
	PBSmFXwApslWB9lX4CZceS2nxj2KsBchxo6rsh6esxLB3Ymh219e4od0k2i0MD59/igOEv
	E50a7IrBXaD870fJ62cxkQMxyrcg9Vg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588017890; a=rsa-sha256;
	cv=none;
	b=wS+MbTEmQiHKDMI5RtAnnXPc7frtPxPjTVfG1EzXhemZS9uOVD90IypcVDIsVqmj5+dMR7
	/Ff/MOI9to0RuSTIGEcyTgIHtrhTdID1mVZZimNY/4EO9XlTbjTOfcfWhpgtxqAPePeuza
	GtlNrLutp+e1eUh10iY0ZLi8iM4hHPE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of davem@davemloft.net has no SPF policy when checking 2620:137:e000::1:9) smtp.mailfrom=davem@davemloft.net
Message-ID-Hash: ZAGK6JDZFXTV3SHRY2QVMICVECWNZHBZ
X-Message-ID-Hash: ZAGK6JDZFXTV3SHRY2QVMICVECWNZHBZ
X-MailFrom: davem@davemloft.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZAGK6JDZFXTV3SHRY2QVMICVECWNZHBZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Simon Wunderlich <sw@simonwunderlich.de>
Date: Mon, 27 Apr 2020 17:06:02 +0200

> here is a small cleanup pull request of batman-adv to go into net-next.
> 
> Please pull or let me know of any problem!

Also pulled, thanks again.

Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C80BE380DEA
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 18:16:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7C69983F82;
	Fri, 14 May 2021 18:16:05 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 005C1803DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 18:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1621008962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P+b6zr6/4d3c5t+ZTuzOWDPANRPsnslmtoO0qobGRc4=;
	b=mRE0y3JMfgqzAF3krRICth/BKD581cvF14ZzSMo94nwtJbKT7Jwx/W2N5aRnbAILpHsbWE
	G3r5kn5Cv/UavY7XLtYwYMDVlfJHO0mRafL+p6WApDqVWWEoSZzEXf8Olm8VH7N/hspz1Q
	kDH/J4e1G9lZL8aapifu3VORbrnQ5iE=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 2/2] batctl: debug: Introduce handler for DEBUGJSON
Date: Fri, 14 May 2021 18:15:59 +0200
Message-ID: <5981466.ZLWtV3aTVX@sven-desktop>
In-Reply-To: <20210513141034.1649576-3-asarmanow@gmail.com>
References: <20210513141034.1649576-1-asarmanow@gmail.com> <20210513141034.1649576-3-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621008963; a=rsa-sha256;
	cv=none;
	b=RvWtbgU0zec54tJoYVQTSHtoIj7zBKI7XNCePP/f0zTgge+I+/kHU6gBQmQDA55B5V6UrM
	Q1xc+UdzxJMO/eZLi0HFTwiH5gXLDPbSQ9XyPZasePYrHNoPA8m60pxOIM1IG34TonbLK9
	Bz3IUfnW4w3PgepzmXjd0w8torDaAbw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mRE0y3JM;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621008963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=P+b6zr6/4d3c5t+ZTuzOWDPANRPsnslmtoO0qobGRc4=;
	b=D5WFZlcuQ3B6iadFSBuMepsbic9yk0jry7pn2LZ0kd06tgqJ1xZksM+/DOORxigPCooh85
	v6qSl8d1MwEI0H0ZRIL463J0P8c+rVXmxRmng8kH1vZWYns6CJOnE13FqJgD2JBJlpp/K/
	A1DvpPpTv6nRSUQrr5lYyh4Eun3EJIA=
Message-ID-Hash: LAQOPYF5LCBN6YBRSMKEXC32FGVQDSGK
X-Message-ID-Hash: LAQOPYF5LCBN6YBRSMKEXC32FGVQDSGK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LAQOPYF5LCBN6YBRSMKEXC32FGVQDSGK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thursday, 13 May 2021 16:10:34 CEST Alexander Sarmanow wrote:
> DEBUGJSON commands require an own handler, since they may have their own
> parameters. So far there is currently only the help parameter, but more can be
> added in future.
> 
> Signed-off-by: Alexander Sarmanow <asarmanow@gmail.com>
> ---
>  debug.c | 29 +++++++++++++++++++++++++++++
>  debug.h |  5 +++++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/debug.c b/debug.c
> index 458c137..20467c7 100644
> --- a/debug.c
> +++ b/debug.c

These commands are not for debug tables and would better fit in the the 
genl_json file (or something similar).

And a lot of functionality is missing here. You basically duplicated the same 
function in the actual neighbors_json, originators_json, transglobal_json and 
translocal_json files. Stuff which could have been handled globally for the 
netlink queries with JSON output.

Kind regards,
	Sven


Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCYsGmO992m5lgIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 23:25:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B8A4B7824
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 23:25:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 39D5E85B64
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 23:25:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777843554;
 b=cqR7fRYbfSGkf1x6ANuOEKKvTOeqhD4tudPJAjMr0g0f0VXlt6o9dDT3WyWHUegFf1xXh
 UdbmDstwTqEPBeHlE3rCk4Pc/v4YYUxtL+RrQjUciU84iVxM5Jo3F+9atxoDpjkTrlRdAwM
 XIlGETKH0G1dHcxg6xkpOiBAN85FRN4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777843554; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wNIWGuJIHbUovJaFu/ppK4rRJ4ZLzcU720XhRAu7lQ4=;
 b=ho9rDq54cS2ntc2b0Ba2OdZ42J2c9+X72SbAAWA6r5OQWaKz3Nj4o0V8rg34o6nrN/+S8
 UPd2UczuqZfke5YORoYbWRduf1wqHUWB6f2riJSdE95lNkHxGjjr0+Or7Zaj5YelFRcOIdM
 mNZ/l/uLEsYojTUBX8E70HRT/AeCk5s=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=unstable.cc;
 arc=pass;
 dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=unstable.cc;
 arc=pass; dmarc=none
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0085A82E69
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 23:25:13 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777843514;
	b=ALlz9xCXaU8NUcK8TGaxzxXP8Mqs74G/na0Yuiso6Kp9lW9mztQ9CadIcmV7p1P1cf8gSj
	ECIkcCB5rWQ8FXfFK2y3wfmiwO1Kw234JscrvgUg1cql2KnajFxSorqNYGZM+lKSdQHqYo
	Kd+S4hrbNsaBFQaD8bhcRbItFw6rPpA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=unstable.cc header.s=MBO0001 header.b=jv4OUVR0;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of a@unstable.cc designates
 80.241.56.152 as permitted sender) smtp.mailfrom=a@unstable.cc
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777843514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wNIWGuJIHbUovJaFu/ppK4rRJ4ZLzcU720XhRAu7lQ4=;
	b=0Kmt5CWcQK/nJGDIrTECIMJrfAFU7dRuPzldz18eYiYJd6B3XftChz3odlDhomWSmOkwTJ
	Fe07PP0MU5p7nWnQvqOvIhjZmOHYDXdNK2QX0rNonwf+9L7kSB9iPZJqmXWobQtCjwl99d
	qYGIxu7Xjji7N1itwdyMuobtc+auAc4=
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4g7yVJ19BKz9v75;
	Sun,  3 May 2026 23:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unstable.cc;
 s=MBO0001;
	t=1777843512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wNIWGuJIHbUovJaFu/ppK4rRJ4ZLzcU720XhRAu7lQ4=;
	b=jv4OUVR0pj9l6qS5bVG0zlXHljlh01zMjMokCpfpNpfx/McnXSTBjdHrR2O7QiO+xGPKPf
	eFghYEGF/1sXRM47DdG4POE94QAqEffWxD56pVINX73xRJj3lZS4CsC4pdvQrcBojlupzd
	COzg/ChtCoMw2xctUuBPalS/Y2Q1UiLuL93KtoCt22nEWwhP8pOipgY/QmdOLRnk5LXHND
	kkEq47bdtFITshxG1pHhjIhgmkHtKru3+vhqsszLxiv+Fk7OcLB99zkZALZqAybmJU/xtP
	PZlXNHYMHhjUV6mcdqIZgPjlcSiBMB56t/4g2T//beHk89HveWnEOq58xFJ/BA==
Message-ID: <6c76fd19-c9f5-4cc9-82c4-778a2c010b04@unstable.cc>
Date: Sun, 3 May 2026 23:25:10 +0200
MIME-Version: 1.0
Subject: Re: [PATCH batadv-next 2/2] batman-adv: tt: replace open-coded
 overflow check with helper
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20260503-post-fixes-cleanup-v1-0-9c5c0ff0fcb4@narfation.org>
 <20260503-post-fixes-cleanup-v1-2-9c5c0ff0fcb4@narfation.org>
Content-Language: en-US
From: Antonio Quartulli <a@unstable.cc>
In-Reply-To: <20260503-post-fixes-cleanup-v1-2-9c5c0ff0fcb4@narfation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: RMUDWM4BGFCRTVNQLSJZVG7J223FNERG
X-Message-ID-Hash: RMUDWM4BGFCRTVNQLSJZVG7J223FNERG
X-MailFrom: a@unstable.cc
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RMUDWM4BGFCRTVNQLSJZVG7J223FNERG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: D7B8A4B7824
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[unstable.cc:s=MBO0001];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[unstable.cc];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[unstable.cc:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a@unstable.cc,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:email,mandelbit.com:email]

On 03/05/2026 22:46, Sven Eckelmann wrote:
> The commit 6043a632dd06 ("batman-adv: reject oversized global TT response
> buffers") introduced an open-coded check to ensure that the allocated
> buffer size can be stored in a u16. The check_add_overflow() helper can
> perform the addition and overflow check in one step, so use that instead.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Acked-by: Antonio Quartulli <antonio@mandelbit.com>


-- 
Antonio Quartulli


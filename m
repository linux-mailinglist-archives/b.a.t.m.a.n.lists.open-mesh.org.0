Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A928A14831
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 03:19:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BFEEB84353
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2025 03:19:17 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1737080357;
 b=TqS5JWoB951Em9Lc6LuNTZbOud0kOkUxH1iWRYmW7+zERIDJ7eQ73ohIFL/PrSelSE9jU
 5KT3IqsJsDR3q90V2L2xTgH8wkcEpeMUd3eHzvstPq7POPVZIXJw6j1ngrv41v9CT+3YX03
 1zHZ0GVh59p50/etDE3zKpNoZEMeMgg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1737080357; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=q/0uZ3az1RrXeQgRGqgrAQygC/D6G48/tTohSSbIZdA=;
 b=fCVM0q9Z31wez6NUhicdbU02IY9geZIrorSO9OrIvmb/VsAUOzTMJmBsFRYJJovcNADt/
 gUznaRnWLXvgLpvbl6TPDs+aVdrTq0S2R0aCiOpBJZet5A2nH0OiUuEZjpD/IxRz3IEZH7x
 nVKDoL16aP/M2nkRZgGGeh7Ct9xQfSM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1085581415
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2025 03:18:36 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1737080316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q/0uZ3az1RrXeQgRGqgrAQygC/D6G48/tTohSSbIZdA=;
	b=FMDS5OqltbT05oKypA+PY590d6P1GuSr4e0t/m31ZTLQB5YUU0FPKlVv2V2W4wOfObmquR
	GY0+3ql8gkYPMkINM9uHZzgHdMyGt/gJ10L3bCjtaIjSga+esBb9MyFPTPo6U+AzH4ZBdk
	XqUg/evNZ++IJsXsbtQAchmI9K4N+kE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1737080316; a=rsa-sha256;
	cv=none;
	b=0hwzLaFTqZwxPaTwFFjPdeq8Liso9Zm8Q2RsDYBefRtSsVu79/8ZafzQ0kW2lXtl6PvPPN
	crkJ+IvHbZVVV+ejoalJ3FZ7yyHDgP4c7exhyAGWp7L01Or7WgFdlbWXmMp1wmpcvf8SSA
	xHdzOmncHV+m663dgtnA5upbQLqpE9E=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 84BD3540DA1;
	Fri, 17 Jan 2025 03:18:35 +0100 (CET)
Date: Fri, 17 Jan 2025 03:18:34 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v8 1/3] batman-adv: netlink: reduce duplicate code by
 returning interfaces
Message-ID: <Z4m9-tGCKQ7XhSbV@sellars>
References: <20250113200510.18681-1-linus.luessing@c0d3.blue>
 <20250113200510.18681-2-linus.luessing@c0d3.blue>
 <2295906.iZASKD2KPV@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2295906.iZASKD2KPV@ripper>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: BMLIBOB3RP4UBDNJIH5ST65P34ZZP42O
X-Message-ID-Hash: BMLIBOB3RP4UBDNJIH5ST65P34ZZP42O
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BMLIBOB3RP4UBDNJIH5ST65P34ZZP42O/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Jan 14, 2025 at 05:15:41PM +0100, Sven Eckelmann wrote:
> On Monday, 13 January 2025 20:31:39 CET Linus Lüssing wrote:
> > +       hard_iface = batadv_netlink_get_hardif(bat_priv, cb);
> > +       if (IS_ERR(hard_iface) && PTR_ERR(hard_iface) != -ENONET) {
> > +               ret = PTR_ERR(hard_iface);
> > +               goto out_put_primary_if;
> > +       } else if (IS_ERR(hard_iface)) {
> > +               /* => PTR_ERR(hard_iface) == -ENOENT
> 
> No, this would mean that the error is "ENONET" (Machine is not on the network) 
> and not ENOENT (No such file or directory). Is this a typo in the comment or 
> did you actually wanted to use ENOENT in the rest of the code?

I wanted to use some less common error code, to reduce the risk that
some future additions to batadv_netlink_get_hardif() might accidentally
reuse this "soft error" case code for a real error case.

But in v8 seems like I forgot about that intention and then
misread the ENONET as ENOENT :-). Leading to this typo. v9 should
correct this.

Regards, Linus

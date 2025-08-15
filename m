Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F6B28018
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 Aug 2025 14:41:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 95472819F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 Aug 2025 14:41:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1755261714;
 b=rqC5/A0S7CzvIr/cTivu1pcAKn9UCDe17p2EFAh1/xpOXyHg1qQr0O9soZXDj4K2vxgHc
 PzbINKhBinqHAh0bkt5mjkLfto0ppVYq0cQZf+4bZ8CjKXUJ/rlXY7rHDa8QtBJ6QtMHtIe
 EMvZ0+OIScRtdi116d2IYNS/NGWgqPA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1755261714; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7GPg3+6rVwt7kSECJq7oevvJgpMY+TigEdJIi1IUfzc=;
 b=Xp/wvfieIjPoTONCiWqKt6y6lEhCPuRa4BP7SB4f2MpB6g/YFMPT/nISlSoB+CNSPvaTr
 et+mxUQyWlfGvUuVFoqC7H8/ZDXIXKGVOndGpB/Fg3KESObYHjNBZ6yCe4LJf9Wj9Vo83kc
 MProhAYpwUksAKvWBPd2wZBMR/O1XiE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EB2088041E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 Aug 2025 14:41:47 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1755261708;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=7GPg3+6rVwt7kSECJq7oevvJgpMY+TigEdJIi1IUfzc=;
	b=jpldZ0C2RJo+7ULtJBAzgAkccU/ByiWP+dHHaqG0SeQayPOW9zl7Ko9evl+vLZqVspShgW
	BIGrqWFn+aIJUeX6KQWfFzBWxrR09NUnENANiPFMcWqhVOtG4gxaLkEZVf6XKL06LE6Kge
	bYr0leHS56vJ6TvK38ZXgL+idR9O6+g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1755261708; a=rsa-sha256;
	cv=none;
	b=QxuY7EsarTOnqs0VjxT6vow+D3QTQDrvML8toC4MwHO4hvFxI/1GpPzBafNpXMXb3dleJY
	u1FScN/V6AEYpF/5nOiZ5A5ww8qbvWQnUt3RC88dAfPKjZ3mdnEbfXPgWAd4gfSPvaEnJ/
	Tvit125URHcp+x41JkSGIslPRmNoWM8=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 6B8D654F31C;
	Fri, 15 Aug 2025 14:41:43 +0200 (CEST)
Date: Fri, 15 Aug 2025 14:41:42 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: tcpdump-workers@lists.tcpdump.org
Subject: B.A.T.M.A.N. Advanced libpcap pull-request
Message-ID: <aJ8rBnoIBaOuKVCT@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: 4QR6WOB5NRYKWQQEUKGSUYX77HP2KQ4A
X-Message-ID-Hash: 4QR6WOB5NRYKWQQEUKGSUYX77HP2KQ4A
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4QR6WOB5NRYKWQQEUKGSUYX77HP2KQ4A/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

I wanted to cautiously inquire about the pull-request I had filed
about 5 years ago for adding B.A.T.M.A.N. Advanced support to
libpcap here:

"Add support for B.A.T.M.A.N. Advanced #980"
-> https://github.com/the-tcpdump-group/libpcap/pull/980

I'm not in a hurry and would need a while to add any change
requests anyway, due to other things having priorities right now.

But I had also been wondering why it might not be progressing
anymore, even though the initial feedback was very swift,
constructive and super helpful. Many thanks for that again!

I see that there generally is quite some activity in libpcap, so
it seems to me like it's a bit of an issue of motivation or
priorities on other people's sides as well, maybe?

(And I was also wondering if people maybe lost interest after
noticing that batman-adv is GPL licensed and a Linux kernel module
only so far. Do maintainers/devs on the libpcap/tcpdump project tend
to be more motivated to work with and integrate protocols that have
a copyfree instead of copyleft license and/or protocols with an
IETF RFC?)

Regards, Linus

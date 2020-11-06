Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C992A958E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  6 Nov 2020 12:41:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0E530803C2;
	Fri,  6 Nov 2020 12:41:07 +0100 (CET)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DB8EB802D7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  6 Nov 2020 12:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604662863;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wrZ4oLrRKAlkIXCkiskrapF3SJUeI8FJdBVtlw792IE=;
	b=RaQqK++jWookrCWlMqAtM09/4ylW9rwEpi9Kl9xCjYDHWV3rsj+9TTCgJbvYAUz+ao8mjr
	0THr1KPQPPHL9nRyMHMHvdkxmBOgGo8x5wzGOnGxa8mGTmuipYBg1eOlKVKbGciViQsvBn
	MCGAS3b+M6JKjfCsArDfSAW2m3134JM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-wkLnwCPxMuO8w8QgqW3KOg-1; Fri, 06 Nov 2020 06:41:01 -0500
X-MC-Unique: wkLnwCPxMuO8w8QgqW3KOg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4E8218CBC7A;
	Fri,  6 Nov 2020 11:40:57 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-47.rdu2.redhat.com [10.10.115.47])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16D7F380;
	Fri,  6 Nov 2020 11:40:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <000000000000e0a53705b2d7ec44@google.com>
References: <000000000000e0a53705b2d7ec44@google.com>
To: syzbot <syzbot+d2b6e8cc299748fecf25@syzkaller.appspotmail.com>
Subject: Re: INFO: rcu detected stall in security_file_open (3)
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1797847.1604662853.1@warthog.procyon.org.uk>
Date: Fri, 06 Nov 2020 11:40:53 +0000
Message-ID: <1797848.1604662853@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RaQqK++j;
	spf=pass (diktynna.open-mesh.org: domain of dhowells@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1604662865; a=rsa-sha256;
	cv=none;
	b=HR4zRorSPmIJsaZAMC23seNNXUKIIMkykYaMQ0FM5N6AfKaHaUKgV1uxdIbhDhN+p3ml8N
	8sT9gO1mUH4O9nanhciM8B0o8/1MskehRlU4IF5qxAokSjWTZPvduLaKjN0BfgpbA019Pm
	SE4MFQuz7t1roMBdGnBqiCk75jGiOjM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1604662865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wrZ4oLrRKAlkIXCkiskrapF3SJUeI8FJdBVtlw792IE=;
	b=yBmVlBJjMQudb2MRhUyGDRkoAXvbfQ6LQ5IuXNyFR0tRDYwnr9fF537R4SVG5K50VAiV87
	foUpAeAp2/PoMLrL4XWpTq0ixWnTUWmXm/EA1UDpRSg/uE3Gy2RN2tLimDwL3nQFGqF5bB
	ee2LZ0zUdaQi7fggfXBlarcr/3zzfos=
Message-ID-Hash: JMVGN5ODECUV3GZTBF5GAPVJLIWXE7GX
X-Message-ID-Hash: JMVGN5ODECUV3GZTBF5GAPVJLIWXE7GX
X-MailFrom: dhowells@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: dhowells@redhat.com, a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, fweisbec@gmail.com, ktkhai@virtuozzo.com, linux-afs@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, mareklindner@neomailbox.ch, miklos@szeredi.hu, mingo@kernel.org, mszeredi@redhat.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, tglx@linutronix.de
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JMVGN5ODECUV3GZTBF5GAPVJLIWXE7GX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

#syz fix: afs: Fix cell removal

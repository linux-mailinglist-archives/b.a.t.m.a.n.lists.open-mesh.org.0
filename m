Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1493C1AB774
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 16 Apr 2020 07:40:21 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1C6648108F;
	Thu, 16 Apr 2020 07:40:20 +0200 (CEST)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id B55D580043
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 16 Apr 2020 02:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586997029;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s4rkdFZCt+CYPzp3/Qg70/GCXwWzZ5opTjJmcpHVXJY=;
 b=P80IxbndyjXJTJb/l7TlTUUDXIHoJkqBYSq92ZPnix1Zx352RS9Jir8MqVwmZSc7fDWCxu
 sPr2e75On4FM1DZY+w/efYX64HqCVMIzQzkBA73nqNBm6gp/HUpejyiZasw0YLIdp7fshQ
 qkvCtqX99HyleXi5g0zJ3zySBCNSYHI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-u5im1Xo4PlegAf8ewrePhg-1; Wed, 15 Apr 2020 20:30:25 -0400
X-MC-Unique: u5im1Xo4PlegAf8ewrePhg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4F9C107ACC9;
 Thu, 16 Apr 2020 00:30:21 +0000 (UTC)
Received: from llong.remote.csb (ovpn-113-213.rdu2.redhat.com [10.10.113.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 041D15DA66;
 Thu, 16 Apr 2020 00:30:09 +0000 (UTC)
Subject: Re: WARNING in kernfs_create_dir_ns
To: syzbot <syzbot+38f5d5cf7ae88c46b11a@syzkaller.appspotmail.com>,
 a@unstable.cc, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, hdanton@sina.com, hongjiefang@asrmicro.com,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 mareklindner@neomailbox.ch, mingo@kernel.org, netdev@vger.kernel.org,
 peterz@infradead.org, sw@simonwunderlich.de,
 syzkaller-bugs@googlegroups.com, tj@kernel.org, ulf.hansson@linaro.org
References: <000000000000ba8e5605a35d4465@google.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <894635f4-772e-a28c-1078-be8a5093e351@redhat.com>
Date: Wed, 15 Apr 2020 20:30:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <000000000000ba8e5605a35d4465@google.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1586997031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=s4rkdFZCt+CYPzp3/Qg70/GCXwWzZ5opTjJmcpHVXJY=;
 b=ra0ZfWOHePW4TjQv8KN/e3VMDghGzwntxeqCbPNj1ONBATmqmcdadkksWhQF9kykn4Iu76
 2peW6Xd+njxbv3bzl2YHPfZ2wi2TRBj6ZZSg1BkmBAYU6g+EBE/Rzq/1xAReCsH2iwb11V
 QoddLbfKjol+HGGOHT6qD5Ik/fWX1ws=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1586997031; a=rsa-sha256; cv=none;
 b=BYfWS9CU3Ax1CtWnPjKbwqCm3jWhhG+pmP1Fwl59i1IpLhQJSilfkv+ergPNn3Qh0GYM3C
 BtUvPtBN7fRae4mkaZTd8ygJDqsNNYWaKOgX74lazYdFl4Mjbtox0ScivgoAYWTAT5+dd4
 9+ayzkGfbR/VibiRduV8TPUFW9yxg/k=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=P80Ixbnd;
 spf=pass (diktynna.open-mesh.org: domain of longman@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=longman@redhat.com
X-Mailman-Approved-At: Thu, 16 Apr 2020 07:40:11 +0200
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

#syz fix: locking/lockdep: Reuse freed chain_hlocks entries


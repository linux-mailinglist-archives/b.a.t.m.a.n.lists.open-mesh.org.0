Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBC939727A
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  1 Jun 2021 13:35:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CF75980031;
	Tue,  1 Jun 2021 13:35:44 +0200 (CEST)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.23])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 83E4F801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  1 Jun 2021 13:35:42 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; t=1622547342; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Azot6or4Xq8/ZvWx0u1lhTb1RtOU/4TWj8FLY76EGF1WRfEozUb/fPf2leWWYS67O/
    txqaqHzL0FjlI0mC5XwHGm8X666N/eJ5ijv8nYmRtOJoOAyZPsD8d9MUyfryccQ2FdCK
    jvW1iACBZZ7Dt+7LF3LWNwjKQfp5Uj3X+BbliDicqg6bExnG+FGWn78r23HFfnvq9RcZ
    tTzaY1Da6aiD5kBoLHuYcKSJS+CKzQLIlvJPdcFCWFzvti/HODuPo7kfeZecdZjYoPbq
    FcvoFfYNWnGer77O+AIcqZj4guA8nWlgMm9gSvISR4qpAbNDKv5gkgeMRbvPBnMZplS0
    n/Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1622547342;
    s=strato-dkim-0002; d=strato.com;
    h=Date:Message-ID:Subject:From:To:Cc:Date:From:Subject:Sender;
    bh=bRDb+Y6uX8TnoPYOfz5GGGrA2sbrAG2PwcCsVYAcmYQ=;
    b=SBMUq5ZUTOeyEcrRIGT3l9aJ9w3Fdy7uJPS1QSf8sqgQJJvaPtxBSIJe8VN/hQPTD+
    a8/Xm5h03aGD3HZ3ntg5OkAQ0Z3z8U0RPOHmtRFfzteP/b5DZA1NqV6/Es30Tbs25Ot4
    lXeYNIal+WPk7BnrV0+wb2W69lsBcbqD/HVsocclj9TIqyYcWrVCyaKwztdfXGTi9AKv
    Vl/7sMV2bVwr1/zaNTfAHgw/kqwmKJsMzdRt2KQ4/z2JOwxLp2EwFiwlzWtTUS4EmmIN
    +HxOhMUfMxu/9Z+XZUXcsd+faw4x8wNVV5JjwNpq34WIf0bv+3HNXFChvrWOhwq2jHOc
    ZusQ==
ARC-Authentication-Results: i=1; strato.com;
    dkim=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1622547342;
    s=strato-dkim-0002; d=aiyionpri.me;
    h=Date:Message-ID:Subject:From:To:Cc:Date:From:Subject:Sender;
    bh=bRDb+Y6uX8TnoPYOfz5GGGrA2sbrAG2PwcCsVYAcmYQ=;
    b=oyTqITgR49ww68P5r0DAv4CbOXShxs8xebGDsYze6brUBkwraS7eBB7/+dgSsdCdhk
    DDANjnSTQo1iO1Asl9fIOrQJyxdstK8LcaHr1U/ZdrhMd6AvkA3ezGvvnHfy8R1+SYzk
    XaFJfSa52O/XAJmBAFxykF7z+Bl2tmiuUPNv8m2FfeIe+t/Fn7KEnElMLFLWwyjV2fBa
    JffibrpjDu7vo8uTHYJiy750gX3ROnbW3I1trJ94syGj58HGpNpJViUH+yCO4XphR8MU
    IRke3tSgKJyYF82ZRFy+BPi2/yqJxXUp0xJC4EG/+t9NepxIoZDsA0yizkoQ+aYeH8Wi
    4+9Q==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":IWkkdEmxcvCtRDtHUQOu48a0Nfy9hOkbpbRt4aM2x33iJsZ8F6ZSMCbAg3MdK/jjPIlb/q84QRNo8MmcRpDJ/D7ooUkQRAG4Hw=="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2003:e7:9f15:a380:8405:5e7d:275f:82d9]
    by smtp.strato.de (RZmta 47.26.3 AUTH)
    with ESMTPSA id t0079bx51BZgJCu
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate)
    for <b.a.t.m.a.n@lists.open-mesh.org>;
    Tue, 1 Jun 2021 13:35:42 +0200 (CEST)
To: b a t m a n <b.a.t.m.a.n@lists.open-mesh.org>
From: "Aiyion.Prime" <batman@aiyionpri.me>
Subject: irc update
Message-ID: <03d08eeb-a314-1fbb-aafd-1461826feaad@aiyionpri.me>
Date: Tue, 1 Jun 2021 13:35:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1622547342; a=rsa-sha256;
	cv=pass;
	b=xDGy4pSu9lK+Sw4eOdvedvRGH/a2zSnJY2q4CyktUPkksHaRb84p+FpOg7/jAqdaX6bNOo
	NuP0TVeU8QuEvCcw4iiJEGyBsk1JQjzhbsFVVEJBcI14okgPifD0bRPYvomfraAQbIICjp
	uJ4NLuY/WaGoV8BtdiB+iFxCxR4fuKg=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=aiyionpri.me header.s=strato-dkim-0002 header.b=oyTqITgR;
	arc=pass ("strato.com:s=strato-dkim-0002:i=1");
	spf=none (diktynna.open-mesh.org: domain of batman@aiyionpri.me has no SPF policy when checking 85.215.255.23) smtp.mailfrom=batman@aiyionpri.me
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622547342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=bRDb+Y6uX8TnoPYOfz5GGGrA2sbrAG2PwcCsVYAcmYQ=;
	b=CFMWB6sVcptKtHf0RkbPl/D+6mhPoS7tQ6Ldqh/qQAV43P8j/1QBE2NajCHOVnXYhWUGK3
	XZxXqNN9km5+8Urnp2jU0Pbc6+uh2CVBc002ZH9ZymP85BHOcRkLdnKjgHLt2bqOXEH2v/
	/K5M7NQr0tjlOWpGO0ZoqPS+vQrO6e4=
Message-ID-Hash: CSTQYNS6PECJXX4KMOWO6XNRIEEMASEE
X-Message-ID-Hash: CSTQYNS6PECJXX4KMOWO6XNRIEEMASEE
X-MailFrom: batman@aiyionpri.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CSTQYNS6PECJXX4KMOWO6XNRIEEMASEE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hey there;
I just dropped my freenode connection for good and wanted to ask,
whether it'd be possible to announce via mail, if and where #batman
migrates?

Thanks in advance,
Aiyion

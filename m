Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3813F3EB9
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 22 Aug 2021 10:53:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8EBAB810E3;
	Sun, 22 Aug 2021 10:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629622438;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=pQVnRT3VRJR2AqULm6Il2jPb37IBi/a7hihHqYn3FgQ=;
	b=CqTt28OXn66ebjvecLjKel6sfN0THeeyfmLEFd/uncJajlGck3srRDwp/keUD7akjER+LP
	0iTeZbvRhlnLIuFa+kso2n0hno2Qv3BQ4L8CSmfVJlXjxVgZJ1NPOaIz7YPzWGIRkDlR06
	S0LZePlu/Ls9pf8L2rI/XG3i636LPsM=
Date: Sun, 22 Aug 2021 14:23:14 +0530
Subject: Python script to setup batman networks
To: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U2IUBM5OUBNTO3IGKJIUTRRUJ43OFXBZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <162962243714.1204.9511892100308152763@diktynna.open-mesh.org>
From: "Pranav Jerry via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Pranav Jerry <libreinator@disroot.org>
Content-Type: multipart/mixed; boundary="===============7234066923234824652=="

--===============7234066923234824652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7234066923234824652==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D715F803A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 22 Aug 2021 10:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 87286637A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 22 Aug 2021 10:53:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgcj_9tbWm3P for <b.a.t.m.a.n@lists.open-mesh.org>;
	Sun, 22 Aug 2021 10:53:53 +0200 (CEST)
Date: Sun, 22 Aug 2021 14:23:14 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1629622433; bh=C5/Ruilkw11fam63Ts94m+ldyqVSXrYGwz/E6RzAjQc=;
	h=Date:From:Subject:To;
	b=DFdT6via787/iIuH95ttPEIQv2VxQd50L9vWFnPz1y+9J4ZYEIu7TTQ/cKoI+E+o2
	 dJDR2a1J17SGnA5N/KpUj0jhWaO+LwWpJCi9miLWbKn49kra7ynaluOCM0VHb62Mr7
	 lLIR+1X/pOAD/7EiRVsGT5klTgVGUQiurksMOk+hl4KsprRBIU4zICfNP0TqMwi6ay
	 eAxLTZUcGCNQTu9qUZr9Da9i3VDkJZ3CJ9YHr4cAEAQaE1dL0MyJ+JFL+CMI/WDnDG
	 DdWaVMU9vCwIvCWOrkD6TeiDg1wSR3iUpazadx8/SJbjh69SBxNVNTvEuJM9oaPzeU
	 mLffqzpPUCzqA==
From: Pranav Jerry <libreinator@disroot.org>
Subject: Python script to setup batman networks
To: b.a.t.m.a.n@lists.open-mesh.org
Message-Id: <QOG8YQ.NVVN3QKSHSCP2@disroot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=disroot.org header.s=mail header.b=DFdT6via;
	dmarc=pass (policy=quarantine) header.from=disroot.org;
	spf=pass (diktynna.open-mesh.org: domain of libreinator@disroot.org designates 178.21.23.139 as permitted sender) smtp.mailfrom=libreinator@disroot.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1629622434; a=rsa-sha256;
	cv=none;
	b=qh2Ok+W4qKhpAyGFIKkJeq1rxbi2ctjX18UrI+okzG4CKdSb6OpuPAUkU9quGhhc6xkxXL
	3rvNGnDylijKNFcFri3nklV/sZvBrPdMO2H5tgBOgMtMJFT/ohdLL5i2Pbc4ivodDLfy/V
	MDna5Z6xPk4HsCyryzLgot1wcietrkM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1629622434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=C5/Ruilkw11fam63Ts94m+ldyqVSXrYGwz/E6RzAjQc=;
	b=uV9s+7RE+OuW/2h9Fqm97k4qVKSMRnVc2zGNioUXNlxq9Gye76mxp+hKIPuDNCgtd568oH
	2qlMvqTTfwKSF61iIKB8/ie8Bq2+wXjgwMxKSPRGjOVMM+vI89B2lmKj1bu2wD1LORpsEX
	q0q4cGhzS0qmw3B2dqtXZWeTCn2ccsc=
Message-ID-Hash: U2IUBM5OUBNTO3IGKJIUTRRUJ43OFXBZ
X-Message-ID-Hash: U2IUBM5OUBNTO3IGKJIUTRRUJ43OFXBZ
X-MailFrom: libreinator@disroot.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/U2IUBM5OUBNTO3IGKJIUTRRUJ43OFXBZ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi!

I have made a python script [1] to setup batman-adv networks using
systemd-networkd. It requires iwd and systemd-networkd v248 or above.

It starts an adhoc network on wlan0 (or any other wireless interface)
and adds it to bat0. To allow non-mesh clients to connect to
the mesh, if there are two WiFi adapters, the script starts an
AP on one of the adapters.

The script is supposed to be run as a systemd service, since
it can ensure that the dependencies are started before it is run.
The network is configured with systemd-networkd runtime configs
(since it has not implemented configuration via D-Bus)
and the iwd D-Bus API.

All suggestions, criticism and contributions are welcome.

[1]: https://git.disroot.org/pranav/naxalnet


--===============7234066923234824652==--

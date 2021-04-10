Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC7335A997
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 10 Apr 2021 02:39:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4FC64809BE;
	Sat, 10 Apr 2021 02:39:56 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EA37C8035A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 10 Apr 2021 02:39:53 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Problems with Multiple Interfaces
From: joe@careyhome.org
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 10 Apr 2021 00:39:53 -0000
Message-ID: <20210410003953.1234.9147@diktynna.open-mesh.org>
In-Reply-To: <3542676.qYy7ulQ77K@prime>
References: <3542676.qYy7ulQ77K@prime>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: PW377KRTYST6VIWS7AZW43XEQQ5FC7WX
X-Message-ID-Hash: PW377KRTYST6VIWS7AZW43XEQQ5FC7WX
X-MailFrom: joe@careyhome.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PW377KRTYST6VIWS7AZW43XEQQ5FC7WX/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Linus and Simon,

Thank you for your responses.

I did try "batctl ping" and the adjacent device was unreachable.  I could see it with "batctl n". I did not try a simple IPv6 link local ping.  However, I could see it using "iw dev mesh_5g station dump"

I agree that it feels like a problem with ath10k reporting the data rate incorrectly (or not at all).

I am going to try upgrading to the latest release, but it will be a few days.  I'll let you know how it goes.

Thanks again,

--Joe

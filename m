Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 22525377D8A
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 09:58:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DB31780562;
	Mon, 10 May 2021 09:58:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3379180562
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 09:58:26 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
From: asarmanow@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Mon, 10 May 2021 07:58:26 -0000
Message-ID: <20210510075826.12523.26721@diktynna.open-mesh.org>
In-Reply-To: <62326514.53yIySlcTU@sven-l14>
References: <62326514.53yIySlcTU@sven-l14>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: VJYXPPP2IDEJBNOR4X3FZND2224SPDYW
X-Message-ID-Hash: VJYXPPP2IDEJBNOR4X3FZND2224SPDYW
X-MailFrom: asarmanow@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VJYXPPP2IDEJBNOR4X3FZND2224SPDYW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sven Eckelmann wrote:

> Why are you only printing selected attributes and not all?
I wanted to reduce the amount to query for the netlink_print_json_entries function. There are only a few of the attributes needed for each of the JSON commands. 

Best regards,
Alex

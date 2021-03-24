Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F6E347810
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Mar 2021 13:16:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 930C680E6A;
	Wed, 24 Mar 2021 13:16:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 87E5B80024
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Mar 2021 13:16:16 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Batman adv selective broadcast mechanism
From: oytunyapar@hotmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 24 Mar 2021 12:16:16 -0000
Message-ID: <20210324121616.1198.15914@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: LKMHNV4OEJYT5IO3SJAXJCYA7GSCXNGI
X-Message-ID-Hash: LKMHNV4OEJYT5IO3SJAXJCYA7GSCXNGI
X-MailFrom: oytunyapar@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LKMHNV4OEJYT5IO3SJAXJCYA7GSCXNGI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi everybody,

    As I check, batman-adv protocol, sends IP broadcast packets, to every slave interface, including the slave interface from which the broadcast packet is received. Is there any way for preventing the batman-adv from sending IP broadcast packets to some of the slave interfaces (etc. the one which the packet is received)?

Regards.
Oytun

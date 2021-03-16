Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC9433D4D7
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Mar 2021 14:28:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2DD5083CD0;
	Tue, 16 Mar 2021 14:28:20 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D64E8804BC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Mar 2021 14:17:50 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: batman-adv for kbit level speeds, external neighbor info
From: oytunyapar@hotmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 16 Mar 2021 13:17:50 -0000
Message-ID: <20210316131750.1198.63671@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: oytunyapar@hotmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: XV23B5NTJRIEAHAYD6UVTBFMR76XLT4G
X-Message-ID-Hash: XV23B5NTJRIEAHAYD6UVTBFMR76XLT4G
X-Mailman-Approved-At: Tue, 16 Mar 2021 13:28:17 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XV23B5NTJRIEAHAYD6UVTBFMR76XLT4G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi everybody,

    I have some questions about batman-adv.
    Do you suggest, batman-adv, for speeds like 2.4kbit/s (very slow networks)? I tried to use batctl throughput_override, for such a setup. It seems at least 100kbit/s speed is valid for this utility.
    Is there any way, feeding neighbor information to batman-adv externally (etc. using DLEP protocol, as an external link monitor)?
    Thank you in advance.

Regards.
Oytun

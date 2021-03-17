Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A400A33EE69
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Mar 2021 11:39:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 687A980CDD;
	Wed, 17 Mar 2021 11:39:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EFC4380126
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 17 Mar 2021 11:39:10 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Neighbor and originator purge timeout
From: oytunyapar@hotmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 17 Mar 2021 10:39:10 -0000
Message-ID: <20210317103910.1198.71257@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: ONDUUOLG7QMGRMYWJWT5E5DZYYIYLV4M
X-Message-ID-Hash: ONDUUOLG7QMGRMYWJWT5E5DZYYIYLV4M
X-MailFrom: oytunyapar@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ONDUUOLG7QMGRMYWJWT5E5DZYYIYLV4M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi everybody,

    As I checked from source code, BATADV_PURGE_TIMEOUT value determines:
    1- When a node will be discarded from the neighbor list, if this particular node did not send ELP messages for BATADV_PURGE_TIMEOUT amount of time
    2- When a node will be discarded from the originator list, if this particular node did not send OMG messages for 2 * BATADV_PURGE_TIMEOUT amount of time

    BATADV_PURGE_TIMEOUT is constant, and determined in compile time. It seem, it could not be configured via "batctl" utility.

   Am I correct?


Regards.
Oytun

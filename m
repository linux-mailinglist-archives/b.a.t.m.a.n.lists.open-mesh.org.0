Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6D0A635CC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 14:27:37 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AA324843B6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 14:27:37 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1742131657;
 b=R0ZlmdFZKAHrh8BcnfZJ5KJ2tD74TeTdsK/3TbgK9fWGfnA0CVhbBgmR+cKNLdszK9GVR
 kFgPMmppWdSqQnS4Hf0jwsAi8EfIq8G4C/1YfoH7O8jS3Cqs2j11VZRubnnxEeVYkx9Qk29
 O0Ly94z1afw3TgyRnjBLQ5qyTagWXdg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1742131657; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=lpHDtX/C55cwCJumPW4QTJx1GtkSFQObYTqzf7jABro=;
 b=fOUJa3bnVDsWQC+K1xMvpfkMPKqZ7sLMgHaiUkiUBSauIbkAheN3HgdXwoqNjuotICrwl
 64mNYXKtGLWaDemUaB6Hw/Rz691qV5BwdA1lD71RgsA8KOprJE9RIvewfXvKRjKFBT+pFna
 nYvCVHL1UEt1LUB3EnPXFxcajBxqDpg=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=live.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=live.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1FF75816CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Mar 2025 14:27:23 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Limited Connectivity in Mixed Wired & Wireless Backhaul
 Deployment
From: marscatcn@live.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 16 Mar 2025 13:27:23 -0000
Message-ID: <174213164311.2298997.12394499984091384661@diktynna.open-mesh.org>
In-Reply-To: <8603745.T7Z3S40VBb@sven-l14>
References: <8603745.T7Z3S40VBb@sven-l14>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: 34KDA6JA542RPUZIYQGGYICV4D42LW4C
X-Message-ID-Hash: 34KDA6JA542RPUZIYQGGYICV4D42LW4C
X-MailFrom: marscatcn@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/34KDA6JA542RPUZIYQGGYICV4D42LW4C/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Sorry for the format, I'm not familiar with using plain text mode of the outlook web app.

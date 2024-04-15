Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4558A59DC
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Apr 2024 20:27:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1679C81BF7
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Apr 2024 20:27:05 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1713205625;
 b=E3aGVk886hfJSPSDHVqoC/+GMJ3Y1uONfah4g3tE1XF+9nFRf9Dt3urqS+2mPl6eylYMF
 hefbdkDq8CllMaV6TCI5bOXvby/CeT84kOk0lM/kBfZYMHXNB4DhDvvQymeBBwnMHAi0TfZ
 /JHvx9UQc4GIZkaFFLpIWbpMC8gH4Wg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1713205625; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6lYyPVp/8yWrNP8+BKGJLMCDYFzz3z7YEQLSDcB7bFQ=;
 b=X+Vj4e6ZqDTa76rX6lkLJECsrMYw0VLiEhCYNyEQtVgkHJ9IDWkU/xSW3dNx9jt2d5fx3
 CWffFVsuc89/kozNXj+tE2CO4QpnMhQBnSln4tdYdISU/Mw9Y/l2Dtm8694oc5a9FQKkXLD
 26Oe5B271hnvLHg5VPyahQDdOprdmqM=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 88F15800F4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Apr 2024 20:27:00 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: About Throughput in BATMAN_V
From: "Berkay Demirci" <berkay.demirci@protonmail.com>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Mon, 15 Apr 2024 18:27:00 -0000
Message-ID: <171320562055.1045.7722851624364822679@diktynna.open-mesh.org>
In-Reply-To: <1921320.Bm8zEkEi59@rousseau>
References: <1921320.Bm8zEkEi59@rousseau>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: TJQMWKTADBCKMWXNGUSPXICJAREFY27N
X-Message-ID-Hash: TJQMWKTADBCKMWXNGUSPXICJAREFY27N
X-MailFrom: berkay.demirci@protonmail.com
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TJQMWKTADBCKMWXNGUSPXICJAREFY27N/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Just to try different combinations to see if it made any difference, like could it maybe switch earlier. But either way, only when OGM's stop reaching node 2 in network 1, does it switch to network 3.

Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB499D28F8
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 16:03:02 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DD30784027
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 16:03:01 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732028581;
 b=nc/4AGRlcJbDgWFGrwg5PbEeDogyD6c8WEVwmlAPg4CMkqyoaoVJDUXlurpRlQuvsSAo5
 X+2WBCJxsxes3TQS09VspYgb+kYdV3sC2rfs2+eZFXaTTsa8C/0mpcLH5QjA0APPsRbjSnn
 Gm8dx2el1hnUz7aGxqixLYKbNFWgwfQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732028581; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=5dfY3a0Fo2pAFubDkixGCs+mv1d9P81kXypaGSLIT4M=;
 b=L4E5baRRsP6bwTx9lB+9ok4ufa0uoLDySwScziUpiFgyBf4jTDs9SfJaPAlkjxlZpf2xk
 kGFuqwWdTbaE5CUiCwf7R1RHBwnDRWCb+wwA3maeu0mftTBF3XRqIfm9oXkBkpL0TjGfZDF
 GjrXR8cpkDvSb2jBLspxhgJoDZZY6nU=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0B60882351
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Nov 2024 16:02:22 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: IP connectivity issue at openwrt nodes
From: soanican@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 19 Nov 2024 15:02:22 -0000
Message-ID: <173202854203.676947.11109824084026524432@diktynna.open-mesh.org>
In-Reply-To: <3253206.5fSG56mABF@ripper>
References: <3253206.5fSG56mABF@ripper>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: soanican@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: 33BUCDXRMNDB2XHILB5ZSG3WUB7Z7FYE
X-Message-ID-Hash: 33BUCDXRMNDB2XHILB5ZSG3WUB7Z7FYE
X-Mailman-Approved-At: Tue, 19 Nov 2024 16:02:55 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/33BUCDXRMNDB2XHILB5ZSG3WUB7Z7FYE/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,
Yes: "Ok, ethernet bridge to mesh"
Yes, for redundancy, enabling alternative links, expecting batman handling the best links, best routes (enabling the loop avoidance): " Ok, the underlying interfaces for bat0 have "redundancy"?"
Yes, IP is only assigned to bridge interface. Making sure that interfaces are up, ensuring layer 2 connection establishment at all related nodes.

My issue is just here: I can not ping neither from local nor eth0 PC to other nodes/external client. "batctl o" shows empty table. No logs at dmesg. All bat0 sub interfaces are "active".
Any clue for troubleshooting helps a lot.

Best regards,

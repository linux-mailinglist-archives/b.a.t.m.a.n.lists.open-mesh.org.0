Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 616159D3862
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 Nov 2024 11:30:32 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7F52883F80
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 20 Nov 2024 11:30:30 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732098630;
 b=f7462RPOivToiNxGngID39Ku0j6C4YxKBSmHhXJpau0A7to6l55MHqyWnC79tnhLMy63q
 kbDb0DeW8MwSbioqlYnfIvl9JW4tTcn3p9Lt3WUe62F7Yv65Z7XWLAGHKewnFUhveIaTUec
 gDDKVvnyZT31PD5kxQKK30ZWYc5Phno=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732098630; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=81ELSttuwjl5nn2LlybQYeZJZhWhF1coDFq+jCEsCyc=;
 b=nTBJS+W6PkEV8TTTHTDWzEnHCUkAXVv+fq35J0ENPA/DcJLY5NqgyW/AgTIeSdyEUIRt+
 IoVnkOqe13emZUwCqZRZvJ0iX7jj6VCGTPCYV8mbFGQLtIRQgxj7vewxA+6NDOIq43Vp8Il
 FMDpXBt9GsbLes3cwIzodG6iuKjtNiQ=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0929482600
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 20 Nov 2024 11:20:32 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: IP connectivity issue at openwrt nodes
From: soanican@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 20 Nov 2024 10:20:32 -0000
Message-ID: <173209803202.676947.2161146905253530996@diktynna.open-mesh.org>
In-Reply-To: <6133886.lOV4Wx5bFT@sven-l14>
References: <6133886.lOV4Wx5bFT@sven-l14>
User-Agent: HyperKitty on https://lists.open-mesh.org/
X-MailFrom: soanican@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: Q47SMN6LWYMBQ7DD3RFHCO2NWGVLS6BB
X-Message-ID-Hash: Q47SMN6LWYMBQ7DD3RFHCO2NWGVLS6BB
X-Mailman-Approved-At: Wed, 20 Nov 2024 11:30:23 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q47SMN6LWYMBQ7DD3RFHCO2NWGVLS6BB/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

You are right about frame format. Most probably, while converting from 802.11 to 802.3, source MAC address differs so batman is not working with WDS. (can not recognize advertised interface MAC address??)

Now, packet performance  issues arise. I suspect on MTU, fragmentation related issues through cascaded/nested structure of bridge/bat0/link system. Will need to dive into monitoring/capturing (as you also mentioned) this system.
For example, streaming continues for a while and then stops. Simple restart of networking system solves the issue. If you have have a clue, it can help a lot. I will consider opening a thread for this.

Best regards,

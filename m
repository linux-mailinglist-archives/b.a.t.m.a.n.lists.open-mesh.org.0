Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id D39009FEB2F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Dec 2024 22:50:45 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id ACE0283F36
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 30 Dec 2024 22:50:45 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1735595445;
 b=i3RDR3hF3bJz4bBnpYGPNth5WBQ7VdMU55luNcTxNgpiTpPQjmVhwdM4TMQ1FbG3M6MzC
 rtSRlGT0iIFlCBO5QqBMHDN51ZtfBtM4BkIObikgCQ23gs2dufspy0NvSjK7zBZOYTXXa2a
 5vMdiYpUKD5sXqW1vbuLHEHs7f/R9R0=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1735595445; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=glK/zyiFEzrFQMdxKAIJqSDKJ9espmpl0CI+rR8WRxQ=;
 b=bXHkt2qzNScI0fp+3gWftZm6aLlIDi60QXP0rZrQtNjCvxKYjM9kKVn8ej2TMb7WxeAFl
 0lSNYIp1qrl8nCftY3aEmzAsFff3zvRO/hexb6jUqICpUFcXGK5bmXOB3zStoSsCXWBSBDn
 oAEsMJACNECM5cbFHYOesG8k6qYK2Zk=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E3FE0819AE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 30 Dec 2024 22:50:26 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1735595427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=glK/zyiFEzrFQMdxKAIJqSDKJ9espmpl0CI+rR8WRxQ=;
	b=xXlycZzCjSAvQ3LhARUlU4S0dcgRLyKNA6ZDk2nQSK68DxJXOj5pZPsF38c7GSdSUzHUK8
	uFucvhGd4b3laNv96I1GoP8ACGOwyPt5dl/D1cXCKuhV5MwI+dZJNn7KFE4pFY3f/qrYKX
	a8QkkfTTGwQ94HluyrFYFS/pF1VlVaw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1735595427; a=rsa-sha256;
	cv=none;
	b=1hR47PYyebChnmrEgkMvIghKIvE5yOrfSVE3puVhI9/TSkMp1UPLWgCwAGagAxrAiYRoVc
	tYFjwtZMKcQmaeR9LJPSbswJ33I7tQx9YZcLlGIEQ8WriLxd1r2KhyIay1gkCZ5+1ocwjb
	2rWQZjck6NfeqNJQZ0iDLTLwUuQF7WE=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3063854C92B;
	Mon, 30 Dec 2024 22:50:25 +0100 (CET)
Date: Mon, 30 Dec 2024 22:50:25 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Antonio Quartulli <a@unstable.cc>
Cc: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: Map VID 0 to untagged TT VLAN
Message-ID: <Z3MVoSKvCQ6VCvE-@sellars>
References: <20241216-no-vlan-0-v1-1-62586f97fd88@narfation.org>
 <Z2GCU5mOICMJgiwc@sellars>
 <2224062.Icojqenx9y@sven-l14>
 <b309777f-15b0-418f-88d0-a7b8199180ff@unstable.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b309777f-15b0-418f-88d0-a7b8199180ff@unstable.cc>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: FXGEZJK34WPBECFBAFR6VC62UNBX2OR2
X-Message-ID-Hash: FXGEZJK34WPBECFBAFR6VC62UNBX2OR2
X-MailFrom: linus.luessing@c0d3.blue
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FXGEZJK34WPBECFBAFR6VC62UNBX2OR2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Wed, Dec 18, 2024 at 09:02:27AM +0100, Antonio Quartulli wrote:
> I am not aware of 0 being used as a sane VID.
> I have seen it mostly used internally, but never truly used with something
> like "eth0.0".
> 
> Therefore I agree with Sven that this should not cause any real compat
> issue. If we truly break something, then we can probably assume that the
> scenario was already ill formed.

Ok, thanks you two for elaborating on this. Ok, these are good
points. If no one uses VLAN 0 (in some partially broken/worked around/
out-of-spec way) and no one screams right now then I also like this change.

And would probably make sense to make this change now, before
adding (some) VLAN learning to batman-adv. Where otherwise
potentially less informed, random user (compared to node administrators?)
would otherwise more likely use VLAN 0 in an unintended/out-of-spec way.

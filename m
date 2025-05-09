Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F3AAB1723
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 16:18:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9710284AD4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 16:18:42 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1746800322;
 b=wYcTVIGCEJyJ3bE2Ve7ZpmwIkAeQ9neoZFYC3l9tIVU4Bf8prUANoPrBT4+DAt3WqTurV
 I6DfSyKd7vNA1kDMbUH7yWwfl+/B4I3S2osuCNg21O5PNuQ4gpZKUlCLwGevALv/Zn4R+Io
 yViOHlmbLtPo79S8YGDH6Hp7j8fbT+c=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1746800322; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Nn4QC2geRHigWlYfVmoghVqxMGxzVTQ8TbyACpPT6Zk=;
 b=nZJ7d0bc41nqIKP6taYqgtkQn0nQ+79Otnv4NrIO4jw/d5jQ8wIbqce8YyLgNUxFyl2O7
 8Ht8/RO1/8kD0r6A+cQ4iq8juH1GjWBXyzLupkDuXjzuFr95C0W8jaJzp4Z9HattLUlR5ln
 1dDDKD65Rv/bvpqMZqjLLxLUVRCyjDM=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 71CE6845D1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 May 2025 16:17:58 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1746800288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Nn4QC2geRHigWlYfVmoghVqxMGxzVTQ8TbyACpPT6Zk=;
	b=K7xWsx2tKSWEYxG2j+qOHlmMSSxzGJYhXysXRx2DmpCMuugtbTIdh6N1QDK04bU9rZnKNR
	mB28IcXHcbl6LojjCqX0nQ0DsMQTi5GaY8yai01nbGITXNQl6B0AmGYhYOVaWd2MdD828f
	Lfgb0XbS8w/isqdI3SCbd7xPHhEuRJk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1746800288; a=rsa-sha256;
	cv=none;
	b=FygxdDr24U33x92tGmuZYAy4cn9YeCEKYzA4iDE5Us44/mO9g/HUlRFi2hBmePllLn29zk
	ZXBmu1g7vrSdn1xm68Ismk+F4EDGpR2bzZqKYeNma+cymBKZ3fvZ2L4wwibDXrH/yCww1z
	1CAaJ61HSABgsSe2SUrSbKiTZZMDwhI=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id A5BFD54DCEB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 May 2025 16:17:57 +0200 (CEST)
Date: Fri, 9 May 2025 16:17:56 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v6 0/3] batman-adv: add dynamic, bridged-in TT VID
 detection
Message-ID: <aB4OlGLxvaAQt0zf@sellars>
References: <20250221-dynamic-vlans-v6-0-fd94c9b782a7@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250221-dynamic-vlans-v6-0-fd94c9b782a7@narfation.org>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: LPYFISLWRJ4PVN6HMS7CXLVDSMIJQUH7
X-Message-ID-Hash: LPYFISLWRJ4PVN6HMS7CXLVDSMIJQUH7
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LPYFISLWRJ4PVN6HMS7CXLVDSMIJQUH7/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I also got some before and after OGMv1 overhead test results
with this patchset and the VID 0 remapping patch, averaged over
one week. Not as significant as the pending DAT patchset, but still
a -15.94% OGM overhead saving on our ~200 nodes network.

The theoretical upper limit would have been 23.5% with a raw OGM
message size of 68 bytes reduced to 52 bytes. The measured 15.94%
also includes +14 bytes ethernet frame size and batman-adv aggregation
though. The more OGMs are aggregated, the closer you'd get to a
23.5% saving.


$ capinfos ogmv1-1week-before.cap:
...
Data bit rate:       43 kbps
Average packet size: 212.77 bytes
Average packet rate: 25 packets/s
...
$ capinfos ogmv1-1week-after.cap:
...
Data bit rate:       36 kbps
Average packet size: 178.84 bytes
Average packet rate: 25 packets/s
...


Regards, Linus

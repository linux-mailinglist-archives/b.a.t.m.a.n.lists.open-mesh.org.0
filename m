Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C30DCAB0E1D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:03:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7505884895
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 May 2025 11:03:08 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1746781388;
 b=h05HraZ9UdMVlym6Pj2J3QjM5NcITdSmGkw7XHN8jOX+gQ24Z5ZvDDv1ki88+T0hefj69
 D0faFQ6SPEYtE0IVEJ2LfjSG8q+2TQugZWmYWk4pf0/4QzY2PFRrdITpM+Khp6o6s6/vZpf
 cNVtwBQC5M3h1kWLPUHvNAZMCFaAbMU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1746781388; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PJiGenIHT2YggMiOASHfUC8tC9HUeNcLLrzXTixP5yA=;
 b=vsn/uEEJJprsB+egAbNEDaZqT/BDYiPI1NxQsq8fnEPF50yPSEVirVUAvNNVLnOxpadOd
 xC7u97dJOCYWEvvfTn7kSQUGNfdkmnYurh2GhP2q/zsHxwBW/FJnoG0gx85Z1MoCu4B5eCx
 AtgtDGOqo7hI+5YoS5kaPBs1ayMhpl8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 08D01847A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 May 2025 11:02:51 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1746781382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PJiGenIHT2YggMiOASHfUC8tC9HUeNcLLrzXTixP5yA=;
	b=RrmhLgeH0wc9aSiwB+sEt8q1yITzeb/7ut0YdFfaYPsW+4OR1v0C20e5X3GWgy6Hm7qdZ9
	eMlTFaXh1Nn+GjYaclu1DZ+Ro9X3r0Hd5T5dFaXslc/uuwJETEqQSzQk6PxhXBgCvh6IEq
	VMRdyMm2FoeOVuxHVg5rCuk/04xM4ww=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1746781382; a=rsa-sha256;
	cv=none;
	b=hmujLeEel10FhXZODS44WHrQmB4PqmsDxF9hLI6RG9H+tAgHTiKPHg5t+RExrAoo/kQ6mU
	xTwmJgmK1DKY81QOb81H9XJ1FIvKCenZqB69lkaJpIlvHB/yGbeG65iQi3TVIcbX7RnzO3
	buDbHpif/pCuPkQhCHJidsYVW/tyvkg=
Received: from kero.packetmixer.de
 (p200300c59736C7D829705D90AB67a755.dip0.t-ipconnect.de
 [IPv6:2003:c5:9736:c7d8:2970:5d90:ab67:a755])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 2E792FA131;
	Fri,  9 May 2025 11:02:48 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net 0/1] pull request: batman-adv 2025-05-09
Date: Fri,  9 May 2025 11:02:39 +0200
Message-Id: <20250509090240.107796-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: R3AAGXA7U6BGEBHLQ3XMI4YYHNSR2KHL
X-Message-ID-Hash: R3AAGXA7U6BGEBHLQ3XMI4YYHNSR2KHL
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/R3AAGXA7U6BGEBHLQ3XMI4YYHNSR2KHL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here is a bugfix for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 61f96e684edd28ca40555ec49ea1555df31ba619:

  Merge tag 'net-6.15-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2025-04-04 09:15:35 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20250509

for you to fetch changes up to 8772cc49e0b8ab782e475ce5ef659eedab601a09:

  batman-adv: fix duplicate MAC address check (2025-04-16 20:52:33 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - fix duplicate MAC address check, by Matthias Schiffer

----------------------------------------------------------------
Matthias Schiffer (1):
      batman-adv: fix duplicate MAC address check

 net/batman-adv/hard-interface.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 357BEA0C25E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 21:06:00 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0AEE183F46
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Jan 2025 21:06:00 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736798760;
 b=DtQDVnCF4OLh0IIeBZLGQB+3CtAfJtqVUOQc6TpR0K5b3t/5GoLS7fZ9UWVNAqz0be20q
 tUKfJbfHYPGWU38t9VBjBwmObS/QumAWqvV4FdQcTnM4jEsDtmyw9yRmSU12LfZdRBG67tW
 dtLUmjxFbPDV/wsSprk7K651jY/neGo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736798760; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=AoXTGHyiKhWIDgq2hdqpWGIBXDqgYyRlVbhyYPaVdh0=;
 b=SwxLsrm1QJMbQgKZSfM9JvFlw5N0enOqS6V0emIGSfqhTiLKoAb2axZkqSFUIwyvPwbbf
 xuFl6YHaiS5dUCMfR6/k6Bglfad+ifaeSVCLZfiG+ATDrR8cf/jSe09l0oW7+H1NU0xS5mu
 zEx62eZRWuRo9OGs95QbGPKQ6hfK3SE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3AF9A81A5F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Jan 2025 21:05:15 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736798715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AoXTGHyiKhWIDgq2hdqpWGIBXDqgYyRlVbhyYPaVdh0=;
	b=eTwfww8IUqdbyCv1JwCEOku8/M0XSr+xO8i1VWrHilEO/39BlJbXAau5sDwSXAAwoZfPdf
	o2SXqMPH5bZp4/X36EYLsUGe/wE0CDO6hvBHsGBW0P7x1RsIBVODqxi3ypOJNKqCC3M7NU
	2oX146shdOOuT62E4vcMKO3gfP1zDlc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736798715; a=rsa-sha256;
	cv=none;
	b=wsZTYAndjXrheVqu6PeFUvmkCHXowv23pIaJFwgIivniGFgbuXjGYYBahRjElHXTGVdtFV
	vr6Oaj3sqKlK6DY/A2iOQ6D4eb7oirdf5G0Yr4pDSprx4iKI0Qbf5ONAGZlsJCV2En+bFg
	tzwLqf4Fvw/9onbZdnvOSONhzHNmtj4=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 666E5540FD3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Jan 2025 21:05:14 +0100 (CET)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH v8 0/3] batman-adv: increase DAT DHT timeout
Date: Mon, 13 Jan 2025 20:31:38 +0100
Message-ID: <20250113200510.18681-1-linus.luessing@c0d3.blue>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: 3GHSNXE5AIR5PA5GF4DDRYWZMX26JRM6
X-Message-ID-Hash: 3GHSNXE5AIR5PA5GF4DDRYWZMX26JRM6
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3GHSNXE5AIR5PA5GF4DDRYWZMX26JRM6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

This patchset increases the DAT DHT timeout to reduce the amount
of broadcasted ARP Replies.

To increase the timeout only for DAT DHT entries added via DHT-PUT but
not for any other entry in the DAT cache the DAT cache and DAT DHT
concepts are split into two separate hash tables (PATCH 2/3).

PATCH 3/3 then increases the timeout for DAT DHT entries from 5 to
30 minutes.


The motivation for this patchset is based on the observations made here:
https://www.open-mesh.org/projects/batman-adv/wiki/DAT_DHCP_Snooping


In tests this year at Freifunk Lübeck with ~180 mesh nodes and Gluon
this reduced the ARP broadcast overhead, measured over 7 days, as
follows:

- Total:           6677.66 bits/s -> 677.26 bits/s => -89.86%
                   11.92 pkts/s   -> 1.21 pkts/s   => -89.85%

  - from gateways: 5618.02 bits/s -> 212.28        => -96.22%
                   10.03 pkts/s   -> 0.38 pkts/s   => -96.21%

Also see graphics and a few more test details here:
- https://www.open-mesh.org/projects/batman-adv/wiki/DAT_DHCP_Snooping#Result-2

These patches (v5) have been applied in this mesh network without issues
for 3 months now.

Regards,
Linus

---

Changelog v8:
- PATCH 1/3:
  - fixing / cleaning up includes
  - fixing function kernel doc titles
  - fixing bugs introduced in v7 in the error handling of
    batadv_orig_dump() and batadv_neigh_dump(), using a goto
    pattern with more explicit labels

Changelog v7:
- adding PATCH 1/3 to add the batadv_netlink_get_softif() wrapper to
  reduce the amount of duplicate code, both in the current code base
  but also for the next PATCH 2/3

Changelog v6:
- removed renaming+deprecation of BATADV_P_DAT_CACHE_REPLY in PATCH 1/2
- small commit message rewording in PATCH 1/2

Changelog v5:
- rebased to current main branch
  -> removed now obsolete debugfs code

Changelog v4:
- rebased to: acfc9a214d01695
  ("batman-adv: genetlink: make policy common to family")

Changelog v3:

formerly:
 "batman-adv: Increase purge timeout on DAT DHT candidates"
 https://patchwork.open-mesh.org/patch/17728/
- fixed the potential jiffies overflow and jiffies initialization
  issues by replacing the last_dht_update timeout variable with
  a split of DAT cache and DAT DHT into two separate hash tables
  -> instead of maintaining two timeouts in one DAT entry two DAT
     entries are created and maintained in their respective DAT
     cache and DAT DHT hash tables

Changelog v2:

formerly:
 "batman-adv: Increase DHCP snooped DAT entry purge timeout in DHT"
 (https://patchwork.open-mesh.org/patch/17364/)
- removed the extended timeouts flag in the DHT-PUT messages introduced
  in v1 again
- removed DHCP dependency


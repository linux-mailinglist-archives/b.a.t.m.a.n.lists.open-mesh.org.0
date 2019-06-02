Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E7F32309
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jun 2019 12:52:54 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 81CF381B7B;
	Sun,  2 Jun 2019 12:52:48 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 0ED7080597
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jun 2019 12:52:45 +0200 (CEST)
Date: Sun, 2 Jun 2019 12:52:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1559472765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dmtovcdyDk1jGr+PJz0wfak9NrV7VhH0fJF83Q0zjBM=;
 b=H8+QougqM7xJLp8dIK1ewvX8pwWpoPsBFOGn9D5reQEiFSscGz+UBSNdkp5hhPN+OFJD0c
 gG+t0bshXkSzCcJ4hJtasEL538wML3htugnU/VXjNMnQHsH8ERCM9KS2oW0PpH0gkVQ4kW
 Iw01OsFPmHfJ+2Br7qmS75/TK83Ew//F3gkO/TBBWbIs+ue9cnUgZ21gkwHJ4NXx1nDqvx
 VVKw5rAq6eo0ejFfxS1INT7+7RiBaZnM83ffabvFAvOCljvdM1lpp659KAVJJ6mYoZFgC/
 sSXfRxB/HBzamQFgFUIPx0xWEFvJucoPQxLM2lde6iMd+mvbCLSb1hpJsauyCA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH maint v2] batman-adv: Fix duplicated OGMs on NETDEV_UP
Message-ID: <20190602105241.GB2995@otheros>
References: <20190602095135.15604-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190602095135.15604-1-sven@narfation.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1559472765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dmtovcdyDk1jGr+PJz0wfak9NrV7VhH0fJF83Q0zjBM=;
 b=jDK/Gm5tFuFW1JeTkSkhHxdJfEw6eo0dHJCF96uK0Ljwu3VKm6UjxTLantPD2mkc7U0cBD
 JOQzop5541NhJgtphUq5KKNrEzggKeQYYGTs32T2/9lA09ep+R9ptJDvjWsQMHWWj4Qvnq
 Nt6tRFg0hhiwPDeHZum13wSRMWR3W/fp22z94DbYjtrQRoOSWpvLtZ1Qq8n+X6/bPPviS7
 r7v+Or5w2vBDdOO0sLi9ITMEihsVh2MgS4A4JjF5A81wfr2tzmHllhEtmryAdR1lBa/0O3
 tb0hbXlc3nuL2HA3UVTFEcPuk6OEHYkOAYvoJNTGFefmRlvm0PsT2qPP3R/vAg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1559472765; a=rsa-sha256; cv=none;
 b=N3ScBCjYyiaKj53hsINGIfX2tKL2GISAZvViKwcmvJf4V35TI9TIXH7/Iuibm/ElXIu2K9
 0td/NUVLN7GmPzQjobAE/AqVBaEsa5f4FRz2dv6IVn6JvBjytW6I9JYBGDlcyKSo4Zbz1N
 bMRecyp2wj9/curJ+T+Zsq1iIQ7FKW5icely5rHF2KMvjWcTEIYQcq1HzqgJwLHDd5Xz1Z
 M7nY3bhwJUCxGCiOBGM3+6ZAY9VT1a0rlXnYAnBN5VKP0prwJNgaX+Ab7gP0g/d7aBt5Jp
 LL0ACvhXCS40jGouIXSEXRN8p+1VDdczcGtVCeld64g9sS2QK+z6D5z9NaNdXA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Antonio Quartulli <a@unstable.cc>,
 Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Jun 02, 2019 at 11:51:35AM +0200, Sven Eckelmann wrote:
> The state of slave interfaces are handled differently depending on whether
> the interface is up or not. All active interfaces (IFF_UP) will transmit
> OGMs. But for B.A.T.M.A.N. IV, also non-active interfaces are scheduling
> (low TTL) OGMs on active interfaces. The code which setups and schedules
> the OGMs must therefore already be called when the interfaces gets added as
> slave interface and the transmit function must then check whether it has to
> send out the OGM or not on the specific slave interface.
> 
> But the commit 0d8468553c3c ("batman-adv: remove ogm_emit and ogm_schedule
> API calls") moved the setup code from the enable function to the activate
> function. The latter is called either when the added slave was already up
> when batadv_hardif_enable_interface processed the new interface or when a
> NETDEV_UP event was received for this slave interfac. As result, each
> NETDEV_UP would schedule a new OGM worker for the interface and thus OGMs
> would be send a lot more than expected.
> 
> Fixes: 0d8468553c3c ("batman-adv: remove ogm_emit and ogm_schedule API calls")
> Reported-by: Linus Lüssing <linus.luessing@c0d3.blue>
> Signed-off-by: Sven Eckelmann <sven@narfation.org>

Tested-by: Linus Lüssing <linus.luessing@c0d3.blue>

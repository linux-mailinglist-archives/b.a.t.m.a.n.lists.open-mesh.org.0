Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B025532A3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 21 Jun 2022 14:58:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E6FF383247;
	Tue, 21 Jun 2022 14:58:03 +0200 (CEST)
Received: from mail02.heig-vd.ch (gwsmtp1.avdtec.ch [145.232.233.54])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CFB1880469
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 21 Jun 2022 14:15:36 +0200 (CEST)
X-ASG-Debug-ID: 1655813709-111d9801c81881d80001-MogPJp
Received: from EIMAIL03.einet.ad.eivd.ch ([193.134.222.4]) by mail02.heig-vd.ch with ESMTP id UWH91IybVa7Fl1lK (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 21 Jun 2022 14:15:09 +0200 (CEST)
X-Barracuda-Envelope-From: Daniel.Rossier@heig-vd.ch
X-Barracuda-Effective-Source-IP: UNKNOWN[193.134.222.4]
X-Barracuda-Apparent-Source-IP: 193.134.222.4
Received: from EIMAIL01.einet.ad.eivd.ch (10.192.41.71) by
 EIMAIL03.einet.ad.eivd.ch (10.192.41.73) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.9; Tue, 21 Jun 2022 14:15:09 +0200
Received: from EIMAIL01.einet.ad.eivd.ch ([fe80::456a:efea:9ad6:45be]) by
 EIMAIL01.einet.ad.eivd.ch ([fe80::456a:efea:9ad6:45be%5]) with mapi id
 15.01.2507.009; Tue, 21 Jun 2022 14:15:09 +0200
From: Rossier Daniel <Daniel.Rossier@heig-vd.ch>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: SOO and wireless datalink protocol
Thread-Topic: SOO and wireless datalink protocol
X-ASG-Orig-Subj: SOO and wireless datalink protocol
Thread-Index: AdiFaIwwbvwBxB0hSueuZnrloPhXnw==
Date: Tue, 21 Jun 2022 12:15:09 +0000
Message-ID: <b3f964417303409691705d54b274a30a@heig-vd.ch>
Accept-Language: fr-FR, fr-CH, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.204.11]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[193.134.222.4]
X-Barracuda-Start-Time: 1655813709
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://quarantine.heig-vd.ch:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Barracuda-BRTS-Evidence: smartobject.gitlab.io
X-Virus-Scanned: by bsmtpd at heig-vd.ch
X-Barracuda-Scan-Msg-Size: 1788
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.98867
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655813736; a=rsa-sha256;
	cv=none;
	b=1fgaLFl9zGvej5FoLAgdaKCLw9PGcuh4nksQgCtWngit5hYbuKTFryK6CZvrcWqdkU8B51
	N/OAmZ54eypsfVhyD5XEX7hTp3sGqwZJQE4AqZ3Vh02BPKcIHI5O5v+pAvhomrbFuwsgAo
	VeYnI4PHpQsT1holGY1qpFkYl0S7uTE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of "btv1==171974345f7==Daniel.Rossier@heig-vd.ch" designates 145.232.233.54 as permitted sender) smtp.mailfrom="btv1==171974345f7==Daniel.Rossier@heig-vd.ch";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655813736;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CBrGH6FYJpcXgmTflRAAM/fRxqOS0SL1xENvnRltNfM=;
	b=pHepJBcndgPXK9HsSAAY1yqaMKEjuWm5eoJvJEytT9pvXVnIubuG1z6UJudwjaOIL29x78
	HSbCoC3Wc7aL9I57c/HPyOCPHdeTWw3PeGoTkJmf27vYIg2Q2e9QcVmF0KtDcwqxOyndCI
	aDbhqDDTa4wS1Mj4biaGE1f6lPX8NEk=
X-MailFrom: btv1==171974345f7==Daniel.Rossier@heig-vd.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 3KFH243QWSZNMSGVMLF5VZOKOOPIEYYM
X-Message-ID-Hash: 3KFH243QWSZNMSGVMLF5VZOKOOPIEYYM
X-Mailman-Approved-At: Tue, 21 Jun 2022 12:57:59 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3KFH243QWSZNMSGVMLF5VZOKOOPIEYYM/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Dear b.a.t.m.a.n. experts,

I'm reaching batman experts because I would like to know if batman could be=
 used (or alternatives)
in the scope of our SOO framework (https://smartobject.gitlab.io/soo/).

SOO technology is usig a fully de-centralized approach where each local dev=
ice (called smart object)=20
may run one or several entities. These entities (that you can consider as p=
articular VMs) are (constantly) broadcast to their neighbours meaning that
a memory snapshot is performed, compressed and sent out (~700 KB - 2 MB). T=
he entities are self-managed in term of lifecycle.
They cannot decide where to go in the network, but they are simply broadcas=
t, and may decide to kill themselves or kill other entities
and stay resideng for further propagation (broadcast).

Smart objects are linked via WiFi and we consider any mesh tolpology of cou=
rse.

Based on such a model, we do not need any routing, we just need that each l=
ocal device broadcast their running entities to their neighbours,
which in turn do the same thing to their own neighbours, etc. Of course, we=
 need to taken into aocount "hidden nodes" and
figure out each node does not interfer with other nodes.

In this context, we develop Winenet datalink protocol which relies on unica=
st and manage a list of neighbour where each=20
neighbour becomes speaker each at his turn. We observed that using a pure b=
roadcast decreases the bandwidth and is harder to manage.

The protocol also manages hidden nodes.

We guess it is not optimal, it is working but there is still too much laten=
cy.

Do you think batman could help us to achieve this kind of broadcast in such=
 a wireless configuration?

Or would you have any suggestion to improve the system?

Many thanks for your help

Kind regards
Daniel

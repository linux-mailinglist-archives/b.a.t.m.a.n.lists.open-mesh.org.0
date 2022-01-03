Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BACC483561
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 18:12:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CD6B083E8B;
	Mon,  3 Jan 2022 18:12:09 +0100 (CET)
Received: from simonwunderlich.de (simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id A2E478038C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 18:12:07 +0100 (CET)
Received: from kero.packetmixer.de (p200300c597476Fc09AF9daD664F33736.dip0.t-ipconnect.de [IPv6:2003:c5:9747:6fc0:9af9:dad6:64f3:3736])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 352C4FA194;
	Mon,  3 Jan 2022 18:12:07 +0100 (CET)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH 0/1] pull request for net: batman-adv 2022-01-03
Date: Mon,  3 Jan 2022 18:12:02 +0100
Message-Id: <20220103171203.1124980-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641229927; a=rsa-sha256;
	cv=none;
	b=0ESE9l4blmngCEG/tQn10B5gOnTuZmUUU1COpPwVwvDi/TLdlOJHE82l405GWzXZAV+HzT
	bmM33WLQoyLpD3dnGjn+Revpj9BeyTwSZ8Np3/KDs0oeJZ5YtPI3VCcRxvkg8r9hafE8Pf
	yG7dI2ovX2Im8j2Fk3rQLfbsqifvbcI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641229927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b9XcjE9nl9HEGyZcVi3lcURWtu0W69umEh05Ntx/+Bo=;
	b=CV+irwY7IpkLUBrdLWDVgYCwFm9bkZwQz7vbW3DFOyRoqBi8YvkhsAA9jpWGVRztuO/kZ9
	xUDGiHGt2g/q/ceUxDbyJSILbdsBVDU3TxgALHEaV6n93APyhglpuZGiCqSl9Yo7Wxsrx0
	XBKMvzLZBciuWxKYGh4mmA+UiPT9DX4=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IMBFXLLXPPHC3T7UWQSAD7CHWBE5ED3J
X-Message-ID-Hash: IMBFXLLXPPHC3T7UWQSAD7CHWBE5ED3J
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IMBFXLLXPPHC3T7UWQSAD7CHWBE5ED3J/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

happy new year! Here is a bugfix for batman-adv which we would like to ha=
ve integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 66f4beaa6c1d28161f534471484b2daa2de1dc=
e0:

  Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/h=
erbert/crypto-2.6 (2021-11-12 12:35:46 -0800)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-202=
20103

for you to fetch changes up to 938f2e0b57ffe8a6df71e1e177b2978b1b33fe5e:

  batman-adv: mcast: don't send link-local multicast to mcast routers (20=
22-01-02 09:31:17 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - avoid sending link-local multicast to multicast routers,
   by Linus L=C3=BCssing

----------------------------------------------------------------
Linus L=C3=BCssing (1):
      batman-adv: mcast: don't send link-local multicast to mcast routers

 net/batman-adv/multicast.c      | 15 ++++++++++-----
 net/batman-adv/multicast.h      | 10 ++++++----
 net/batman-adv/soft-interface.c |  7 +++++--
 3 files changed, 21 insertions(+), 11 deletions(-)

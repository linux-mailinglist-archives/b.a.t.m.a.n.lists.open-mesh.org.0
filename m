Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BE8B3EC0B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  1 Sep 2025 18:16:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 963F483E2E
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Sep 2025 18:16:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1756743370;
 b=xnrHVvIAdIlypMF+UloN0sArl3qjc8uCPnrxU9hCeb3vEwm+6gkUGvXyx9oYA3n6yeD/x
 cXgzE9pIXm37JGgaTJ88/T2RnLg9ojJzGdUaTXrn3IQDfcMbuP3u0okL45NSRCysFAJtjIC
 zrPPzTeAFYrazNvrChE77t42QVukKtg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1756743370; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dHfMmgOay6SnJhUxCSVnUjSJVqKM4w+xTEq1XLRPUA8=;
 b=p/grzOoLI0IWrmjzrUfhNQ1l98m0/MJFXqcX1UeC+X6Y6OqRA+8r/UpCNTGlIctfvT9nU
 GDwKr+woyFm7WKboQ5W9fZdqF7Ck1lW+Z2leha29oOvZTIptsnDzZExiCgZJfW77ZsZTXA5
 F787fCqVzsXuip9oLma7XH76qux99/Y=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail;
 arc=pass;
 dmarc=fail header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4C65082FA8
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Sep 2025 18:15:54 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1756743364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dHfMmgOay6SnJhUxCSVnUjSJVqKM4w+xTEq1XLRPUA8=;
	b=eo//PEgky4fZ7o5T3tsoh5Df78HWMEl8O+yF57Vb1SOCXYp6e9Ff3fOSTgmrkUjrF3pi6l
	xxOwTn++t5BzTYUIGqunEu6n8YKtn/Fbfj6f2qxW1V4qQPxMW+L59xBKIm/DwOu29dh/2C
	OODzIBKEpGhdKGXwwbnkdLrCiOj8SbU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=simonwunderlich.de;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1756743364; a=rsa-sha256;
	cv=none;
	b=x2W8w2EoJd2D8g1Rj/N0JKhaucdD/JmQwbibEBjXLqnO4CVNtXRdsLrPrzGZgIjG9HG6WC
	MZetwrfx7ZFnqxY19HpLqukhGcQJ2fCLEjl2ZtSiYvOvGtG294ewhENQjHrJ5SoPfkQS+C
	vYBhWNbzWIBRqPK5m0CJxKNdWmEJRsE=
Received: from kero.packetmixer.de
 (p200300c59705add84F8b09D1D73C2E85.dip0.t-ipconnect.de
 [IPv6:2003:c5:9705:add8:4f8b:9d1:d73c:2e85])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id 52666FA12C;
	Mon,  1 Sep 2025 18:15:52 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net 0/1] pull request: batman-adv 2025-09-01
Date: Mon,  1 Sep 2025 18:15:45 +0200
Message-ID: <20250901161546.1463690-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: MGWO37LZBMYTRDAV2ZO7FGJT6RACXVF5
X-Message-ID-Hash: MGWO37LZBMYTRDAV2ZO7FGJT6RACXVF5
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/MGWO37LZBMYTRDAV2ZO7FGJT6RACXVF5/>
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

The following changes since commit 6439a0e64c355d2e375bd094f365d56ce81faba3:

  Merge tag 'net-6.17-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net (2025-08-21 13:51:15 -0400)

are available in the Git repository at:

  git+ssh://git@open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20250901

for you to fetch changes up to d77b6ff0ce35a6d0b0b7b9581bc3f76d041d4087:

  batman-adv: fix OOB read/write in network-coding decode (2025-08-31 17:01:35 +0200)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - fix OOB read/write in network-coding decode, by Stanislav Fort

----------------------------------------------------------------
Stanislav Fort (1):
      batman-adv: fix OOB read/write in network-coding decode

 net/batman-adv/network-coding.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

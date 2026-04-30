Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENp0ALEI82lswwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:45:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB0649ECD9
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:45:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6EA8F85A88
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:45:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777535152;
 b=T/wuTo/Dt3ffToG1/5+eplRAbCf+RKfZwnGYFFDJuGpkaomlw5TfoHxiPVEKTW9au7GsR
 07rWVbg0EVPrL8xAe+Ns1oU0xbmJn0PkwdJ95EYbXNSV5lbico+xD4jOSFLSgO+JbLN/vsK
 TMvEXvc1q8eeneM1E+dxzDLXMrsFxTo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777535152; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b5T6Tm8mn1JHMRFC8Mtn+CMd8n0ePg2A3I4KI2l1PNA=;
 b=TplGr7/GYSlf0HzGJrxVoZGAuxTRadZBxwn4y14OOsNbih6N9a9SvqZHveTMnxkAGjqW7
 Z33t4oPT94YaIROn9HEFzwQYgAILGJ+b4CJ3xQkamUndscViEYTrVDr562WR1Zj9Tz1rw3f
 9I0KC4/fFGIAEcXmtVMpW83s3cudDUU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 06BD5842E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Apr 2026 09:40:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777534840;
	b=0+Gj/7Ik6FegOQyzBtrG1eh1XUKmz80qHao1bMSYM/PWY/lScHLfQ+fRU6ZG77MECEIkvi
	1j+KA1igEhpISG71+ANSc7s4t08vwFzeYpnB6enCyCKAMZoISFe8bc43h1l3w8mW6ed55b
	lX2+qfUOK4hLsX/qZPot1Ac86dqBowM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=R0rS2QeC;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777534840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=b5T6Tm8mn1JHMRFC8Mtn+CMd8n0ePg2A3I4KI2l1PNA=;
	b=2dwbpxDLTB4PCBqWQnTQa/Y/U3rABp/Z4mUTeITwoz0D7bNS9PW8Ktrs6Us/81QhV1d7vU
	F6ZxPbsnIC89gPtcBoOxhLjW8bsG8KUB1RsK34Zxv6w9jpQNSdxQIgkiTY8LzQIMddfX9d
	O3fJMR0V89LpLYDVN0k+IejgOqD29iA=
Received: by dvalin.narfation.org (Postfix) id 10CBB1FF65;
	Thu, 30 Apr 2026 07:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777534838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b5T6Tm8mn1JHMRFC8Mtn+CMd8n0ePg2A3I4KI2l1PNA=;
	b=R0rS2QeCbZsX3riHy7LG7YuYAQ5vd7gYDMFY/W+HjoTIOOeNKyBh443kjjMRPmsJHpQvsO
	bxR5mog0StlF0o+J/ijdo4EmDu4rYIuxR3bAILL45VX37Y6AoiSG8AJ0R5aRkWd5XN6y86
	pqCP2QpjyJoSD8H9jgi4QHnqIyZZPMs=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org, Haoze Xie <royenheart@gmail.com>,
 Robert Garcia <rob_garcia@163.com>, b.a.t.m.a.n@lists.open-mesh.org
Cc: Simon Wunderlich <sw@simonwunderlich.de>,
 Robert Garcia <rob_garcia@163.com>, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 Xin Liu <bird@lzu.edu.cn>, Ao Zhou <n05ec@lzu.edu.cn>,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Antonio Quartulli <a@unstable.cc>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sasha Levin <sashal@kernel.org>,
 Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH 5.15.y] batman-adv: hold claim backbone gateways by
 reference
Date: Thu, 30 Apr 2026 09:40:34 +0200
Message-ID: <3609597.QJadu78ljV@ripper>
In-Reply-To: <1857579.VLH7GnMWUR@ripper>
References: <20260430071645.3030702-1-rob_garcia@163.com>
 <1857579.VLH7GnMWUR@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1959533.CQOukoFCf9";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-size;
 news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: YM5RYRQOF65UJCUUWENZRGRMRCIV7OA4
X-Message-ID-Hash: YM5RYRQOF65UJCUUWENZRGRMRCIV7OA4
X-Mailman-Approved-At: Thu, 30 Apr 2026 09:45:09 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YM5RYRQOF65UJCUUWENZRGRMRCIV7OA4/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 9DB0649ECD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.11 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,163.com,lists.open-mesh.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[simonwunderlich.de,163.com,gmail.com,lzu.edu.cn,neomailbox.ch,unstable.cc,davemloft.net,kernel.org,lunn.ch,lists.open-mesh.org,vger.kernel.org,narfation.org];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

--nextPart1959533.CQOukoFCf9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 30 Apr 2026 09:40:34 +0200
Message-ID: <3609597.QJadu78ljV@ripper>
In-Reply-To: <1857579.VLH7GnMWUR@ripper>
MIME-Version: 1.0

On Thursday, 30 April 2026 09:38:05 CEST Sven Eckelmann wrote:
> Sasha Levin <sashal@kernel.org> picked it up for 5.15.y (on Sun, 19 Apr 2026 
> 21:13:58 -0400, MsgId 20260419195610.batman-adv-5.15@kernel.org). 
> Yes, it was not yet published or 5.15 - so maybe fell through the cracks.

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?h=queue/5.15&id=6fd37208adf6771125b59e1ae0452561024be4e2

Regards,
	Sven
--nextPart1959533.CQOukoFCf9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCafMHcgAKCRBND3cr0xT1
y7V/AP9BMH0S8bDU+veLaqdqd/7YjiL5klqj+wG7K6SUqPoNAQD/ZFycWLIHLcz3
YaivZtqG9mnJJkSDo399V/GNymYUZAk=
=lQ4+
-----END PGP SIGNATURE-----

--nextPart1959533.CQOukoFCf9--




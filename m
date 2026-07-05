Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7SG4Erl+SmqSEAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:56:41 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF5F70A863
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:56:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0K2iysPj;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B96F783761
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 05 Jul 2026 17:56:40 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783267000;
 b=QOA8x756Du9d6wr6Snw4G8Y228ckn6DEHdqcAXN9g68RvdidEMCKB0EVeoRsZun4Wsdwt
 S+vcfkIeNkS2RVmxFU63cDgHUR4UcN1gHAKNfDDRo8Y3QCPqFIgs8fgYau3dQbQtnRAlZRP
 vO+9DeHIMNhP16tW3CSu6+wqJMIuwVI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783267000; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=m2MvIrFC1JWM962Nn0sDBtutlrYF4V2CQxPKHmsj+zw=;
 b=ym9S8ovSy9EZDsBFMqY1OBlYq2/ourBKDSn4VMcN+8fGihs9mLwy1TDE3vGw/lzNQkDbJ
 2WxAz1H6rMrrlHfRsCOAFp3IhUeQOurUb/MhFCUqHfAs9HRyYZOx8i9saRVzkMBs/t7etdz
 dLlP4BZLCq3RGNsOUJ8Mx0mRDoSqWlk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 89029810D1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 05 Jul 2026 17:54:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783266856;
	b=cMk5Z4naKuGrgq/lqEtchmrbOBkUGmKGPDGgWhetqIXq9tiSpGBgTivWtUVE7ujRxyZSnd
	ikxuKaoKgFSAIGZPaHMLtf32KhLNFJsplI1ZzkwSZTuWDSjAlzk9qQxBCaZcCQLg2Sekl1
	3w6acl5pwPqzORt4S+ZbXG9e8tLNdMk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783266856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=m2MvIrFC1JWM962Nn0sDBtutlrYF4V2CQxPKHmsj+zw=;
	b=top8PAfnaNE0g4exs8jr1bm1B5QuC1KRLk2bBXD3fOKidQ0k32TaB+2jRx7ErzniBraIBk
	UO1pfB3Mp0ssERs1i3ICRQu+DYQjQgG2XgtRKnDcmZXj2UNl5HRDbyCU5827CHSDd7I7+I
	C/mCqtWfOZBSNpeaXJWCdcJm5twyhno=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=0K2iysPj;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id C55D6203F3;
	Sun, 05 Jul 2026 15:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1783266845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=m2MvIrFC1JWM962Nn0sDBtutlrYF4V2CQxPKHmsj+zw=;
	b=0K2iysPjTuwXKN29mTzzkMyZWXBYNma3mOaT38/4KVSfUrLGH1HjC2wBovM7ROT7kahy8W
	sO7eJf904a/ODOx6WppliBHAjjNgT8ebd2qscYAiFkP0irRdkp5ARay5nYeofVu/Hm4twn
	YqSstQACpYUT2d4PnrL0j1QhlTFKcyk=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 0/5] batctl: genl_json bugfixes
Date: Sun, 05 Jul 2026 17:53:34 +0200
Message-Id: <20260705-bugfixes-genl_json-v1-0-8cc79129012c@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP59SmoC/yXMUQqDMBCE4avIPjcQbY3gVaSUJhnjikTJNqUg3
 r1pffxg/tlJkBhCfbVTwpuF11hQXypy0zMGKPbF1OjG6E7flM1h5A9EBcTlMcsalfFXA9t67Yy
 nEm4J/0nphvtpyXaGe/2e6Di+t4t6wHYAAAA=
X-Change-ID: 20260704-bugfixes-genl_json-6d36eb5d0c6d
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=940; i=sven@narfation.org;
 h=from:subject:message-id; bh=b87Q4V2slIrjL7ptZy5iXUv+i+PglKAvY/PSizbBJNU=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFledXznjz84tsqX20zGT/W329ZZ7dtT0+ODs/cxOpz/G
 sk1ldm1o5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARxTkM/0MfOT5J8pX9+4Wx
 +8HRDRuvmx2fvUzqxEWRRR/O1shoHPBlZPiyQCZV6b77QqGTG5a2X/fWnt17xuJjwnvFVYUssxh
 uTGYEAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: CT3ZXU2RKW7UQ6B47JNDY3J57DUTLIBY
X-Message-ID-Hash: CT3ZXU2RKW7UQ6B47JNDY3J57DUTLIBY
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CT3ZXU2RKW7UQ6B47JNDY3J57DUTLIBY/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:b.a.t.m.a.n@lists.open-mesh.org,m:sven@narfation.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:from_mime,narfation.org:email,narfation.org:mid,narfation.org:dkim,lists.open-mesh.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBF5F70A863

I have now splitted the bugfixes for batctl in topic branches to make it a
little bit easier to review. Similar to the "random bugfixes 2026-06-21"
patchset, they are just various (mostly minor) problems which should be
tackled at some point.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (5):
      batctl: genl_json: avoid negative chars in sanitize_string
      batctl: genl_json: reject unknown options in handle_json_query
      batctl: genl_json: don't return negative error codes to main
      batctl: genl_json: escape non-printable characters as valid JSON
      batctl: genl_json: drop leftover network coding log level

 genl_json.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)
---
base-commit: eb9597d4ca6db17c579f5ae9443c51b013e2fe65
change-id: 20260704-bugfixes-genl_json-6d36eb5d0c6d

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


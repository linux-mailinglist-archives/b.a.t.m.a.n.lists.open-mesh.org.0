Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KeuJHNDB2oCvAIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 18:01:55 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F7D552990
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 18:01:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6BB6785B5C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 15 May 2026 18:01:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778860914;
 b=SUeEFc70tOqou8SRrPtOk0yZfkdpuJ87lGqCfG/Sip1prNExqQnMyjStGMdZl9NkrGwA+
 SSX1Tr8A7aYzfRxYDBpPRWz7jeJRK4iHqP/8ct902tt0PVXfkwlk33GfZLjjw9JKkCl6aqG
 qRDz59wpkt0iZX3vE9w4BYLXjukJbB8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778860914; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=k4w4TWV8r3UE1VPjnXlMg1uabztqsSPSezfe4Iw0PQU=;
 b=jxIyGr7rSztruLCxXL2/RUOGjgDQJ3YEDpSMliIRYVPJom9Fin4a5sm341u0OAHhbbSbZ
 z+2kzrHR2Tv4ho8oIpydFHoiEaT0ksnyGZUsypzXOP0vLKKaJvss0JfeXeWgc3UpHtfiXxT
 LkMJb/B/mXCUb43uwouWvVHwpb20JUY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 27F9B8264F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 15 May 2026 18:01:00 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778860870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=k4w4TWV8r3UE1VPjnXlMg1uabztqsSPSezfe4Iw0PQU=;
	b=M17pNQEOHYRy6vaJIchV3mIvzVPFVa0ERugZfP0JGQkx7EHEMgdY07u+qO8MnavhN8icPC
	yQevixy0LOGjPZgoxio0/QJavWFNgBUlw61ai/KeH6x8XqlfIhVyBegiA8LI/mqwMDjx3y
	vq7cB0JLdbfYhiaBKW8Jkces/xxhlOk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=D6zVJol3;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778860870;
	b=Ycs7v+mV7ou6mNE17sdqhDtFy7sNw5hZzNdRIVoRJPoA3XvEJrafFigsFjKmzS77U0yWwO
	XiiBEsNUsB4K6UFDC2RYvfjc/yuvC47goPChRmcmxHf3Y9HWzNhSDP54yVDUaPTba2ymwg
	/35aRs4RqJz8rjNiduR+QedogHIyZFE=
Received: by dvalin.narfation.org (Postfix) id 32BE821550;
	Fri, 15 May 2026 16:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778860859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k4w4TWV8r3UE1VPjnXlMg1uabztqsSPSezfe4Iw0PQU=;
	b=D6zVJol3t6QvoDSxGx+X2uQ6g4g4BXpPlSvperMRxpYDdQQhQEtOpsOvnUggFSw6HdtVMF
	NeqS35VVfZ0jxwuhb8NoTeZVJDrZxBIyE1nfo5YJwfnJCmldwquywNvss0GNhCjP9LyTfJ
	WO1EbVTp365/7w2flW8HmvcHEeygLT8=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v3 0/4] batman-adv: collected fixes (Yuan Tan)
Date: Fri, 15 May 2026 18:00:09 +0200
Message-Id: <20260515-yuantan098-bugfixes-v3-0-5a5a91924562@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAlDB2oC/22OzQ6CMBCEX8X0bE1/QqWefA/jYQtbqIdi2tJIC
 O9ugYsxnDazO/PNziRicBjJ7TSTgNlFN/gi5PlEmh58h9S1RRPBhGIV03QawSfwTNfUjJ11H4z
 UolGqEmKdpCTfAbdDCT6IgQRtJs99H0fzwiatyNXZu5iGMG31mW/+vYnzw6bMKaMKWqu0qqww8
 u4hWEjl68sQuq0li1+OPOaIwqmVRN0ACKiu/5xlWb4/O6BsHAEAAA==
X-Change-ID: 20260509-yuantan098-bugfixes-feb66522feb6
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2217; i=sven@narfation.org;
 h=from:subject:message-id; bh=ac7CfKS1g/G1cTaKxfiNvBg/aI2gER3UbATrHDrUL5E=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFnszubZk96FTtjEu+PiuuPH1pzfavbCfveh/lKBH4Iu8
 gvCFWvLOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATkfrEyPBp8lO5qJdPni01
 fPD8snbpB8YbLWcvW7pvk70+aYbfmZQchn8K8QUK3fwPlkW9nGhnzn3uWdPvWXevvJiW+85yrYW
 HpDMLAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: UMGP6O3Y4DSNVYG3Q26NDOQKCUA75ZKA
X-Message-ID-Hash: UMGP6O3Y4DSNVYG3Q26NDOQKCUA75ZKA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UMGP6O3Y4DSNVYG3Q26NDOQKCUA75ZKA/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 34F7D552990
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[gmail.com,narfation.org,kernel.org,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

I was contacted by Yuan Tan regarding some of the problems which were found
by them. I've proposed to go through the list and prepare changes for
things which looked sensible. I've also prepared some PoC patches (lets
call it part2) - just so Antonio+Simon+Marek can discuss about them
internally.

The ones which don't need further discussion are shown in this patchset.
For the others, I am waiting on the results of the internal discussion.

It is more than likely that there will be updates to these patches because
the team around Yuan Tan need to verify that these are actually working.

Thanks to Yuan Tan, Yifan Wu, Juefei Pu, Xin Liu and all the other people
involved in finding + fixing these bugs.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v3:
- drop applied patches 1-3
- add patch to return errors in batadv_tvlv_container_ogm_append()
- add patch to avoid reallocating the ogm buffer for each send ogm (this is
  actually a feature and should not be added for net.git)
- Link to v2: https://patch.msgid.link/20260513-yuantan098-bugfixes-v2-0-863e9caa2a57@narfation.org

Changes in v2:
- add role checks in all tp_meter functions
- free skb in batadv_v_ogm_queue_on_if
- propagate bat_priv from batadv_v_ogm_queue_on_if to batadv_v_ogm_send_to_if
- Link to v1: https://patch.msgid.link/20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org

---
Sven Eckelmann (4):
      batman-adv: v: stop OGMv2 on disabled interface
      batman-adv: tvlv: reject oversized TVLV packets
      batman-adv: tvlv: abort OGM send on tvlv append failure
      batman-adv: tvlv: avoid unnecessary OGM buffer reallocations

 net/batman-adv/bat_iv_ogm.c | 42 ++++++++++++----------
 net/batman-adv/bat_v_ogm.c  | 73 +++++++++++++++++++++-----------------
 net/batman-adv/tvlv.c       | 86 ++++++++++++++++++++++++++++-----------------
 net/batman-adv/tvlv.h       |  5 ++-
 net/batman-adv/types.h      | 31 ++++++++++------
 5 files changed, 142 insertions(+), 95 deletions(-)
---
base-commit: b4e35f8c63511e180ea46381ec770f44bc47257b
change-id: 20260509-yuantan098-bugfixes-feb66522feb6

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


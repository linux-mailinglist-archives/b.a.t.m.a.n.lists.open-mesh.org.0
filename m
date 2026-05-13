Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FIhE/giBGoZEwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:06:32 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 1810852E6B7
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:06:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E0A0E85877
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 May 2026 09:06:31 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778655991;
 b=3Z89ocdKpdLesAvoHJIK8sgyc0oGXN8JrJZdwva/FeRNNGolgtR8INWgXNqUwdnNXjDZR
 EyGnqSlrKy80uHbxMfWu/5RK967YYNIk8v2Vslm++I6UldLWLUOl30GWMPj4kTmaVUHVWB/
 U/dYBTvoEpKPDmZMP0YCpCdA2M3m2SY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778655991; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4GGlOx1GidVeWZDs2PD/NM6gT1jwr7LyjB6pCcTjeAE=;
 b=eLzUoLxwU1IhuAzLWmu5yaX973EEw+vIUkW3s4tGzlEUQzJWZdigsqT0NW+izyEH9uen2
 q4kQTyMZY1xbruX59ZeP3+VOfRnmXKA+fvayuxQozl9mo03lxKDf+0ViriWyUsQ3lRWJUTW
 eVGrG8liFb2q2v3HhYwHzyVtVyqGZck=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 4826C8558A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 13 May 2026 09:01:41 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778655711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=4GGlOx1GidVeWZDs2PD/NM6gT1jwr7LyjB6pCcTjeAE=;
	b=dBN1FwcsxLE0Z73dD8lj1vgJy/Z+UxWoKhlBsFYjYrczmczFhOkBdJ9I5YELUJdKnqxp+l
	1C/1YB5P9v6xcHbh4KkJpsVa7jHksldPtVDx8M+I8ji/FEMoJZBgpe0p8DA0iTEh8SxknS
	7wjs3kuNKGx8lR9q5GHe1q0pC8hTJY8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=fFqdnngk;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778655711;
	b=fLiLXvQN3cc+k8sAXoTfPru4fpymoDVy7BkzjGtn7cUw3Aa/yP8hlbPyCihGJBy4/aYdW+
	kH75Xo6rbMEFMpwG8PgWOXLMqT7jAoeIfNQESK1+Zb+2PNbIvVLKirhKaSTB659pllaeDh
	PqdQ5DXUJ9zE9ls5uZwfARwb4QVIzO8=
Received: by dvalin.narfation.org (Postfix) id CC540201FE;
	Wed, 13 May 2026 07:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778655698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4GGlOx1GidVeWZDs2PD/NM6gT1jwr7LyjB6pCcTjeAE=;
	b=fFqdnngkIQJ0c8wfiZdU7onX21Ev1NkU7sw1caJRqJJGyjnIrjDJqNcov+CwNVCclHlQZI
	fqtG/e7V6q7/DHdRJ/GHLBYjiwkY33Ahxn/IMeQ5uIXeZI7txRZQxTMeRnpTLtgA1ws8Kk
	Teq0OjzYmJ7WepuOdvAQGLhcNt7s5NE=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/5] batman-adv: collected fixes (Yuan Tan)
Date: Wed, 13 May 2026 09:01:33 +0200
Message-Id: <20260513-yuantan098-bugfixes-v2-0-863e9caa2a57@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM0hBGoC/22OwQ6DIBBEf8XsuTRAI6k99T8aD4ssSg/YAJIa4
 78X9NrTZnZn9s0GkYKjCI9mg0DZRTf7IuSlgWFCPxJzpmiQXCre8o6tC/qEnnd3ppfRui9FZkk
 r1UpZJ5TkJ9BxKMEXaExoMvTnPi76TUOqL6tzcjHNYT3wWRz+kyTEX1IWjDOFxqpOtVbq29Njs
 JhK6+scRuj3ff8BcgKWl9QAAAA=
X-Change-ID: 20260509-yuantan098-bugfixes-feb66522feb6
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Yuan Tan <yuantan098@gmail.com>, Sven Eckelmann <sven@narfation.org>,
 stable@kernel.org, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Xin Liu <bird@lzu.edu.cn>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1930; i=sven@narfation.org;
 h=from:subject:message-id; bh=fdEu82HFa6I8cPfgeJBkfPGJwxz20RQKilV94B2+WCw=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFksiud/7DOZarLu1Z99cor+LWxeUYHuvjz9U9SbWdPOn
 vovpvSgo5SFQYyLQVZMkWXPlfzzm9nfyn+e9vEozBxWJpAhDFycAjARYQGGvyLuYd4e7zYYHFZX
 2XT2iNjUpV3B7Gv7Vbjnnpn4xMdYcA3Db7aaaXENJfzfNXnZ5u+/XFfRc9TrkZ6v0pEPr/kWeW9
 9xgoA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: IYETFCU4JZYT5FGOVETYV5G6QCRL42RU
X-Message-ID-Hash: IYETFCU4JZYT5FGOVETYV5G6QCRL42RU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/IYETFCU4JZYT5FGOVETYV5G6QCRL42RU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 1810852E6B7
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:email,narfation.org:mid,narfation.org:dkim,msgid.link:url]
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
Changes in v2:
- add role checks in all tp_meter functions
- free skb in batadv_v_ogm_queue_on_if
- propagate bat_priv from batadv_v_ogm_queue_on_if to batadv_v_ogm_send_to_if
- Link to v1: https://patch.msgid.link/20260511-yuantan098-bugfixes-v1-0-6adf6965f2b3@narfation.org

---
Sven Eckelmann (5):
      batman-adv: dat: handle forward allocation error
      batman-adv: tp_meter: avoid use of uninit sender vars
      batman-adv: frag: disallow unicast fragment in fragment
      batman-adv: tvlv: reject oversized TVLV packets
      batman-adv: v: stop OGMv2 on disabled interface

 net/batman-adv/bat_v_ogm.c             | 39 +++++++++++++++++++++++-----------
 net/batman-adv/distributed-arp-table.c |  3 +++
 net/batman-adv/fragmentation.c         | 35 ++++++++++++++++++++++++++++++
 net/batman-adv/tp_meter.c              | 11 ++++++++--
 net/batman-adv/tvlv.c                  |  9 +++++---
 5 files changed, 80 insertions(+), 17 deletions(-)
---
base-commit: 57c6af492c1948145db835bb3ea2980472558298
change-id: 20260509-yuantan098-bugfixes-feb66522feb6

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


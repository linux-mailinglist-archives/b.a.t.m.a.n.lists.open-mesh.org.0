Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKUFALMKDGo5UQUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:01:07 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D48457888E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:01:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5586B802BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 09:01:06 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779174066;
 b=xJOTmuPjCbnYo6RF+GpIefc4zYon4HDhQkXZJ0WwK+wg5Gk3rQ/9gjtoHkCu0GE3umD1W
 NY8uEoe7MZkFLwEETpwsLKowvf4EJHZT7VrDwMP36gud2ctPQDD+ma7+sxbAen7AR74sMzW
 S0FxYlkgGsiOQ15C9hnyCIrMjVYlFgE=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779174066; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ChseJSZa0FQPvCr3vo9J9wH/f+VBqW+4wMW+SX7YMMY=;
 b=2qCb9FvnRTO8jUsGQzaut495fVlxdXlP5gf3u9xZnBwxVN/RwUGbDqwgUO3moVvy/4l05
 zMJCDrZLJd+ZLd18YS5DDbOXapcDLZUbzsvsHhLMBt0o3VYzjrkKNIWsQIsarzNPEz1X9bt
 yy4TZfBXW9sYbKQrbJXFLzuRJrixaHs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 6C70E8084A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 09:00:40 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779174041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=ChseJSZa0FQPvCr3vo9J9wH/f+VBqW+4wMW+SX7YMMY=;
	b=hwYCnh8y7qwKf9wFbATHtvN07OXZcjX7i+nF7PA6iDauz0RoKH/6Fzjx4WNE1FJ70J1p0a
	zTlZNgDz9O3GfOREk2M4hzN4CWwTFKsLg7Ms6D6irTy/BsGi19oUCmOfFoqK34eVtR3Xi0
	Gv4G2//tUaIrSfn2WXsiHv3esae0nSU=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779174041;
	b=x53z0KcCdmC9qb4xiLgEJIVGkQDim7oIuIfbYcu7yAgTTZ8eDR0RMbLkgz2qCzM/JCvod/
	4d00J4E3cjjWqFU0ezjGVNgTKe96uEG9jOHVEVjcxE1PKAkY7RzSrrb9J9+TS+G5dlb9cn
	CEH7TWDyCWx9rGUtKEEiF1zNl2sVK2E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=XYVGLvI5;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 0E2891FE24;
	Tue, 19 May 2026 07:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779174040;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ChseJSZa0FQPvCr3vo9J9wH/f+VBqW+4wMW+SX7YMMY=;
	b=XYVGLvI5x9CtLaS7hGQYrBV/OY29JSTeLcW5585QBRfci7XQanuv0ZpRZM2z1NpjOFXaw4
	76GJE8W+cYnWSeizTRpxAQSQ3VDc0Wi8J962QtRj7F2d5px5Hr3VqxTNnYLOH9i2Zugjmx
	CDWZMpdTkH08vNoRBuan7hfRYYCaXSg=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv v2 0/3] batman-adv: tp_meter: error reporting and
 role mixups
Date: Tue, 19 May 2026 09:00:35 +0200
Message-Id: <20260519-tp-reason-missing-v2-0-9c5cd1824e3b@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJMKDGoC/32Oyw6CMBBFf4XM2hpa5BFX/odhMUALY2JLOrXRE
 P7dUvcu7825jw1Ye9IM12IDryMxOZuEOhUwLmhnLWhKGlSpmrKWlQir8BrZWfEkZrKzMBKxlqY
 yVXuBlFu9NvTOnXcYMOAUof/5/BoeegxH4UEuxMH5Tx6PMvN/dqIUUrS1wq5Tw9RIvFn0BkN6f
 HZ+hn7f9y+QF3/K0AAAAA==
X-Change-ID: 20260513-tp-reason-missing-f1aa51f3f374
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1891; i=sven@narfation.org;
 h=from:subject:message-id; bh=LauzM71LZ7h7bmzmi8hXMMS2F/02dWjgQGFCPCh3c/4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDFk8XFPNdx/fq/tp06/TUWeYX1mZyzzUeXy9vVXnEO928
 ejQyRtVOkpZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQAT0ZVg+CsiuDp3if9k8ftO
 Z2d5zXo80WhZabjMdRWbLRm/ZtkIrS5hZGjY3+GzUXmuVcEu3oiqHU0cJ2bceZr/6zHfzo9Tbx4
 uiGUFAA==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: PCBI67KMX6QUA2Y6HHRVQEZUC2CM2GXD
X-Message-ID-Hash: PCBI67KMX6QUA2Y6HHRVQEZUC2CM2GXD
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PCBI67KMX6QUA2Y6HHRVQEZUC2CM2GXD/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,narfation.org:email,narfation.org:mid,narfation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+]
X-Rspamd-Queue-Id: 7D48457888E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

batadv_tp_sender_shutdown() previously used two separate variables to track
session state: sending (an atomic flag indicating whether the session was
active) and reason (a plain enum storing the stop reason). This introduced
a race window between the two writes: after sending was cleared to 0,
batadv_tp_send() could observe the stopped state and call
batadv_tp_sender_end() before reason was written, causing the wrong stop
reason to be reported to the caller.

The state + reason handling has to be reworked to only modify a single
variable

At the same, time we had some tp_vars role confusion and overly large
tp_vars for receiving. Just split them up. Making sure that the search
functions only search for the correct role and at the same time only use
the required memory.

The last patch should not enter stable/net.git but go through
main/net-next.git. It is just added here because it depends on the first
patch.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v2:
- fix send_result kernel-doc
- rebase patch
- add patch to avoid role mixup in search functions
- add patch to split sender and receiver sessions
- Link to v1: https://patch.msgid.link/20260513-tp-reason-missing-v1-1-752a882bd61a@narfation.org

---
Sven Eckelmann (3):
      batman-adv: tp_meter: fix race condition in send error reporting
      batman-adv: tp_meter: avoid role confusion in tp_list
      batman-adv: tp_meter: split vars into sender and receiver types

 net/batman-adv/main.c     |   3 +-
 net/batman-adv/tp_meter.c | 453 +++++++++++++++++++++++++++-------------------
 net/batman-adv/types.h    | 109 +++++------
 3 files changed, 325 insertions(+), 240 deletions(-)
---
base-commit: ff182fc0c666754e3f35f7b63c9ccf0dff239e52
change-id: 20260513-tp-reason-missing-f1aa51f3f374

Best regards,
--  
Sven Eckelmann <sven@narfation.org>


Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 068299D2452
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 11:57:13 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D3CCE83FBB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 Nov 2024 11:57:12 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732013832;
 b=zf46eOnmFB7f5VFgBoJnrs1OlZ72SvVt8HB+E6S8Vssgy3REo/z9ovdZ3qvXN6yRYY4OE
 gylrM5GrkXbQmkzCok7Yg/BX0QBssVSKFcCBsImcMezYprPx33tzTiqMPTb7zZmcKfWzW4H
 mxsbJsobs2ebusFYy+wZdx4D6Qm3SBU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732013832; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Rl8qI/i677yCxezDO3W9e55T1qn7ASD6PvStgTzt6pI=;
 b=IHu2JnYZZji9FkBRcXP+UsoGClSHUALoNkCYF8QgORp3w2/BRyg5GZTCERkiZO3yvHliP
 tEOW7WQeqIIk6qeb9jNtjNYQi3CEvzfWLNwvoGk0t/wDiR2qqI7EdU7lOebv34aEXon9vAx
 Egf7ymJdgkfmkQ68tBfg702JWvqOnaw=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from avasout-ptp-003.plus.net (avasout-ptp-003.plus.net
 [84.93.230.244])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DC43882600
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 Nov 2024 11:57:02 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732013824; a=rsa-sha256;
	cv=none;
	b=BeA0Q1+A59XAxiFAarMWESrKA3vzKQuRF7JWpD+QyWFKFOnptbD/z3s7B3HqVJSPxeg+UW
	6aNmLgWX+yPhoYSsAFmKnOYUPLGd9qvodo4esdmDQWySd6LWrVvYbIeKvz/2V2byA5hx3U
	6Es6UAlX4QHzTl1mI6qqdqmk74NaGKo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=softfail (diktynna.open-mesh.org: 84.93.230.244 is neither permitted nor
 denied by domain of mikee@saxicola.co.uk) smtp.mailfrom=mikee@saxicola.co.uk
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732013824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Rl8qI/i677yCxezDO3W9e55T1qn7ASD6PvStgTzt6pI=;
	b=A8KzTDr5GL0eX6szYyTN2Hlpi+XzS+3PAuOl0jS2A+sVubxRERfv33Rr+VseO9gstcWbzG
	IibG5Fr22TnQYE5yIuDhIse3tzKsE0myPG7t8X/4dZkcLdKyWnRQSHPk2hdBuStPK4k3lN
	hLWQi8uk3oJXTXILOaGBbc++/9w4POM=
Received: from saxicola.saxicola.co.uk ([146.90.64.113])
	by smtp with ESMTPS
	id DLuht7eU128tEDLuitGSnK; Tue, 19 Nov 2024 10:57:02 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.4 cv=Hda3TTE8 c=1 sm=1 tr=0 ts=673c6efe
 a=O72thLHWbs23zYP8UsmElQ==:117 a=O72thLHWbs23zYP8UsmElQ==:17
 a=3VHHPg-eU61Vu3Kc:21 a=kj9zAlcOel0A:10 a=NOJSJk16AAAA:8
 a=QDO0TwBM8mLxEeZixhQA:9 a=CjuIK1q_8ugA:10 a=8wILNDbMd6JXXYFnb8vS:22
Date: Tue, 19 Nov 2024 10:56:54 +0000
From: Mike Evans <mikee@saxicola.co.uk>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Please unsubscribe me from the mailing list. thank you.
Message-ID: <20241119105654.431c38ed@saxicola.saxicola.co.uk>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: 
 MS4xfDhS4jTpVKXq+DJ+qRqC/QTY84/+Q+Ya4OkXRHM6N3pDP0D4/L3xrXdJ8ZI3rwjcIuAdhh4elkEsyorkHeEFqeYKh/VHX7MSoZtTQaAMQWMVHROP4fJM
 1ahLzWZU/75uBVdtg8VGePbeYKYcl76a4uCIGpG9SAClnRJyeRC44spo/8x7vsfEzNUp3+x6W+Y8f6aG7b9MR0mtLWNtzTTPv0v/e/7dabBuPIsWBTutAlxO
Message-ID-Hash: WSZXUJ5ZAHQC3E2L27RJ36KWXN5PGWA4
X-Message-ID-Hash: WSZXUJ5ZAHQC3E2L27RJ36KWXN5PGWA4
X-MailFrom: mikee@saxicola.co.uk
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WSZXUJ5ZAHQC3E2L27RJ36KWXN5PGWA4/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Please unsubscribe me from the mailing list. thank you.

-- 
GPG Key ID: DB8F7CF1C67BBC0F
Keyserver: https://keys.openpgp.org

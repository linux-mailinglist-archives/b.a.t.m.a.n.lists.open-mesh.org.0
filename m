Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBQwM+sK1WlQzwcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Apr 2026 15:47:23 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F483AF6EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Apr 2026 15:47:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C333585A14
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 07 Apr 2026 15:47:22 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1775569642;
 b=tq/nuzXonPXPO8Jd6s54lMuEbjcvTpUl1pO7rc5fY899izi8+Qf/2hyYx8VHuW3LL8b8u
 D6pfBtOrDBj2DPvoLQ4JmizztzxLZTTXac7flNbQqKVcOwjMq8ZKNksAztcDY+9a8ToQp62
 qxTTWBLr6N94qZf4ajgpPNMBV9I1MAA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1775569642; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DCjz17ewHfu8Yr+SV6U7S1CqIqYVFXv8Ix1xoVywBf0=;
 b=RAWmhXfTZzpuufiucPDfV8ET0syrGKql9AiJWSDCw9ce87gms4pl046tVd36JwGEgRZKP
 QXFFGdpzaAI5W9ImELHcJrA5gpnLYXBDbe2S4D5indOHAy2MEns+hPBKSfqccMYSLMSKetM
 lVJlZejFdQf+FZ5vZrjhT1e+byp4+oI=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 61FB18044F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 07 Apr 2026 15:46:59 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Gateway shut down detection takes too time from other nodes
From: martinvdberg@gmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 07 Apr 2026 13:46:59 -0000
Message-ID: <177556961939.1631.5621807886524407791@diktynna.open-mesh.org>
In-Reply-To: <3735338.hdfAi7Kttb@prime>
References: <3735338.hdfAi7Kttb@prime>
User-Agent: HyperKitty on http://lists.open-mesh.org/
Message-ID-Hash: 6TYRWEMVWFV7WMQB7ZYKHWQIUFRRS7X2
X-Message-ID-Hash: 6TYRWEMVWFV7WMQB7ZYKHWQIUFRRS7X2
X-MailFrom: martinvdberg@gmail.com
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6TYRWEMVWFV7WMQB7ZYKHWQIUFRRS7X2/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[martinvdberg@gmail.com,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	NEURAL_HAM(-0.00)[-0.140];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:mid]
X-Rspamd-Queue-Id: 62F483AF6EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I think I have a similar use-case as the original poster and ran into the same problem. 

Let me try to explain:

- Given a mesh network where each node is assigned a *static IP*.
- In the mesh network there are some nodes acting as a Gateway.
- The other nodes in the mesh are clients.
- Using BATMAN-V

Each client node has a script running, when it detects "batctl gwl" to elect another gateway, the script will set the gateway's IP-address as default route: "ip route replace default via $gateway_ip dev bat0".

Now whenever a mesh-gateway is turned off, it will take 200 seconds before it is removed from the originators and only then "batctl gwl" will elect another gateway. This results in some client nodes have no internet for 200 seconds.

So far, I haven't been able to get batman-adv (using batctl) to switch to another gateway sooner, e.g. after 10 or 20 seconds.


Using DHCP is not an option in my use-case.

Is there somehow a way to reduce the 200 seconds? Possibly by switching to BATMAN-IV?

Regards, Martin

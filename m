Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 69246A6359F
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 13:31:14 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3EB2D84345
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 16 Mar 2025 13:31:14 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1742128274;
 b=MgeVTzKn5k9Aa7oQ8TULWPxy7bdTgQxdWjnpRgOenlLr/cVXbKr6OVYtchkzpb/vfZGPX
 J1z5sRob5W3fZPqPNz9lJuTGNKR0vSwLrX/3GMa84nMkTnPVeb51P9eHfzX5RrS25/IiIhf
 gIUcZmmlbJkoMAZ83cGPxCk5L9aiPTw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1742128274; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=n80TFHxVyHjlVyl+OaV3nj4edYfZi/W+I4o6ButrIN4=;
 b=B8u1ERJF4/PCyn9Q9iYCwFQ9HNP3nv3CYDUKPKzhvYu3XPraylsa/rDAzAhjMQwpS6MFM
 XNnGyKfKcVC8oc1+5RkM7/x+oq3LU4GlApzgTI20I4kLu+JhRxvWxPzLmPaQOp3RuT/Pu5M
 9dag6/BA2GWSr4Uxm+YQFXllDtPpoek=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 20DE782113
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 16 Mar 2025 13:30:44 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1742128245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=n80TFHxVyHjlVyl+OaV3nj4edYfZi/W+I4o6ButrIN4=;
	b=YqUqmA/BLUUa3UWSATpjfBPfhTWNdmEg5eW0TIdl9uMbDhvDXOCKXeDfCIfFgDbXcevRXX
	QPLlgoQtWnDf700bH+cdR5xzHuRyF8uCdDkdA1LLvt5EyBTNMwFmIrKz/3VKI5Jp9IOgl7
	5f/RDa6ZJsm+q8Jd/6M81qziq/0stH4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gT0bGIoa;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1742128245; a=rsa-sha256;
	cv=none;
	b=q5C52weUZi24c/00nrW3ZxdQeP1lVrak2FaMtL5guM/eMrtVmzBAAHFjt/CbfBzlYFHhnL
	ljfEtGfxAz/04qW8CyD0BZclkBlxFoxUQ2DJLoypjNo3I/fMG/XHnf1t49poBsPtuJbspU
	RG3nTwJRqqVcr6mICzQuM8ELzLwSZAM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1742128244;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n80TFHxVyHjlVyl+OaV3nj4edYfZi/W+I4o6ButrIN4=;
	b=gT0bGIoaBK2O/u80qslBVNblnJe7L0lDnmlX64endOBbXfpQHUOAC8kfC1w+D5MUkTTAGS
	zbmOl9kdX6c1Y3yj8s7W+GZ9g7JzbB1kf50xJ6YM0/yDliJTOeLugQzTO1yGIGzVDkH9kj
	rMWpdW+h61Ie10MfjDigICC7GcnFmcA=
From: Sven Eckelmann <sven@narfation.org>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Jingwei LI <marscatcn@live.com>
Subject: 
 Re: Limited Connectivity in Mixed Wired & Wireless Backhaul Deployment
Date: Sun, 16 Mar 2025 13:30:37 +0100
Message-ID: <8603745.T7Z3S40VBb@sven-l14>
In-Reply-To: 
 <OS3PR01MB576553C5DACFE878AF2C6878D5DC2@OS3PR01MB5765.jpnprd01.prod.outlook.com>
References: 
 <OS3PR01MB576553C5DACFE878AF2C6878D5DC2@OS3PR01MB5765.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart10728292.nUPlyArG6x";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: PU2DED6TEM54BONZYJQH7Q23GCKHMXJ3
X-Message-ID-Hash: PU2DED6TEM54BONZYJQH7Q23GCKHMXJ3
X-MailFrom: sven@narfation.org
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PU2DED6TEM54BONZYJQH7Q23GCKHMXJ3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart10728292.nUPlyArG6x
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Cc: Jingwei LI <marscatcn@live.com>
Date: Sun, 16 Mar 2025 13:30:37 +0100
Message-ID: <8603745.T7Z3S40VBb@sven-l14>
MIME-Version: 1.0

On Sunday, 16 March 2025 11:07:17 GMT+1 Jingwei LI wrote:
> ```
>    Router A             Router B                Router C
> _____________     ___________________       ________________
> |    br-lan    |      |         br-lan        |      |     br-lan         |
> |____________|     |__________________|      |________________|
> |AP|   bat0  |     |AP|      bat0          |      |AP|     bat0      |
> |___|________|     |___|_______________|      |___|____________|
>    |lan|BHAP|         |STA| lan | BHAP|           |STA| BHAP |
>    |___|______|         |____|_____|______|           |____|_______|
>      ^     ^----WiFi--^     ^      ^-----WiFi---^
>       |______Eth_Cable_____|  
> ```

This is completely distorted in a fixed width character (editor). Is router C 
required to see the problem? Because only router A and B are mentioned in the 
problem description.

Is the ethernet cable connection required to trigger the problem?

> Problem description:
> 
> Router A (192.168.6.1) and Router B (192.168.6.2) can ping each other. The client (192.168.6.192) associating with Router B cannot ping Router A and its associating client.
> I also wrote some simple rules to trace the data frames in each router, below is the output for a ping from client associating with Router B (192.168.6.2) to Router A (192.168.6.1):

At which point are the packets dropped from client to client? The "trace" you 
showed me looks like output from iptables (or actually its kernel part 
"netfilter") - which is above bat0 (and therefore not in control of batman-
adv). If you want to figure out something on layer 2, please use tcpdump to 
capture packets on the various interfaces involved here (bridge, ap, bat0, 
lan, BHAP, ...) and then check what happens. You can analyze pcaps recorded by 
tcpdump using a somewhat recent wireshark version

How does you bridge loop avoidance configuration look like and what is the 
backbone and claim (table) state?

What is the content of the translation tables?

Kind regards,
	Sven
--nextPart10728292.nUPlyArG6x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZ9bEbgAKCRBND3cr0xT1
y0DoAP4zVv09iqgnNtsUTb3pJtdPy4iyVzTSjmRW17FA/lIdkgEAyf75CUBHAA2/
Cw3cXzpMLuGhOa8lW3oPsmJl9S9hoAw=
=e45J
-----END PGP SIGNATURE-----

--nextPart10728292.nUPlyArG6x--




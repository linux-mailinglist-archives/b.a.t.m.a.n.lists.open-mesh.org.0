Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 179E31BC23E
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Apr 2020 17:07:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CD7B980E1F;
	Tue, 28 Apr 2020 17:07:30 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588086450;
 b=djnZ540tXfzCpJKrRayhzWUf2GBwkmfdpEWsB2raOaBRUaL7Q633LektIL7Y0wpHPKYdn
 7hfGw8e4CqMONI621E1Q3EhzJeABLrmi3yyNq6eYwKCx5ADY1FTDv3kSXcI4V5iVtYdtqH/
 qOB1zwo47le5O6TkUpBANRTYrRIKvgw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588086450; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b8hZ2IyQWOrOb29Q903x/7I1rKRyhUxWcRLH/g4hlTU=;
 b=Rllr+P5PysaAQsfGF43xc+1khuDIBgfgtM7uwLDZiiWiA0D7v7EBchmK5DN5OPzRTTmXl
 6Vl9dZWFs9gqFj31RBSdaLbFKrpRv7uFzItZUrIgvcvqq1KXrsSRKyEYSugL9D6ZCe1BTPF
 9kG7oOw7rAy7qIC0W3QA2xhoHMNdtyA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail header.from=si6networks.com
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=fail header.from=si6networks.com
Received: from fgont.go6lab.si (fgont.go6lab.si [91.239.96.14])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EF6EB800A2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2020 17:07:28 +0200 (CEST)
Received: from [192.168.0.10] (unknown [181.45.84.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by fgont.go6lab.si (Postfix) with ESMTPSA id B72D081AEF;
	Tue, 28 Apr 2020 17:07:27 +0200 (CEST)
From: Fernando Gont <fgont@si6networks.com>
Subject: b.a.t.m.a.n. specification
To: b.a.t.m.a.n@lists.open-mesh.org
Message-ID: <a4778f23-2eec-b3aa-b661-fe06112dccae@si6networks.com>
Date: Tue, 28 Apr 2020 12:07:00 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588086449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b8hZ2IyQWOrOb29Q903x/7I1rKRyhUxWcRLH/g4hlTU=;
	b=l+8wV3LR61fAAj2i3OFaGh2qYqzI6VoGu14tdjuRMSvhv3yvGQgm3Wvd+6aAVfrNh/bX89
	5v8hK7QcXqgT4Gj6Rb0lRXEl2F3WZHa1NCVT6KZ2z6dl+5QgXwZeyxQ6yay0QVjGajnT1t
	XIYIqSllm/i+4dTmGxq2oRn4tCHcpbY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588086449; a=rsa-sha256;
	cv=none;
	b=tjYLcX5quW01kJ9lQ4Se1COdmccy4oiXxM6DavpjXjne+11A9Kb+7eRKRacODW+kxOHR7x
	cgChrWL4rQYWvF7UZM9WQRldSamsfCUTNcoVM7sSeYZkTUNdr2KG3DYmzbqWye5RizDTwK
	69Yf2JTSVeWOnmBbQT7KwByIceluQL0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of fgont@si6networks.com designates 91.239.96.14 as permitted sender) smtp.mailfrom=fgont@si6networks.com
Message-ID-Hash: CZZJTIBSXKCUVZWX3KYQS544A6HQL3XA
X-Message-ID-Hash: CZZJTIBSXKCUVZWX3KYQS544A6HQL3XA
X-MailFrom: fgont@si6networks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CZZJTIBSXKCUVZWX3KYQS544A6HQL3XA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello, folks,

While looking at batman, I came across your IETF Internet-Draft 
https://tools.ietf.org/id/draft-openmesh-b-a-t-m-a-n-00.txt.

Questions:

1) Is this the closest there is to an specification of batman?

2) Does it described the current protocol, or have there been changes 
since then that have not been reflected into the internet-draft?

3) Any reason why the draft wasn't published as an IETF RFC?

Thanks!

Cheers,
-- 
Fernando Gont
SI6 Networks
e-mail: fgont@si6networks.com
PGP Fingerprint: 6666 31C6 D484 63B2 8FB1 E3C4 AE25 0D55 1D4E 7492




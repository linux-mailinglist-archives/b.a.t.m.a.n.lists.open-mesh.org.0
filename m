Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 05093896F95
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Apr 2024 14:56:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CF9EE81EF2
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  3 Apr 2024 14:56:58 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1712149018;
 b=heUnPXXYSSq9cGLNsDlCtg7gDA65pEQijn2QB0gFooPp+sZkNbxxjbMGa8h8bim8jW1ug
 1VITdvwUlKe2plh1OpfCVMP5PMD4xCNnxWTxGVJrrs1CjsNyHrPB6Lj4zRA3yXyXhQebr0Y
 /Bi1p+jwvLdGBTV2qY9/PPjyBvMT85w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1712149018; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aYD8zGpzHjdK3D3Xpok2JV+7zN6UFyXMqxaCH1ZPQkQ=;
 b=bqmyrH2dCgNwvEHqHqlkaftZamGsFTfbpyXDBEFjb61wLKWYtmruAdKF7XjL4Qqxnq29C
 XxVn9n4FkdxsMf/wAenKaNRKaFO2PfJ+IWg4DNx8KVK4vwGgLxt/UmAPFT+h9MDzbR9t041
 nh8VP4U1hknOHJxfQoPDhZ7HhdqSgV8=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=fail;
  arc=none (Message is not ARC signed);
  dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=protonmail.com
 policy.dmarc=quarantine
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DF2ED8022A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  3 Apr 2024 14:56:31 +0200 (CEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: About Throughput in BATMAN_V
From: berkay.demirci@protonmail.com
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Wed, 03 Apr 2024 12:56:31 -0000
Message-ID: <171214899190.1066.4170379207726418942@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: JUA4VDB2NIDVEFXYGCTAR7EVHWQJ6KFM
X-Message-ID-Hash: JUA4VDB2NIDVEFXYGCTAR7EVHWQJ6KFM
X-MailFrom: berkay.demirci@protonmail.com
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JUA4VDB2NIDVEFXYGCTAR7EVHWQJ6KFM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

I have a question about Batman V's behavior about throughput. Batman doesn't seem to calculate throughput properly so we set it manually with throughput override, but then even when actual throughput of the active interface decreases, it doesn't switch to the other interface because it only considers the overriden value.

It only switches when the active interface stops receiving OGM's completely. I think if throughput was calculated properly this wouldn't be a problem so i want to ask why it's the way it is. Batman already has a tool called throughout meter, shouldn't it be used to continuously check the value?

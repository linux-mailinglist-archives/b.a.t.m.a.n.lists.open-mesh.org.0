Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 136578A4B2D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Apr 2024 11:14:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E1E9281D6D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Apr 2024 11:14:25 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1713172465;
 b=WeL58minTe/fk7qeQZG5WQ4l1jEXY7q+IIF9pOMUOGR8mDEbP4LTzddQEjw7AMZj5/yY7
 v1dOSqdlR1jwYjdTG670Wk8dhfNa6r9afZnUuRGr92wgxu5a2DVmDzO28xZswhKGyO3nvzH
 cyYmC4+GAlvPhWBFJtwMqorQcBsLXuU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1713172465; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9aYEz8X5j98SYY6I/+2niwmewpuf7VLXr2ODgewAnTY=;
 b=WyGELibspPlbmMsg7uK0EKm9sVN/as/VI2f4chovEX5AGCg/wtJegbB/kT8AXmI9GFYmP
 jpI7JVdXyjEDjZFe7+HN+9cI2COyV6HD15/i+1tl5h/DsohslsItlthhY2UPtf7i5ukxoRd
 fbMoj1EgiAVlsZFB1TxzKeC34WReVLk=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D44C3809BE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Apr 2024 11:13:59 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1713172440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9aYEz8X5j98SYY6I/+2niwmewpuf7VLXr2ODgewAnTY=;
	b=V71VwVVHlE0wJm7fZUzEpqRPwFDoawBHg8XXpIRM9/n3bmucTvyFK3/l5ByDUmggrzj6hu
	RfeQISnCNhyCggnBcIR52DydwgHK0baqlyehxgPRjsPpLJuFS/7FYrDGDIGV2z+WVbGvKd
	GcPFTcaDTdgImprdYrP49D68pidpJ1w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch
 designates 5.148.176.60 as permitted sender)
 smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1713172440; a=rsa-sha256;
	cv=none;
	b=YEmgUmuyjj4rZ3coOSBkkRT7xFxnHtsrxi5PGQtm2Rup7pbCUXT9cfSu/poDkWc+7f2jqr
	NONnlHRW7Bo/Tebiaap9RB9+bI+W6eD2lj0iD3VYV26FKjXHfk02RJ/erPMjJ+XZ7IXwMT
	3DFKs5ThTqRkmQzRUhzNrZyoafTPqvY=
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: About Throughput in BATMAN_V
Date: Mon, 15 Apr 2024 11:13:44 +0200
Message-ID: <1921320.Bm8zEkEi59@rousseau>
In-Reply-To: 
 <livakUAT6XSpa0RoYB-m2_tK2wjUm-5ZdcvIBa2G1Hw53hhh_tlHIwr2B5nOomayXajuotSI5NGl956q_aZjZG5yVRu5C-uth6lNJcUNCtw=@protonmail.com>
References: 
 <3327582.AxlXzFCzgd@rousseau> <2066205.UkFFEUeh36@rousseau>
 <livakUAT6XSpa0RoYB-m2_tK2wjUm-5ZdcvIBa2G1Hw53hhh_tlHIwr2B5nOomayXajuotSI5NGl956q_aZjZG5yVRu5C-uth6lNJcUNCtw=@protonmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Message-ID-Hash: NEFMQWQ3MGUEU6OFXXEAJ6PF4FRGPZ5T
X-Message-ID-Hash: NEFMQWQ3MGUEU6OFXXEAJ6PF4FRGPZ5T
X-MailFrom: mareklindner@neomailbox.ch
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NEFMQWQ3MGUEU6OFXXEAJ6PF4FRGPZ5T/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Monday, 15 April 2024 10:20:20 CEST Berkay Demirci wrote:
> I attached a file that has graphs that show what is happening. Worksheets
> from THR5 up to THRS9 and LOWMGEN are the ones relevant and the difference
> between them is the period of ELP and OGM.

Why have you decided to configure the ELP interval to 1s and OGM interval to 
0.5s? 

Cheers,
Marek





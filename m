Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F7D186D35
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Mar 2020 15:37:29 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6817580A35;
	Mon, 16 Mar 2020 15:37:27 +0100 (CET)
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id 209E28009A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 13:15:31 +0100 (CET)
Received: by mail-il1-x12c.google.com with SMTP id p12so1548378ilm.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Mar 2020 05:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mpwvBdezygXnzaFaO2l3Ti4L31vXjulr9JQM2w8UiyY=;
 b=anHSIsrK3r4Rg2gll+QDtNeuNzjZcckOdOarmaF6wNRAFJqQQcqZlZI7qWBo5M9vm/
 /+Qh5XkcMQ8y3HEnJu/C9obmmC6UHLmKZaLw/yLKOArZz3YvYlSoy1soZFuB8crhUupW
 pa4yLqdUaxOZOnsYj5zS3HR76c1UCppib1dqakCJAgEo0cTEa9E1LqvBJvVzk4TYs2V9
 V2kSBQ1xfSj/+QJNfpX44+Q52HvnjBKHABxq9LisAPOgUJcsJjT0tN4vNsIb/g4YFotW
 CTkGwIqOU2xyLPJeLuVgddAtAGe7N+qIA73K9KaTjYJ9dizap7nYDvPUxhb42PaJzvhZ
 dLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mpwvBdezygXnzaFaO2l3Ti4L31vXjulr9JQM2w8UiyY=;
 b=f0HlbECPiOAoMdqzcI5iYJEQ1WBDjZF51qM3e38ZsrWsx0N8UJkoXpNdazEI/iiL2w
 4z72nTS8p2LwDvzPG7UouK+SK0muVxykb2fe+WT2zKatph4JWyxTgU9j7gGqWpp22N6c
 iYvrkCnleFFvtoeGPKHsgCBCK1syT+ykeTay7G2XVqmT/GqY4xFNMoTBdzRdTLQnbFuj
 TJ9vE4QQRYUOmvQWKu4FZCD8HAiEt/gYtXh/UGCqDR0yUn0eHWKCQRrvXaGbSy/hPQyy
 zM1YDUYl62UyIRox5UbJyE3TqjSqezK9z8Eegd5xkm344z4uMTS9s4jOrWCs+VU+X7mC
 zVZA==
X-Gm-Message-State: ANhLgQ2mHGBL9pI1V7TxxravF8vN9VEG+nJ1u67zTtXCLp4rx9hQ5G+u
 216oSZeHjk5SvvnX0NLJ46A+n88yy6GfWilp3UoYmnqolf0=
X-Google-Smtp-Source: ADFU+vv9Q00r53vC4+Fh/C17TGe08WqnMuxFFyN9C6rH9pXvXznxuT6Kn3GzguM5qHeceYyZfov273DrtuoERM5LnU8=
X-Received: by 2002:a92:8f4b:: with SMTP id j72mr26234825ild.17.1584360929600; 
 Mon, 16 Mar 2020 05:15:29 -0700 (PDT)
MIME-Version: 1.0
From: Maksim Iushchenko <maxim.yuschenko1@gmail.com>
Date: Mon, 16 Mar 2020 13:15:18 +0100
Message-ID: <CADSehqO-iKQ9BVWd_WjR28uZmpwmmLLjctg6AQj_xMAHvtRPdQ@mail.gmail.com>
Subject: batman-adv gateway issue
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584360931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 dkim-signature; bh=mpwvBdezygXnzaFaO2l3Ti4L31vXjulr9JQM2w8UiyY=;
 b=MbR1zXc/8u2BSriCDgMqtSiM2pkAtHRMdmZGO6IxzYTCedy/vQ8vs3GC0gdKYpt/IVxuMO
 9WtNnYSf1hkYYf30Pn4YuM0vpjWEe3vxqM/wULvt4ii4/J7WB/OL9H3Tz4OzGKfks+hXiY
 6oEANK608OP0iPwKZK9jXfo+BPYhfNs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584360931; a=rsa-sha256; cv=none;
 b=s5PfWSLnbtY5KIzojyvhHYjZQBSKY03kjBr5vbsRjd6dGmBJxTKKwPpdk5OM92b9PDCiF5
 cJQe9sxi6y9RLq6P5+O0EGxWa9W23zQQ4xTyF6P5hjAdvHIzjk+ABQkhlyRzN9kAayi/7u
 uOp78b47EB8YRcMkBKamXtOhyTlsD5E=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=anHSIsrK;
 spf=pass (diktynna.open-mesh.org: domain of maximyuschenko1@gmail.com
 designates 2607:f8b0:4864:20::12c as permitted sender)
 smtp.mailfrom=maximyuschenko1@gmail.com
X-Mailman-Approved-At: Mon, 16 Mar 2020 15:37:25 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello,
I use batman-adv to create a mesh network and recently I faced an
issue related to batman-adv gateways.
I have a mesh network based on batman-adv. Each node in my network has
certain coordinates. Each node uses these coordinates to generate it's
own IPv6 address and sets it to bat0 interface. Therefore, network's
node has a static IPv6 address contains encoded coordinates.
The purpose is to provide an Internet access to all mesh network nodes
via gateway node. I already configured gateway node as gateway server
and all rest nodes as gateway client. But in my case each gateway
client wants to know default route to the gateway node and, in
particular, it's IP-address.
Please, suggest me how can I distribute default route to all nodes in
the mesh network in the case where nodes have static IPv6-addresses
(and also it is necessary to maintain the actual default gateway on
the nodes). Or, please, suggest me how is better to provide an
Internet access to all nodes and distribute their coordinates in the
network.
Thanks in advance

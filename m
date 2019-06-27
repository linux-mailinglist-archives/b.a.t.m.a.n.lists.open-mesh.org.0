Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 139DA580B5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 12:42:26 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 1916282766;
	Thu, 27 Jun 2019 12:42:25 +0200 (CEST)
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by open-mesh.org (Postfix) with ESMTPS id 80ABF823C4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 12:42:22 +0200 (CEST)
Received: by mail-ot1-x343.google.com with SMTP id r21so1096007otq.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 03:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gmt9tbQgri+i8TpXP3D0eBbdSvhhct1RKQj2ZNWaGC4=;
 b=hu57bUcUkH241VSHCVNE8KjaLKgwdbgN2melmYP/WT/bL+OO2bg9Vs4vd2i1UOf6AY
 QjaNaUC0WRvtVV10UEF8nD3UM4d3yVExT7AmI0d5pJURQqSo3U/y1YZgAk5Y6Q6GXdEL
 FmTD/CwK9tNdpFnfFu+n6tisLz+JFP/thiuy1NLHVqW85cnx0WLI6Nt2b85xF0Nz6oov
 gsWut59Es/rI14ivgH/Gypmv+yE8jcToO76ob/yd4CMbvc6Sw2AkmHCshUSLuyOKi8YA
 IcUUqxUBUBFC4HCaO/HeE28a7jjHVHk00idON2ZHFtc15MmTB5xVXOSMhqBRa5yWlex6
 dkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gmt9tbQgri+i8TpXP3D0eBbdSvhhct1RKQj2ZNWaGC4=;
 b=C2ptpucItypgAUjoUBnBwjq/k2c0Tk0AW7KD6HrzFaNYmqqSBY6resoTxj8A2M+uMx
 PYkJ6iWcsae4Z4Jo7Xs0TeA+fr0iNn2V6N1IzwH+oqX0f0UOrSzq+KnOAjxPDHUbWRl2
 SnPnuWfu8fskoD/Pv7mdInpVMwBJTHfR/GDuwzkchPs/Ln87jLHZBExgEIBMQrfbZzaA
 3xRzoz+YefrAdD2yGkK04dpW7Xq+dKFT8Ia97fweAa+HGwZ/nXDkiSMIFFRRRG3KA8lW
 6EiEwg7OGZrssvdDeM6jLUGhqrKzRdCGPn7kQOnEXN6DruuXjbgxkAIyN83+dyWHIE60
 M+1Q==
X-Gm-Message-State: APjAAAXCEJsRkKVFxQptFxJgiLjIacWxzsIoJyfqsYFs3rTdrdYnszZn
 RYlJI0RZpxOgdwG68/CMMvHOfVjQ0ZE1XoIJUd5TbxEwFi8=
X-Google-Smtp-Source: APXvYqxMgG0vor4SrWr4ZW8V1HnOWsMYX1lITxXe/ml+tLuHxC5F73jgxKpIm9/hVGpdyW5C12HQTeTgkHn8StM4RO0=
X-Received: by 2002:a9d:5d15:: with SMTP id b21mr2855552oti.262.1561632141246; 
 Thu, 27 Jun 2019 03:42:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190609101922.2366-1-treffer@measite.de>
 <3147211.nMDzSnZuI7@rousseau>
 <CALYz8yoj0E1MDoh7ztThK_q_ew0EHa=2vbuwxQFNwUfDvsEGiA@mail.gmail.com>
 <2561263.F3lYGfnSHf@rousseau>
In-Reply-To: <2561263.F3lYGfnSHf@rousseau>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Thu, 27 Jun 2019 15:41:54 +0500
Message-ID: <CALYz8ypn2fQYCxbFDCbUmAgYHcHaxzPgGWkQPAhz2qxy3Qu-RA@mail.gmail.com>
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
To: Marek Lindner <mareklindner@neomailbox.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello, Marek.

On Thursday, 13 June 2019 04:50:44 HKT =D0=9A=D0=B8=D1=80=D0=B8=D0=BB=D0=BB=
 =D0=9B=D1=83=D0=BA=D0=BE=D0=BD=D0=B8=D0=BD wrote:
>> So here is the algorithm. It has a structure we call matryoshka.
>> ET - Expected_throughput.
>>
>> 1) ET =3D TX_bitrate * Transmit_probability * Overhead_coefficient
>> Transmit_probability is always less than 1 so Expected throughput
>> can't be equal to the TX_bitrate. Overhead_coefficient is also should
>> be less than 1
>>
>> 2) Transmit_probability =3D 1 - Retry_probability - Error_probability
>>
>> 3) Retry_probability =3D TX_retries / TX_packets
>>
>> 4) Error_probability =3D TX_errors / TX_packets
>>
>> 5) Overhead_coefficient for 802.11 is fair enough to be 0.65, but can
>> be changed after additional testing.
>>
>>
>> ET =3D TX_bitrate * (1 - (TX_retries + TX_errors) / TX_packets) * 0.65
>> Such technique has very large hysteresis which is good to avoid
>> flapping between different nodes.
>> In my MESH lab this formula works quite well.

>This looks like an interesting approach. Which chips / environments did yo=
u
>test this formula with and how did the result compare to the actual TCP
>throughput ?

>Thanks,
>Marek


Mostly QCA988x was tested.
Sorry, I lost my test results so I need to do it again.
I have UBNT AC MESH, UBNT AP AC Lite and TP-Link RE450 in my lab.

Also, as I think, it's better to test UDP throughput, But I can test
both TCP and UDP.
This formula always show a result that close to UDP throughput. So,
may be we can think about additional parameters/coefficients that
depend on protocols or something else.



Best Regards,
Lukonin Kirill

=D0=B2=D1=82, 25 =D0=B8=D1=8E=D0=BD. 2019 =D0=B3. =D0=B2 13:26, Marek Lindn=
er <mareklindner@neomailbox.ch>:
>
> On Thursday, 13 June 2019 04:50:44 HKT =D0=9A=D0=B8=D1=80=D0=B8=D0=BB=D0=
=BB =D0=9B=D1=83=D0=BA=D0=BE=D0=BD=D0=B8=D0=BD wrote:
> > So here is the algorithm. It has a structure we call matryoshka.
> > ET - Expected_throughput.
> >
> > 1) ET =3D TX_bitrate * Transmit_probability * Overhead_coefficient
> > Transmit_probability is always less than 1 so Expected throughput
> > can't be equal to the TX_bitrate. Overhead_coefficient is also should
> > be less than 1
> >
> > 2) Transmit_probability =3D 1 - Retry_probability - Error_probability
> >
> > 3) Retry_probability =3D TX_retries / TX_packets
> >
> > 4) Error_probability =3D TX_errors / TX_packets
> >
> > 5) Overhead_coefficient for 802.11 is fair enough to be 0.65, but can
> > be changed after additional testing.
> >
> >
> > ET =3D TX_bitrate * (1 - (TX_retries + TX_errors) / TX_packets) * 0.65
> > Such technique has very large hysteresis which is good to avoid
> > flapping between different nodes.
> > In my MESH lab this formula works quite well.
>
> This looks like an interesting approach. Which chips / environments did y=
ou
> test this formula with and how did the result compare to the actual TCP
> throughput ?
>
> Thanks,
> Marek
>

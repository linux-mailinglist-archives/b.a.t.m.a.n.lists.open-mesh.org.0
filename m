Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5033807D2
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 14 May 2021 12:58:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C58B880342;
	Fri, 14 May 2021 12:58:12 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 70C2880054
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 14 May 2021 12:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620989889;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+vwddODvlbRqmys4XRwHGGdXkSo82wQYBa5poDg64pU=;
	b=hKrjyoQQmCqMtTDE8sPtojaHWdCFHQcB+T8t0bnVUBgRuDQ7MG7bxVp7zS251XjX4kVdWO
	o8YIQ0lWqA9cB8XI/CAMwFGXbcLfHky5p1B+Yoqe6vkr0Jw3vMPl16Rqf2RDdttX4yKx/l
	63GkPtbrPDxgMF0TH1SEd+puWg0jRO4=
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 2/2] batctl: genl_json: Add generic JSON interface
Date: Fri, 14 May 2021 12:58:07 +0200
Message-ID: <5452292.bbYOnUf4Je@sven-desktop>
In-Reply-To: <20210513140234.1624460-3-asarmanow@gmail.com>
References: <20210513140234.1624460-1-asarmanow@gmail.com> <20210513140234.1624460-3-asarmanow@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4297162.PT8EF5Ib0W"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620989890; a=rsa-sha256;
	cv=none;
	b=kuPtmzyhck7wmYldcEiddAO4mx9fEYJRL3Ii50Zq0U0qZN5mSpSvuX0RPQ0SFx33bXuMx6
	ocyEZ6t+AGcl+wsmWBN+vZTA6AcTh5MsBvw1HxjLtTX0MkOd3Pmj3fZpNvZDxoZuOnJ6qY
	okv4dERdNU1S53WP5QFeNx0vjysRnUg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=hKrjyoQQ;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620989890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+vwddODvlbRqmys4XRwHGGdXkSo82wQYBa5poDg64pU=;
	b=dsj82dXjbC47c4RBoNK8cjhP8h7VVWf4bwhy4jizKYPM1eewwMkK8NgPQGKSvpIXWAF+4X
	0FX6Ju8a5rNJpLs/RJ9GXKbqnbO54e9pZTDLM6WYekwhD2b/QprHkEtu+24x12OIxUpS6R
	jn2tqyj02ILZcEzJxT8mJlLWefQrbRc=
Message-ID-Hash: DW4PICVX2TRDGIV3RRQ2RKRTUXNOSLNF
X-Message-ID-Hash: DW4PICVX2TRDGIV3RRQ2RKRTUXNOSLNF
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Alexander Sarmanow <asarmanow@gmail.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/DW4PICVX2TRDGIV3RRQ2RKRTUXNOSLNF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4297162.PT8EF5Ib0W
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Alexander Sarmanow <asarmanow@gmail.com>
Cc: b.a.t.m.a.n@lists.open-mesh.org, sw@simonwunderlich.de, Alexander Sarmanow <asarmanow@gmail.com>
Subject: Re: [PATCH v3 2/2] batctl: genl_json: Add generic JSON interface
Date: Fri, 14 May 2021 12:58:07 +0200
Message-ID: <5452292.bbYOnUf4Je@sven-desktop>
In-Reply-To: <20210513140234.1624460-3-asarmanow@gmail.com>
References: <20210513140234.1624460-1-asarmanow@gmail.com> <20210513140234.1624460-3-asarmanow@gmail.com>

On Thursday, 13 May 2021 16:02:34 CEST Alexander Sarmanow wrote:
> To print JSON strings in a generic way a second nla_policy is used, with

This is not a nla_policy but a private json translation "policy".

[...]
> new file mode 100644
> index 0000000..cff54d8
> --- /dev/null
> +++ b/genl_json.c
> @@ -0,0 +1,359 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) B.A.T.M.A.N. contributors:
> + *
> + * Alexander Sarmanow <asarmanow@gmail.com>
> + *
> + * License-Filename: LICENSES/preferred/GPL-2.0
> + */
> +
> +#include <stdbool.h>
> +#include <stdio.h>
> +#include <ctype.h>
> +#include <netlink/netlink.h>
> +#include <netlink/attr.h>
> +
> +#include "genl_json.h"
> +#include "batman_adv.h"
> +#include "netlink.h"
> +#include "main.h"

#include "genl_json.h"
#include "main.h"

#include <ctype.h>
#include <inttypes.h>
#include <netlink/netlink.h>
#include <netlink/attr.h>
#include <stdbool.h>
#include <stdio.h>

#include "batman_adv.h"
#include "netlink.h"

> +static void nljson_print_uint8_t(struct nlattr *attrs[], int idx)
> +{
> +	uint8_t value = nla_get_u8(attrs[idx]);
> +
> +	printf("%u", value);
> +}

"%"PRIu8

> +
> +static void nljson_print_uint16_t(struct nlattr *attrs[], int idx)
> +{
> +	uint16_t value = nla_get_u16(attrs[idx]);
> +
> +	printf("%u", value);
> +}

"%"PRIu16

> +
> +static void nljson_print_uint32_t(struct nlattr *attrs[], int idx)
> +{
> +	uint32_t value = nla_get_u32(attrs[idx]);
> +
> +	printf("%u", value);
> +}

"%"PRIu32

> +
> +static void nljson_print_uint64_t(struct nlattr *attrs[], int idx)
> +{
> +	uint64_t value = nla_get_u64(attrs[idx]);
> +
> +	printf("%llu", value);
> +}

"%"PRIu64

> +
> +static void nljson_print_mac(struct nlattr *attrs[], int idx)
> +{
> +	uint8_t *value = nla_data(attrs[idx]);
> +
> +	printf("\"%02x:%02x:%02x:%02x:%02x:%02x\"",
> +		value[0], value[1], value[2], value[3], value[4], value[5]);
> +}

Alignment

> +static void nljson_print_flag(struct nlattr *attrs[], int idx)
> +{
> +	if (nla_get_flag(attrs[idx]))
> +		printf("true");
> +}

The check is not necessary because it check only if attrs[idx] is != NULL - 
which you've already checked. If this would not be the case, then this 
function would create broken json like '{"foobar":}', right?

> +
> +void sanitize_string(const char *str)
> +{
> +	while (*str) {
> +		if (*str == '"' || *str == '\\') {
> +			putchar('\\');
> +			putchar(*str);
> +		} else if (*str == '\\') {
> +			printf("\\\\");
> +		} else if (!isprint(*str)) {
> +			printf("\\x%02x", *str);
> +		} else {
> +			printf("%c", *str);
> +		}

		if (*str == '"' || *str == '\\') {
			putchar('\\');
			putchar(*str);
		} else if (!isprint(*str)) {
			printf("\\x%02x", *str);
		} else {
			putchar(*str);
		}

> +		str++;
> +	}
> +}

This function should have been static and at the beginning of this file.

> +
> +void netlink_print_json_entries(struct nlattr *attrs[], struct json_opts *json_opts)
> +{
> +	bool first_valid_attr = true;
> +	int i;
> +
> +	if (!json_opts->is_first)
> +		printf(",");

Code to handle the json_opts->is_first = false was again not added to this 
function.

> +
> +	printf("{");
> +	for (i = 0; i < BATADV_ATTR_MAX + 1; i++) {
> +		if (!attrs[i])
> +			continue;
> +
> +		if (!batadv_netlink_policy_json[i].cb)
> +			continue;
> +
> +		if (!first_valid_attr)
> +			printf(",");
> +
> +		putc('"', stdout);
> +		sanitize_string(batadv_netlink_policy_json[i].name);
> +		printf("\":");
> +		batadv_netlink_policy_json[i].cb(attrs, i);
> +
> +		first_valid_attr = false;
> +	}
> +	printf("}");
> +}
> +
> +
> +struct nla_policy_json batadv_netlink_policy_json[NUM_BATADV_ATTR] = {

this should have been static const

> +	[BATADV_ATTR_PAD] = {
> +		.name = "pad",
> +	},

I would guess we can ignore this one.

> +	[BATADV_ATTR_TT_FLAGS] = {
> +		.name = "tt_flags",
> +		.cb = nljson_print_uint32_t,
> +	},

Why was the actually decoding removed?

> +	[BATADV_ATTR_DAT_CACHE_IP4ADDRESS] = {
> +		.name = "dat_cache_ip4_address",
> +	},

IPv4 print code missing

[...]
> +	[BATADV_ATTR_VLANID] = {
> +		.name = "vlan_id",
> +		.cb = nljson_print_uint16_t,
> +	},

wasn't this originally printed in a special way?

> +	[BATADV_ATTR_AGGREGATED_OGMS_ENABLED] = {
> +		.name = "aggregated_ogms_enabled",
> +		.cb = nljson_print_uint8_t,
> +	},

This and other _ENABLED are booleans.

[...]

There were also different other weird names used. Like fragmented_enabled for 
the fragmentation feature.

> diff --git a/genl_json.h b/genl_json.h
> new file mode 100644
> index 0000000..0336b40
> --- /dev/null
> +++ b/genl_json.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) B.A.T.M.A.N. contributors:
> + *
> + * Alexander Sarmanow <asarmanow@gmail.com>
> + *
> + * License-Filename: LICENSES/preferred/GPL-2.0
> + */
> +
> +#ifndef _BATCTL_GENLJSON_H
> +#define _BATCTL_GENLJSON_H
> +
> +#include <stdint.h>
> +
> +#include "netlink.h"
> +
> +struct json_opts {
> +	uint8_t is_first;

is_first:1

> +	struct nlquery_opts query_opts;
> +};
> +
> +void netlink_print_json_entries(struct nlattr *attrs[], struct json_opts *json_opts);
> +void sanitize_string(const char *str);
> +
> +#endif /* _BATCTL_GENLJSON_H */
> diff --git a/netlink.h b/netlink.h
> index c93f500..d96935a 100644
> --- a/netlink.h
> +++ b/netlink.h
> @@ -29,6 +29,11 @@ struct nlquery_opts {
>  	int err;
>  };
>  
> +struct nla_policy_json {
> +	const char *name;
> +	void (*cb)(struct nlattr *attrs[], int idx);
> +};
> +

This doesn't belong to netlink.h. If it would really be needed outside of 
genl_json.c then you should have added it to genl_json.h

>  struct ether_addr;
>  
>  int netlink_create(struct state *state);
> @@ -44,6 +49,7 @@ int get_algoname_netlink(struct state *state, unsigned int mesh_ifindex,
>  			 char *algoname, size_t algoname_len);
>  
>  extern struct nla_policy batadv_netlink_policy[];
> +extern struct nla_policy_json batadv_netlink_policy_json[];

This doesn't belong to netlink.h. If it would really be needed outside of 
genl_json.c then you should have added it to genl_json.h

Kind regards,
	Sven


--nextPart4297162.PT8EF5Ib0W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCeV78ACgkQXYcKB8Em
e0Z6+BAAoQvK2/RTeN1pvnI4k8DwkeiOkxoWZ8YHeF/P1VS0mOKrmiCK/rAi6jTL
uWvngTt/XjtmftptbiG1P727Aa8QwhnZWMgViOvHCtSGn/67iWM8e3Lmt6dVp9Jj
lCOz3chRKauowUfEZ9Scw7vwKB4cuMn0T2yc4psysqa7eTieblaplb9kmIXf/S9F
JiHQ7Wz539d96c9PNYsAdOuKqYqBxPaB5Nima6TkFA2nONNmVEDGpKCF1UwoV5t7
h1+td566WWtNA6rc12ZsNL8ZHgl/NRtsBBoVmscaB0OBMUhu/GbnJ+xh8bxCszDY
KdXOmUp+fkwAGnxJfax+HcBXKSI9g8/dWPtdQuaoVngOaDBM4Ow5hXDASKSvqTSC
npvt4USn+1Eqk93EjL2PbnqwDAhzuKwvGxYwJQFhBz2BvNQW+RrSpdOUNKr3xbO2
lTGdvZbCWUSA96TH1oz/CuTnshHx4/cvXCt+EWNVdCaFqEtjROUoSZOl7pQfUtHf
ey1JF5U0ptQT4BYUsWs+ahvOuk2CiA9Y3g3rt2yFJnCmx8nGVGfA0ZofNRVlV17g
jyrjBuqgT4yeIQPnkfWPJ8+n5e4WZiI3Ive/v+Jfin6f58zGv8+V5bN0QnGtjAOn
I1lkTDVixfQmWteIkyA9VzkxL52ZokTN5+pqAIEhIvhO1Ok5Oeo=
=8J1Y
-----END PGP SIGNATURE-----

--nextPart4297162.PT8EF5Ib0W--



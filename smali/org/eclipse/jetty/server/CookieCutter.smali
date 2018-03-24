.class public Lorg/eclipse/jetty/server/CookieCutter;
.super Ljava/lang/Object;
.source "CookieCutter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cookies:[Lc/c/c/a;

.field _fields:I

.field private _lastCookies:[Lc/c/c/a;

.field _lazyFields:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public addCookieField(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v1, v2, :cond_3

    .line 93
    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v1, v2, :cond_3

    .line 100
    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_3
    iput-object v3, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 103
    iput-object v3, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    .line 104
    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v1, v2, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCookies()[Lc/c/c/a;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 66
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 65
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/CookieCutter;->parseFields()V

    goto :goto_1
.end method

.method protected parseFields()V
    .locals 19

    .prologue
    .line 110
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    .line 111
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 113
    const/4 v5, 0x0

    .line 115
    const/4 v4, 0x0

    .line 118
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v1, v2, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    const/4 v1, 0x0

    move v14, v1

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-ge v14, v1, :cond_d

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1, v14}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v12, 0x0

    .line 130
    const/4 v2, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v7, -0x1

    .line 136
    const/4 v3, -0x1

    .line 137
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v16, v15, -0x1

    :goto_2
    if-ge v6, v15, :cond_c

    .line 139
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 142
    if-eqz v10, :cond_3

    .line 144
    if-eqz v9, :cond_1

    .line 146
    const/4 v8, 0x0

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    move/from16 v17, v11

    move v11, v4

    move v4, v8

    move-object v8, v2

    move v2, v3

    move v3, v7

    move/from16 v7, v17

    .line 137
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object v13, v10

    move v10, v5

    move-object v5, v12

    move-object v12, v9

    move v9, v4

    move v4, v11

    move v11, v7

    move v7, v3

    move v3, v2

    move-object v2, v8

    goto :goto_2

    .line 150
    :cond_1
    sparse-switch v8, :sswitch_data_0

    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 173
    goto :goto_3

    .line 154
    :sswitch_0
    const/4 v10, 0x0

    .line 157
    move/from16 v0, v16

    if-ne v6, v0, :cond_17

    .line 159
    if-eqz v11, :cond_2

    .line 160
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    .line 281
    :goto_4
    if-eqz v3, :cond_f

    if-eqz v12, :cond_f

    .line 284
    invoke-static {v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 285
    invoke-static {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 289
    :try_start_0
    const-string v3, "$"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 291
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 292
    const-string v12, "$path"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 294
    if-eqz v2, :cond_e

    .line 295
    invoke-virtual {v2, v13}, Lc/c/c/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    move-object v4, v5

    .line 325
    :goto_5
    const/4 v12, 0x0

    .line 326
    const/4 v5, 0x0

    move/from16 v17, v7

    move v7, v11

    move v11, v3

    move v3, v8

    move-object v8, v2

    move/from16 v2, v17

    move/from16 v18, v10

    move-object v10, v12

    move-object v12, v4

    move v4, v9

    move-object v9, v5

    move/from16 v5, v18

    goto :goto_3

    .line 163
    :cond_2
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 164
    const-string v12, ""

    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    goto :goto_4

    .line 170
    :sswitch_1
    const/4 v8, 0x1

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    move/from16 v17, v11

    move v11, v4

    move v4, v8

    move-object v8, v2

    move v2, v3

    move v3, v7

    move/from16 v7, v17

    .line 171
    goto/16 :goto_3

    .line 179
    :cond_3
    if-eqz v11, :cond_5

    .line 182
    sparse-switch v8, :sswitch_data_1

    .line 213
    if-gez v7, :cond_15

    move v3, v6

    .line 216
    :goto_6
    move/from16 v0, v16

    if-ne v6, v0, :cond_10

    .line 218
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v7, v6

    move v8, v3

    move-object v3, v12

    move-object v12, v13

    .line 219
    goto :goto_4

    :sswitch_2
    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 186
    goto/16 :goto_3

    .line 189
    :sswitch_3
    if-gez v7, :cond_16

    .line 191
    const/4 v7, 0x1

    move v3, v6

    .line 195
    :goto_7
    move/from16 v0, v16

    if-ne v6, v0, :cond_13

    .line 197
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v8, v3

    move v10, v7

    move v7, v6

    move-object v3, v12

    move-object v12, v13

    .line 198
    goto/16 :goto_4

    .line 204
    :sswitch_4
    if-ltz v7, :cond_4

    .line 205
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 208
    :goto_8
    const/4 v8, -0x1

    .line 209
    const/4 v11, 0x0

    move-object v12, v13

    move-object/from16 v17, v7

    move v7, v3

    move-object/from16 v3, v17

    .line 210
    goto/16 :goto_4

    .line 207
    :cond_4
    const-string v7, ""

    goto :goto_8

    .line 227
    :cond_5
    sparse-switch v8, :sswitch_data_2

    .line 266
    if-gez v7, :cond_11

    move v3, v6

    .line 269
    :goto_9
    move/from16 v0, v16

    if-ne v6, v0, :cond_10

    .line 271
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 272
    const-string v12, ""

    move v7, v6

    move v8, v3

    move-object v3, v12

    move-object v12, v13

    goto/16 :goto_4

    :sswitch_5
    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 231
    goto/16 :goto_3

    .line 234
    :sswitch_6
    if-gez v7, :cond_14

    .line 236
    const/4 v7, 0x1

    move v3, v6

    .line 240
    :goto_a
    move/from16 v0, v16

    if-ne v6, v0, :cond_13

    .line 242
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 243
    const-string v12, ""

    move v8, v3

    move v10, v7

    move v7, v6

    move-object v3, v12

    move-object v12, v13

    .line 244
    goto/16 :goto_4

    .line 250
    :sswitch_7
    if-ltz v7, :cond_6

    .line 252
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 253
    const-string v12, ""

    .line 255
    :cond_6
    const/4 v7, -0x1

    move v8, v7

    move v7, v3

    move-object v3, v12

    move-object v12, v13

    .line 256
    goto/16 :goto_4

    .line 259
    :sswitch_8
    if-ltz v7, :cond_12

    .line 260
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 261
    :goto_b
    const/4 v7, -0x1

    .line 262
    const/4 v8, 0x1

    move/from16 v17, v3

    move v3, v7

    move v7, v8

    move-object v8, v2

    move/from16 v2, v17

    move/from16 v18, v10

    move-object v10, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move/from16 v5, v18

    .line 263
    goto/16 :goto_3

    .line 297
    :cond_7
    :try_start_1
    const-string v12, "$domain"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 299
    if-eqz v2, :cond_e

    .line 300
    invoke-virtual {v2, v13}, Lc/c/c/a;->b(Ljava/lang/String;)V

    move v3, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 302
    :cond_8
    const-string v12, "$port"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 304
    if-eqz v2, :cond_e

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "$port="

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/c/c/a;->a(Ljava/lang/String;)V

    move v3, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 307
    :cond_9
    const-string v12, "$version"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 309
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    :goto_c
    move-object v4, v5

    .line 311
    goto/16 :goto_5

    .line 314
    :cond_a
    new-instance v3, Lc/c/c/a;

    invoke-direct {v3, v12, v13}, Lc/c/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    if-lez v4, :cond_b

    .line 316
    :try_start_2
    invoke-virtual {v3, v4}, Lc/c/c/a;->a(I)V

    .line 317
    :cond_b
    invoke-static {v5, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    move-object/from16 v17, v3

    move v3, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 323
    goto/16 :goto_5

    .line 320
    :catch_0
    move-exception v3

    .line 322
    :goto_d
    sget-object v12, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move v3, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 122
    :cond_c
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto/16 :goto_1

    .line 331
    :cond_d
    const-class v1, Lc/c/c/a;

    invoke-static {v5, v1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc/c/c/a;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    .line 333
    return-void

    .line 320
    :catch_1
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto :goto_d

    :cond_e
    move v3, v4

    goto :goto_c

    :cond_f
    move/from16 v17, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v3

    move v3, v8

    move-object v8, v2

    move/from16 v2, v17

    move-object/from16 v18, v12

    move-object v12, v5

    move v5, v10

    move-object/from16 v10, v18

    goto/16 :goto_3

    :cond_10
    move v7, v11

    move-object v8, v2

    move v2, v6

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    goto/16 :goto_3

    :cond_11
    move v3, v7

    goto/16 :goto_9

    :cond_12
    move-object v11, v13

    goto/16 :goto_b

    :cond_13
    move-object v8, v2

    move-object v10, v13

    move v2, v6

    move/from16 v17, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v7

    move/from16 v7, v17

    goto/16 :goto_3

    :cond_14
    move v3, v7

    move v7, v10

    goto/16 :goto_a

    :cond_15
    move v3, v7

    goto/16 :goto_6

    :cond_16
    move v3, v7

    move v7, v10

    goto/16 :goto_7

    :cond_17
    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    goto/16 :goto_4

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 182
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 227
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x3b -> :sswitch_7
        0x3d -> :sswitch_8
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 81
    return-void
.end method

.method public setCookies([Lc/c/c/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Lc/c/c/a;

    .line 72
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Lc/c/c/a;

    .line 73
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 75
    return-void
.end method

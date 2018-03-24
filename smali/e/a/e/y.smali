.class final Le/a/e/y;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Le/a/e/e;

.field private final c:Lf/i;

.field private final d:Le/a/e/z;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Le/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/a/e/y;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lf/i;Z)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Le/a/e/y;->c:Lf/i;

    .line 72
    iput-boolean p2, p0, Le/a/e/y;->e:Z

    .line 73
    new-instance v0, Le/a/e/z;

    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    invoke-direct {v0, v1}, Le/a/e/z;-><init>(Lf/i;)V

    iput-object v0, p0, Le/a/e/y;->d:Le/a/e/z;

    .line 74
    new-instance v0, Le/a/e/e;

    iget-object v1, p0, Le/a/e/y;->d:Le/a/e/z;

    invoke-direct {v0, v1}, Le/a/e/e;-><init>(Lf/z;)V

    iput-object v0, p0, Le/a/e/y;->b:Le/a/e/e;

    .line 75
    return-void
.end method

.method private static a(IBS)I
    .locals 4

    .prologue
    .line 395
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 396
    :cond_0
    if-le p2, p0, :cond_1

    .line 397
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 399
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(Lf/i;)I
    .locals 2

    .prologue
    .line 388
    invoke-interface {p0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 389
    invoke-interface {p0}, Lf/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 390
    invoke-interface {p0}, Lf/i;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 388
    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Le/a/e/y;->d:Le/a/e/z;

    iget-object v1, p0, Le/a/e/y;->d:Le/a/e/z;

    iput p1, v1, Le/a/e/z;->d:I

    iput p1, v0, Le/a/e/z;->a:I

    .line 181
    iget-object v0, p0, Le/a/e/y;->d:Le/a/e/z;

    iput-short p2, v0, Le/a/e/z;->e:S

    .line 182
    iget-object v0, p0, Le/a/e/y;->d:Le/a/e/z;

    iput-byte p3, v0, Le/a/e/z;->b:B

    .line 183
    iget-object v0, p0, Le/a/e/y;->d:Le/a/e/z;

    iput p4, v0, Le/a/e/z;->c:I

    .line 187
    iget-object v0, p0, Le/a/e/y;->b:Le/a/e/e;

    invoke-virtual {v0}, Le/a/e/e;->a()V

    .line 188
    iget-object v0, p0, Le/a/e/y;->b:Le/a/e/e;

    invoke-virtual {v0}, Le/a/e/e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->i()I

    .line 216
    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    .line 219
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    iget-boolean v0, p0, Le/a/e/y;->e:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    sget-object v1, Le/a/e/g;->a:Lf/j;

    invoke-virtual {v1}, Lf/j;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lf/i;->c(J)Lf/j;

    move-result-object v0

    .line 80
    sget-object v1, Le/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Le/a/e/y;->a:Ljava/util/logging/Logger;

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lf/j;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Le/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    :cond_2
    sget-object v1, Le/a/e/g;->a:Lf/j;

    invoke-virtual {v1, v0}, Lf/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lf/j;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Le/a/e/aa;)Z
    .locals 11

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    const-wide/16 v6, 0x9

    invoke-interface {v1, v6, v7}, Lf/i;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    invoke-static {v1}, Le/a/e/y;->a(Lf/i;)I

    move-result v1

    .line 106
    if-ltz v1, :cond_0

    if-le v1, v10, :cond_2

    .line 107
    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 90
    :catch_0
    move-exception v1

    move v4, v0

    .line 155
    :cond_1
    :goto_0
    return v4

    .line 109
    :cond_2
    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v2}, Lf/i;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 110
    iget-object v5, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v5}, Lf/i;->g()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 111
    iget-object v6, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v6}, Lf/i;->i()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 112
    sget-object v7, Le/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Le/a/e/y;->a:Ljava/util/logging/Logger;

    invoke-static {v4, v6, v1, v2, v5}, Le/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 153
    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lf/i;->f(J)V

    goto :goto_0

    .line 116
    :pswitch_0
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_4

    move v3, v4

    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    if-eqz v2, :cond_6

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_7

    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_7
    invoke-static {v1, v5, v0}, Le/a/e/y;->a(IBS)I

    move-result v1

    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {p1, v3, v6, v2, v1}, Le/a/e/aa;->a(ZILf/i;I)V

    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lf/i;->f(J)V

    goto :goto_0

    .line 120
    :pswitch_1
    if-nez v6, :cond_8

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_9

    move v3, v4

    :goto_3
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_a

    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    move v2, v0

    :goto_4
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_21

    invoke-direct {p0}, Le/a/e/y;->b()V

    add-int/lit8 v0, v1, -0x5

    :goto_5
    invoke-static {v0, v5, v2}, Le/a/e/y;->a(IBS)I

    move-result v0

    invoke-direct {p0, v0, v2, v5, v6}, Le/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v3, v6, v0}, Le/a/e/aa;->a(ZILjava/util/List;)V

    goto/16 :goto_0

    :cond_9
    move v3, v0

    goto :goto_3

    :cond_a
    move v2, v0

    goto :goto_4

    .line 124
    :pswitch_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    if-nez v6, :cond_c

    const-string v1, "TYPE_PRIORITY streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-direct {p0}, Le/a/e/y;->b()V

    goto/16 :goto_0

    .line 128
    :pswitch_3
    if-eq v1, v3, :cond_d

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    if-nez v6, :cond_e

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v1}, Lf/i;->i()I

    move-result v1

    invoke-static {v1}, Le/a/e/b;->a(I)Le/a/e/b;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    invoke-interface {p1, v6, v2}, Le/a/e/aa;->a(ILe/a/e/b;)V

    goto/16 :goto_0

    .line 132
    :pswitch_4
    if-eqz v6, :cond_10

    const-string v1, "TYPE_SETTINGS streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_11

    if-eqz v1, :cond_1

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    rem-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_12

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    new-instance v6, Le/a/e/al;

    invoke-direct {v6}, Le/a/e/al;-><init>()V

    move v5, v0

    :goto_6
    if-ge v5, v1, :cond_15

    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v2}, Lf/i;->h()S

    move-result v2

    iget-object v7, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v7}, Lf/i;->i()I

    move-result v7

    packed-switch v2, :pswitch_data_1

    :cond_13
    :goto_7
    :pswitch_5
    invoke-virtual {v6, v2, v7}, Le/a/e/al;->a(II)Le/a/e/al;

    add-int/lit8 v2, v5, 0x6

    move v5, v2

    goto :goto_6

    :pswitch_6
    if-eqz v7, :cond_13

    if-eq v7, v4, :cond_13

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    move v2, v3

    goto :goto_7

    :pswitch_8
    const/4 v2, 0x7

    if-gez v7, :cond_13

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_9
    if-lt v7, v10, :cond_14

    const v8, 0xffffff

    if-le v7, v8, :cond_13

    :cond_14
    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-interface {p1, v6}, Le/a/e/aa;->a(Le/a/e/al;)V

    goto/16 :goto_0

    .line 136
    :pswitch_a
    if-nez v6, :cond_16

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_17

    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_17
    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v2}, Lf/i;->i()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x4

    invoke-static {v1, v5, v0}, Le/a/e/y;->a(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, v5, v6}, Le/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Le/a/e/aa;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 140
    :pswitch_b
    if-eq v1, v9, :cond_18

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    if-eqz v6, :cond_19

    const-string v1, "TYPE_PING streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_19
    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v1}, Lf/i;->i()I

    move-result v1

    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v2}, Lf/i;->i()I

    move-result v2

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1a

    move v0, v4

    :cond_1a
    invoke-interface {p1, v0, v1, v2}, Le/a/e/aa;->a(ZII)V

    goto/16 :goto_0

    .line 144
    :pswitch_c
    if-ge v1, v9, :cond_1b

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    if-eqz v6, :cond_1c

    const-string v1, "TYPE_GOAWAY streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    iget-object v2, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v2}, Lf/i;->i()I

    move-result v2

    iget-object v3, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v3}, Lf/i;->i()I

    move-result v3

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3}, Le/a/e/b;->a(I)Le/a/e/b;

    move-result-object v5

    if-nez v5, :cond_1d

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    sget-object v0, Lf/j;->b:Lf/j;

    if-lez v1, :cond_1e

    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    int-to-long v6, v1

    invoke-interface {v0, v6, v7}, Lf/i;->c(J)Lf/j;

    move-result-object v0

    :cond_1e
    invoke-interface {p1, v2, v0}, Le/a/e/aa;->a(ILf/j;)V

    goto/16 :goto_0

    .line 148
    :pswitch_d
    if-eq v1, v3, :cond_1f

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    iget-object v1, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v1}, Lf/i;->i()I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_20

    const-string v1, "windowSizeIncrement was 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    invoke-interface {p1, v6, v2, v3}, Le/a/e/aa;->a(IJ)V

    goto/16 :goto_0

    :cond_21
    move v0, v1

    goto/16 :goto_5

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Le/a/e/y;->c:Lf/i;

    invoke-interface {v0}, Lf/i;->close()V

    .line 332
    return-void
.end method

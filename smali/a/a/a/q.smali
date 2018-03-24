.class final La/a/a/q;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:B

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>([BI)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v0, "ISO8859_1"

    iput-object v0, p0, La/a/a/q;->e:Ljava/lang/String;

    .line 67
    iput-object p1, p0, La/a/a/q;->a:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, La/a/a/q;->c:I

    .line 69
    iput p2, p0, La/a/a/q;->b:I

    .line 71
    iget-object v0, p0, La/a/a/q;->a:[B

    iget v1, p0, La/a/a/q;->c:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, La/a/a/q;->d:B

    iget v0, p0, La/a/a/q;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/q;->c:I

    .line 73
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, La/a/a/q;-><init>([BI)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, La/a/a/q;->e:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-byte v0, p0, La/a/a/q;->d:B

    invoke-virtual {p0, v0}, La/a/a/q;->a(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(B)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v8, -0x1

    const/4 v1, 0x1

    .line 126
    :try_start_0
    iget v2, p0, La/a/a/q;->c:I

    .line 127
    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v3, 0x0

    move v6, v3

    .line 129
    :goto_0
    if-nez v6, :cond_5

    .line 130
    :goto_1
    iget-object v3, p0, La/a/a/q;->a:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_0

    iget v3, p0, La/a/a/q;->b:I

    if-lt v2, v3, :cond_3

    .line 140
    :cond_0
    :goto_2
    iget-object v3, p0, La/a/a/q;->a:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_7

    if-eq p1, v8, :cond_7

    .line 141
    iget v2, p0, La/a/a/q;->b:I

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 144
    :goto_3
    const/4 v3, 0x0

    .line 145
    iget-object v2, p0, La/a/a/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_4
    move-object v4, v2

    .line 162
    :goto_5
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, La/a/a/q;->a:[B

    iget v8, p0, La/a/a/q;->c:I

    iget v9, p0, La/a/a/q;->c:I

    sub-int v9, v5, v9

    invoke-direct {v2, v7, v8, v9, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_6
    if-eqz v6, :cond_6

    :goto_7
    add-int/2addr v0, v5

    :try_start_2
    iput v0, p0, La/a/a/q;->c:I

    .line 170
    return-object v2

    :cond_2
    move v6, v1

    .line 127
    goto :goto_0

    .line 131
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 134
    :cond_5
    iget v3, p0, La/a/a/q;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, La/a/a/q;->a:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, La/a/a/q;->a:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    goto :goto_2

    .line 148
    :pswitch_0
    const-string v2, "UTF-8"

    move-object v4, v2

    .line 149
    goto :goto_5

    .line 151
    :pswitch_1
    const-string v2, "UTF-16BE"

    move-object v4, v2

    .line 152
    goto :goto_5

    .line 154
    :pswitch_2
    const-string v2, "UTF-16LE"

    .line 157
    iget-object v4, p0, La/a/a/q;->a:[B

    iget v7, p0, La/a/a/q;->c:I

    aget-byte v4, v4, v7

    if-ne v4, v8, :cond_1

    iget-object v4, p0, La/a/a/q;->a:[B

    iget v7, p0, La/a/a/q;->c:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v4, v4, v7

    const/4 v7, -0x2

    if-ne v4, v7, :cond_1

    .line 158
    iget v4, p0, La/a/a/q;->c:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, La/a/a/q;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, La/a/a/p;

    invoke-direct {v1}, La/a/a/p;-><init>()V

    invoke-virtual {v1, v0}, La/a/a/p;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, La/a/a/p;

    throw v0

    :catch_1
    move-exception v2

    move-object v2, v3

    goto :goto_6

    :cond_6
    move v0, v1

    .line 168
    goto :goto_7

    :cond_7
    move v5, v2

    goto :goto_3

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)[B
    .locals 4

    .prologue
    .line 193
    :try_start_0
    new-array v0, p1, [B

    .line 194
    iget-object v1, p0, La/a/a/q;->a:[B

    iget v2, p0, La/a/a/q;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget v1, p0, La/a/a/q;->c:I

    add-int/2addr v1, p1

    iput v1, p0, La/a/a/q;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    new-instance v0, La/a/a/p;

    invoke-direct {v0}, La/a/a/p;-><init>()V

    throw v0
.end method

.method public final b()[B
    .locals 2

    .prologue
    .line 181
    iget v0, p0, La/a/a/q;->b:I

    iget v1, p0, La/a/a/q;->c:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, La/a/a/q;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Date;
    .locals 5

    .prologue
    .line 206
    invoke-virtual {p0}, La/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 209
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-ddTHH:mm:ss"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    new-instance v0, La/a/a/p;

    invoke-direct {v0}, La/a/a/p;-><init>()V

    throw v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

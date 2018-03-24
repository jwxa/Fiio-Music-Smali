.class Lg/a/a/s;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field a:[C

.field b:I

.field c:Ljava/lang/StringBuffer;

.field d:Lcom/d/a/a/h;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x800

    new-array v0, v0, [C

    iput-object v0, p0, Lg/a/a/s;->a:[C

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    .line 32
    iput-object p1, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    .line 34
    iput-object p2, p0, Lg/a/a/s;->g:Ljava/io/OutputStream;

    .line 36
    :cond_0
    invoke-direct {p0}, Lg/a/a/s;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/s;->e:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lg/a/a/s;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lg/a/a/s;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lg/a/a/s;->b:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lg/a/a/s;->c:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lg/a/a/s;->a:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lg/a/a/s;->b:I

    .line 95
    :cond_0
    iget-object v0, p0, Lg/a/a/s;->a:[C

    iget v1, p0, Lg/a/a/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/a/a/s;->b:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 96
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 63
    .line 64
    iput v1, p0, Lg/a/a/s;->b:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lg/a/a/s;->c:Ljava/lang/StringBuffer;

    move v2, v1

    move v0, v1

    .line 65
    :goto_0
    if-nez v2, :cond_4

    .line 66
    iget-object v4, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 67
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 87
    :goto_1
    return-object v0

    .line 70
    :cond_0
    if-eqz v0, :cond_3

    .line 71
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v6}, Lg/a/a/s;->a(I)V

    move v0, v1

    .line 82
    :cond_2
    invoke-direct {p0, v4}, Lg/a/a/s;->a(I)V

    goto :goto_0

    .line 79
    :cond_3
    if-ne v4, v6, :cond_2

    move v0, v3

    .line 81
    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lg/a/a/s;->c:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lg/a/a/s;->a:[C

    iget v3, p0, Lg/a/a/s;->b:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lg/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public final b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lg/a/a/s;->g:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lg/a/a/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method final d()Lcom/d/a/a/h;
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    .line 177
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/d/a/a/h;

    invoke-direct {v0}, Lcom/d/a/a/h;-><init>()V

    iput-object v0, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    .line 113
    new-array v4, v10, [C

    .line 114
    iget-object v0, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 115
    :goto_1
    if-eq v6, v10, :cond_a

    if-eq v6, v11, :cond_a

    if-ltz v6, :cond_a

    .line 119
    if-le v6, v7, :cond_1

    const/4 v0, 0x1

    .line 120
    :goto_2
    const/4 v2, 0x1

    int-to-char v5, v6

    aput-char v5, v4, v1

    move-object v5, v4

    move v4, v2

    move v2, v3

    .line 122
    :goto_3
    iget-object v6, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_4

    .line 123
    sparse-switch v6, :sswitch_data_0

    move v8, v6

    .line 148
    :goto_4
    array-length v6, v5

    if-lt v4, v6, :cond_c

    .line 149
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 150
    invoke-static {v5, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :goto_5
    add-int/lit8 v5, v4, 0x1

    int-to-char v8, v8

    aput-char v8, v6, v4

    move v4, v5

    move-object v5, v6

    .line 154
    goto :goto_3

    :cond_1
    move v0, v1

    .line 119
    goto :goto_2

    .line 125
    :sswitch_0
    if-eqz v0, :cond_2

    if-lez v4, :cond_2

    move v2, v4

    :cond_2
    move v0, v1

    move v8, v6

    .line 128
    goto :goto_4

    :sswitch_1
    move v0, v7

    :goto_6
    move v8, v0

    move v0, v1

    .line 133
    goto :goto_4

    .line 136
    :sswitch_2
    iget-object v8, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 137
    if-ne v6, v11, :cond_d

    if-ne v8, v10, :cond_d

    .line 138
    iget-object v6, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 139
    if-ne v6, v11, :cond_3

    .line 140
    iget-object v6, p0, Lg/a/a/s;->f:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 142
    :cond_3
    :goto_7
    if-eq v6, v10, :cond_5

    if-eq v6, v11, :cond_5

    if-gt v6, v7, :cond_5

    move v8, v7

    .line 143
    goto :goto_4

    :cond_4
    move v6, v3

    .line 157
    :cond_5
    :goto_8
    if-lez v4, :cond_6

    add-int/lit8 v0, v4, -0x1

    aget-char v0, v5, v0

    if-gt v0, v7, :cond_6

    .line 158
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 160
    :cond_6
    if-gtz v2, :cond_7

    .line 161
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 171
    :goto_9
    if-lt v0, v4, :cond_9

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 175
    :goto_a
    iget-object v4, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    invoke-virtual {v4, v2, v0}, Lcom/d/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 176
    goto :goto_1

    .line 164
    :cond_7
    invoke-static {v5, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-ge v2, v4, :cond_8

    aget-char v8, v5, v2

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_8

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    :cond_8
    :goto_b
    if-ge v2, v4, :cond_b

    aget-char v8, v5, v2

    if-gt v8, v7, :cond_b

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 174
    :cond_9
    sub-int/2addr v4, v0

    invoke-static {v5, v0, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 177
    :cond_a
    iget-object v0, p0, Lg/a/a/s;->d:Lcom/d/a/a/h;

    goto/16 :goto_0

    :cond_b
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_9

    :cond_c
    move-object v6, v5

    goto :goto_5

    :cond_d
    move v6, v8

    goto :goto_7

    :sswitch_3
    move v0, v6

    goto :goto_6

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_3
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

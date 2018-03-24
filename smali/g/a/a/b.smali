.class Lg/a/a/b;
.super Lg/a/a/q;
.source "ChunkedInputStream.java"


# static fields
.field static a:C

.field static b:C

.field static final synthetic c:Z


# instance fields
.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lg/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/b;->c:Z

    .line 26
    const/16 v0, 0xd

    sput-char v0, Lg/a/a/b;->a:C

    .line 27
    const/16 v0, 0xa

    sput-char v0, Lg/a/a/b;->b:C

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lg/a/a/h;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lg/a/a/q;-><init>(Lg/a/a/h;Ljava/io/InputStream;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/b;->k:Z

    .line 18
    return-void
.end method

.method private static a([CI)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 30
    sget-boolean v1, Lg/a/a/b;->c:Z

    if-nez v1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 32
    :goto_0
    if-ge v1, p1, :cond_4

    .line 33
    aget-char v0, p0, v1

    .line 34
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 36
    add-int/lit8 v0, v0, -0x30

    .line 44
    :goto_1
    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v0

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x66

    if-gt v0, v3, :cond_2

    .line 38
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 39
    goto :goto_1

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x46

    if-gt v0, v3, :cond_3

    .line 40
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid chunk length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    return v2
.end method

.method private d()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-char v0, v0

    .line 117
    sget-char v1, Lg/a/a/b;->a:C

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid chunk end"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-char v0, v0

    .line 121
    sget-char v1, Lg/a/a/b;->b:C

    if-eq v0, v1, :cond_1

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid chunk end"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lg/a/a/b;->g:Z

    if-eqz v0, :cond_1

    move v0, v6

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-boolean v0, p0, Lg/a/a/b;->k:Z

    if-eqz v0, :cond_a

    .line 91
    const/16 v0, 0x10

    new-array v7, v0, [C

    move v0, v1

    move v3, v1

    move v5, v1

    :cond_2
    :goto_1
    iget-object v4, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-char v8, v4

    if-eq v8, v6, :cond_8

    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid chunk header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v5, :cond_5

    sget-char v4, Lg/a/a/b;->b:C

    if-ne v8, v4, :cond_4

    invoke-static {v7, v3}, Lg/a/a/b;->a([CI)I

    move-result v0

    iput v0, p0, Lg/a/a/b;->j:I

    .line 92
    iget v0, p0, Lg/a/a/b;->j:I

    if-nez v0, :cond_9

    .line 93
    iput-boolean v2, p0, Lg/a/a/b;->g:Z

    .line 94
    invoke-direct {p0}, Lg/a/a/b;->d()V

    .line 95
    iget-object v0, p0, Lg/a/a/b;->d:Lg/a/a/h;

    invoke-virtual {v0}, Lg/a/a/h;->n()Lg/a/a/ae;

    move-result-object v0

    iget-object v1, p0, Lg/a/a/b;->d:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->m()Lg/a/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/a/ae;->b(Lg/a/a/k;)V

    move v0, v6

    .line 96
    goto :goto_0

    .line 91
    :cond_4
    if-nez v0, :cond_d

    add-int/lit8 v4, v3, 0x1

    aput-char v8, v7, v3

    move v3, v4

    move v5, v1

    goto :goto_1

    :cond_5
    sget-char v4, Lg/a/a/b;->a:C

    if-ne v8, v4, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    const/16 v4, 0x3b

    if-ne v8, v4, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    if-nez v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    aput-char v8, v7, v3

    move v3, v4

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of stream reading chunk header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_9
    iput-boolean v1, p0, Lg/a/a/b;->k:Z

    .line 100
    :cond_a
    iget v0, p0, Lg/a/a/b;->j:I

    if-le p3, v0, :cond_b

    .line 101
    iget p3, p0, Lg/a/a/b;->j:I

    .line 103
    :cond_b
    iget-object v0, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 104
    if-ltz v0, :cond_c

    .line 105
    iget v1, p0, Lg/a/a/b;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lg/a/a/b;->j:I

    .line 107
    :cond_c
    iget v1, p0, Lg/a/a/b;->j:I

    if-nez v1, :cond_0

    .line 108
    iput-boolean v2, p0, Lg/a/a/b;->k:Z

    .line 109
    invoke-direct {p0}, Lg/a/a/b;->d()V

    goto/16 :goto_0

    :cond_d
    move v5, v1

    goto/16 :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lg/a/a/b;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/a/a/b;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lg/a/a/b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/a/a/b;->f:Z

    if-eqz v0, :cond_2

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 136
    :cond_2
    iget-object v0, p0, Lg/a/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 137
    iget v1, p0, Lg/a/a/b;->j:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lg/a/a/b;->j:I

    goto :goto_0
.end method

.method public mark(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class final Lg/a/a/c;
.super Ljava/io/FilterOutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field a:Lg/a/a/h;

.field private b:Z

.field private c:I

.field private d:I

.field private e:[B


# direct methods
.method constructor <init>(Lg/a/a/h;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    iput-boolean v1, p0, Lg/a/a/c;->b:Z

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lg/a/a/c;->c:I

    .line 40
    iput v1, p0, Lg/a/a/c;->d:I

    .line 41
    const/16 v0, 0x1008

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/c;->e:[B

    .line 46
    iput-object p1, p0, Lg/a/a/c;->a:Lg/a/a/h;

    .line 47
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v1, 0x0

    .line 95
    iget v0, p0, Lg/a/a/c;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 96
    array-length v3, v2

    .line 97
    rsub-int/lit8 v4, v3, 0x4

    move v0, v1

    .line 99
    :goto_0
    if-ge v0, v3, :cond_0

    .line 100
    iget-object v5, p0, Lg/a/a/c;->e:[B

    add-int v6, v4, v0

    aget-char v7, v2, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lg/a/a/c;->e:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v4

    aput-byte v9, v2, v0

    .line 103
    iget-object v0, p0, Lg/a/a/c;->e:[B

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, v4

    aput-byte v8, v0, v3

    .line 104
    iget-object v0, p0, Lg/a/a/c;->e:[B

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    iget v5, p0, Lg/a/a/c;->d:I

    add-int/2addr v2, v5

    aput-byte v9, v0, v2

    .line 105
    iget-object v0, p0, Lg/a/a/c;->e:[B

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, v4

    iget v5, p0, Lg/a/a/c;->d:I

    add-int/2addr v3, v5

    aput-byte v8, v0, v3

    .line 106
    iget-object v0, p0, Lg/a/a/c;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lg/a/a/c;->e:[B

    iget v5, p0, Lg/a/a/c;->d:I

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    iput v1, p0, Lg/a/a/c;->d:I

    .line 108
    const/4 v0, 0x6

    iput v0, p0, Lg/a/a/c;->c:I

    .line 109
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lg/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lg/a/a/c;->flush()V

    .line 117
    invoke-direct {p0}, Lg/a/a/c;->a()V

    .line 118
    iget-object v0, p0, Lg/a/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/c;->b:Z

    .line 120
    iget-object v0, p0, Lg/a/a/c;->a:Lg/a/a/h;

    invoke-virtual {v0}, Lg/a/a/h;->h()Lg/a/a/q;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lg/a/a/q;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {v0}, Lg/a/a/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_1
    new-instance v0, Lg/a/a/ao;

    iget-object v1, p0, Lg/a/a/c;->a:Lg/a/a/h;

    invoke-direct {v0, v1}, Lg/a/a/ao;-><init>(Lg/a/a/h;)V

    .line 128
    iget-object v1, p0, Lg/a/a/c;->a:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->e()Lg/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lg/a/a/l;->c()Lg/a/a/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/a/a/ae;->a(Lg/a/a/g;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lg/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lg/a/a/al;

    invoke-direct {v0}, Lg/a/a/al;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget v0, p0, Lg/a/a/c;->d:I

    if-lez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lg/a/a/c;->a()V

    .line 138
    :cond_1
    iget-object v0, p0, Lg/a/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 139
    return-void
.end method

.method public final write(I)V
    .locals 3

    .prologue
    .line 50
    iget-boolean v0, p0, Lg/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lg/a/a/al;

    invoke-direct {v0}, Lg/a/a/al;-><init>()V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lg/a/a/c;->e:[B

    iget v1, p0, Lg/a/a/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/a/a/c;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 54
    iget v0, p0, Lg/a/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/a/a/c;->d:I

    .line 55
    iget v0, p0, Lg/a/a/c;->d:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 56
    invoke-direct {p0}, Lg/a/a/c;->a()V

    .line 58
    :cond_1
    return-void
.end method

.method public final write([BII)V
    .locals 4

    .prologue
    const/16 v3, 0x1000

    .line 61
    iget-boolean v0, p0, Lg/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lg/a/a/al;

    invoke-direct {v0}, Lg/a/a/al;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lg/a/a/c;->d:I

    rsub-int v0, v0, 0x1000

    .line 65
    if-le p3, v0, :cond_1

    .line 66
    iget-object v1, p0, Lg/a/a/c;->e:[B

    iget v2, p0, Lg/a/a/c;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput v3, p0, Lg/a/a/c;->d:I

    .line 68
    invoke-direct {p0}, Lg/a/a/c;->a()V

    .line 69
    sub-int/2addr p3, v0

    .line 70
    add-int/2addr p2, v0

    .line 71
    :goto_0
    if-lt p3, v3, :cond_1

    .line 72
    iget-object v0, p0, Lg/a/a/c;->e:[B

    const/4 v1, 0x6

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    add-int/lit16 p3, p3, -0x1000

    .line 74
    add-int/lit16 p2, p2, 0x1000

    .line 75
    iput v3, p0, Lg/a/a/c;->d:I

    .line 76
    invoke-direct {p0}, Lg/a/a/c;->a()V

    goto :goto_0

    .line 79
    :cond_1
    if-lez p3, :cond_2

    .line 80
    iget-object v0, p0, Lg/a/a/c;->e:[B

    iget v1, p0, Lg/a/a/c;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget v0, p0, Lg/a/a/c;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lg/a/a/c;->d:I

    .line 82
    iget v0, p0, Lg/a/a/c;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lg/a/a/c;->c:I

    .line 84
    :cond_2
    iget v0, p0, Lg/a/a/c;->d:I

    if-ne v0, v3, :cond_3

    .line 85
    invoke-direct {p0}, Lg/a/a/c;->a()V

    .line 87
    :cond_3
    return-void
.end method

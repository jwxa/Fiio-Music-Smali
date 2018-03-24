.class Lg/a/a/h;
.super Ljava/lang/Object;
.source "ExchangeImpl.java"


# static fields
.field static final synthetic u:Z


# instance fields
.field a:Lcom/d/a/a/h;

.field b:Lcom/d/a/a/h;

.field c:Lg/a/a/s;

.field d:Ljava/lang/String;

.field e:Ljava/net/URI;

.field f:Lg/a/a/k;

.field g:I

.field h:J

.field i:Ljava/io/InputStream;

.field j:Ljava/io/OutputStream;

.field k:Z

.field l:Z

.field m:Ljava/io/InputStream;

.field n:Ljava/io/OutputStream;

.field o:Lg/a/a/q;

.field p:Lg/a/a/r;

.field q:Z

.field r:I

.field s:Lcom/d/a/a/l;

.field t:Lg/a/a/ae;

.field private v:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lg/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/h;->u:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URI;Lg/a/a/s;ILg/a/a/k;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lg/a/a/h;->r:I

    .line 229
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/h;->v:[B

    .line 54
    iput-object p3, p0, Lg/a/a/h;->c:Lg/a/a/s;

    .line 55
    invoke-virtual {p3}, Lg/a/a/s;->d()Lcom/d/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/h;->a:Lcom/d/a/a/h;

    .line 56
    new-instance v0, Lcom/d/a/a/h;

    invoke-direct {v0}, Lcom/d/a/a/h;-><init>()V

    iput-object v0, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    .line 57
    iput-object p1, p0, Lg/a/a/h;->d:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lg/a/a/h;->e:Ljava/net/URI;

    .line 59
    iput-object p5, p0, Lg/a/a/h;->f:Lg/a/a/k;

    .line 60
    iput p4, p0, Lg/a/a/h;->g:I

    .line 62
    invoke-virtual {p3}, Lg/a/a/s;->b()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/h;->j:Ljava/io/OutputStream;

    .line 63
    invoke-virtual {p3}, Lg/a/a/s;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/h;->i:Ljava/io/InputStream;

    .line 64
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    iget-object v0, v0, Lg/a/a/k;->a:Lg/a/a/l;

    invoke-virtual {v0}, Lg/a/a/l;->c()Lg/a/a/ae;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    .line 65
    iget-object v0, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->h()V

    .line 66
    return-void
.end method

.method static a(Lcom/d/a/a/j;)Lg/a/a/h;
    .locals 1

    .prologue
    .line 328
    instance-of v0, p0, Lg/a/a/n;

    if-eqz v0, :cond_0

    .line 329
    check-cast p0, Lg/a/a/n;

    iget-object v0, p0, Lg/a/a/n;->a:Lg/a/a/h;

    .line 332
    :goto_0
    return-object v0

    .line 331
    :cond_0
    sget-boolean v0, Lg/a/a/h;->u:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lg/a/a/p;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_1
    check-cast p0, Lg/a/a/p;

    iget-object v0, p0, Lg/a/a/p;->a:Lg/a/a/h;

    goto :goto_0
.end method

.method private a(Lcom/d/a/a/h;Ljava/io/OutputStream;)V
    .locals 12

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/d/a/a/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 214
    invoke-direct {p0, v1, v9}, Lg/a/a/h;->a(Ljava/lang/String;I)[B

    move-result-object v5

    .line 215
    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x3a

    aput-byte v7, v5, v4

    .line 216
    add-int/lit8 v4, v6, 0x1

    const/16 v7, 0x20

    aput-byte v7, v5, v6

    .line 217
    invoke-virtual {p2, v5, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    invoke-direct {p0, v0, v9}, Lg/a/a/h;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 220
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v4, v0

    .line 221
    add-int/lit8 v0, v5, 0x1

    aput-byte v10, v4, v5

    .line 222
    invoke-virtual {p2, v4, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 226
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 227
    return-void
.end method

.method private a(Ljava/lang/String;I)[B
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 239
    add-int v1, v0, p2

    iget-object v2, p0, Lg/a/a/h;->v:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 240
    add-int/2addr v0, p2

    iget-object v1, p0, Lg/a/a/h;->v:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 241
    iget-object v1, p0, Lg/a/a/h;->v:[B

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/h;->v:[B

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 244
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 245
    iget-object v2, p0, Lg/a/a/h;->v:[B

    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lg/a/a/h;->v:[B

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/d/a/a/h;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lg/a/a/an;

    iget-object v1, p0, Lg/a/a/h;->a:Lcom/d/a/a/h;

    invoke-direct {v0, v1}, Lg/a/a/an;-><init>(Lcom/d/a/a/h;)V

    return-object v0
.end method

.method public final a(IJ)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    iget-boolean v4, p0, Lg/a/a/h;->q:Z

    if-eqz v4, :cond_0

    .line 168
    new-instance v0, Ljava/io/IOException;

    const-string v1, "headers already sent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput p1, p0, Lg/a/a/h;->r:I

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP/1.1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lg/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lg/a/a/h;->j:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {p0}, Lg/a/a/h;->i()Ljava/io/OutputStream;

    iget-object v6, p0, Lg/a/a/h;->p:Lg/a/a/r;

    .line 174
    invoke-direct {p0, v4, v0}, Lg/a/a/h;->a(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v7, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    cmp-long v4, p2, v2

    if-nez v4, :cond_2

    .line 177
    iget-object v2, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    const-string v3, "Transfer-encoding"

    const-string v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lcom/d/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v2, Lg/a/a/c;

    iget-object v3, p0, Lg/a/a/h;->j:Ljava/io/OutputStream;

    invoke-direct {v2, p0, v3}, Lg/a/a/c;-><init>(Lg/a/a/h;Ljava/io/OutputStream;)V

    invoke-virtual {v6, v2}, Lg/a/a/r;->a(Ljava/io/OutputStream;)V

    .line 179
    iget-object v2, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    iget-object v3, p0, Lg/a/a/h;->f:Lg/a/a/k;

    invoke-virtual {v2, v3}, Lg/a/a/ae;->c(Lg/a/a/k;)V

    .line 193
    :goto_0
    iget-object v2, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    invoke-direct {p0, v2, v5}, Lg/a/a/h;->a(Lcom/d/a/a/h;Ljava/io/OutputStream;)V

    .line 194
    iput-wide p2, p0, Lg/a/a/h;->h:J

    .line 195
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 196
    iput-boolean v1, p0, Lg/a/a/h;->q:Z

    .line 198
    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lg/a/a/ao;

    invoke-direct {v0, p0}, Lg/a/a/ao;-><init>(Lg/a/a/h;)V

    .line 200
    iget-object v2, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    invoke-virtual {v2, v0}, Lg/a/a/ae;->a(Lg/a/a/g;)V

    .line 201
    iput-boolean v1, p0, Lg/a/a/h;->l:Z

    .line 203
    :cond_1
    iget-object v0, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    iget-object v1, p0, Lg/a/a/h;->c:Lg/a/a/s;

    invoke-virtual {v1}, Lg/a/a/s;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lg/a/a/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 181
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v4, p2, v8

    if-nez v4, :cond_4

    move v0, v1

    move-wide p2, v2

    .line 188
    :goto_1
    iget-object v2, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    const-string v3, "Content-length"

    invoke-virtual {v2, v3}, Lcom/d/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 189
    iget-object v2, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    const-string v3, "Content-length"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/d/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    new-instance v2, Lg/a/a/j;

    iget-object v3, p0, Lg/a/a/h;->j:Ljava/io/OutputStream;

    invoke-direct {v2, p0, v3, p2, p3}, Lg/a/a/j;-><init>(Lg/a/a/h;Ljava/io/OutputStream;J)V

    invoke-virtual {v6, v2}, Lg/a/a/r;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v2, p0, Lg/a/a/h;->t:Lg/a/a/ae;

    iget-object v3, p0, Lg/a/a/h;->f:Lg/a/a/k;

    invoke-virtual {v2, v3}, Lg/a/a/ae;->c(Lg/a/a/k;)V

    goto :goto_1
.end method

.method final a(Lcom/d/a/a/l;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lg/a/a/h;->s:Lcom/d/a/a/l;

    .line 325
    return-void
.end method

.method public final b()Lcom/d/a/a/h;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lg/a/a/h;->b:Lcom/d/a/a/h;

    return-object v0
.end method

.method public final c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lg/a/a/h;->e:Ljava/net/URI;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lg/a/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lg/a/a/l;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    iget-object v0, v0, Lg/a/a/k;->a:Lg/a/a/l;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lg/a/a/h;->l:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/h;->l:Z

    .line 100
    :try_start_0
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/a/h;->n:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 101
    :cond_1
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_0

    .line 104
    :cond_2
    :try_start_1
    iget-object v0, p0, Lg/a/a/h;->p:Lg/a/a/r;

    invoke-virtual {v0}, Lg/a/a/r;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    invoke-virtual {v0}, Lg/a/a/q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    invoke-virtual {v0}, Lg/a/a/q;->close()V

    .line 111
    :cond_4
    iget-object v0, p0, Lg/a/a/h;->n:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final g()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lg/a/a/h;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lg/a/a/h;->m:Ljava/io/InputStream;

    .line 128
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget v0, p0, Lg/a/a/h;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 122
    new-instance v0, Lg/a/a/b;

    iget-object v1, p0, Lg/a/a/h;->i:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lg/a/a/b;-><init>(Lg/a/a/h;Ljava/io/InputStream;)V

    iput-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    .line 123
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    iput-object v0, p0, Lg/a/a/h;->m:Ljava/io/InputStream;

    .line 128
    :goto_1
    iget-object v0, p0, Lg/a/a/h;->m:Ljava/io/InputStream;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lg/a/a/i;

    iget-object v1, p0, Lg/a/a/h;->i:Ljava/io/InputStream;

    iget v2, p0, Lg/a/a/h;->g:I

    invoke-direct {v0, p0, v1, v2}, Lg/a/a/i;-><init>(Lg/a/a/h;Ljava/io/InputStream;I)V

    iput-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    .line 126
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    iput-object v0, p0, Lg/a/a/h;->m:Ljava/io/InputStream;

    goto :goto_1
.end method

.method final h()Lg/a/a/q;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lg/a/a/h;->o:Lg/a/a/q;

    return-object v0
.end method

.method public final i()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lg/a/a/h;->n:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lg/a/a/r;

    invoke-direct {v0}, Lg/a/a/r;-><init>()V

    iput-object v0, p0, Lg/a/a/h;->p:Lg/a/a/r;

    .line 149
    iget-object v0, p0, Lg/a/a/h;->p:Lg/a/a/r;

    iput-object v0, p0, Lg/a/a/h;->n:Ljava/io/OutputStream;

    .line 151
    :cond_0
    iget-object v0, p0, Lg/a/a/h;->n:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final j()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    iget-object v0, v0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 254
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2
.end method

.method public final k()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    iget-object v0, v0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 261
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lg/a/a/h;->c:Lg/a/a/s;

    invoke-virtual {v0}, Lg/a/a/s;->c()Ljava/lang/String;

    move-result-object v0

    .line 266
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final m()Lg/a/a/k;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    return-object v0
.end method

.method final n()Lg/a/a/ae;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lg/a/a/h;->f:Lg/a/a/k;

    iget-object v0, v0, Lg/a/a/k;->a:Lg/a/a/l;

    invoke-virtual {v0}, Lg/a/a/l;->c()Lg/a/a/ae;

    move-result-object v0

    return-object v0
.end method

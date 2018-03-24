.class final Le/a/e/e;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field a:[Le/a/e/c;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lf/i;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(Lf/z;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/e/e;-><init>(Lf/z;B)V

    .line 132
    return-void
.end method

.method private constructor <init>(Lf/z;B)V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/e/e;->e:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Le/a/e/c;

    iput-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    .line 126
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/e/e;->b:I

    .line 127
    iput v1, p0, Le/a/e/e;->c:I

    .line 128
    iput v1, p0, Le/a/e/e;->d:I

    .line 135
    iput v2, p0, Le/a/e/e;->g:I

    .line 136
    iput v2, p0, Le/a/e/e;->h:I

    .line 137
    invoke-static {p1}, Lf/o;->a(Lf/z;)Lf/i;

    move-result-object v0

    iput-object v0, p0, Le/a/e/e;->f:Lf/i;

    .line 138
    return-void
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    if-lez p1, :cond_1

    .line 166
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Le/a/e/e;->b:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 167
    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    aget-object v2, v2, v0

    iget v2, v2, Le/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 168
    iget v2, p0, Le/a/e/e;->d:I

    iget-object v3, p0, Le/a/e/e;->a:[Le/a/e/c;

    aget-object v3, v3, v0

    iget v3, v3, Le/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Le/a/e/e;->d:I

    .line 169
    iget v2, p0, Le/a/e/e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Le/a/e/e;->c:I

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    iget v2, p0, Le/a/e/e;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Le/a/e/e;->a:[Le/a/e/c;

    iget v4, p0, Le/a/e/e;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Le/a/e/e;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p0, Le/a/e/e;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Le/a/e/e;->b:I

    .line 176
    :cond_1
    return v1
.end method

.method private a(II)I
    .locals 3

    .prologue
    .line 314
    and-int v0, p1, p2

    .line 315
    if-ge v0, p2, :cond_0

    .line 329
    :goto_0
    return v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_1
    invoke-direct {p0}, Le/a/e/e;->e()I

    move-result v1

    .line 324
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 325
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 326
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 328
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 329
    goto :goto_0
.end method

.method private a(Le/a/e/c;)V
    .locals 6

    .prologue
    .line 275
    iget-object v0, p0, Le/a/e/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget v0, p1, Le/a/e/c;->i:I

    .line 278
    iget v1, p0, Le/a/e/e;->h:I

    if-le v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Le/a/e/e;->d()V

    .line 307
    :goto_0
    return-void

    .line 289
    :cond_0
    iget v1, p0, Le/a/e/e;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Le/a/e/e;->h:I

    sub-int/2addr v1, v2

    .line 290
    invoke-direct {p0, v1}, Le/a/e/e;->a(I)I

    .line 292
    iget v1, p0, Le/a/e/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 294
    iget-object v1, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Le/a/e/c;

    .line 295
    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v4, v4

    iget-object v5, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Le/a/e/e;->b:I

    .line 297
    iput-object v1, p0, Le/a/e/e;->a:[Le/a/e/c;

    .line 299
    :cond_1
    iget v1, p0, Le/a/e/e;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Le/a/e/e;->b:I

    .line 300
    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    aput-object p1, v2, v1

    .line 301
    iget v1, p0, Le/a/e/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/a/e/e;->c:I

    .line 303
    iget v1, p0, Le/a/e/e;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Le/a/e/e;->d:I

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Le/a/e/e;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private c(I)Lf/j;
    .locals 2

    .prologue
    .line 262
    invoke-static {p1}, Le/a/e/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Le/a/e/d;->a:[Le/a/e/c;

    aget-object v0, v0, p1

    iget-object v0, v0, Le/a/e/c;->g:Lf/j;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    sget-object v1, Le/a/e/d;->a:[Le/a/e/c;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Le/a/e/e;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Le/a/e/c;->g:Lf/j;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Le/a/e/e;->h:I

    iget v1, p0, Le/a/e/e;->d:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v0, p0, Le/a/e/e;->h:I

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0}, Le/a/e/e;->d()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Le/a/e/e;->d:I

    iget v1, p0, Le/a/e/e;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Le/a/e/e;->a(I)I

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/e/e;->b:I

    .line 157
    iput v2, p0, Le/a/e/e;->c:I

    .line 158
    iput v2, p0, Le/a/e/e;->d:I

    .line 159
    return-void
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 270
    if-ltz p0, :cond_0

    sget-object v0, Le/a/e/d;->a:[Le/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Le/a/e/e;->f:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private f()Lf/j;
    .locals 6

    .prologue
    .line 337
    invoke-direct {p0}, Le/a/e/e;->e()I

    move-result v1

    .line 338
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 339
    :goto_0
    const/16 v2, 0x7f

    invoke-direct {p0, v1, v2}, Le/a/e/e;->a(II)I

    move-result v1

    .line 341
    if-eqz v0, :cond_1

    .line 342
    invoke-static {}, Le/a/e/ag;->a()Le/a/e/ag;

    move-result-object v0

    iget-object v2, p0, Le/a/e/e;->f:Lf/i;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lf/i;->e(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e/ag;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lf/j;->a([B)Lf/j;

    move-result-object v0

    .line 344
    :goto_1
    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Le/a/e/e;->f:Lf/i;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lf/i;->c(J)Lf/j;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    .line 184
    :goto_0
    iget-object v0, p0, Le/a/e/e;->f:Lf/i;

    invoke-interface {v0}, Lf/i;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p0, Le/a/e/e;->f:Lf/i;

    invoke-interface {v0}, Lf/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 186
    if-ne v0, v5, :cond_0

    .line 187
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v5, :cond_4

    .line 189
    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Le/a/e/e;->a(II)I

    move-result v0

    .line 190
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Le/a/e/e;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Le/a/e/d;->a:[Le/a/e/c;

    aget-object v0, v1, v0

    iget-object v1, p0, Le/a/e/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Le/a/e/d;->a:[Le/a/e/c;

    array-length v1, v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Le/a/e/e;->b(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Le/a/e/e;->e:Ljava/util/List;

    iget-object v2, p0, Le/a/e/e;->a:[Le/a/e/c;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_4
    if-ne v0, v4, :cond_5

    .line 192
    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v0

    invoke-static {v0}, Le/a/e/d;->a(Lf/j;)Lf/j;

    move-result-object v0

    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v1

    new-instance v2, Le/a/e/c;

    invoke-direct {v2, v0, v1}, Le/a/e/c;-><init>(Lf/j;Lf/j;)V

    invoke-direct {p0, v2}, Le/a/e/e;->a(Le/a/e/c;)V

    goto :goto_0

    .line 193
    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v4, :cond_6

    .line 194
    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Le/a/e/e;->a(II)I

    move-result v0

    .line 195
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Le/a/e/e;->c(I)Lf/j;

    move-result-object v0

    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v1

    new-instance v2, Le/a/e/c;

    invoke-direct {v2, v0, v1}, Le/a/e/c;-><init>(Lf/j;Lf/j;)V

    invoke-direct {p0, v2}, Le/a/e/e;->a(Le/a/e/c;)V

    goto/16 :goto_0

    .line 196
    :cond_6
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 197
    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Le/a/e/e;->a(II)I

    move-result v0

    iput v0, p0, Le/a/e/e;->h:I

    .line 198
    iget v0, p0, Le/a/e/e;->h:I

    if-ltz v0, :cond_7

    iget v0, p0, Le/a/e/e;->h:I

    iget v1, p0, Le/a/e/e;->g:I

    if-le v0, v1, :cond_8

    .line 200
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/a/e/e;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_8
    invoke-direct {p0}, Le/a/e/e;->c()V

    goto/16 :goto_0

    .line 203
    :cond_9
    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_b

    .line 204
    :cond_a
    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v0

    invoke-static {v0}, Le/a/e/d;->a(Lf/j;)Lf/j;

    move-result-object v0

    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v1

    iget-object v2, p0, Le/a/e/e;->e:Ljava/util/List;

    new-instance v3, Le/a/e/c;

    invoke-direct {v3, v0, v1}, Le/a/e/c;-><init>(Lf/j;Lf/j;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 206
    :cond_b
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Le/a/e/e;->a(II)I

    move-result v0

    .line 207
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Le/a/e/e;->c(I)Lf/j;

    move-result-object v0

    invoke-direct {p0}, Le/a/e/e;->f()Lf/j;

    move-result-object v1

    iget-object v2, p0, Le/a/e/e;->e:Ljava/util/List;

    new-instance v3, Le/a/e/c;

    invoke-direct {v3, v0, v1}, Le/a/e/c;-><init>(Lf/j;Lf/j;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :cond_c
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/e/e;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    iget-object v1, p0, Le/a/e/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    return-object v0
.end method

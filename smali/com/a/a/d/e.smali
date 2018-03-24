.class public final Lcom/a/a/d/e;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/Writer;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    sget-object v1, Lcom/a/a/d/c;->f:Lcom/a/a/d/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v0, ":"

    iput-object v0, p0, Lcom/a/a/d/e;->d:Ljava/lang/String;

    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    .line 158
    return-void
.end method

.method private a(Lcom/a/a/d/c;Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/a/a/d/e;->h()Lcom/a/a/d/c;

    move-result-object v0

    .line 276
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    if-ne v0, p2, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/a/a/d/e;->i()V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 285
    return-object p0
.end method

.method private a(Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->d(Z)V

    .line 264
    iget-object v0, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method private a(Lcom/a/a/d/c;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 435
    sparse-switch v3, :sswitch_data_0

    .line 475
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :sswitch_0
    iget-object v4, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 478
    :cond_0
    iget-object v4, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 443
    :sswitch_1
    iget-object v3, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :sswitch_2
    iget-object v3, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :sswitch_3
    iget-object v3, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :sswitch_4
    iget-object v3, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :sswitch_5
    iget-object v3, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :sswitch_6
    iget-boolean v4, p0, Lcom/a/a/d/e;->f:Z

    if-eqz v4, :cond_1

    .line 468
    iget-object v4, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 484
    return-void

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x26 -> :sswitch_6
        0x27 -> :sswitch_6
        0x3c -> :sswitch_6
        0x3d -> :sswitch_6
        0x3e -> :sswitch_6
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 521
    sget-object v0, Lcom/a/a/d/f;->a:[I

    invoke-direct {p0}, Lcom/a/a/d/e;->h()Lcom/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_0
    iget-boolean v0, p0, Lcom/a/a/d/e;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    sget-object v0, Lcom/a/a/d/c;->g:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;)V

    .line 543
    :goto_0
    return-void

    .line 531
    :pswitch_1
    sget-object v0, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;)V

    .line 532
    invoke-direct {p0}, Lcom/a/a/d/e;->i()V

    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 537
    invoke-direct {p0}, Lcom/a/a/d/e;->i()V

    goto :goto_0

    .line 541
    :pswitch_3
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/a/a/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    sget-object v0, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;)V

    goto :goto_0

    .line 546
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h()Lcom/a/a/d/c;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/a/a/d/e;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 495
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    iget-object v2, p0, Lcom/a/a/d/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Number;)Lcom/a/a/d/e;
    .locals 3

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/a/a/d/e;->g()Lcom/a/a/d/e;

    move-result-object p0

    .line 400
    :goto_0
    return-object p0

    .line 393
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-boolean v1, p0, Lcom/a/a/d/e;->e:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/a/a/d/e;->d(Z)V

    .line 399
    iget-object v1, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/d/e;->c:Ljava/lang/String;

    .line 171
    const-string v0, ":"

    iput-object v0, p0, Lcom/a/a/d/e;->d:Ljava/lang/String;

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/a/a/d/e;->c:Ljava/lang/String;

    .line 174
    const-string v0, ": "

    iput-object v0, p0, Lcom/a/a/d/e;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/a/a/d/e;->e:Z

    .line 192
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/a/a/d/e;->e:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/a/a/d/e;
    .locals 3

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/e;->h()Lcom/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-direct {p0}, Lcom/a/a/d/e;->i()V

    sget-object v0, Lcom/a/a/d/c;->d:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/a/a/d/e;->d(Ljava/lang/String;)V

    .line 314
    return-object p0

    .line 312
    :cond_2
    sget-object v1, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/e;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/a/a/d/e;->f:Z

    .line 210
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/a/a/d/e;->f:Z

    return v0
.end method

.method public final c()Lcom/a/a/d/e;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/a/a/d/e;
    .locals 1

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/a/a/d/e;->g()Lcom/a/a/d/e;

    move-result-object p0

    .line 329
    :goto_0
    return-object p0

    .line 327
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->d(Z)V

    .line 328
    invoke-direct {p0, p1}, Lcom/a/a/d/e;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Z)Lcom/a/a/d/e;
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->d(Z)V

    .line 350
    iget-object v1, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    return-object p0

    .line 350
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 419
    invoke-direct {p0}, Lcom/a/a/d/e;->h()Lcom/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/c;->g:Lcom/a/a/d/c;

    if-eq v0, v1, :cond_0

    .line 420
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    return-void
.end method

.method public final d()Lcom/a/a/d/e;
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    sget-object v1, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/a/a/d/e;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/a/a/d/e;
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    sget-object v1, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/d/e;->a(Lcom/a/a/d/c;Lcom/a/a/d/c;Ljava/lang/String;)Lcom/a/a/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/a/a/d/e;
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/d/e;->d(Z)V

    .line 339
    iget-object v0, p0, Lcom/a/a/d/e;->a:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    return-object p0
.end method

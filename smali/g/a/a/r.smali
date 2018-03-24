.class final Lg/a/a/r;
.super Ljava/io/OutputStream;
.source "ExchangeImpl.java"


# instance fields
.field a:Ljava/io/OutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    .line 350
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/io/IOException;

    const-string v1, "response headers not sent yet"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    .line 354
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lg/a/a/r;->b()V

    .line 388
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 389
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lg/a/a/r;->b()V

    .line 383
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 384
    return-void
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lg/a/a/r;->b()V

    .line 368
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 369
    return-void
.end method

.method public final write([B)V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lg/a/a/r;->b()V

    .line 373
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 374
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Lg/a/a/r;->b()V

    .line 378
    iget-object v0, p0, Lg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 379
    return-void
.end method

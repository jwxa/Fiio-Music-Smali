.class public final Le/ar;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field a:Le/am;

.field b:Le/aj;

.field c:I

.field d:Ljava/lang/String;

.field e:Le/x;

.field f:Le/z;

.field g:Le/as;

.field h:Le/aq;

.field i:Le/aq;

.field j:Le/aq;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Le/ar;->c:I

    .line 303
    new-instance v0, Le/z;

    invoke-direct {v0}, Le/z;-><init>()V

    iput-object v0, p0, Le/ar;->f:Le/z;

    .line 304
    return-void
.end method

.method constructor <init>(Le/aq;)V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Le/ar;->c:I

    .line 307
    iget-object v0, p1, Le/aq;->a:Le/am;

    iput-object v0, p0, Le/ar;->a:Le/am;

    .line 308
    iget-object v0, p1, Le/aq;->b:Le/aj;

    iput-object v0, p0, Le/ar;->b:Le/aj;

    .line 309
    iget v0, p1, Le/aq;->c:I

    iput v0, p0, Le/ar;->c:I

    .line 310
    iget-object v0, p1, Le/aq;->d:Ljava/lang/String;

    iput-object v0, p0, Le/ar;->d:Ljava/lang/String;

    .line 311
    iget-object v0, p1, Le/aq;->e:Le/x;

    iput-object v0, p0, Le/ar;->e:Le/x;

    .line 312
    iget-object v0, p1, Le/aq;->f:Le/y;

    invoke-virtual {v0}, Le/y;->b()Le/z;

    move-result-object v0

    iput-object v0, p0, Le/ar;->f:Le/z;

    .line 313
    iget-object v0, p1, Le/aq;->g:Le/as;

    iput-object v0, p0, Le/ar;->g:Le/as;

    .line 314
    iget-object v0, p1, Le/aq;->h:Le/aq;

    iput-object v0, p0, Le/ar;->h:Le/aq;

    .line 315
    iget-object v0, p1, Le/aq;->i:Le/aq;

    iput-object v0, p0, Le/ar;->i:Le/aq;

    .line 316
    iget-object v0, p1, Le/aq;->j:Le/aq;

    iput-object v0, p0, Le/ar;->j:Le/aq;

    .line 317
    iget-wide v0, p1, Le/aq;->k:J

    iput-wide v0, p0, Le/ar;->k:J

    .line 318
    iget-wide v0, p1, Le/aq;->l:J

    iput-wide v0, p0, Le/ar;->l:J

    .line 319
    return-void
.end method

.method private static a(Ljava/lang/String;Le/aq;)V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p1, Le/aq;->g:Le/as;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p1, Le/aq;->h:Le/aq;

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    iget-object v0, p1, Le/aq;->i:Le/aq;

    if-eqz v0, :cond_2

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_2
    iget-object v0, p1, Le/aq;->j:Le/aq;

    if-eqz v0, :cond_3

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Le/aq;
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Le/ar;->a:Le/am;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Le/ar;->b:Le/aj;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    iget v0, p0, Le/ar;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le/ar;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    new-instance v0, Le/aq;

    invoke-direct {v0, p0}, Le/aq;-><init>(Le/ar;)V

    return-object v0
.end method

.method public final a(I)Le/ar;
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Le/ar;->c:I

    .line 333
    return-object p0
.end method

.method public final a(J)Le/ar;
    .locals 1

    .prologue
    .line 417
    iput-wide p1, p0, Le/ar;->k:J

    .line 418
    return-object p0
.end method

.method public final a(Le/aj;)Le/ar;
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Le/ar;->b:Le/aj;

    .line 328
    return-object p0
.end method

.method public final a(Le/am;)Le/ar;
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Le/ar;->a:Le/am;

    .line 323
    return-object p0
.end method

.method public final a(Le/aq;)Le/ar;
    .locals 1

    .prologue
    .line 381
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Le/ar;->a(Ljava/lang/String;Le/aq;)V

    .line 382
    :cond_0
    iput-object p1, p0, Le/ar;->h:Le/aq;

    .line 383
    return-object p0
.end method

.method public final a(Le/as;)Le/ar;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Le/ar;->g:Le/as;

    .line 377
    return-object p0
.end method

.method public final a(Le/x;)Le/ar;
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Le/ar;->e:Le/x;

    .line 343
    return-object p0
.end method

.method public final a(Le/y;)Le/ar;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p1}, Le/y;->b()Le/z;

    move-result-object v0

    iput-object v0, p0, Le/ar;->f:Le/z;

    .line 372
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Le/ar;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Le/ar;->d:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/ar;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Le/ar;->f:Le/z;

    invoke-virtual {v0, p1, p2}, Le/z;->a(Ljava/lang/String;Ljava/lang/String;)Le/z;

    .line 361
    return-object p0
.end method

.method public final b(J)Le/ar;
    .locals 1

    .prologue
    .line 422
    iput-wide p1, p0, Le/ar;->l:J

    .line 423
    return-object p0
.end method

.method public final b(Le/aq;)Le/ar;
    .locals 1

    .prologue
    .line 387
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Le/ar;->a(Ljava/lang/String;Le/aq;)V

    .line 388
    :cond_0
    iput-object p1, p0, Le/ar;->i:Le/aq;

    .line 389
    return-object p0
.end method

.method public final c(Le/aq;)Le/ar;
    .locals 2

    .prologue
    .line 405
    if-eqz p1, :cond_0

    iget-object v0, p1, Le/aq;->g:Le/as;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iput-object p1, p0, Le/ar;->j:Le/aq;

    .line 407
    return-object p0
.end method

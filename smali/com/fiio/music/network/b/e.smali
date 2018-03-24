.class final Lcom/fiio/music/network/b/e;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Le/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/network/b/a;

.field private final synthetic b:Lcom/fiio/music/network/b/g;

.field private final synthetic c:Le/am;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/am;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    iput-object p2, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    iput-object p3, p0, Lcom/fiio/music/network/b/e;->c:Le/am;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/g;Le/aq;)V
    .locals 5

    .prologue
    .line 553
    invoke-virtual {p2}, Le/aq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    iget-object v2, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    .line 555
    invoke-virtual {p2}, Le/aq;->b()I

    move-result v3

    .line 554
    invoke-static {v0, p1, v1, v2, v3}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V

    .line 597
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-static {p2}, Lcom/fiio/music/network/b/a;->a(Le/aq;)Lcom/fiio/music/network/b/j;

    move-result-object v1

    .line 560
    iget v0, v1, Lcom/fiio/music/network/b/j;->a:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {v0}, Lcom/fiio/music/network/b/a;->b(Lcom/fiio/music/network/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    iget-object v2, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {p2}, Lcom/fiio/music/network/b/a;->b(Le/aq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lrcCloudEncode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {v3}, Lcom/fiio/music/network/b/a;->c(Lcom/fiio/music/network/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    iget-object v0, v1, Lcom/fiio/music/network/b/j;->b:Ljava/lang/String;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 571
    iget-object v0, v1, Lcom/fiio/music/network/b/j;->b:Ljava/lang/String;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    invoke-static {}, Lcom/fiio/music/network/b/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 573
    const-string v2, "delivery qr.getResult not a standard json data!"

    .line 572
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    .line 575
    new-instance v2, Lcom/a/a/bl;

    .line 576
    const-string v3, "not standard json data"

    .line 575
    invoke-direct {v2, v3}, Lcom/a/a/bl;-><init>(Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    invoke-virtual {p2}, Le/aq;->b()I

    move-result v4

    .line 574
    invoke-static {v0, p1, v2, v3, v4}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V
    :try_end_0
    .catch Lcom/a/a/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Lcom/a/a/bl;->printStackTrace()V

    .line 585
    iget-object v2, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    iget-object v3, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    iget v1, v1, Lcom/fiio/music/network/b/j;->a:I

    invoke-static {v2, p1, v0, v3, v1}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V

    .line 596
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/b/e;->c:Le/am;

    invoke-virtual {v1}, Le/am;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 580
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {v0}, Lcom/fiio/music/network/b/a;->d(Lcom/fiio/music/network/b/a;)Lcom/a/a/aq;

    move-result-object v0

    iget-object v2, v1, Lcom/fiio/music/network/b/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    iget-object v3, v3, Lcom/fiio/music/network/b/g;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_2

    .line 582
    iget-object v2, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    iget-object v3, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    invoke-static {v2, p1, v0, v3}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)V
    :try_end_1
    .catch Lcom/a/a/bl; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 586
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    iget-object v3, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    .line 594
    iget v1, v1, Lcom/fiio/music/network/b/j;->a:I

    .line 593
    invoke-static {v0, p1, v2, v3, v1}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V

    goto :goto_1
.end method

.method public final a(Le/g;Ljava/io/IOException;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/16 v1, -0x65

    .line 532
    .line 533
    instance-of v2, p2, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 544
    :cond_0
    :goto_0
    const-string v1, "Canceled"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Le/g;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    iget-object v2, p0, Lcom/fiio/music/network/b/e;->b:Lcom/fiio/music/network/b/g;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;Le/g;Ljava/lang/Exception;Lcom/fiio/music/network/b/g;I)V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/network/b/e;->a:Lcom/fiio/music/network/b/a;

    invoke-static {v0}, Lcom/fiio/music/network/b/a;->a(Lcom/fiio/music/network/b/a;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/b/e;->c:Le/am;

    invoke-virtual {v1}, Le/am;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void

    .line 535
    :cond_2
    instance-of v2, p2, Ljava/net/SocketException;

    if-eqz v2, :cond_3

    move v0, v1

    .line 537
    goto :goto_0

    :cond_3
    instance-of v2, p2, Ljava/net/ConnectException;

    if-eqz v2, :cond_4

    .line 538
    const/16 v0, -0x67

    .line 539
    goto :goto_0

    :cond_4
    instance-of v2, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v2, :cond_5

    .line 540
    const/16 v0, -0x66

    .line 541
    goto :goto_0

    :cond_5
    instance-of v2, p2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_0

    move v0, v1

    .line 542
    goto :goto_0
.end method

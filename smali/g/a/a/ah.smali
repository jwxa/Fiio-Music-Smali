.class final Lg/a/a/ah;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lg/a/a/k;

.field c:Lg/a/a/l;

.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field f:Ljava/lang/String;

.field g:Lg/a/a/h;

.field h:Lg/a/a/l;

.field i:Z

.field final synthetic j:Lg/a/a/ae;


# direct methods
.method constructor <init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;Ljava/lang/String;Lg/a/a/k;)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/ah;->i:Z

    .line 417
    iput-object p2, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    .line 418
    iput-object p4, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    .line 419
    iput-object p3, p0, Lg/a/a/ah;->f:Ljava/lang/String;

    .line 420
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 586
    iput-boolean v2, p0, Lg/a/a/ah;->i:Z

    .line 587
    iget-object v0, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-virtual {v0, p1, p2, p3}, Lg/a/a/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<h1>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lg/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lg/a/a/ah;->a(IZLjava/lang/String;)V

    .line 591
    return-void
.end method

.method private a(IZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 597
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/1.1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lg/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: text/html\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    if-eqz p2, :cond_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Connection: close\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    const-string v1, "ISO8859_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 610
    iget-object v1, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 611
    iget-object v0, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 612
    if-eqz p2, :cond_1

    .line 613
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    .line 619
    :cond_1
    :goto_1
    return-void

    .line 602
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Length: 0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string p3, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "ServerImpl.sendReply"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/16 v12, 0x190

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v1, v1, Lg/a/a/k;->a:Lg/a/a/l;

    iput-object v1, p0, Lg/a/a/ah;->c:Lg/a/a/l;

    .line 430
    :try_start_0
    iget-object v1, p0, Lg/a/a/ah;->c:Lg/a/a/l;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v1, v1, Lg/a/a/k;->e:Ljava/io/InputStream;

    iput-object v1, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    .line 432
    iget-object v1, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v1, v1, Lg/a/a/k;->g:Ljava/io/OutputStream;

    iput-object v1, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    move-object v7, v0

    move-object v8, v0

    move v9, v5

    .line 458
    :goto_0
    new-instance v3, Lg/a/a/s;

    iget-object v1, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    invoke-direct {v3, v1, v2}, Lg/a/a/s;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 459
    invoke-virtual {v3}, Lg/a/a/s;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 460
    if-nez v6, :cond_3

    .line 462
    :try_start_1
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 569
    :goto_1
    return-void

    .line 437
    :cond_0
    :try_start_2
    iget-object v1, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v1, v1, Lg/a/a/k;->i:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 438
    iget-object v1, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 439
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->n(Lg/a/a/ae;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->o(Lg/a/a/ae;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 441
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "SSL connection received. No https contxt created"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 442
    new-instance v1, Lg/a/a/m;

    const-string v2, "No SSL context established"

    invoke-direct {v1, v2}, Lg/a/a/m;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 556
    :catch_0
    move-exception v0

    .line 557
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "ServerImpl.Exchange (1)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_1

    .line 444
    :cond_1
    :try_start_3
    new-instance v1, Lg/a/a/v;

    iget-object v2, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    iget-object v6, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v6}, Lg/a/a/ae;->o(Lg/a/a/ae;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    iget-object v7, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    invoke-direct {v1, v2, v6, v7}, Lg/a/a/v;-><init>(Lg/a/a/ae;Ljavax/net/ssl/SSLContext;Ljava/nio/channels/SocketChannel;)V

    .line 445
    invoke-virtual {v1}, Lg/a/a/v;->b()Lg/a/a/z;

    move-result-object v2

    iput-object v2, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    .line 446
    invoke-virtual {v1}, Lg/a/a/v;->c()Lg/a/a/aa;

    move-result-object v2

    iput-object v2, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    .line 447
    invoke-virtual {v1}, Lg/a/a/v;->d()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    .line 448
    goto :goto_0

    .line 449
    :cond_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lg/a/a/t;

    iget-object v6, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    iget-object v7, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    invoke-direct {v2, v6, v7}, Lg/a/a/t;-><init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    .line 453
    new-instance v1, Lg/a/a/u;

    iget-object v2, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    iget-object v6, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    invoke-direct {v1, v2, v6}, Lg/a/a/u;-><init>(Lg/a/a/ae;Ljava/nio/channels/SocketChannel;)V

    iput-object v1, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v0

    move-object v8, v0

    move v9, v3

    goto/16 :goto_0

    .line 465
    :cond_3
    const/16 v0, 0x20

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 466
    if-ne v0, v4, :cond_4

    .line 467
    const/16 v0, 0x190

    const-string v1, "Bad request line"

    invoke-direct {p0, v0, v6, v1}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 560
    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_2
    const-string v1, "NumberFormatException thrown"

    invoke-direct {p0, v12, v0, v1}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 472
    add-int/lit8 v0, v0, 0x1

    .line 473
    const/16 v2, 0x20

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 474
    if-ne v10, v4, :cond_5

    .line 475
    const/16 v0, 0x190

    const-string v1, "Bad request line"

    invoke-direct {p0, v0, v6, v1}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 563
    :catch_2
    move-exception v0

    :goto_3
    const-string v0, "URISyntaxException thrown"

    invoke-direct {p0, v12, v6, v0}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 479
    :cond_5
    :try_start_6
    invoke-virtual {v6, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 481
    add-int/lit8 v0, v10, 0x1

    .line 482
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 483
    invoke-virtual {v3}, Lg/a/a/s;->d()Lcom/d/a/a/h;

    move-result-object v10

    .line 484
    const-string v0, "Transfer-encoding"

    invoke-virtual {v10, v0}, Lcom/d/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_7

    const-string v11, "chunked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 497
    :cond_6
    :goto_4
    iget-object v0, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->p(Lg/a/a/ae;)Lg/a/a/e;

    move-result-object v0

    iget-object v5, p0, Lg/a/a/ah;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lg/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lg/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    .line 498
    iget-object v0, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    if-nez v0, :cond_8

    .line 499
    const/16 v0, 0x194

    const-string v1, "No context found for request"

    invoke-direct {p0, v0, v6, v1}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 565
    :catch_3
    move-exception v0

    .line 566
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "ServerImpl.Exchange (2)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto/16 :goto_1

    .line 489
    :cond_7
    :try_start_7
    const-string v0, "Content-Length"

    invoke-virtual {v10, v0}, Lcom/d/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_e

    .line 491
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 493
    :goto_5
    if-nez v4, :cond_6

    .line 494
    iget-object v0, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    iget-object v5, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-virtual {v0, v5}, Lg/a/a/ae;->b(Lg/a/a/k;)V

    goto :goto_4

    .line 503
    :cond_8
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v5, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    iput-object v5, v0, Lg/a/a/k;->a:Lg/a/a/l;

    .line 504
    iget-object v0, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    invoke-virtual {v0}, Lg/a/a/l;->a()Lcom/d/a/a/k;

    move-result-object v0

    if-nez v0, :cond_9

    .line 505
    const/16 v0, 0x1f4

    const-string v1, "No handler for context"

    invoke-direct {p0, v0, v6, v1}, Lg/a/a/ah;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_9
    new-instance v0, Lg/a/a/h;

    iget-object v5, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    invoke-direct/range {v0 .. v5}, Lg/a/a/h;-><init>(Ljava/lang/String;Ljava/net/URI;Lg/a/a/s;ILg/a/a/k;)V

    iput-object v0, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    .line 512
    const-string v0, "Connection"

    invoke-virtual {v10, v0}, Lcom/d/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_a

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 514
    iget-object v0, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/a/a/h;->k:Z

    .line 516
    :cond_a
    if-eqz v9, :cond_b

    .line 517
    iget-object v0, p0, Lg/a/a/ah;->b:Lg/a/a/k;

    iget-object v1, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lg/a/a/ah;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lg/a/a/ah;->a:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v4}, Lg/a/a/ae;->o(Lg/a/a/ae;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    iget-object v5, p0, Lg/a/a/ah;->f:Ljava/lang/String;

    iget-object v9, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    iget-object v11, p0, Lg/a/a/ah;->d:Ljava/io/InputStream;

    iput-object v9, v0, Lg/a/a/k;->a:Lg/a/a/l;

    iput-object v1, v0, Lg/a/a/k;->e:Ljava/io/InputStream;

    iput-object v2, v0, Lg/a/a/k;->g:Ljava/io/OutputStream;

    iput-object v11, v0, Lg/a/a/k;->f:Ljava/io/InputStream;

    iput-object v5, v0, Lg/a/a/k;->j:Ljava/lang/String;

    iput-object v8, v0, Lg/a/a/k;->b:Ljavax/net/ssl/SSLEngine;

    iput-object v3, v0, Lg/a/a/k;->h:Ljava/nio/channels/SocketChannel;

    iput-object v4, v0, Lg/a/a/k;->c:Ljavax/net/ssl/SSLContext;

    iput-object v7, v0, Lg/a/a/k;->d:Lg/a/a/v;

    invoke-virtual {v9}, Lg/a/a/l;->g()Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, v0, Lg/a/a/k;->o:Ljava/util/logging/Logger;

    .line 527
    :cond_b
    const-string v0, "Expect"

    invoke-virtual {v10, v0}, Lcom/d/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_c

    const-string v1, "100-continue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 529
    iget-object v0, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Lg/a/a/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lg/a/a/ah;->a(IZLjava/lang/String;)V

    .line 541
    :cond_c
    iget-object v0, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    invoke-virtual {v0}, Lg/a/a/l;->f()Ljava/util/List;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    invoke-virtual {v1}, Lg/a/a/l;->e()Ljava/util/List;

    move-result-object v1

    .line 544
    new-instance v2, Lcom/d/a/a/g;

    iget-object v3, p0, Lg/a/a/ah;->h:Lg/a/a/l;

    invoke-virtual {v3}, Lg/a/a/l;->a()Lcom/d/a/a/k;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/g;-><init>(Ljava/util/List;Lcom/d/a/a/k;)V

    .line 545
    new-instance v0, Lcom/d/a/a/g;

    new-instance v3, Lg/a/a/ai;

    invoke-direct {v3, p0, v2}, Lg/a/a/ai;-><init>(Lg/a/a/ah;Lcom/d/a/a/g;)V

    invoke-direct {v0, v1, v3}, Lcom/d/a/a/g;-><init>(Ljava/util/List;Lcom/d/a/a/k;)V

    .line 548
    iget-object v1, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->g()Ljava/io/InputStream;

    .line 549
    iget-object v1, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->i()Ljava/io/OutputStream;

    .line 550
    iget-object v1, p0, Lg/a/a/ah;->j:Lg/a/a/ae;

    invoke-static {v1}, Lg/a/a/ae;->n(Lg/a/a/ae;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 551
    new-instance v1, Lg/a/a/p;

    iget-object v2, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    invoke-direct {v1, v2}, Lg/a/a/p;-><init>(Lg/a/a/h;)V

    invoke-virtual {v0, v1}, Lcom/d/a/a/g;->a(Lcom/d/a/a/j;)V

    goto/16 :goto_1

    .line 553
    :cond_d
    new-instance v1, Lg/a/a/n;

    iget-object v2, p0, Lg/a/a/ah;->g:Lg/a/a/h;

    invoke-direct {v1, v2}, Lg/a/a/n;-><init>(Lg/a/a/h;)V

    invoke-virtual {v0, v1}, Lcom/d/a/a/g;->a(Lcom/d/a/a/j;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 563
    :catch_4
    move-exception v1

    move-object v6, v0

    goto/16 :goto_3

    .line 560
    :catch_5
    move-exception v1

    goto/16 :goto_2

    :cond_e
    move v4, v5

    goto/16 :goto_5
.end method

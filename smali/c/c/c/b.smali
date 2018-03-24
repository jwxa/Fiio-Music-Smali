.class public abstract Lc/c/c/b;
.super Lc/c/j;
.source "HttpServlet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_IFMODSINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final HEADER_LASTMOD:Ljava/lang/String; = "Last-Modified"

.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field private static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lc/c/j;-><init>()V

    return-void
.end method

.method private getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 514
    const-class v0, Lc/c/c/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/c/c/b;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 519
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 521
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 522
    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 524
    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private maybeSetLastModified(Lc/c/c/e;J)V
    .locals 2

    .prologue
    .line 798
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0}, Lc/c/c/e;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 801
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0, p2, p3}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected doDelete(Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 499
    invoke-interface {p1}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 500
    sget-object v1, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "http.method_delete_not_supported"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/16 v0, 0x195

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    const/16 v0, 0x190

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doGet(Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 225
    invoke-interface {p1}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-object v1, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "http.method_get_not_supported"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/16 v0, 0x195

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v0, 0x190

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doHead(Lc/c/c/c;Lc/c/c/e;)V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lc/c/c/p;

    invoke-direct {v0, p2}, Lc/c/c/p;-><init>(Lc/c/c/e;)V

    .line 311
    invoke-virtual {p0, p1, v0}, Lc/c/c/b;->doGet(Lc/c/c/c;Lc/c/c/e;)V

    .line 312
    invoke-virtual {v0}, Lc/c/c/p;->a()V

    .line 313
    return-void
.end method

.method protected doOptions(Lc/c/c/c;Lc/c/c/e;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/c/c/b;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 585
    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_4

    .line 589
    aget-object v8, v7, v0

    .line 591
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "doGet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v4, v6

    move v5, v6

    .line 595
    :cond_0
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "doPost"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v6

    .line 597
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "doPut"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v2, v6

    .line 599
    :cond_2
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "doDelete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 588
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_4
    const/4 v0, 0x0

    .line 605
    if-eqz v5, :cond_5

    .line 606
    const-string v0, "GET"

    .line 607
    :cond_5
    if-eqz v4, :cond_6

    .line 608
    if-nez v0, :cond_a

    const-string v0, "HEAD"

    .line 610
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 611
    if-nez v0, :cond_b

    const-string v0, "POST"

    .line 613
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 614
    if-nez v0, :cond_c

    const-string v0, "PUT"

    .line 616
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 617
    if-nez v0, :cond_d

    const-string v0, "DELETE"

    .line 619
    :cond_9
    :goto_4
    if-nez v0, :cond_e

    const-string v0, "TRACE"

    .line 622
    :goto_5
    if-nez v0, :cond_f

    const-string v0, "OPTIONS"

    .line 626
    :goto_6
    const-string v1, "Allow"

    invoke-interface {p2, v1, v0}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    .line 609
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", HEAD"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 612
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", POST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 615
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", PUT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 618
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 621
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 624
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected doPost(Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 384
    invoke-interface {p1}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 385
    sget-object v1, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "http.method_post_not_supported"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/16 v0, 0x195

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const/16 v0, 0x190

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doPut(Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 444
    invoke-interface {p1}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 445
    sget-object v1, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "http.method_put_not_supported"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/16 v0, 0x195

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    const/16 v0, 0x190

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doTrace(Lc/c/c/c;Lc/c/c/e;)V
    .locals 6

    .prologue
    .line 667
    const-string v1, "\r\n"

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TRACE "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc/c/c/c;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    invoke-interface {p1}, Lc/c/c/c;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 673
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 683
    const-string v1, "message/http"

    invoke-interface {p2, v1}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 684
    invoke-interface {p2, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 685
    invoke-interface {p2}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    .line 686
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/z;->print(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method protected getLastModified(Lc/c/c/c;)J
    .locals 2

    .prologue
    .line 264
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public service(Lc/c/ac;Lc/c/ai;)V
    .locals 2

    .prologue
    .line 843
    :try_start_0
    check-cast p1, Lc/c/c/c;

    .line 844
    check-cast p2, Lc/c/c/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->service(Lc/c/c/c;Lc/c/c/e;)V

    .line 849
    return-void

    .line 846
    :catch_0
    move-exception v0

    new-instance v0, Lc/c/x;

    const-string v1, "non-HTTP request or response"

    invoke-direct {v0, v1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected service(Lc/c/c/c;Lc/c/c/e;)V
    .locals 4

    .prologue
    .line 728
    invoke-interface {p1}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 730
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    invoke-virtual {p0, p1}, Lc/c/c/b;->getLastModified(Lc/c/c/c;)J

    move-result-wide v0

    .line 732
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 735
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doGet(Lc/c/c/c;Lc/c/c/e;)V

    .line 782
    :goto_0
    return-void

    .line 737
    :cond_0
    const-string v2, "If-Modified-Since"

    invoke-interface {p1, v2}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 738
    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 742
    invoke-direct {p0, p2, v0, v1}, Lc/c/c/b;->maybeSetLastModified(Lc/c/c/e;J)V

    .line 743
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doGet(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 745
    :cond_1
    const/16 v0, 0x130

    invoke-interface {p2, v0}, Lc/c/c/e;->setStatus(I)V

    goto :goto_0

    .line 749
    :cond_2
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 750
    invoke-virtual {p0, p1}, Lc/c/c/b;->getLastModified(Lc/c/c/c;)J

    move-result-wide v0

    .line 751
    invoke-direct {p0, p2, v0, v1}, Lc/c/c/b;->maybeSetLastModified(Lc/c/c/e;J)V

    .line 752
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doHead(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 754
    :cond_3
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doPost(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 757
    :cond_4
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 758
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doPut(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 760
    :cond_5
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 761
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doDelete(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 763
    :cond_6
    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doOptions(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 766
    :cond_7
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 767
    invoke-virtual {p0, p1, p2}, Lc/c/c/b;->doTrace(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 775
    :cond_8
    sget-object v1, Lc/c/c/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v2, "http.method_not_implemented"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 777
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 778
    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 780
    const/16 v1, 0x1f5

    invoke-interface {p2, v1, v0}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

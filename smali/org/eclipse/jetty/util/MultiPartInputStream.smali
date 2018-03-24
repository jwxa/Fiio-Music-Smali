.class public Lorg/eclipse/jetty/util/MultiPartInputStream;
.super Ljava/lang/Object;
.source "MultiPartInputStream.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_MULTIPART_CONFIG:Lc/c/m;


# instance fields
.field protected _config:Lc/c/m;

.field protected _contentType:Ljava/lang/String;

.field protected _contextTmpDir:Ljava/io/File;

.field protected _deleteOnExit:Z

.field protected _in:Ljava/io/InputStream;

.field protected _parts:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 62
    new-instance v0, Lc/c/m;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->__DEFAULT_MULTIPART_CONFIG:Lc/c/m;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lc/c/m;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ReadLineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 341
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    .line 343
    iput-object p4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    if-nez v0, :cond_1

    .line 348
    new-instance v0, Lc/c/m;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    .line 349
    :cond_1
    return-void
.end method

.method private filenameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 759
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 761
    const-string v1, ".??[a-z,A-Z]\\:\\\\[^\\\\].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 765
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 766
    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    .line 767
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 769
    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_3

    .line 770
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private value(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 750
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteParts()V
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParsedParts()Ljava/util/Collection;

    move-result-object v0

    .line 380
    new-instance v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 381
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/q;

    .line 385
    :try_start_0
    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->cleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 394
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowMulti()V

    .line 395
    return-void
.end method

.method public getParsedParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/c/c/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 368
    :cond_0
    return-object v0

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 365
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getPart(Ljava/lang/String;)Lc/c/c/q;
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 432
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/q;

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/c/c/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 409
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 413
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 414
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 416
    :cond_0
    return-object v1
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return v0
.end method

.method protected parse()V
    .locals 21

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v2, :cond_1

    .line 715
    :cond_0
    return-void

    .line 450
    :cond_1
    const-wide/16 v8, 0x0

    .line 451
    new-instance v2, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v3, "multipart/form-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    .line 472
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 475
    :cond_2
    const-string v2, ""

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v4, "boundary="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v4, "boundary="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 485
    if-nez v3, :cond_7

    .line 486
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content for multipart request"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_4
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v3}, Lc/c/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 465
    :cond_5
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v3}, Lc/c/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 467
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 469
    :cond_6
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v4}, Lc/c/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 488
    :cond_7
    const/4 v2, 0x0

    .line 489
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 490
    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 492
    if-nez v2, :cond_33

    .line 494
    sget-object v2, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Badly formatted multipart request"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    const/4 v2, 0x1

    move v3, v2

    .line 497
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 498
    if-nez v2, :cond_8

    :goto_3
    move/from16 v20, v3

    move-object v3, v2

    move/from16 v2, v20

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 501
    :cond_9
    if-nez v3, :cond_a

    .line 502
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing initial multi part boundary"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_a
    const/4 v2, 0x0

    .line 506
    const/4 v5, 0x0

    .line 507
    const/4 v4, 0x0

    .line 508
    const/4 v3, 0x0

    move v10, v2

    .line 509
    :cond_b
    :goto_4
    if-nez v10, :cond_2f

    .line 511
    new-instance v11, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v11}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 514
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v2, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_2f

    .line 518
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v8, v6

    .line 525
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v6}, Lc/c/m;->c()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v6, v6, v14

    if-lez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v6}, Lc/c/m;->c()J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-lez v6, :cond_c

    .line 526
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request exceeds maxRequestSize ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v4}, Lc/c/m;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_c
    const/16 v6, 0x3a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 530
    if-lez v6, :cond_32

    .line 532
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 533
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {v11, v7, v2}, Lorg/eclipse/jetty/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v6, "content-disposition"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v5, v2

    .line 537
    :cond_d
    const-string v6, "content-type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object v4, v2

    .line 539
    :cond_e
    const-string v6, "content-transfer-encoding"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    move-object v3, v4

    move-object v4, v5

    :goto_6
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    .line 543
    goto/16 :goto_5

    .line 546
    :cond_f
    const/4 v6, 0x0

    .line 547
    if-nez v5, :cond_10

    .line 549
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Missing content-disposition"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_10
    new-instance v12, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v2, ";"

    const/4 v7, 0x0

    const/4 v14, 0x1

    invoke-direct {v12, v5, v2, v7, v14}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 553
    const/4 v7, 0x0

    .line 554
    const/4 v2, 0x0

    .line 555
    :cond_11
    :goto_7
    invoke-virtual {v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 557
    invoke-virtual {v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 558
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 559
    const-string v16, "form-data"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 560
    const/4 v6, 0x1

    goto :goto_7

    .line 561
    :cond_12
    const-string v16, "name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 562
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 563
    :cond_13
    const-string v16, "filename="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 564
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/eclipse/jetty/util/MultiPartInputStream;->filenameValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 568
    :cond_14
    if-eqz v6, :cond_b

    .line 570
    if-eqz v7, :cond_b

    .line 579
    const-string v6, "base64"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 584
    new-instance v6, Lorg/eclipse/jetty/util/j;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v6, v12}, Lorg/eclipse/jetty/util/j;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 613
    :cond_15
    :goto_8
    new-instance v16, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 615
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setContentType(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v7, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->open()V

    .line 622
    const/4 v2, -0x2

    .line 624
    const/4 v7, 0x0

    .line 625
    const/4 v6, 0x0

    .line 630
    :cond_16
    :goto_9
    const/4 v11, 0x0

    move v12, v7

    move v7, v11

    move v11, v6

    .line 631
    :goto_a
    const/4 v6, -0x2

    if-eq v2, v6, :cond_18

    move v6, v2

    :goto_b
    const/4 v14, -0x1

    if-eq v6, v14, :cond_1b

    .line 633
    const-wide/16 v14, 0x1

    add-long/2addr v14, v8

    .line 634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->c()J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v2, v8, v18

    if-lez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v2}, Lc/c/m;->c()J

    move-result-wide v8

    cmp-long v2, v14, v8

    if-lez v2, :cond_19

    .line 635
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request exceeds maxRequestSize ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Lc/c/m;

    invoke-virtual {v4}, Lc/c/m;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :catchall_0
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    throw v2

    .line 586
    :cond_17
    const-string v6, "quoted-printable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 588
    new-instance v6, Lorg/eclipse/jetty/util/i;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Lorg/eclipse/jetty/util/i;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    goto/16 :goto_8

    .line 631
    :cond_18
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    goto :goto_b

    .line 637
    :cond_19
    const/4 v2, -0x2

    .line 639
    const/16 v8, 0xd

    if-eq v6, v8, :cond_1a

    const/16 v8, 0xa

    if-ne v6, v8, :cond_24

    .line 641
    :cond_1a
    const/16 v8, 0xd

    if-ne v6, v8, :cond_30

    .line 643
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->mark(I)V

    .line 644
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 645
    const/16 v9, 0xa

    if-eq v8, v9, :cond_23

    .line 646
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    move-wide v8, v14

    .line 673
    :cond_1b
    :goto_c
    if-lez v7, :cond_1c

    array-length v14, v13

    add-int/lit8 v14, v14, -0x2

    if-lt v7, v14, :cond_1d

    :cond_1c
    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v14, :cond_20

    .line 675
    :cond_1d
    if-eqz v12, :cond_1e

    .line 676
    const/16 v12, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 678
    :cond_1e
    if-eqz v11, :cond_1f

    .line 679
    const/16 v11, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 681
    :cond_1f
    const/4 v11, 0x0

    .line 682
    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v12, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 683
    const/4 v7, -0x1

    move v12, v11

    .line 686
    :cond_20
    if-gtz v7, :cond_21

    const/4 v14, -0x1

    if-ne v6, v14, :cond_29

    .line 688
    :cond_21
    array-length v6, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, v6, :cond_31

    .line 689
    const/4 v6, 0x1

    .line 690
    :goto_d
    const/16 v7, 0xa

    if-ne v2, v7, :cond_22

    .line 710
    :cond_22
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    move v10, v6

    .line 711
    goto/16 :goto_4

    :cond_23
    move v2, v8

    move-wide v8, v14

    .line 649
    goto :goto_c

    .line 653
    :cond_24
    if-ltz v7, :cond_25

    :try_start_2
    array-length v8, v13

    if-ge v7, v8, :cond_25

    aget-byte v8, v13, v7

    if-ne v6, v8, :cond_25

    .line 654
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-wide v8, v14

    goto/16 :goto_a

    .line 658
    :cond_25
    if-eqz v12, :cond_26

    .line 659
    const/16 v8, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 661
    :cond_26
    if-eqz v11, :cond_27

    .line 662
    const/16 v8, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 664
    :cond_27
    const/4 v8, 0x0

    .line 665
    if-lez v7, :cond_28

    .line 666
    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v9, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 668
    :cond_28
    const/4 v7, -0x1

    .line 669
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    move v11, v8

    move v12, v8

    move-wide v8, v14

    goto/16 :goto_a

    .line 695
    :cond_29
    if-eqz v12, :cond_2a

    .line 696
    const/16 v7, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 698
    :cond_2a
    if-eqz v11, :cond_2b

    .line 699
    const/16 v7, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :cond_2b
    const/16 v7, 0xd

    if-ne v6, v7, :cond_2d

    const/4 v7, 0x1

    .line 702
    :goto_e
    const/16 v11, 0xa

    if-eq v6, v11, :cond_2c

    const/16 v6, 0xa

    if-ne v2, v6, :cond_2e

    :cond_2c
    const/4 v6, 0x1

    .line 703
    :goto_f
    const/16 v11, 0xa

    if-ne v2, v11, :cond_16

    .line 704
    const/4 v2, -0x2

    goto/16 :goto_9

    .line 701
    :cond_2d
    const/4 v7, 0x0

    goto :goto_e

    .line 702
    :cond_2e
    const/4 v6, 0x0

    goto :goto_f

    .line 712
    :cond_2f
    if-nez v10, :cond_0

    .line 714
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incomplete parts"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    move-wide v8, v14

    goto/16 :goto_c

    :cond_31
    move v6, v10

    goto :goto_d

    :cond_32
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_6

    :cond_33
    move v3, v2

    goto/16 :goto_2
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .prologue
    .line 719
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    .line 720
    return-void
.end method

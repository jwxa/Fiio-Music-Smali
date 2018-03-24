.class public Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Source;


# instance fields
.field private _next:I

.field private _reader:Ljava/io/Reader;

.field private scratch:[C


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    .line 1512
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    .line 1513
    return-void
.end method

.method private getNext()V
    .locals 2

    .prologue
    .line 1548
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    if-gez v0, :cond_0

    .line 1552
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :cond_0
    return-void

    .line 1554
    :catch_0
    move-exception v0

    .line 1556
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1523
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1524
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    if-gez v0, :cond_0

    .line 1526
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->scratch:[C

    .line 1527
    const/4 v0, 0x0

    .line 1529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 1534
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1535
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    int-to-char v0, v0

    .line 1536
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    .line 1537
    return v0
.end method

.method public peek()C
    .locals 1

    .prologue
    .line 1542
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->getNext()V

    .line 1543
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    int-to-char v0, v0

    return v0
.end method

.method public scratchBuffer()[C
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->scratch:[C

    if-nez v0, :cond_0

    .line 1564
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->scratch:[C

    .line 1565
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->scratch:[C

    return-object v0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 1517
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_reader:Ljava/io/Reader;

    .line 1518
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;->_next:I

    .line 1519
    return-void
.end method

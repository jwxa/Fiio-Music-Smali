.class public Lorg/eclipse/jetty/util/ajax/JSON$StringSource;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Source;


# instance fields
.field private index:I

.field private scratch:[C

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    .line 1469
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1473
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1474
    const/4 v0, 0x1

    .line 1476
    :goto_0
    return v0

    .line 1475
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    .line 1476
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()C
    .locals 3

    .prologue
    .line 1481
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public peek()C
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public scratchBuffer()[C
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    .line 1499
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/eclipse/jetty/http/PathMap$Entry;
.super Ljava/lang/Object;
.source "PathMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final key:Ljava/lang/Object;

.field private mapped:Ljava/lang/String;

.field private transient string:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->key:Ljava/lang/Object;

    .line 550
    iput-object p2, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->value:Ljava/lang/Object;

    .line 551
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getMapped()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->mapped:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method setMapped(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->mapped:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->string:Ljava/lang/String;

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->string:Ljava/lang/String;

    return-object v0
.end method

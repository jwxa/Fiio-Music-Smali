.class public Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6310708932e65f81L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    .line 88
    check-cast p1, Ljava/util/Map$Entry;

    .line 89
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 91
    :goto_1
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 89
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 90
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    if-eqz v2, :cond_2

    goto :goto_1

    .line 91
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 98
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

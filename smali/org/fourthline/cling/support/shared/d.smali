.class final Lorg/fourthline/cling/support/shared/d;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/fourthline/cling/support/shared/c;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/c;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/d;->b:Lorg/fourthline/cling/support/shared/c;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    invoke-static {p1}, Lorg/fourthline/cling/support/shared/c;->a(Lorg/fourthline/cling/support/shared/c;)Lorg/fourthline/cling/support/shared/AbstractMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/shared/d;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/d;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/d;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/d;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 491
    return-void
.end method

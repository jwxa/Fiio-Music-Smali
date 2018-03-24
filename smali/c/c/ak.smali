.class public final Lc/c/ak;
.super Lc/c/k;
.source "ServletSecurityElement.java"


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lc/c/l;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lc/c/ak;->a:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.class final Lorg/fourthline/cling/support/shared/c;
.super Ljava/util/AbstractCollection;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/shared/AbstractMap;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/AbstractMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/c;->a:Lorg/fourthline/cling/support/shared/AbstractMap;

    .line 468
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/fourthline/cling/support/shared/c;)Lorg/fourthline/cling/support/shared/AbstractMap;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/c;->a:Lorg/fourthline/cling/support/shared/AbstractMap;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/c;->a:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/shared/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lorg/fourthline/cling/support/shared/d;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/d;-><init>(Lorg/fourthline/cling/support/shared/c;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/c;->a:Lorg/fourthline/cling/support/shared/AbstractMap;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/AbstractMap;->size()I

    move-result v0

    return v0
.end method

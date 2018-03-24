.class public Lorg/fourthline/cling/binding/staging/MutableAction;
.super Ljava/lang/Object;
.source "MutableAction.java"


# instance fields
.field public arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/binding/staging/MutableActionArgument;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public build()Lorg/fourthline/cling/model/meta/Action;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/fourthline/cling/model/meta/Action;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableAction;->createActionArgumennts()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    return-object v0
.end method

.method public createActionArgumennts()[Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-object v3

    .line 39
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    .line 40
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->build()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0
.end method

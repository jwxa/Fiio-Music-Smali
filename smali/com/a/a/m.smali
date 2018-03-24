.class final Lcom/a/a/m;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/ay;
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ay",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/util/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/a/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 5

    .prologue
    .line 625
    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/a/a/at;

    invoke-direct {v2}, Lcom/a/a/at;-><init>()V

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/a/at;->a(Lcom/a/a/ba;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_2
    invoke-interface {p3, v4, v1}, Lcom/a/a/bh;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/a/a/ba;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/a/at;->a(Lcom/a/a/ba;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public final synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-virtual {p1}, Lcom/a/a/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/a/a/aw;

    invoke-virtual {v0}, Lcom/a/a/aw;->a()Lcom/a/a/bw;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/a/a/bw;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p2}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/a/a/ba;->t()Lcom/a/a/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/at;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/ba;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/a/a/ba;->r()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p3, v1, v3}, Lcom/a/a/av;->a(Lcom/a/a/ba;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.class final Lcom/a/a/br;
.super Lcom/a/a/b;
.source "MapTypeAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 8

    .prologue
    .line 34
    check-cast p1, Ljava/util/Map;

    new-instance v4, Lcom/a/a/bd;

    invoke-direct {v4}, Lcom/a/a/bd;-><init>()V

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Lcom/a/a/bd;->a(Ljava/lang/String;Lcom/a/a/ba;)V

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    :goto_3
    move-object v0, p3

    check-cast v0, Lcom/a/a/bi;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Lcom/a/a/bi;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/a/a/ba;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v3, v2

    goto :goto_3

    :cond_2
    return-object v4

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 34
    move-object v0, p3

    check-cast v0, Lcom/a/a/aw;

    invoke-virtual {v0}, Lcom/a/a/aw;->a()Lcom/a/a/bw;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/a/a/bw;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/a/a/ba;->s()Lcom/a/a/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/bd;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v5, Lcom/a/a/bg;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/a/a/bg;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {p3, v5, v1}, Lcom/a/a/av;->a(Lcom/a/a/ba;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/ba;

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-interface {p3, v1, v2}, Lcom/a/a/av;->a(Lcom/a/a/ba;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/a/a/br;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/a/a/bd;
.super Lcom/a/a/ba;
.source "JsonObject.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/a/a/ba;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ba;

    .line 157
    if-nez v0, :cond_0

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/ba;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Appendable;Lcom/a/a/am;)V
    .locals 4

    .prologue
    .line 205
    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 206
    const/4 v0, 0x1

    .line 207
    iget-object v1, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    if-eqz v1, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 213
    :goto_1
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/a/a/am;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 215
    const-string v1, "\":"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ba;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ba;->a(Ljava/lang/Appendable;Lcom/a/a/am;)V

    move v1, v2

    goto :goto_0

    .line 211
    :cond_0
    const/16 v2, 0x2c

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v2, v1

    goto :goto_1

    .line 218
    :cond_1
    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 219
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/a/a/ba;)V
    .locals 2

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object p2

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 93
    if-nez p2, :cond_0

    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/a/a/bd;->a(Ljava/lang/String;Lcom/a/a/ba;)V

    .line 94
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/a/a/bg;

    invoke-direct {v0, p2}, Lcom/a/a/bg;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 194
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/a/a/bd;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/a/a/bd;

    iget-object v0, p1, Lcom/a/a/bd;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/a/a/bd;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

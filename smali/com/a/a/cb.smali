.class final Lcom/a/a/cb;
.super Ljava/lang/Object;
.source "ParameterizedTypeHandlerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ca",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/a/a/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/a/a/cb;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/cb;->d:Z

    return-void
.end method

.method private a(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    .line 73
    iget-object v0, v0, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 77
    :goto_1
    return v0

    .line 71
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/a/a/ca;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ca",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/cb;->d:Z

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/a/a/cb;->b(Ljava/lang/Class;)I

    move-result v0

    .line 55
    if-ltz v0, :cond_1

    .line 56
    sget-object v1, Lcom/a/a/cb;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Overriding the existing type handler for {0}"

    iget-object v4, p1, Lcom/a/a/ca;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/a/a/cb;->a(Ljava/lang/Class;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_2

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The specified type handler for type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/a/a/ca;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hides the previously registered type hierarchy handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    iget-object v0, v0, Lcom/a/a/ca;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Gson does not allow this."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    iget-object v0, v0, Lcom/a/a/ca;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 172
    :goto_1
    monitor-exit p0

    return v0

    .line 167
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    if-nez v1, :cond_2

    .line 141
    invoke-static {p1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 142
    if-eq v3, p1, :cond_0

    .line 143
    invoke-virtual {p0, v3}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    :cond_0
    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/a/ca;

    move-object v2, v0

    iget-object v1, v2, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/a/a/ca;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 147
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/a/a/cb;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/a/a/cb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/cb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/cb;->d:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    iget-object v1, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p1, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 102
    iget-object v0, p1, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    .line 103
    iget-object v1, v0, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/a/a/cb;->b(Ljava/lang/Class;)I

    move-result v1

    .line 104
    if-gez v1, :cond_3

    .line 105
    invoke-direct {p0, v0}, Lcom/a/a/cb;->a(Lcom/a/a/ca;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 108
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/a/a/ca;

    invoke-direct {v0, p1, p2}, Lcom/a/a/ca;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/a/a/cb;->a(Lcom/a/a/ca;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/cb;->d:Z

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/a/a/cb;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/a/a/cb;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Overriding the existing type handler for {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()Lcom/a/a/cb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/cb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/a/a/cb;

    invoke-direct {v0}, Lcom/a/a/cb;-><init>()V

    .line 179
    iget-object v1, v0, Lcom/a/a/cb;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    iget-object v1, v0, Lcom/a/a/cb;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/a/a/cb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/cb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/cb;->d:Z

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p1, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 120
    iget-object v0, p1, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    .line 121
    invoke-direct {p0, v0}, Lcom/a/a/cb;->a(Lcom/a/a/ca;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 123
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/cb;->d:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2c

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "{mapForTypeHierarchy:{"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/a/a/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ca;

    .line 189
    if-eqz v1, :cond_0

    move v3, v4

    .line 194
    :goto_1
    iget-object v1, v0, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, v0, Lcom/a/a/ca;->b:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_1

    .line 197
    :cond_1
    const-string v0, "},map:{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/a/a/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    if-eqz v2, :cond_2

    move v2, v4

    .line 205
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 203
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 208
    :cond_3
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

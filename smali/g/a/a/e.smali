.class Lg/a/a/e;
.super Ljava/lang/Object;
.source "ContextList.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lg/a/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lg/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/e;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/a/a/e;->a:Ljava/util/LinkedList;

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lg/a/a/l;
    .locals 8

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 38
    const-string v3, ""

    .line 39
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lg/a/a/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/l;

    .line 41
    invoke-virtual {v0}, Lg/a/a/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v0}, Lg/a/a/l;->b()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-le v6, v7, :cond_2

    move-object v1, v2

    :goto_1
    move-object v3, v1

    move-object v1, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    monitor-exit p0

    return-object v1

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lg/a/a/l;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lg/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Lg/a/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lg/a/a/l;)V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lg/a/a/e;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/a/a/l;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/a/a/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    return-void
.end method

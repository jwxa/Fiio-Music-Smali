.class final Lorg/eclipse/jetty/servlet/h;
.super Ljava/lang/Object;
.source "ServletHolder.java"

# interfaces
.implements Lc/c/q;


# instance fields
.field a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lc/c/q;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 1

    .prologue
    .line 842
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/h;->b:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;B)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/h;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .prologue
    .line 848
    monitor-enter p0

    .line 850
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 851
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/q;

    invoke-interface {v0}, Lc/c/q;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final init(Lc/c/r;)V
    .locals 2

    .prologue
    .line 867
    monitor-enter p0

    .line 869
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 873
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->b:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Lc/c/q;

    move-result-object v0

    .line 874
    invoke-interface {v0, p1}, Lc/c/q;->init(Lc/c/r;)V

    .line 875
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lc/c/x; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    .line 877
    :catch_0
    move-exception v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 881
    :catch_1
    move-exception v0

    .line 883
    :try_start_3
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final service(Lc/c/ac;Lc/c/ai;)V
    .locals 3

    .prologue
    .line 892
    monitor-enter p0

    .line 894
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 895
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/q;

    .line 912
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :try_start_1
    invoke-interface {v0, p1, p2}, Lc/c/q;->service(Lc/c/ac;Lc/c/ai;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 920
    monitor-enter p0

    .line 922
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 900
    :cond_0
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/h;->b:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Lc/c/q;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/h;->b:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/q;->init(Lc/c/r;)V
    :try_end_3
    .catch Lc/c/x; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 907
    :catch_1
    move-exception v0

    .line 909
    :try_start_5
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 923
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 924
    :catchall_2
    move-exception v1

    monitor-enter p0

    .line 922
    :try_start_6
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/h;->a:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

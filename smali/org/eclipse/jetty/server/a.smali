.class final Lorg/eclipse/jetty/server/a;
.super Ljava/lang/Object;
.source "AbstractConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lorg/eclipse/jetty/server/AbstractConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractConnector;I)V
    .locals 1

    .prologue
    .line 911
    iput-object p1, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/a;->a:I

    .line 912
    iput p2, p0, Lorg/eclipse/jetty/server/a;->a:I

    .line 913
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 920
    iget-object v2, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v2

    .line 922
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 923
    monitor-exit v2

    .line 968
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jetty/server/a;->a:I

    aput-object v1, v0, v3

    .line 926
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jetty/server/a;->a:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Acceptor"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lorg/eclipse/jetty/server/a;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 928
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 933
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$100(Lorg/eclipse/jetty/server/AbstractConnector;)I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 934
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->getConnection()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    .line 938
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    iget v4, p0, Lorg/eclipse/jetty/server/a;->a:I

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/AbstractConnector;->accept(I)V
    :try_end_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 940
    :catch_0
    move-exception v0

    .line 942
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 969
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 962
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v1

    .line 966
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v2}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 967
    iget-object v2, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v2}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jetty/server/a;->a:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 968
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 928
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 944
    :catch_1
    move-exception v0

    .line 946
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 948
    :catch_2
    move-exception v0

    .line 951
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 953
    :catch_3
    move-exception v0

    .line 955
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 961
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 962
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v1

    .line 966
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 967
    iget-object v0, p0, Lorg/eclipse/jetty/server/a;->b:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/server/a;->a:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 968
    :cond_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

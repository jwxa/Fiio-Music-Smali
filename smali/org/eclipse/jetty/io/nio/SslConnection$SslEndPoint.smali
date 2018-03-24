.class public Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
.super Ljava/lang/Object;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SslConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 737
    return-void
.end method

.method public blockReadable(J)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 696
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    add-long v0, v2, p1

    .line 698
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 700
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v4, v5, v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 701
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    sub-long v2, v0, v2

    invoke-interface {v4, v2, v3}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 696
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 706
    :cond_1
    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public blockWritable(J)Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v0

    return v0
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 767
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 659
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 661
    return-void
.end method

.method public dispatch()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->dispatch()V

    .line 732
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    .line 665
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 666
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 668
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    sub-int v0, v1, v0

    .line 670
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const/4 v0, -0x1

    .line 672
    :cond_0
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    .line 677
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 678
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 679
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 684
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 690
    :goto_0
    return v0

    .line 686
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_0

    .line 688
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_0

    .line 690
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0, v1, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 727
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    return-object v0
.end method

.method public hasProgressed()Z
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isCheckForIdle()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 2

    .prologue
    .line 634
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 636
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isWritable()Z

    move-result v0

    return v0
.end method

.method public onIdleExpired(J)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->onIdleExpired(J)V

    .line 747
    return-void
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 762
    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 742
    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 752
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 832
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setMaxIdleTime(I)V

    .line 822
    return-void
.end method

.method public shutdownInput()V
    .locals 5

    .prologue
    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.ishut!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public shutdownOutput()V
    .locals 6

    .prologue
    .line 623
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v2, "{} ssl endp.oshut {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 627
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z

    .line 628
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush()V

    .line 630
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, -0x1

    .line 839
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    .line 840
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v3

    .line 841
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v4

    .line 842
    if-nez v1, :cond_0

    move v2, v0

    .line 843
    :goto_0
    if-nez v3, :cond_1

    move v1, v0

    .line 844
    :goto_1
    if-nez v4, :cond_2

    .line 845
    :goto_2
    const-string v3, "SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 843
    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_1

    .line 844
    :cond_2
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_2
.end method

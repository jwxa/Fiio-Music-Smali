.class final Lorg/eclipse/jetty/server/handler/j;
.super Ljava/lang/Object;
.source "StatisticsHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getBaseRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 64
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$000(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 65
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$100(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 67
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$200(Lorg/eclipse/jetty/server/handler/StatisticsHandler;Lorg/eclipse/jetty/server/Request;)V

    .line 69
    invoke-interface {p1}, Lorg/eclipse/jetty/continuation/Continuation;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$300(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 71
    :cond_0
    return-void
.end method

.method public final onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/j;->a:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$400(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 76
    return-void
.end method

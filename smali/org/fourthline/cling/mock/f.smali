.class final Lorg/fourthline/cling/mock/f;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "MockUpnpServiceConfiguration.java"


# instance fields
.field a:Z

.field final synthetic b:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/mock/f;->b:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    .line 103
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    .line 126
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    return v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 131
    return-void
.end method

.method public final isShutdown()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    return v0
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    .line 109
    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/mock/f;->a:Z

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

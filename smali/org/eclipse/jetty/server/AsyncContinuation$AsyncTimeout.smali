.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "AsyncContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 1040
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 1046
    return-void
.end method

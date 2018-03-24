.class final Lg/a/a/af;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lg/a/a/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    return-void
.end method

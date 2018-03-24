.class public Lorg/eclipse/jetty/continuation/Jetty6Continuation;
.super Ljava/lang/Object;
.source "Jetty6Continuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final LOG:Lorg/mortbay/log/Logger;

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private volatile _completed:Z

.field private volatile _expired:Z

.field private _initial:Z

.field private final _j6Continuation:Lorg/mortbay/util/ajax/Continuation;

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Lc/c/ac;

.field private _response:Lc/c/ai;

.field private _responseWrapped:Z

.field private volatile _resumed:Z

.field private _retry:Ljava/lang/Throwable;

.field private _timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    .line 43
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method public constructor <init>(Lc/c/ac;Lorg/mortbay/util/ajax/Continuation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    .line 52
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 53
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 54
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 55
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 60
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    const-string v1, "!ContinuationFilter installed"

    invoke-interface {v0, v1, v2, v2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!ContinuationFilter installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Lc/c/ac;

    .line 66
    iput-object p2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 67
    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 85
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public enter(Lc/c/ai;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Lc/c/ai;

    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 230
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    if-eqz v0, :cond_2

    .line 244
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 228
    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 235
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 240
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_2

    .line 244
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public exit()Z
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    .line 254
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 256
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 257
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 262
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServletResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Lc/c/ai;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    return v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    return v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->removeAttribute(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 155
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1, p2}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setTimeout(J)V
    .locals 3

    .prologue
    .line 161
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    .line 162
    return-void

    .line 161
    :cond_0
    long-to-int v0, p1

    goto :goto_0
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Lc/c/ai;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 199
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public suspend(Lc/c/ai;)V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Lc/c/ai;

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Lc/c/ai;

    instance-of v0, v0, Lc/c/aj;

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 219
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

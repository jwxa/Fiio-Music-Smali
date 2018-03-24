.class public Lorg/eclipse/jetty/continuation/Servlet3Continuation;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/Continuation;


# static fields
.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _context:Lc/c/a;

.field private volatile _expired:Z

.field private volatile _initial:Z

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Lc/c/ac;

.field private _response:Lc/c/ai;

.field private volatile _responseWrapped:Z

.field private volatile _resumed:Z

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method public constructor <init>(Lc/c/ac;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    .line 50
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 51
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 52
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    new-instance v1, Lorg/eclipse/jetty/continuation/b;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/continuation/b;-><init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    return p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    return p1
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lorg/eclipse/jetty/continuation/c;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/continuation/c;-><init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 111
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v1, v0}, Lc/c/a;->addListener(Lc/c/c;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v0}, Lc/c/a;->complete()V

    .line 124
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServletResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_response:Lc/c/ai;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    return v0
.end method

.method public isInitial()Z
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_initial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0}, Lc/c/ac;->getDispatcherType()Lc/c/d;

    move-result-object v0

    sget-object v1, Lc/c/d;->d:Lc/c/d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0}, Lc/c/ac;->isAsyncStarted()Z

    move-result v0

    return v0
.end method

.method public keepWrappers()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    .line 161
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1}, Lc/c/ac;->removeAttribute(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v0}, Lc/c/a;->dispatch()V

    .line 171
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0, p1, p2}, Lc/c/ac;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 176
    iput-wide p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v0, p1, p2}, Lc/c/a;->setTimeout(J)V

    .line 179
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 200
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 201
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0}, Lc/c/ac;->startAsync()Lc/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    iget-wide v2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    invoke-interface {v0, v2, v3}, Lc/c/a;->setTimeout(J)V

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;

    .line 205
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v2, v0}, Lc/c/a;->addListener(Lc/c/c;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    return-void
.end method

.method public suspend(Lc/c/ai;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_response:Lc/c/ai;

    .line 185
    instance-of v0, p1, Lc/c/aj;

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_responseWrapped:Z

    .line 186
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_resumed:Z

    .line 187
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_request:Lc/c/ac;

    invoke-interface {v0}, Lc/c/ac;->startAsync()Lc/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    iget-wide v2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_timeoutMs:J

    invoke-interface {v0, v2, v3}, Lc/c/a;->setTimeout(J)V

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c;

    .line 192
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_context:Lc/c/a;

    invoke-interface {v2, v0}, Lc/c/a;->addListener(Lc/c/c;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    return-void
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 252
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

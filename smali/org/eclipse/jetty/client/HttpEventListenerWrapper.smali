.class public Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.super Ljava/lang/Object;
.source "HttpEventListenerWrapper.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# instance fields
.field _delegatingRequests:Z

.field _delegatingResponses:Z

.field _delegationResult:Z

.field _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _reason:Lorg/eclipse/jetty/io/Buffer;

.field private _status:I

.field private _version:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 39
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 40
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 45
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 46
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 47
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public isDelegatingRequests()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    return v0
.end method

.method public isDelegatingResponses()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 95
    :cond_1
    return-void
.end method

.method public onExpire()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 101
    :cond_1
    return-void
.end method

.method public onRequestCommitted()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V

    .line 107
    :cond_0
    return-void
.end method

.method public onRequestComplete()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 113
    :cond_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 4

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    iget v2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V

    .line 125
    :cond_1
    return-void
.end method

.method public onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onResponseHeaderComplete()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    .line 143
    :cond_0
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    .line 154
    iput p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    .line 155
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 163
    :cond_0
    return-void
.end method

.method public setDelegatingRequests(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 73
    return-void
.end method

.method public setDelegatingResponses(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 78
    return-void
.end method

.method public setDelegationResult(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 83
    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 58
    return-void
.end method

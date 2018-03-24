.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
.super Lc/c/b;
.source "AsyncContinuation.java"


# instance fields
.field private _dispatchContext:Lc/c/s;

.field private _pathInContext:Ljava/lang/String;

.field private final _suspendedContext:Lc/c/s;

.field private _timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lc/c/s;Lc/c/ac;Lc/c/ai;)V
    .locals 3

    .prologue
    .line 1059
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 1060
    invoke-direct {p0, p1, p3, p4}, Lc/c/b;-><init>(Lc/c/a;Lc/c/ac;Lc/c/ai;)V

    .line 1056
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1061
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Lc/c/s;

    .line 1063
    iget-object v0, p1, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    .line 1066
    const-string v0, "javax.servlet.async.request_uri"

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1072
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1073
    if-eqz v0, :cond_1

    .line 1075
    const-string v2, "javax.servlet.async.request_uri"

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1076
    const-string v0, "javax.servlet.async.context_path"

    const-string v2, "javax.servlet.forward.context_path"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    const-string v0, "javax.servlet.async.servlet_path"

    const-string v2, "javax.servlet.forward.servlet_path"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1078
    const-string v0, "javax.servlet.async.path_info"

    const-string v2, "javax.servlet.forward.path_info"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    const-string v0, "javax.servlet.async.query_string"

    const-string v2, "javax.servlet.forward.query_string"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    const-string v0, "javax.servlet.async.request_uri"

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    const-string v0, "javax.servlet.async.context_path"

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    const-string v0, "javax.servlet.async.servlet_path"

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    const-string v0, "javax.servlet.async.path_info"

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    const-string v0, "javax.servlet.async.query_string"

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Lc/c/s;)Lc/c/s;
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Lc/c/s;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-object v0
.end method


# virtual methods
.method public getDispatchContext()Lc/c/s;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Lc/c/s;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object v0
.end method

.method public getServletContext()Lc/c/s;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Lc/c/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Lc/c/s;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Lc/c/s;

    goto :goto_0
.end method

.method public getSuspendedContext()Lc/c/s;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Lc/c/s;

    return-object v0
.end method

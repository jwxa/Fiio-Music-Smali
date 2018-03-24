.class final Lorg/eclipse/jetty/server/c;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;B)V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/c;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public final content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1005
    return-void
.end method

.method public final earlyEOF()V
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->earlyEOF()V

    .line 1043
    return-void
.end method

.method public final headerComplete()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->headerComplete()V

    .line 995
    return-void
.end method

.method public final messageComplete(J)V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->messageComplete(J)V

    .line 1017
    return-void
.end method

.method public final parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 986
    return-void
.end method

.method public final startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lorg/eclipse/jetty/server/c;->a:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 977
    return-void
.end method

.method public final startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 1029
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad request!: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    :cond_0
    return-void
.end method

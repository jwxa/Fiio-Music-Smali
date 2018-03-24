.class public Lorg/eclipse/jetty/servlet/NoJspServlet;
.super Lc/c/c/b;
.source "NoJspServlet.java"


# instance fields
.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc/c/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected doGet(Lc/c/c/c;Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/NoJspServlet;->_warned:Z

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/NoJspServlet;->getServletContext()Lc/c/s;

    move-result-object v0

    const-string v1, "No JSP support.  Check that JSP jars are in lib/jsp and that the JSP option has been specified to start.jar"

    invoke-interface {v0, v1}, Lc/c/s;->log(Ljava/lang/String;)V

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/NoJspServlet;->_warned:Z

    .line 42
    const/16 v0, 0x1f4

    const-string v1, "JSP support not configured"

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 43
    return-void
.end method

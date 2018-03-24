.class final Lorg/eclipse/jetty/servlet/d;
.super Lc/c/c/d;
.source "Invoker.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lorg/eclipse/jetty/servlet/Invoker;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/Invoker;Lc/c/c/c;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d;->d:Lorg/eclipse/jetty/servlet/Invoker;

    .line 258
    invoke-direct {p0, p2}, Lc/c/c/d;-><init>(Lc/c/c/c;)V

    .line 259
    iput-boolean p3, p0, Lorg/eclipse/jetty/servlet/d;->c:Z

    .line 260
    invoke-static {p5, p4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->a:Ljava/lang/String;

    .line 261
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->c:Z

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->getContextPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_1
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_2
    invoke-super {p0, p1}, Lc/c/c/d;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->c:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-super {p0}, Lc/c/c/d;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->c:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-super {p0}, Lc/c/c/d;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

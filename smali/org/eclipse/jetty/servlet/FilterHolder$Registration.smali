.class public Lorg/eclipse/jetty/servlet/FilterHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "FilterHolder.java"

# interfaces
.implements Lc/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/e;",
        ">.HolderRegistration;",
        "Lc/c/i;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMappingForServletNames(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 196
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 197
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 198
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 200
    if-eqz p2, :cond_0

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0
.end method

.method public varargs addMappingForUrlPatterns(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 209
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 210
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 211
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 213
    if-eqz p2, :cond_0

    .line 214
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0
.end method

.method public getServletNameMappings()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 225
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-ne v5, v6, :cond_0

    .line 226
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 229
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    return-object v2
.end method

.method public getUrlPatternMappings()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 240
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-ne v5, v6, :cond_0

    .line 241
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return-object v2
.end method

.class public Lorg/eclipse/jetty/servlet/ServletHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "ServletHolder.java"

# interfaces
.implements Lc/c/ab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/q;",
        ">.HolderRegistration;",
        "Lc/c/ab;"
    }
.end annotation


# instance fields
.field protected _multipartConfig:Lc/c/m;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMapping([Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 743
    const/4 v1, 0x0

    .line 744
    array-length v2, p1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 746
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v4

    .line 747
    if-eqz v4, :cond_1

    .line 750
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1

    .line 752
    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 754
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_2
    if-eqz v0, :cond_3

    .line 769
    :goto_1
    return-object v0

    .line 764
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 765
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 769
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitOrder()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 736
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMappings()Ljava/util/Collection;
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
    .line 774
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v1

    .line 775
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 776
    if-eqz v1, :cond_1

    .line 778
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 780
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 781
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    .line 783
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 784
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 778
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_1
    return-object v2
.end method

.method public getMultipartConfig()Lc/c/m;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Lc/c/m;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAsyncSupported(Z)V
    .locals 0

    .prologue
    .line 736
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setAsyncSupported(Z)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 736
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameters(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setLoadOnStartup(I)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 800
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 801
    return-void
.end method

.method public setMultipartConfig(Lc/c/m;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Lc/c/m;

    .line 812
    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    return-void
.end method

.method public setServletSecurity(Lc/c/ak;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/ak;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletSecurity(Lc/c/ab;Lc/c/ak;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

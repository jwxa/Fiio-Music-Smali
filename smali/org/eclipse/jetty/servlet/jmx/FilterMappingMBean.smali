.class public Lorg/eclipse/jetty/servlet/jmx/FilterMappingMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "FilterMappingMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getObjectNameBasis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/FilterMappingMBean;->_managed:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/FilterMappingMBean;->_managed:Ljava/lang/Object;

    instance-of v0, v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/FilterMappingMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 37
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

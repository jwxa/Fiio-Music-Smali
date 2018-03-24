.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
.super Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.source "ServletContextHandler.java"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lc/c/e;)Lc/c/i;
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 901
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 904
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 905
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 906
    if-nez v1, :cond_2

    .line 909
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Lc/c/e;)V

    .line 912
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 913
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    .line 916
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 919
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Lc/c/e;)V

    .line 920
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    goto :goto_0

    .line 923
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Lc/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/e;",
            ">;)",
            "Lc/c/i;"
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 832
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 835
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 836
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 837
    if-nez v1, :cond_2

    .line 840
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 841
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 843
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 844
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    .line 853
    :goto_0
    return-object v0

    .line 846
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 849
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 850
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    goto :goto_0

    .line 853
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Lc/c/i;
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 866
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 869
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 870
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 871
    if-nez v1, :cond_2

    .line 874
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 875
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 878
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    .line 880
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 883
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1221
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V

    .line 1222
    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1197
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1199
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1210
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/util/EventListener;)V

    .line 1211
    return-void
.end method

.method public addServlet(Ljava/lang/String;Lc/c/q;)Lc/c/ab;
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1012
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 1013
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 1014
    if-nez v1, :cond_2

    .line 1016
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 1017
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Lc/c/q;)V

    .line 1019
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 1020
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/ab;

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0

    .line 1024
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1026
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Lc/c/q;)V

    .line 1027
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    goto :goto_0

    .line 1030
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Lc/c/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/q;",
            ">;)",
            "Lc/c/ab;"
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 936
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 937
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 939
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 941
    if-nez v1, :cond_2

    .line 944
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 945
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 947
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 948
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/ab;

    move-result-object v0

    .line 958
    :goto_0
    return-object v0

    .line 952
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 954
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 955
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lc/c/ab;
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 971
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 972
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 975
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 976
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 977
    if-nez v1, :cond_2

    .line 980
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 981
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 984
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/ab;

    move-result-object v0

    .line 994
    :goto_0
    return-object v0

    .line 988
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 990
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    goto :goto_0

    .line 994
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createFilter(Ljava/lang/Class;)Lc/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/e;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1053
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/e;

    .line 1054
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1057
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateFilterInstance(Lc/c/e;)Lc/c/e;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1054
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1063
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1065
    :catch_1
    move-exception v0

    .line 1067
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1059
    :cond_0
    return-object v2
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1229
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v1

    .line 1231
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1233
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1234
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;
    :try_end_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1231
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v0

    throw v0

    .line 1242
    :catch_1
    move-exception v0

    .line 1244
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1236
    :cond_0
    return-object v2
.end method

.method public createServlet(Ljava/lang/Class;)Lc/c/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/q;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1077
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/q;

    .line 1078
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1080
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1081
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateServletInstance(Lc/c/q;)Lc/c/q;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1078
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1087
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1089
    :catch_1
    move-exception v0

    .line 1091
    new-instance v1, Lc/c/x;

    invoke-direct {v1, v0}, Lc/c/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1083
    :cond_0
    return-object v2
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1267
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1269
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addRoles([Ljava/lang/String;)V

    .line 1272
    return-void
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getDefaultSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    .line 1100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getEffectiveSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    .line 1108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Lc/c/h;
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1117
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1118
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lc/c/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1127
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1128
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v2

    .line 1130
    if-eqz v2, :cond_1

    .line 1132
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1133
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lc/c/i;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :cond_1
    return-object v1
.end method

.method public getJspConfigDescriptor()Lc/c/b/a;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Lc/c/b/a;

    return-object v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Lc/c/p;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 813
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 814
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v2, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-object v0

    .line 816
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    .line 817
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    new-instance v0, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServletRegistration(Ljava/lang/String;)Lc/c/aa;
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1144
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 1145
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lc/c/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1154
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1155
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    .line 1157
    if-eqz v2, :cond_1

    .line 1159
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1160
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lc/c/ab;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    :cond_1
    return-object v1
.end method

.method public getSessionCookieConfig()Lc/c/al;
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Lc/c/al;

    move-result-object v0

    .line 1174
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1041
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1042
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1044
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setJspConfigDescriptor(Lc/c/b/a;)V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object p1, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Lc/c/b/a;

    .line 1259
    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1183
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1187
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_2

    .line 1188
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->setSessionTrackingModes(Ljava/util/Set;)V

    .line 1189
    :cond_2
    return-void
.end method

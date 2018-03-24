.class public Lorg/eclipse/jetty/servlet/FilterHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "FilterHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/b;

.field private transient _filter:Lc/c/e;

.field private transient _registration:Lc/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lc/c/e;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 83
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Lc/c/e;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 74
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 66
    return-void
.end method


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    check-cast p1, Lc/c/e;

    .line 153
    invoke-interface {p1}, Lc/c/e;->destroy()V

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyFilter(Lc/c/e;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V

    .line 93
    const-class v0, Lc/c/e;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a javax.servlet.Filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->stop()V

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    if-nez v0, :cond_1

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Lc/c/s;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createFilter(Ljava/lang/Class;)Lc/c/e;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;
    :try_end_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/servlet/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/b;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/b;

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/b;

    invoke-interface {v0, v1}, Lc/c/e;->init(Lc/c/g;)V

    .line 120
    return-void

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 109
    invoke-virtual {v1}, Lc/c/x;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 110
    instance-of v2, v0, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_2

    .line 111
    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 112
    :cond_2
    instance-of v2, v0, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_3

    .line 113
    check-cast v0, Ljava/lang/IllegalAccessException;

    throw v0

    .line 114
    :cond_3
    throw v1
.end method

.method public doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    if-nez v0, :cond_1

    .line 139
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    .line 141
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/b;

    .line 142
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStop()V

    .line 143
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFilter()Lc/c/e;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    return-object v0
.end method

.method public getRegistration()Lc/c/i;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Lc/c/i;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Lc/c/i;

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Lc/c/i;

    return-object v0
.end method

.method public declared-synchronized setFilter(Lc/c/e;)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Lc/c/e;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

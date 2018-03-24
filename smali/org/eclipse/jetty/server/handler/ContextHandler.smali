.class public Lorg/eclipse/jetty/server/handler/ContextHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Server$Graceful;
.implements Lorg/eclipse/jetty/util/Attributes;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.eclipse.jetty.server.context.ManagedAttributes"

.field private static final __AVAILABLE:I = 0x1

.field private static final __SHUTDOWN:I = 0x2

.field private static final __STOPPED:I = 0x0

.field private static final __UNAVAILABLE:I = 0x3

.field private static final __context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation
.end field

.field private _aliases:Z

.field private _allowNullPathInfo:Z

.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private volatile _availability:I

.field private _available:Z

.field private _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _compactPath:Z

.field private _connectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextAttributeListeners:Ljava/lang/Object;

.field private final _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contextListeners:Ljava/lang/Object;

.field private _contextPath:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

.field private _eventListeners:[Ljava/util/EventListener;

.field private final _initParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _localeEncodingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _managedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _maxFormContentSize:I

.field private _maxFormKeys:I

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _protectedTargets:[Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field protected _scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _shutdown:Z

.field private _vhosts:[Ljava/lang/String;

.field private _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 105
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 131
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 143
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 144
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 169
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 170
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 171
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 173
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 197
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 207
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 208
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v0, :cond_1

    .line 209
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 131
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 143
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 144
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 183
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 184
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 185
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 187
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1661
    if-nez p1, :cond_1

    .line 1662
    const/4 p1, 0x0

    .line 1667
    :cond_0
    :goto_0
    return-object p1

    .line 1664
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    return-void
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    const-class v1, Ljava/util/EventListener;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 595
    return-void
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    .line 1525
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    return-void
.end method

.method public addVirtualHosts([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    move v1, v2

    .line 315
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 317
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 320
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 323
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public callContextDestroyed(Lc/c/w;Lc/c/v;)V
    .locals 0

    .prologue
    .line 781
    invoke-interface {p1, p2}, Lc/c/w;->contextDestroyed(Lc/c/v;)V

    .line 782
    return-void
.end method

.method public callContextInitialized(Lc/c/w;Lc/c/v;)V
    .locals 0

    .prologue
    .line 775
    invoke-interface {p1, p2}, Lc/c/w;->contextInitialized(Lc/c/v;)V

    .line 776
    return-void
.end method

.method public checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/e;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 848
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v0

    .line 850
    iget v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    packed-switch v2, :pswitch_data_0

    .line 860
    :pswitch_0
    sget-object v2, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {v2, v0}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    .line 919
    :cond_0
    :goto_0
    return v1

    :pswitch_1
    move v1, v6

    .line 854
    goto :goto_0

    .line 856
    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 857
    const/16 v0, 0x1f7

    invoke-interface {p3, v0}, Lc/c/c/e;->sendError(I)V

    move v1, v6

    .line 858
    goto :goto_0

    .line 865
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 867
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v7, v6

    move v2, v6

    .line 872
    :goto_1
    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 874
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 875
    if-eqz v0, :cond_a

    .line 876
    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 880
    const/4 v2, 0x2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 872
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v0

    goto :goto_1

    .line 883
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 885
    :cond_3
    if-nez v2, :cond_4

    move v1, v6

    .line 886
    goto :goto_0

    .line 890
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 892
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v6

    .line 894
    goto :goto_0

    .line 898
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 901
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v6

    .line 902
    goto/16 :goto_0

    .line 903
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_8

    move v1, v6

    .line 904
    goto/16 :goto_0

    .line 907
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 910
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 911
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    :goto_3
    move v1, v6

    .line 915
    goto/16 :goto_0

    .line 914
    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_2

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 3

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 1232
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1235
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1238
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1044
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v3

    .line 1045
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->takeNewContext()Z

    move-result v4

    .line 1048
    if-eqz v4, :cond_1

    .line 1051
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    move v2, v1

    .line 1054
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1055
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->addEventListener(Ljava/util/EventListener;)V

    .line 1054
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .line 1061
    new-instance v5, Lc/c/af;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v5, v0, p3}, Lc/c/af;-><init>(Lc/c/s;Lc/c/ac;)V

    .line 1062
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1063
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/ag;

    invoke-interface {v0, v5}, Lc/c/ag;->requestInitialized(Lc/c/af;)V

    .line 1062
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1067
    :cond_1
    sget-object v0, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {v0, v3}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1082
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1083
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 1084
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lc/c/c/e;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    if-eqz v4, :cond_a

    .line 1091
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1093
    new-instance v2, Lc/c/af;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v2, v0, p3}, Lc/c/af;-><init>(Lc/c/s;Lc/c/ac;)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_7

    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/ag;

    invoke-interface {v0, v2}, Lc/c/ag;->requestDestroyed(Lc/c/af;)V

    move v0, v1

    goto :goto_2

    .line 1072
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :cond_3
    :goto_3
    if-eqz v4, :cond_a

    .line 1091
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 1093
    new-instance v2, Lc/c/af;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v2, v0, p3}, Lc/c/af;-><init>(Lc/c/s;Lc/c/ac;)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/ag;

    invoke-interface {v0, v2}, Lc/c/ag;->requestDestroyed(Lc/c/af;)V

    move v0, v1

    goto :goto_4

    .line 1074
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_5

    .line 1075
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1089
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_9

    .line 1091
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 1093
    new-instance v3, Lc/c/af;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v3, v0, p3}, Lc/c/af;-><init>(Lc/c/s;Lc/c/ac;)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_8

    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/ag;

    invoke-interface {v0, v3}, Lc/c/ag;->requestDestroyed(Lc/c/af;)V

    move v0, v2

    goto :goto_5

    .line 1076
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1098
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 1100
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_a

    .line 1101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v0, v1

    goto :goto_6

    .line 1098
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 1100
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_a

    .line 1101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v0, v1

    goto :goto_7

    .line 1098
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1100
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_9

    .line 1101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v0, v2

    goto :goto_8

    :cond_9
    throw v1

    .line 1105
    :cond_a
    return-void
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 15

    .prologue
    .line 930
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "scope {}|{}|{} @ {}"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p0, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    :cond_0
    const/4 v6, 0x0

    .line 935
    const/4 v5, 0x0

    .line 936
    const/4 v4, 0x0

    .line 937
    const/4 v8, 0x0

    .line 938
    const/4 v7, 0x0

    .line 941
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v9

    .line 943
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v10

    .line 946
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v10, v3, :cond_13

    .line 949
    sget-object v3, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {v3, v9}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lc/c/d;->d:Lc/c/d;

    invoke-virtual {v3, v9}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 951
    :cond_1
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    if-eqz v3, :cond_2

    .line 952
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 953
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/e;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1034
    :cond_3
    :goto_0
    return-void

    .line 956
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v3, v11, :cond_a

    .line 958
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v11, 0x1

    if-le v3, v11, :cond_5

    .line 959
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object/from16 v3, p1

    .line 975
    :goto_1
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v11, :cond_6

    .line 977
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 978
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 979
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v7, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 985
    :cond_6
    :goto_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    .line 990
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 991
    sget-object v11, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v12, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v11, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 992
    sget-object v11, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {v11, v9}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 994
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    .line 995
    const-string v9, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 998
    :goto_3
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 1002
    :cond_7
    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1003
    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "context={}|{}|{} @ {}"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object p0, v12, v13

    invoke-interface {v9, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1007
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :goto_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v10, v3, :cond_3

    .line 1021
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_9

    .line 1023
    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1027
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1028
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1029
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 962
    :cond_a
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_b

    .line 964
    const-string v3, "/"

    .line 965
    const-string p1, "/"

    goto/16 :goto_1

    .line 969
    :cond_b
    const-string v3, "/"

    .line 970
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 997
    :cond_c
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1018
    :catchall_0
    move-exception v3

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v10, v9, :cond_e

    .line 1021
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_d

    .line 1023
    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1027
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1028
    sget-object v7, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1029
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_e
    throw v3

    .line 1008
    :cond_f
    :try_start_2
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v9, :cond_10

    .line 1009
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v9, v3, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_4

    .line 1010
    :cond_10
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v9, :cond_11

    .line 1011
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v9, v3, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto/16 :goto_4

    .line 1013
    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_12
    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_13
    move-object/from16 v3, p1

    goto/16 :goto_2
.end method

.method protected doStart()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null contextPath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 696
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    .line 698
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 699
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    .line 700
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 703
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v0, :cond_1

    .line 704
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 706
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 707
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 710
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->startContext()V

    .line 712
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 714
    :try_start_4
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_2
    iput v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 715
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 719
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 728
    :cond_2
    return-void

    .line 688
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 714
    :cond_4
    :try_start_5
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x3

    goto :goto_2

    .line 715
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit p0

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 719
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_6

    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    throw v0

    .line 719
    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v2, v1

    move-object v3, v1

    goto :goto_1
.end method

.method protected doStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 791
    iput v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 796
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 797
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 801
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_5

    .line 803
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 804
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 805
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 808
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 811
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 813
    new-instance v5, Lc/c/v;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v5, v1}, Lc/c/v;-><init>(Lc/c/s;)V

    .line 814
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_0

    .line 816
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v1, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/w;

    invoke-interface {v1, v5}, Lc/c/w;->contextDestroyed(Lc/c/v;)V

    move v1, v4

    goto :goto_1

    .line 820
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->stop()V

    .line 823
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 824
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 826
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 827
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 832
    :catchall_0
    move-exception v1

    :goto_3
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "stopped {}"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 835
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    throw v1

    .line 832
    :cond_3
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "stopped {}"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-interface {v1, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 835
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_4

    .line 836
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 839
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 840
    return-void

    .line 832
    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :cond_5
    move-object v2, v3

    goto :goto_0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 219
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/jetty/server/handler/c;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/server/handler/c;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 221
    return-void
.end method

.method public getAliasChecks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAllowNullPathInfo()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1302
    const/4 v0, 0x0

    .line 1303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v0, v0, Ljava/net/URLClassLoader;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 482
    :goto_0
    return-object v0

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Ljava/net/URLClassLoader;

    .line 460
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v3

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    const/4 v0, 0x0

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    .line 466
    :try_start_0
    aget-object v2, v3, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 471
    sget-char v5, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :catch_0
    move-exception v2

    .line 477
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 480
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    .line 481
    goto :goto_0

    .line 482
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    return-object v0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1532
    const/4 v0, 0x0

    .line 1534
    :goto_0
    return-object v0

    .line 1533
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1549
    const/4 v0, 0x0

    .line 1553
    :cond_0
    :goto_0
    return-object v0

    .line 1550
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1551
    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public getMaxFormContentSize()I
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    return v0
.end method

.method public getMaxFormKeys()I
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    return v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1373
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getProtectedTargets()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1179
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1180
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return-object v0

    .line 1182
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1183
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1561
    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1599
    :goto_0
    return-object v0

    .line 1569
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1570
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 1573
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1575
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1576
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Aliased resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1579
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1581
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;

    .line 1582
    invoke-interface {v0, v3, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;->check(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1584
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1585
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Aliased resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " approved by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v0, v2

    .line 1586
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 1589
    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    .line 1592
    goto/16 :goto_0

    .line 1594
    :catch_0
    move-exception v0

    .line 1596
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 1599
    goto/16 :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    .line 1314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1633
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1636
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1638
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1641
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1642
    if-eqz v3, :cond_0

    .line 1644
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1645
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1651
    :catch_0
    move-exception v0

    .line 1653
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1655
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1113
    .line 1118
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1122
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_2

    .line 1124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1125
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 1126
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 1129
    :goto_0
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1133
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1134
    if-eqz v3, :cond_0

    .line 1136
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1139
    :cond_0
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_1
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1134
    if-eqz v3, :cond_1

    .line 1136
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    throw v0

    .line 1133
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 645
    monitor-enter p0

    .line 647
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCompactPath()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    return v0
.end method

.method public isProtectedTarget(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1149
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1161
    :cond_0
    return v0

    .line 1152
    :cond_1
    :goto_0
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1153
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1157
    :goto_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1159
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 616
    monitor-enter p0

    .line 618
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1511
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1512
    const/4 v0, 0x0

    .line 1517
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 1515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1517
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 1623
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 1608
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1195
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public removeVirtualHosts([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    .line 349
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 351
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public restrictEventListener(Ljava/util/EventListener;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public setAliases(Z)V
    .locals 0

    .prologue
    .line 1362
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 1363
    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    .line 246
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1207
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1208
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 3

    .prologue
    .line 1218
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1219
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 1220
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 1221
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1224
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1226
    :cond_0
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    .line 659
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 660
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 661
    monitor-exit p0

    return-void

    .line 660
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 1325
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    .line 1264
    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0

    .prologue
    .line 1476
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 1477
    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 406
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ends with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 1277
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 1280
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v2, :cond_2

    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 1281
    aget-object v0, v2, v1

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 1280
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1283
    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    .line 1293
    return-void
.end method

.method public setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 6

    .prologue
    .line 1421
    if-eqz p1, :cond_0

    .line 1422
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1423
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1424
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "errorHandler"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1425
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 1426
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 559
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 560
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 561
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 563
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    .line 565
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 567
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    aget-object v1, v1, v0

    .line 569
    instance-of v2, v1, Lc/c/w;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 572
    :cond_0
    instance-of v2, v1, Lc/c/u;

    if-eqz v2, :cond_1

    .line 573
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 575
    :cond_1
    instance-of v2, v1, Lc/c/ag;

    if-eqz v2, :cond_2

    .line 576
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 578
    :cond_2
    instance-of v2, v1, Lc/c/ae;

    if-eqz v2, :cond_3

    .line 579
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 565
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_4
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLogger(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 674
    return-void
.end method

.method public setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1253
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1254
    return-void
.end method

.method public setMaxFormContentSize(I)V
    .locals 0

    .prologue
    .line 1441
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 1442
    return-void
.end method

.method public setMaxFormKeys(I)V
    .locals 0

    .prologue
    .line 1457
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 1458
    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1384
    return-void
.end method

.method public setProtectedTargets([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1167
    if-nez p1, :cond_0

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    .line 1175
    :goto_0
    return-void

    .line 1173
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    .line 1174
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1336
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    return-void

    .line 1338
    :catch_0
    move-exception v0

    .line 1340
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 256
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "error"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 258
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    .line 259
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v10, "error"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method

.method public setShutdown(Z)V
    .locals 1

    .prologue
    .line 632
    monitor-enter p0

    .line 634
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 635
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 636
    monitor-exit p0

    return-void

    .line 635
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    if-nez p1, :cond_1

    .line 280
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 1392
    return-void
.end method

.method protected startContext()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    const-string v2, "org.eclipse.jetty.server.context.ManagedAttributes"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    if-eqz v0, :cond_1

    .line 742
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    .line 743
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 744
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 745
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 748
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 751
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 752
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 756
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 758
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->start()V

    .line 762
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 764
    new-instance v2, Lc/c/v;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v2, v0}, Lc/c/v;-><init>(Lc/c/s;)V

    .line 765
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 767
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/w;

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->callContextInitialized(Lc/c/w;Lc/c/v;)V

    .line 765
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 770
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x2c

    const/4 v1, 0x0

    .line 1483
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v2

    .line 1485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 1488
    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1491
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1493
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1494
    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 1495
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1501
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 1502
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

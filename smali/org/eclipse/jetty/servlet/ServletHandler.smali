.class public Lorg/eclipse/jetty/servlet/ServletHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ServletHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"


# instance fields
.field protected final _chainCache:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lc/c/f;",
            ">;"
        }
    .end annotation
.end field

.field protected final _chainLRU:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

.field private final _filterNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _filterPathMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/FilterMapping;",
            ">;"
        }
    .end annotation
.end field

.field private _filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _matchAfterIndex:I

.field private _matchBeforeIndex:I

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

.field private final _servletNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/ServletHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _servletPathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 126
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 99
    new-array v0, v2, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 101
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 102
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 103
    iput-boolean v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 104
    const/16 v0, 0x200

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 105
    iput-boolean v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 108
    new-array v0, v2, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    .line 118
    new-array v0, v4, [Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    .line 119
    new-array v0, v4, [Ljava/util/Queue;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    .line 127
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/f;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 565
    if-nez p2, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 566
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Lc/c/d;)I

    move-result v6

    .line 568
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v6

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/f;

    .line 571
    if-eqz v0, :cond_2

    move-object v5, v0

    .line 646
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v1, p2

    .line 565
    goto :goto_0

    .line 578
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v0, :cond_3

    move v3, v4

    move-object v2, v5

    .line 580
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 582
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 583
    invoke-virtual {v0, p2, v6}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 584
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, v5

    .line 589
    :cond_4
    if-eqz p3, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 592
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 594
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move v3, v4

    .line 595
    :goto_4
    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 597
    invoke-static {v7, v3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 598
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 599
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_4

    .line 602
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 603
    :goto_6
    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 605
    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 606
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 607
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 603
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 612
    :cond_7
    if-eqz v2, :cond_0

    .line 617
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_b

    .line 619
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    .line 620
    new-instance v5, Lorg/eclipse/jetty/servlet/e;

    invoke-direct {v5, p0, v2, p3}, Lorg/eclipse/jetty/servlet/e;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 622
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v2, v0, v6

    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v3, v0, v6

    .line 626
    :goto_7
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lez v0, :cond_9

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    iget v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lt v0, v4, :cond_9

    .line 631
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    if-nez v0, :cond_a

    .line 634
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 640
    :cond_9
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 637
    :cond_a
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 643
    :cond_b
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 644
    new-instance v5, Lorg/eclipse/jetty/servlet/f;

    invoke-direct {v5, p0, p1, v2, p3}, Lorg/eclipse/jetty/servlet/f;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto :goto_5

    :cond_d
    move-object v0, v2

    goto/16 :goto_3
.end method

.method private invalidateChainsCache()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 655
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 656
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 658
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 661
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 663
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 666
    :cond_0
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 2

    .prologue
    .line 1050
    if-eqz p1, :cond_0

    .line 1051
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 2

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1039
    :cond_0
    if-eqz p2, :cond_1

    .line 1041
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1042
    :cond_1
    return-void
.end method

.method public addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1060
    if-eqz p1, :cond_1

    .line 1062
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1063
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1064
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_3

    .line 1066
    :cond_0
    invoke-virtual {p0, p1, v3, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1067
    if-eqz v0, :cond_1

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v0, v1, :cond_1

    .line 1068
    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 1095
    :cond_1
    :goto_1
    return-void

    .line 1062
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v0

    goto :goto_0

    .line 1075
    :cond_3
    if-eqz v0, :cond_4

    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v2, v0, :cond_4

    .line 1077
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1078
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_1

    .line 1084
    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez v0, :cond_5

    .line 1085
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1

    .line 1088
    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1089
    iget v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 1090
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/e;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 956
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 957
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 958
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 960
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 886
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 887
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 888
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 890
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 977
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 902
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 907
    return-object v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 988
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v0

    .line 994
    :goto_0
    :try_start_0
    const-class v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v0}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 996
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 997
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 1001
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1012
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1005
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1006
    throw v0

    .line 1008
    :catch_1
    move-exception v0

    .line 1010
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1011
    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lc/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v0

    .line 924
    :goto_0
    :try_start_0
    const-class v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v0}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 926
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 927
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 931
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 943
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 936
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 937
    throw v0

    .line 939
    :catch_1
    move-exception v0

    .line 941
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 942
    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 843
    return-void
.end method

.method public addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 852
    return-void
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc/c/q;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .prologue
    .line 798
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 800
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const-class v2, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 801
    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 803
    return-object v1
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 789
    return-object v0
.end method

.method public addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    move-object v1, v0

    .line 819
    :goto_0
    :try_start_0
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1, p1, v0}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 821
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 822
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 828
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 829
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 830
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 831
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method destroyFilter(Lc/c/e;)V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyFilter(Lc/c/e;)V

    .line 1586
    :cond_0
    return-void
.end method

.method destroyServlet(Lc/c/q;)V
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyServlet(Lc/c/q;)V

    .line 1579
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 410
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v5

    .line 412
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 416
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    if-eqz v1, :cond_19

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v3, v3

    if-lez v3, :cond_19

    .line 419
    invoke-direct {p0, p2, p1, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/f;

    move-result-object v2

    move-object v3, v2

    .line 432
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "chain={}"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-interface {v2, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    if-nez v1, :cond_4

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    if-nez v2, :cond_2

    .line 439
    invoke-virtual {p0, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_1
    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 560
    :cond_0
    :goto_2
    return-void

    .line 423
    :cond_1
    if-eqz v1, :cond_19

    .line 425
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v3, v3

    if-lez v3, :cond_19

    .line 427
    invoke-direct {p0, p2, v2, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Lc/c/f;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 441
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 460
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 558
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    :cond_3
    throw v2

    .line 447
    :cond_4
    :try_start_3
    instance-of v2, p3, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    if-eqz v2, :cond_18

    .line 448
    move-object v0, p3

    check-cast v0, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;->getRequest()Lc/c/ac;

    move-result-object v2

    move-object v4, v2

    .line 450
    :goto_3
    instance-of v2, p4, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    if-eqz v2, :cond_17

    .line 451
    move-object v0, p4

    check-cast v0, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;->getResponse()Lc/c/ai;

    move-result-object v2

    .line 454
    :goto_4
    if-eqz v3, :cond_5

    .line 455
    invoke-interface {v3, v4, v2}, Lc/c/f;->a(Lc/c/ac;Lc/c/ai;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 464
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 457
    :cond_5
    :try_start_5
    invoke-virtual {v1, p2, v4, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Lc/c/ac;Lc/c/ai;)V
    :try_end_5
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 468
    :catch_2
    move-exception v2

    :try_start_6
    throw v2

    .line 472
    :catch_3
    move-exception v2

    .line 474
    sget-object v3, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {v3, v5}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lc/c/d;->d:Lc/c/d;

    invoke-virtual {v3, v5}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 476
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_6

    .line 477
    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 478
    :cond_6
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_7

    .line 479
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 480
    :cond_7
    instance-of v3, v2, Lc/c/x;

    if-eqz v3, :cond_8

    .line 481
    check-cast v2, Lc/c/x;

    throw v2

    .line 486
    :cond_8
    instance-of v3, v2, Lc/c/ao;

    if-eqz v3, :cond_a

    .line 488
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 499
    :cond_9
    :goto_5
    instance-of v3, v2, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v3, :cond_b

    .line 500
    check-cast v2, Lorg/eclipse/jetty/http/HttpException;

    throw v2

    .line 490
    :cond_a
    instance-of v3, v2, Lc/c/x;

    if-eqz v3, :cond_9

    .line 492
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 493
    move-object v0, v2

    check-cast v0, Lc/c/x;

    move-object v3, v0

    invoke-virtual {v3}, Lc/c/x;->a()Ljava/lang/Throwable;

    move-result-object v3

    .line 494
    if-eqz v3, :cond_9

    move-object v2, v3

    .line 495
    goto :goto_5

    .line 501
    :cond_b
    instance-of v3, v2, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-eqz v3, :cond_c

    .line 502
    check-cast v2, Lorg/eclipse/jetty/io/RuntimeIOException;

    throw v2

    .line 503
    :cond_c
    instance-of v3, v2, Lorg/eclipse/jetty/io/EofException;

    if-eqz v3, :cond_d

    .line 504
    check-cast v2, Lorg/eclipse/jetty/io/EofException;

    throw v2

    .line 506
    :cond_d
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 508
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :goto_6
    invoke-interface {p4}, Lc/c/c/e;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_13

    .line 522
    const-string v3, "javax.servlet.error.exception_type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v3, "javax.servlet.error.exception"

    invoke-interface {p3, v3, v2}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    instance-of v3, v2, Lc/c/ao;

    if-eqz v3, :cond_12

    .line 526
    move-object v0, v2

    check-cast v0, Lc/c/ao;

    move-object v3, v0

    .line 527
    invoke-virtual {v3}, Lc/c/ao;->b()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 528
    const/16 v3, 0x194

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 557
    :goto_7
    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_2

    .line 511
    :cond_e
    :try_start_7
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_f

    instance-of v3, v2, Lc/c/ao;

    if-eqz v3, :cond_10

    .line 513
    :cond_f
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 517
    :cond_10
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 530
    :cond_11
    const/16 v3, 0x1f7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_7

    .line 533
    :cond_12
    const/16 v3, 0x1f4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_7

    .line 536
    :cond_13
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response already committed for handling "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 538
    :catch_4
    move-exception v2

    .line 540
    sget-object v3, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {v3, v5}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lc/c/d;->d:Lc/c/d;

    invoke-virtual {v3, v5}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 541
    throw v2

    .line 542
    :cond_14
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_15
    invoke-interface {p4}, Lc/c/c/e;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_16

    .line 548
    const-string v3, "javax.servlet.error.exception_type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    const-string v3, "javax.servlet.error.exception"

    invoke-interface {p3, v3, v2}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    const/16 v3, 0x1f4

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 557
    :goto_8
    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_2

    .line 553
    :cond_16
    :try_start_8
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Response already committed for handling "

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :cond_17
    move-object v2, p4

    goto/16 :goto_4

    :cond_18
    move-object v4, p3

    goto/16 :goto_3

    :cond_19
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v6

    .line 339
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_b

    .line 345
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 347
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v2

    .line 349
    :goto_0
    invoke-static {v1, p1}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v7, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {v7, v6}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 353
    const-string v7, "javax.servlet.include.servlet_path"

    invoke-virtual {p2, v7, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    const-string v2, "javax.servlet.include.path_info"

    invoke-virtual {p2, v2, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    :goto_1
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "servlet {}|{}|{} -> {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    invoke-interface {v1, v2, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v3

    .line 376
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 379
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_2
    if-eqz v3, :cond_1

    .line 392
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 394
    :cond_1
    sget-object v0, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {v0, v6}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 400
    :cond_2
    return-void

    .line 348
    :cond_3
    invoke-static {v1, p1}, Lorg/eclipse/jetty/http/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    goto :goto_1

    .line 381
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 391
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    .line 392
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 394
    :cond_7
    sget-object v1, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {v1, v6}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 396
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_8
    throw v0

    .line 383
    :cond_9
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_2

    .line 386
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_b
    move-object v0, v3

    goto/16 :goto_1
.end method

.method protected declared-synchronized doStart()V
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const-class v1, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/SecurityHandler;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 173
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x4

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v1, 0x8

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v1, 0x10

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v1, 0x4

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v1, 0x8

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v1, 0x10

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v0, v1

    .line 188
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 190
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    instance-of v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v0, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_3
    monitor-exit p0

    return-void

    .line 161
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStop()V
    .locals 4

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 215
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1592
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 1593
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 1600
    return-void
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .prologue
    .line 1559
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public getServletContext()Lc/c/s;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v1, :cond_2

    .line 294
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v6, v5

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 296
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v7

    .line 297
    if-eqz v7, :cond_1

    .line 299
    array-length v8, v7

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v9, v7, v4

    .line 301
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, v1

    .line 299
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 307
    :cond_2
    return-object v0
.end method

.method public getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 713
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 716
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    move v0, v1

    .line 718
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 719
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->start()V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 726
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v2, v1

    .line 727
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 731
    :try_start_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 733
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 734
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 736
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No forced path servlet for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 727
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 739
    :cond_2
    aget-object v4, v0, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 742
    :cond_3
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 744
    :catch_0
    move-exception v1

    .line 746
    sget-object v4, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 750
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 752
    :cond_5
    return-void
.end method

.method protected insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1162
    if-gez p2, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FilterMapping insertion pos < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1166
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_3

    .line 1168
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    aput-object p1, v0, v3

    .line 1195
    :cond_2
    :goto_0
    return-object v0

    .line 1170
    :cond_3
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1172
    if-eqz p3, :cond_4

    .line 1175
    invoke-static {v1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1178
    aput-object p1, v0, p2

    .line 1181
    add-int/lit8 v2, p2, 0x1

    array-length v3, v1

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1187
    :cond_4
    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1189
    add-int/lit8 v2, p2, 0x1

    aput-object p1, v0, v2

    .line 1192
    array-length v2, v1

    add-int/lit8 v3, p2, 0x1

    if-le v2, v3, :cond_2

    .line 1193
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p2, 0x2

    array-length v4, v1

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v1

    .line 676
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    move v0, v1

    .line 677
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 679
    aget-object v3, v2, v0

    .line 680
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 683
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method public newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 769
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method protected notFound(Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 1322
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    :cond_0
    return-void
.end method

.method public prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1104
    if-eqz p1, :cond_1

    .line 1106
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v0

    .line 1108
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    array-length v1, v1

    if-nez v1, :cond_2

    .line 1111
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1112
    if-eqz v0, :cond_1

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v1, v0, :cond_1

    .line 1113
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1149
    :cond_1
    :goto_0
    return-void

    .line 1117
    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v1, v0, :cond_3

    .line 1123
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    if-gez v0, :cond_4

    .line 1126
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1140
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1141
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1145
    :goto_1
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-ltz v0, :cond_1

    .line 1146
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_0

    .line 1132
    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1133
    iget v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1134
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1
.end method

.method public setFilterChainsCached(Z)V
    .locals 0

    .prologue
    .line 1333
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 1334
    return-void
.end method

.method public setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 6

    .prologue
    .line 1342
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1344
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1345
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1346
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1347
    return-void
.end method

.method public declared-synchronized setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 6

    .prologue
    .line 1352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1354
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1355
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1356
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    monitor-exit p0

    return-void

    .line 1352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 0

    .prologue
    .line 1571
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 1572
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 135
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 144
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 146
    if-eqz p1, :cond_1

    if-eq v6, p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v10, "filter"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v10, "filterMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v10, "servlet"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v10, "servletMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 153
    :cond_1
    return-void
.end method

.method public setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 6

    .prologue
    .line 1365
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1367
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 1368
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1369
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1370
    return-void
.end method

.method public setServletSecurity(Lc/c/ab;Lc/c/ak;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/ab;",
            "Lc/c/ak;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setServletSecurity(Lc/c/ab;Lc/c/ak;)Ljava/util/Set;

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 6

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1380
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1381
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1382
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    monitor-exit p0

    return-void

    .line 1378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0

    .prologue
    .line 692
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 693
    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-nez v0, :cond_2

    .line 1232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1233
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 1261
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 1263
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 1288
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_c

    .line 1290
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    array-length v0, v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_c

    .line 1292
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    if-eqz v0, :cond_11

    .line 1293
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    move v0, v1

    goto :goto_1

    .line 1237
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1238
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    move v1, v2

    .line 1239
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1241
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1242
    if-nez v0, :cond_3

    .line 1243
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No filter named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1244
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1245
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1250
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 1251
    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1253
    aget-object v4, v3, v0

    if-eqz v4, :cond_5

    .line 1254
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    aget-object v5, v3, v0

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1251
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1239
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1267
    :cond_7
    new-instance v4, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v4}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    move v3, v2

    .line 1270
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v0, v0

    if-ge v3, v0, :cond_b

    .line 1272
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1273
    if-nez v0, :cond_8

    .line 1274
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such servlet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1277
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 1278
    :goto_5
    array-length v6, v5

    if-ge v1, v6, :cond_a

    .line 1279
    aget-object v6, v5, v1

    if-eqz v6, :cond_9

    .line 1280
    aget-object v6, v5, v1

    invoke-virtual {v4, v6, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1270
    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1284
    :cond_b
    iput-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    goto/16 :goto_0

    .line 1297
    :cond_c
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1299
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filterNameMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pathFilters="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1301
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "servletFilterMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "servletPathMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "servletNameMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    :cond_d
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1309
    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1314
    :cond_10
    monitor-exit p0

    return-void

    .line 1311
    :catch_0
    move-exception v0

    .line 1313
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1203
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1204
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_0

    move v1, v0

    .line 1206
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1208
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v4, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1215
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_1

    .line 1218
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1220
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1224
    :cond_1
    monitor-exit p0

    return-void

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

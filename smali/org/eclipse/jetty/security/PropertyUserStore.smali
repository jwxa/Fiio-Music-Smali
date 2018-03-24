.class public Lorg/eclipse/jetty/security/PropertyUserStore;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "PropertyUserStore.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _config:Ljava/lang/String;

.field private _configResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _firstLoad:Z

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private final _knownUserIdentities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final _knownUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;",
            ">;"
        }
    .end annotation
.end field

.field private _refreshInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    .line 70
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/security/PropertyUserStore;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/security/PropertyUserStore;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->loadUsers()V

    return-void
.end method

.method private loadUsers()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Load "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 135
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 137
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 139
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v0, 0x0

    .line 144
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 145
    if-lez v3, :cond_9

    .line 147
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    .line 151
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 153
    sget-object v0, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    .line 154
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 156
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v3}, Lorg/eclipse/jetty/util/security/Credential;->getCredential(Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Credential;

    move-result-object v3

    .line 161
    new-instance v7, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    invoke-direct {v7, v6, v3}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 162
    new-instance v8, Ljavax/security/auth/Subject;

    invoke-direct {v8}, Ljavax/security/auth/Subject;-><init>()V

    .line 163
    invoke-virtual {v8}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v8}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    if-eqz v1, :cond_5

    .line 168
    array-length v9, v0

    move v1, v2

    :goto_3
    if-ge v1, v9, :cond_5

    aget-object v10, v0, v1

    .line 170
    invoke-virtual {v8}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v11

    new-instance v12, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;

    invoke-direct {v12, v10}, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    :cond_5
    invoke-virtual {v8}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 176
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    iget-object v9, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v9, v8, v7, v0}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-direct {p0, v6, v3, v0}, Lorg/eclipse/jetty/security/PropertyUserStore;->notifyUpdate(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 181
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    if-nez v0, :cond_8

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 194
    iget-object v5, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/security/PropertyUserStore;->notifyRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 204
    :cond_8
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iput-boolean v2, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    goto/16 :goto_0

    :cond_9
    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_2
.end method

.method private notifyRemove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method private notifyUpdate(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;->update(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 225
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 227
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getRefreshInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    new-instance v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getRefreshInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setScanInterval(I)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/Scanner;->setScanDirs(Ljava/util/List;)V

    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v1, Lorg/eclipse/jetty/security/a;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/security/a;-><init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 256
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v1, Lorg/eclipse/jetty/security/b;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/security/b;-><init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/Scanner;->setReportExistingFilesOnStartup(Z)V

    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setRecursive(Z)V

    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->start()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->loadUsers()V

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 299
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    return v0
.end method

.method public getUserIdentity(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/UserIdentity;

    return-object v0
.end method

.method public registerUserListener(Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    .line 115
    return-void
.end method

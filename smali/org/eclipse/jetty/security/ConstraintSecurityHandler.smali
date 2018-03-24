.class public Lorg/eclipse/jetty/security/ConstraintSecurityHandler;
.super Lorg/eclipse/jetty/security/SecurityHandler;
.source "ConstraintSecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/ConstraintAware;


# static fields
.field private static final OMISSION_SUFFIX:Ljava/lang/String; = ".omission"


# instance fields
.field private final _constraintMap:Lorg/eclipse/jetty/http/PathMap;

.field private final _constraintMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final _roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/eclipse/jetty/security/SecurityHandler;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    .line 63
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return-void
.end method

.method public static createConstraint()Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/security/Constraint;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/security/Constraint;-><init>()V

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;Lc/c/k;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p1}, Lc/c/k;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/c/k;->a()Lc/c/a/b;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/k;->b()Lc/c/a/c;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;[Ljava/lang/String;Lc/c/a/b;Lc/c/a/c;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;Z[Ljava/lang/String;I)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 106
    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 109
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 111
    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;[Ljava/lang/String;Lc/c/a/b;Lc/c/a/c;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 137
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v1

    .line 139
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_3

    .line 141
    :cond_0
    sget-object v2, Lc/c/a/b;->b:Lc/c/a/b;

    invoke-virtual {p2, v2}, Lc/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Deny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 163
    :goto_0
    sget-object v2, Lc/c/a/c;->b:Lc/c/a/c;

    invoke-virtual {p3, v2}, Lc/c/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 164
    return-object v1

    .line 150
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Permit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 158
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-RolesAllowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createConstraint(Lorg/eclipse/jetty/util/security/Constraint;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/security/Constraint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createConstraintsWithMappingsForPath(Ljava/lang/String;Ljava/lang/String;Lc/c/ak;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/c/ak;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-static {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Lc/c/k;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 235
    new-instance v2, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 236
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p2}, Lc/c/ak;->d()Ljava/util/Collection;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/l;

    .line 251
    invoke-static {p0, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Lc/c/k;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v5

    .line 252
    new-instance v6, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v6}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 253
    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 254
    invoke-virtual {v6, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Lc/c/l;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 257
    invoke-virtual {v0}, Lc/c/l;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lc/c/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 266
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethodOmissions([Ljava/lang/String;)V

    .line 268
    :cond_2
    return-object v1
.end method

.method public static getConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 180
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 183
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 188
    goto :goto_0
.end method

.method public static removeConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 205
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 209
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 4

    .prologue
    .line 405
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 408
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->addRole(Ljava/lang/String;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 414
    :cond_1
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 423
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 428
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 430
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    return-void
.end method

.method protected checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/16 v5, 0x193

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 685
    if-nez p4, :cond_0

    move v0, v1

    .line 738
    :goto_0
    return v0

    .line 688
    :cond_0
    check-cast p4, Lorg/eclipse/jetty/security/RoleInfo;

    .line 689
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 690
    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_2

    sget-object v3, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 696
    goto :goto_0

    .line 698
    :cond_3
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v3

    .line 699
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v3

    .line 701
    sget-object v4, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v0, v4, :cond_7

    .line 703
    invoke-interface {v3, p2}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 704
    goto :goto_0

    .line 705
    :cond_4
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v0

    if-lez v0, :cond_6

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_5
    invoke-virtual {p3, v2}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 711
    invoke-virtual {p3, v0}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 716
    :goto_1
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    move v0, v2

    .line 717
    goto/16 :goto_0

    .line 714
    :cond_6
    const-string v0, "!Integral"

    invoke-virtual {p3, v5, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_1

    .line 719
    :cond_7
    sget-object v4, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v0, v4, :cond_b

    .line 721
    invoke-interface {v3, p2}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 722
    goto/16 :goto_0

    .line 724
    :cond_8
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v0

    if-lez v0, :cond_a

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_9
    invoke-virtual {p3, v2}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 732
    invoke-virtual {p3, v0}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 737
    :goto_2
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    move v0, v2

    .line 738
    goto/16 :goto_0

    .line 735
    :cond_a
    const-string v0, "!Confidential"

    invoke-virtual {p3, v5, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_2

    .line 742
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dataConstraint value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 769
    if-nez p4, :cond_0

    move v0, v1

    .line 788
    :goto_0
    return v0

    .line 773
    :cond_0
    check-cast p4, Lorg/eclipse/jetty/security/RoleInfo;

    .line 775
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 777
    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 781
    goto :goto_0

    .line 783
    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->getRoles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 785
    const/4 v3, 0x0

    invoke-interface {p5, v0, v3}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 5

    .prologue
    .line 576
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->isForbidden()Z

    move-result v0

    .line 578
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 582
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getDataConstraint()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jetty/security/UserDataConstraint;->get(I)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    .line 583
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 587
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getAuthenticate()Z

    move-result v0

    .line 591
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    .line 592
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->isAnyRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    .line 618
    :cond_1
    return-void

    .line 608
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v1

    .line 609
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 611
    iget-boolean v4, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to use undeclared role: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", known roles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_3
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 449
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V

    .line 453
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 463
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStop()V

    .line 464
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 796
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 804
    return-void
.end method

.method public getConstraintMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method protected isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 753
    if-nez p3, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 757
    :goto_0
    return v0

    :cond_0
    check-cast p3, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-virtual {p3}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return v0
.end method

.method protected prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 638
    if-eqz v0, :cond_4

    .line 640
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/RoleInfo;

    .line 642
    if-nez v1, :cond_6

    .line 645
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 648
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/RoleInfo;

    .line 649
    if-eqz v1, :cond_0

    .line 650
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, ".omission"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".omission"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 662
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 675
    :goto_1
    return-object v0

    .line 665
    :cond_3
    new-instance v1, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {v1}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 666
    sget-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 668
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 669
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 675
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method protected processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 476
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 477
    if-nez v0, :cond_6

    .line 479
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 480
    iget-object v1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 482
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 483
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    :cond_0
    :goto_1
    return-void

    .line 486
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 489
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V

    goto :goto_1

    .line 493
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/RoleInfo;

    .line 495
    if-nez v1, :cond_3

    .line 497
    new-instance v1, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {v1}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 498
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    .line 504
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 510
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    if-nez v3, :cond_0

    .line 514
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 515
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 521
    :cond_4
    if-nez v3, :cond_0

    .line 523
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 528
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method protected processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/RoleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v2

    .line 551
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".omission"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 555
    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".omission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 551
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 329
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    if-nez p2, :cond_2

    .line 360
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 363
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_0

    .line 366
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 367
    const-string v5, "*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 368
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setRoles(Ljava/util/Set;)V

    .line 374
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 378
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_1

    .line 381
    :cond_3
    return-void
.end method

.method public setConstraintMappings([Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 2

    .prologue
    .line 341
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 342
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    .line 300
    return-void
.end method

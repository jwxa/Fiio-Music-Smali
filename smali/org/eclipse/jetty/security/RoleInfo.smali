.class public Lorg/eclipse/jetty/security/RoleInfo;
.super Ljava/lang/Object;
.source "RoleInfo.java"


# instance fields
.field private _checked:Z

.field private _forbidden:Z

.field private _isAnyRole:Z

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

.field private _userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    .line 43
    return-void
.end method


# virtual methods
.method public addRole(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public combine(Lorg/eclipse/jetty/security/RoleInfo;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-boolean v0, p1, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 136
    return-void

    .line 125
    :cond_1
    iget-boolean v0, p1, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean v0, p1, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    goto :goto_0

    .line 129
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p1, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method public getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    return-object v0
.end method

.method public isAnyRole()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    return v0
.end method

.method public setAnyRole(Z)V
    .locals 1

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 86
    if-eqz p1, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 91
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 53
    if-nez p1, :cond_0

    .line 55
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 59
    :cond_0
    return-void
.end method

.method public setForbidden(Z)V
    .locals 1

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    .line 69
    if-eqz p1, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 76
    :cond_0
    return-void
.end method

.method public setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null UserDataConstraint"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-nez v0, :cond_1

    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/security/UserDataConstraint;->combine(Lorg/eclipse/jetty/security/UserDataConstraint;)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_userDataConstraint:Lorg/eclipse/jetty/security/UserDataConstraint;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "{RoleInfo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_forbidden:Z

    if-eqz v0, :cond_0

    const-string v0, ",F"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_checked:Z

    if-eqz v0, :cond_1

    const-string v0, ",C"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_isAnyRole:Z

    if-eqz v0, :cond_2

    const-string v0, ",*"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleInfo;->_roles:Ljava/util/Set;

    goto :goto_2
.end method

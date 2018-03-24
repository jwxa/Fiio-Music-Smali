.class public Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;
.super Ljava/lang/Object;
.source "LoginCallbackImpl.java"

# interfaces
.implements Lorg/eclipse/jetty/security/authentication/LoginCallback;


# instance fields
.field private credential:Ljava/lang/Object;

.field private roles:[Ljava/lang/String;

.field private final subject:Ljavax/security/auth/Subject;

.field private success:Z

.field private final userName:Ljava/lang/String;

.field private userPrincipal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->roles:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->subject:Ljavax/security/auth/Subject;

    .line 52
    iput-object p2, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->userName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->credential:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->credential:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->credential:Ljava/lang/Object;

    .line 107
    :cond_0
    return-void
.end method

.method public getCredential()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->credential:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->roles:[Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->subject:Ljavax/security/auth/Subject;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->userPrincipal:Ljava/security/Principal;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->success:Z

    return v0
.end method

.method public setRoles([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->roles:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->success:Z

    .line 79
    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/LoginCallbackImpl;->userPrincipal:Ljava/security/Principal;

    .line 89
    return-void
.end method

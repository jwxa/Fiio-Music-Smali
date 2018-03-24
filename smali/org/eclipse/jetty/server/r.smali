.class final Lorg/eclipse/jetty/server/r;
.super Ljava/lang/Object;
.source "UserIdentity.java"

# interfaces
.implements Lorg/eclipse/jetty/server/UserIdentity$UnauthenticatedUserIdentity;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSubject()Ljavax/security/auth/Subject;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "UNAUTHENTICATED"

    return-object v0
.end method

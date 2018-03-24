.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;
.super Lorg/eclipse/jetty/security/UserAuthentication;
.source "FormAuthenticator.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$ResponseSent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 494
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/eclipse/jetty/security/UserAuthentication;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/eclipse/jetty/security/MappedLoginService$Anonymous;
.super Ljava/lang/Object;
.source "MappedLoginService.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;


# static fields
.field private static final serialVersionUID:J = 0xf3b9a2abd7db8edL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "Anonymous"

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

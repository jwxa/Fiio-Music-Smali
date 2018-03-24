.class public Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;
.super Ljava/lang/Object;
.source "MappedLoginService.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field private static final serialVersionUID:J = 0x299c730696612442L


# instance fields
.field private final _roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;->_roleName:Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;->_roleName:Ljava/lang/String;

    return-object v0
.end method

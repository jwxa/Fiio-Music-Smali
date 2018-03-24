.class public Lorg/eclipse/jetty/client/security/SimpleRealmResolver;
.super Ljava/lang/Object;
.source "SimpleRealmResolver.java"

# interfaces
.implements Lorg/eclipse/jetty/client/security/RealmResolver;


# instance fields
.field private _realm:Lorg/eclipse/jetty/client/security/Realm;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/security/Realm;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    .line 38
    return-void
.end method


# virtual methods
.method public getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    return-object v0
.end method

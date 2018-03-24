.class public interface abstract Lorg/eclipse/jetty/server/UserIdentity;
.super Ljava/lang/Object;
.source "UserIdentity.java"


# static fields
.field public static final UNAUTHENTICATED_IDENTITY:Lorg/eclipse/jetty/server/UserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/eclipse/jetty/server/r;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/r;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/UserIdentity;->UNAUTHENTICATED_IDENTITY:Lorg/eclipse/jetty/server/UserIdentity;

    return-void
.end method


# virtual methods
.method public abstract getSubject()Ljavax/security/auth/Subject;
.end method

.method public abstract getUserPrincipal()Ljava/security/Principal;
.end method

.method public abstract isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z
.end method

.class public interface abstract Lorg/eclipse/jetty/server/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# static fields
.field public static final NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_SUCCESS:Lorg/eclipse/jetty/server/Authentication;

.field public static final UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lorg/eclipse/jetty/server/e;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/e;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    .line 135
    new-instance v0, Lorg/eclipse/jetty/server/f;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/f;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    .line 143
    new-instance v0, Lorg/eclipse/jetty/server/g;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/g;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    .line 151
    new-instance v0, Lorg/eclipse/jetty/server/h;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/h;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    .line 153
    new-instance v0, Lorg/eclipse/jetty/server/i;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/i;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_SUCCESS:Lorg/eclipse/jetty/server/Authentication;

    return-void
.end method

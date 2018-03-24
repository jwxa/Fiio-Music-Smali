.class public interface abstract Lorg/eclipse/jetty/server/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# static fields
.field public static final __CheckRemoteSessionEncoding:Ljava/lang/String; = "org.eclipse.jetty.servlet.CheckingRemoteSessionIdEncoding"

.field public static final __DefaultSessionCookie:Ljava/lang/String; = "JSESSIONID"

.field public static final __DefaultSessionDomain:Ljava/lang/String;

.field public static final __DefaultSessionIdPathParameterName:Ljava/lang/String; = "jsessionid"

.field public static final __MaxAgeProperty:Ljava/lang/String; = "org.eclipse.jetty.servlet.MaxAge"

.field public static final __SessionCookieProperty:Ljava/lang/String; = "org.eclipse.jetty.servlet.SessionCookie"

.field public static final __SessionDomainProperty:Ljava/lang/String; = "org.eclipse.jetty.servlet.SessionDomain"

.field public static final __SessionIdPathParameterNameProperty:Ljava/lang/String; = "org.eclipse.jetty.servlet.SessionIdPathParameterName"

.field public static final __SessionPathProperty:Ljava/lang/String; = "org.eclipse.jetty.servlet.SessionPath"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jetty/server/SessionManager;->__DefaultSessionDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract access(Lc/c/c/g;Z)Lorg/eclipse/jetty/http/HttpCookie;
.end method

.method public abstract addEventListener(Ljava/util/EventListener;)V
.end method

.method public abstract clearEventListeners()V
.end method

.method public abstract complete(Lc/c/c/g;)V
.end method

.method public abstract getClusterId(Lc/c/c/g;)Ljava/lang/String;
.end method

.method public abstract getDefaultSessionTrackingModes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectiveSessionTrackingModes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpOnly()Z
.end method

.method public abstract getHttpSession(Ljava/lang/String;)Lc/c/c/g;
.end method

.method public abstract getMaxInactiveInterval()I
.end method

.method public abstract getMetaManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNodeId(Lc/c/c/g;)Ljava/lang/String;
.end method

.method public abstract getSessionCookie(Lc/c/c/g;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;
.end method

.method public abstract getSessionCookieConfig()Lc/c/al;
.end method

.method public abstract getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;
.end method

.method public abstract getSessionIdPathParameterName()Ljava/lang/String;
.end method

.method public abstract getSessionIdPathParameterNamePrefix()Ljava/lang/String;
.end method

.method public abstract isCheckingRemoteSessionIdEncoding()Z
.end method

.method public abstract isUsingCookies()Z
.end method

.method public abstract isUsingURLs()Z
.end method

.method public abstract isValid(Lc/c/c/g;)Z
.end method

.method public abstract newHttpSession(Lc/c/c/c;)Lc/c/c/g;
.end method

.method public abstract removeEventListener(Ljava/util/EventListener;)V
.end method

.method public abstract setCheckingRemoteSessionIdEncoding(Z)V
.end method

.method public abstract setMaxInactiveInterval(I)V
.end method

.method public abstract setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V
.end method

.method public abstract setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
.end method

.method public abstract setSessionIdPathParameterName(Ljava/lang/String;)V
.end method

.method public abstract setSessionTrackingModes(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lc/c/am;",
            ">;)V"
        }
    .end annotation
.end method

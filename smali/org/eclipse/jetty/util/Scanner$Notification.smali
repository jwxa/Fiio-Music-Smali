.class public final enum Lorg/eclipse/jetty/util/Scanner$Notification;
.super Ljava/lang/Enum;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/util/Scanner$Notification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/util/Scanner$Notification;

.field public static final enum ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

.field public static final enum CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

.field public static final enum REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lorg/eclipse/jetty/util/Scanner$Notification;

    const-string v1, "ADDED"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/Scanner$Notification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    new-instance v0, Lorg/eclipse/jetty/util/Scanner$Notification;

    const-string v1, "CHANGED"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/util/Scanner$Notification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    new-instance v0, Lorg/eclipse/jetty/util/Scanner$Notification;

    const-string v1, "REMOVED"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/util/Scanner$Notification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jetty/util/Scanner$Notification;

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/jetty/util/Scanner$Notification;->$VALUES:[Lorg/eclipse/jetty/util/Scanner$Notification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/util/Scanner$Notification;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$Notification;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/util/Scanner$Notification;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/util/Scanner$Notification;->$VALUES:[Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/util/Scanner$Notification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/util/Scanner$Notification;

    return-object v0
.end method

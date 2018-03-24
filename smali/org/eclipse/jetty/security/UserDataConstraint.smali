.class public final enum Lorg/eclipse/jetty/security/UserDataConstraint;
.super Ljava/lang/Enum;
.source "UserDataConstraint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/security/UserDataConstraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/security/UserDataConstraint;

.field public static final enum Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

.field public static final enum Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

.field public static final enum None:Lorg/eclipse/jetty/security/UserDataConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/eclipse/jetty/security/UserDataConstraint;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/security/UserDataConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    new-instance v0, Lorg/eclipse/jetty/security/UserDataConstraint;

    const-string v1, "Integral"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/security/UserDataConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    new-instance v0, Lorg/eclipse/jetty/security/UserDataConstraint;

    const-string v1, "Confidential"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/security/UserDataConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jetty/security/UserDataConstraint;

    sget-object v1, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->$VALUES:[Lorg/eclipse/jetty/security/UserDataConstraint;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 30
    if-lt p0, v1, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected -1, 0, 1, or 2, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    if-ne p0, v1, :cond_2

    sget-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    .line 32
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/security/UserDataConstraint;->values()[Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/UserDataConstraint;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->$VALUES:[Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/security/UserDataConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/security/UserDataConstraint;

    return-object v0
.end method


# virtual methods
.method public final combine(Lorg/eclipse/jetty/security/UserDataConstraint;)Lorg/eclipse/jetty/security/UserDataConstraint;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/UserDataConstraint;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    .line 38
    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

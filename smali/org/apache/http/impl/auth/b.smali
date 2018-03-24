.class final enum Lorg/apache/http/impl/auth/b;
.super Ljava/lang/Enum;
.source "GGSSchemeBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/auth/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/apache/http/impl/auth/b;

.field public static final enum b:Lorg/apache/http/impl/auth/b;

.field public static final enum c:Lorg/apache/http/impl/auth/b;

.field public static final enum d:Lorg/apache/http/impl/auth/b;

.field private static final synthetic e:[Lorg/apache/http/impl/auth/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/apache/http/impl/auth/b;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/b;->a:Lorg/apache/http/impl/auth/b;

    .line 56
    new-instance v0, Lorg/apache/http/impl/auth/b;

    const-string v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/auth/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/b;->b:Lorg/apache/http/impl/auth/b;

    .line 57
    new-instance v0, Lorg/apache/http/impl/auth/b;

    const-string v1, "TOKEN_GENERATED"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/auth/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/b;->c:Lorg/apache/http/impl/auth/b;

    .line 58
    new-instance v0, Lorg/apache/http/impl/auth/b;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/impl/auth/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/b;->d:Lorg/apache/http/impl/auth/b;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/impl/auth/b;

    sget-object v1, Lorg/apache/http/impl/auth/b;->a:Lorg/apache/http/impl/auth/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/impl/auth/b;->b:Lorg/apache/http/impl/auth/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/auth/b;->c:Lorg/apache/http/impl/auth/b;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/auth/b;->d:Lorg/apache/http/impl/auth/b;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/impl/auth/b;->e:[Lorg/apache/http/impl/auth/b;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/b;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/http/impl/auth/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/auth/b;

    return-object v0
.end method

.method public static final values()[Lorg/apache/http/impl/auth/b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/http/impl/auth/b;->e:[Lorg/apache/http/impl/auth/b;

    invoke-virtual {v0}, [Lorg/apache/http/impl/auth/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/auth/b;

    return-object v0
.end method

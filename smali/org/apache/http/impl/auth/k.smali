.class final enum Lorg/apache/http/impl/auth/k;
.super Ljava/lang/Enum;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/auth/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/apache/http/impl/auth/k;

.field public static final enum b:Lorg/apache/http/impl/auth/k;

.field public static final enum c:Lorg/apache/http/impl/auth/k;

.field public static final enum d:Lorg/apache/http/impl/auth/k;

.field public static final enum e:Lorg/apache/http/impl/auth/k;

.field public static final enum f:Lorg/apache/http/impl/auth/k;

.field private static final synthetic g:[Lorg/apache/http/impl/auth/k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->a:Lorg/apache/http/impl/auth/k;

    .line 54
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->b:Lorg/apache/http/impl/auth/k;

    .line 55
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "MSG_TYPE1_GENERATED"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->c:Lorg/apache/http/impl/auth/k;

    .line 56
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "MSG_TYPE2_RECEVIED"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->d:Lorg/apache/http/impl/auth/k;

    .line 57
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "MSG_TYPE3_GENERATED"

    invoke-direct {v0, v1, v7}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->e:Lorg/apache/http/impl/auth/k;

    .line 58
    new-instance v0, Lorg/apache/http/impl/auth/k;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/k;->f:Lorg/apache/http/impl/auth/k;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/impl/auth/k;

    sget-object v1, Lorg/apache/http/impl/auth/k;->a:Lorg/apache/http/impl/auth/k;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/auth/k;->b:Lorg/apache/http/impl/auth/k;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/auth/k;->c:Lorg/apache/http/impl/auth/k;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/auth/k;->d:Lorg/apache/http/impl/auth/k;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/http/impl/auth/k;->e:Lorg/apache/http/impl/auth/k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/http/impl/auth/k;->f:Lorg/apache/http/impl/auth/k;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/auth/k;->g:[Lorg/apache/http/impl/auth/k;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/k;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/http/impl/auth/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/auth/k;

    return-object v0
.end method

.method public static final values()[Lorg/apache/http/impl/auth/k;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/http/impl/auth/k;->g:[Lorg/apache/http/impl/auth/k;

    invoke-virtual {v0}, [Lorg/apache/http/impl/auth/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/auth/k;

    return-object v0
.end method

.class final enum Le/ac;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Le/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/ac;

.field public static final enum b:Le/ac;

.field public static final enum c:Le/ac;

.field public static final enum d:Le/ac;

.field public static final enum e:Le/ac;

.field private static final synthetic f:[Le/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1283
    new-instance v0, Le/ac;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Le/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/ac;->a:Le/ac;

    .line 1284
    new-instance v0, Le/ac;

    const-string v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Le/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/ac;->b:Le/ac;

    .line 1285
    new-instance v0, Le/ac;

    const-string v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Le/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/ac;->c:Le/ac;

    .line 1286
    new-instance v0, Le/ac;

    const-string v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Le/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/ac;->d:Le/ac;

    .line 1287
    new-instance v0, Le/ac;

    const-string v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Le/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/ac;->e:Le/ac;

    .line 1282
    const/4 v0, 0x5

    new-array v0, v0, [Le/ac;

    sget-object v1, Le/ac;->a:Le/ac;

    aput-object v1, v0, v2

    sget-object v1, Le/ac;->b:Le/ac;

    aput-object v1, v0, v3

    sget-object v1, Le/ac;->c:Le/ac;

    aput-object v1, v0, v4

    sget-object v1, Le/ac;->d:Le/ac;

    aput-object v1, v0, v5

    sget-object v1, Le/ac;->e:Le/ac;

    aput-object v1, v0, v6

    sput-object v0, Le/ac;->f:[Le/ac;

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
    .line 1282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/ac;
    .locals 1

    .prologue
    .line 1282
    const-class v0, Le/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/ac;

    return-object v0
.end method

.method public static values()[Le/ac;
    .locals 1

    .prologue
    .line 1282
    sget-object v0, Le/ac;->f:[Le/ac;

    invoke-virtual {v0}, [Le/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/ac;

    return-object v0
.end method

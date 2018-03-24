.class final enum Lcom/a/a/d/c;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/c;

.field public static final enum b:Lcom/a/a/d/c;

.field public static final enum c:Lcom/a/a/d/c;

.field public static final enum d:Lcom/a/a/d/c;

.field public static final enum e:Lcom/a/a/d/c;

.field public static final enum f:Lcom/a/a/d/c;

.field public static final enum g:Lcom/a/a/d/c;

.field public static final enum h:Lcom/a/a/d/c;

.field private static final synthetic i:[Lcom/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    .line 37
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    .line 43
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    .line 49
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->d:Lcom/a/a/d/c;

    .line 55
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    .line 60
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->f:Lcom/a/a/d/c;

    .line 65
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->g:Lcom/a/a/d/c;

    .line 70
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->h:Lcom/a/a/d/c;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/a/d/c;

    sget-object v1, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/d/c;->d:Lcom/a/a/d/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/d/c;->f:Lcom/a/a/d/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/d/c;->g:Lcom/a/a/d/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/d/c;->h:Lcom/a/a/d/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/d/c;->i:[Lcom/a/a/d/c;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/c;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/a/a/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c;

    return-object v0
.end method

.method public static final values()[Lcom/a/a/d/c;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/a/a/d/c;->i:[Lcom/a/a/d/c;

    invoke-virtual {v0}, [Lcom/a/a/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/c;

    return-object v0
.end method

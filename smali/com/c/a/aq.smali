.class public final enum Lcom/c/a/aq;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/aq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/aq;

.field public static final enum b:Lcom/c/a/aq;

.field public static final enum c:Lcom/c/a/aq;

.field private static final synthetic d:[Lcom/c/a/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/c/a/aq;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/c/a/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/aq;->a:Lcom/c/a/aq;

    .line 104
    new-instance v0, Lcom/c/a/aq;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/c/a/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/aq;->b:Lcom/c/a/aq;

    .line 105
    new-instance v0, Lcom/c/a/aq;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/c/a/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/c/a/aq;->c:Lcom/c/a/aq;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/a/aq;

    sget-object v1, Lcom/c/a/aq;->a:Lcom/c/a/aq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/aq;->b:Lcom/c/a/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/aq;->c:Lcom/c/a/aq;

    aput-object v1, v0, v4

    sput-object v0, Lcom/c/a/aq;->d:[Lcom/c/a/aq;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/aq;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/c/a/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/aq;

    return-object v0
.end method

.method public static values()[Lcom/c/a/aq;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/c/a/aq;->d:[Lcom/c/a/aq;

    invoke-virtual {v0}, [Lcom/c/a/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/aq;

    return-object v0
.end method

.class public final enum Lcom/a/a/bm;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/bm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/bm;

.field public static final enum b:Lcom/a/a/bm;

.field private static final synthetic d:[Lcom/a/a/bm;


# instance fields
.field private final c:Lcom/a/a/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/a/a/bm;

    const-string v1, "DEFAULT"

    new-instance v2, Lcom/a/a/bn;

    invoke-direct {v2, v3}, Lcom/a/a/bn;-><init>(B)V

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/bm;-><init>(Ljava/lang/String;ILcom/a/a/bo;)V

    sput-object v0, Lcom/a/a/bm;->a:Lcom/a/a/bm;

    .line 41
    new-instance v0, Lcom/a/a/bm;

    const-string v1, "STRING"

    new-instance v2, Lcom/a/a/bp;

    invoke-direct {v2, v3}, Lcom/a/a/bp;-><init>(B)V

    invoke-direct {v0, v1, v4, v2}, Lcom/a/a/bm;-><init>(Ljava/lang/String;ILcom/a/a/bo;)V

    sput-object v0, Lcom/a/a/bm;->b:Lcom/a/a/bm;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/bm;

    sget-object v1, Lcom/a/a/bm;->a:Lcom/a/a/bm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/bm;->b:Lcom/a/a/bm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/bm;->d:[Lcom/a/a/bm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/a/a/bo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/a/a/bm;->c:Lcom/a/a/bo;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/bm;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/a/a/bm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/bm;

    return-object v0
.end method

.method public static final values()[Lcom/a/a/bm;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/a/a/bm;->d:[Lcom/a/a/bm;

    invoke-virtual {v0}, [Lcom/a/a/bm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/bm;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/bm;->c:Lcom/a/a/bo;

    invoke-interface {v0, p1}, Lcom/a/a/bo;->a(Ljava/lang/Long;)Lcom/a/a/ba;

    move-result-object v0

    return-object v0
.end method

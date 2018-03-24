.class final Lcom/fiio/music/widget/b;
.super Ljava/lang/Object;
.source "BezierCurveChart.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fiio/music/widget/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 1
    check-cast p1, Lcom/fiio/music/widget/a;

    check-cast p2, Lcom/fiio/music/widget/a;

    iget v0, p1, Lcom/fiio/music/widget/a;->b:F

    mul-float/2addr v0, v2

    iget v1, p2, Lcom/fiio/music/widget/a;->b:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

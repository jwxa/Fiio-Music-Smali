.class public Lcom/fiio/music/adapter/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# static fields
.field public static final SKIN_RESOURCES:[I


# instance fields
.field private currentId:I

.field private mContext:Landroid/content/Context;

.field private wh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/adapter/ImageAdapter;->SKIN_RESOURCES:[I

    .line 25
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x7f0205a6
        0x7f0205a7
        0x7f0205a8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->currentId:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->wh:I

    .line 28
    iput-object p1, p0, Lcom/fiio/music/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/fiio/music/adapter/ImageAdapter;->currentId:I

    .line 32
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/WindowManager;

    .line 33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->wh:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/fiio/music/adapter/ImageAdapter;->SKIN_RESOURCES:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fiio/music/adapter/ImageAdapter;->SKIN_RESOURCES:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 64
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/fiio/music/adapter/ImageAdapter;->wh:I

    iget v2, p0, Lcom/fiio/music/adapter/ImageAdapter;->wh:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    :goto_0
    iget v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->currentId:I

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/fiio/music/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fiio/music/adapter/ImageAdapter;->SKIN_RESOURCES:[I

    aget v1, v1, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020617

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_1
    return-object p2

    .line 68
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/fiio/music/adapter/ImageAdapter;->SKIN_RESOURCES:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setCurrentId(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/fiio/music/adapter/ImageAdapter;->currentId:I

    .line 42
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

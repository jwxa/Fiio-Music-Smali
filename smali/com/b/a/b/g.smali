.class final Lcom/b/a/b/g;
.super Lcom/b/a/b/f/c;
.source "ImageLoader.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/b/a/b/f/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/b/a/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/b/a/b/g;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 806
    iput-object p3, p0, Lcom/b/a/b/g;->a:Landroid/graphics/Bitmap;

    .line 807
    return-void
.end method

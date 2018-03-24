.class public final Lcom/fiio/music/swipemenulistview/d;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/d;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fiio/music/swipemenulistview/d;->e:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/d;->c:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/d;->d:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/d;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fiio/music/swipemenulistview/d;->f:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/fiio/music/swipemenulistview/d;->g:I

    .line 94
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/d;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/d;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/fiio/music/swipemenulistview/d;->g:I

    return v0
.end method
